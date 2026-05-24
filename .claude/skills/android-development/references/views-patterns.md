# Views & ViewBinding Patterns — BAYYARI Player

UI is built with Android Views, XML layouts, and ViewBinding. No Jetpack Compose.

## Fragment Pattern

```kotlin
@AndroidEntryPoint
class FavoritesFragment : Fragment(R.layout.fragment_favorites) {

    private val viewModel: FavoritesViewModel by viewModels()
    private var binding: FragmentFavoritesBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentFavoritesBinding.bind(view)
        val b = binding ?: return

        val adapter = FavoritesAdapter(
            onClick = { item -> openItem(item) },
        )
        b.recyclerFavorites.layoutManager = LinearLayoutManager(requireContext())
        b.recyclerFavorites.adapter = adapter

        viewLifecycleOwner.collectStarted(viewModel.items) { adapter.submitList(it) }

        viewModel.refresh()
    }

    override fun onDestroyView() {
        binding = null           // always null binding in onDestroyView
        super.onDestroyView()
    }

    private fun openItem(item: FavoriteItem) {
        startActivity(Intent(requireContext(), LivePlayerActivity::class.java).apply {
            putExtra(LivePlayerActivity.EXTRA_STREAM_URL, item.url)
        })
    }
}
```

Key rules:
- Always `null` the binding in `onDestroyView` — Fragment view lifecycle is shorter than Fragment lifecycle
- Collect flows with `viewLifecycleOwner.collectStarted(flow) { ... }` (see `util/Extensions.kt`)
- Use `by viewModels()` with `@AndroidEntryPoint` for Hilt injection

## RecyclerView Adapter Pattern

```kotlin
class FavoritesAdapter(
    private val onClick: (FavoriteItem) -> Unit,
) : ListAdapter<FavoriteItem, FavoritesAdapter.ViewHolder>(DiffCallback()) {

    inner class ViewHolder(private val binding: ItemFavoriteBinding) :
        RecyclerView.ViewHolder(binding.root) {

        fun bind(item: FavoriteItem) {
            binding.textName.text = item.name
            binding.root.setOnClickListener { onClick(item) }
            Glide.with(binding.root).load(item.iconUrl).into(binding.imageIcon)
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val binding = ItemFavoriteBinding.inflate(
            LayoutInflater.from(parent.context), parent, false
        )
        return ViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) =
        holder.bind(getItem(position))

    class DiffCallback : DiffUtil.ItemCallback<FavoriteItem>() {
        override fun areItemsSame(old: FavoriteItem, new: FavoriteItem) = old.id == new.id
        override fun areContentsSame(old: FavoriteItem, new: FavoriteItem) = old == new
    }
}
```

Always use `ListAdapter` with a `DiffCallback`. Never extend plain `RecyclerView.Adapter`.

## Navigation

Use `NavController` from the Navigation Component. Navigate by action ID:

```kotlin
// Navigate with args
val args = Bundle().apply { putInt("streamId", streamId) }
findNavController().navigate(R.id.action_favorites_to_detail, args)

// Go back
findNavController().popBackStack()
```

Navigation graph is in `res/navigation/nav_graph.xml`. Add `<action>` elements there; don't call `navigate()` with raw fragment classes.

## Activity Pattern (Player screens)

Player screens are Activities (not Fragments) to control orientation and keep the player lifecycle separate:

```kotlin
@AndroidEntryPoint
class FavoritePlayerActivity : AppCompatActivity() {

    @Inject lateinit var player: ExoPlayer

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val binding = ActivityFavoritePlayerBinding.inflate(layoutInflater)
        setContentView(binding.root)

        val url = intent.getStringExtra(EXTRA_STREAM_URL) ?: return finish()
        player.setMediaItem(MediaItem.fromUri(url))
        binding.playerView.player = player
        player.prepare()
        player.play()
    }

    override fun onDestroy() {
        player.release()
        super.onDestroy()
    }

    companion object {
        const val EXTRA_STREAM_URL = "extra_stream_url"
    }
}
```

The `ExoPlayer` instance is provided by `di/PlayerModule.kt`.

## collectStarted Extension

Defined in `util/Extensions.kt`. Use it everywhere instead of `lifecycleScope.launch`:

```kotlin
viewLifecycleOwner.collectStarted(viewModel.someFlow) { value ->
    // called on each emission, lifecycle-safe
}
```

## Leanback TV Fragment Pattern

Pair every phone Fragment with a Leanback Fragment using `BrowseSupportFragment`:

```kotlin
@AndroidEntryPoint
class TvFavoritesFragment : BrowseSupportFragment() {

    private val viewModel: FavoritesViewModel by viewModels()   // same VM as phone

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        headersState = HEADERS_DISABLED

        val adapter = ArrayObjectAdapter(FavoritesCardPresenter())
        this.adapter = adapter

        viewLifecycleOwner.collectStarted(viewModel.items) { items ->
            adapter.clear()
            items.forEach { adapter.add(it) }
        }

        onItemViewClickedListener = OnItemViewClickedListener { _, item, _, _ ->
            if (item is FavoriteItem) openItem(item)
        }
    }
}
```

## Image Loading

Use Glide everywhere. Never load images on the main thread.

```kotlin
Glide.with(imageView)
    .load(url)
    .placeholder(R.drawable.placeholder)
    .error(R.drawable.placeholder)
    .into(imageView)
```

## UiState Rendering

```kotlin
viewLifecycleOwner.collectStarted(viewModel.uiState) { state ->
    when (state) {
        is UiState.Loading -> {
            b.progressBar.isVisible = true
            b.recyclerView.isVisible = false
        }
        is UiState.Success -> {
            b.progressBar.isVisible = false
            b.recyclerView.isVisible = true
            adapter.submitList(state.data)
        }
        is UiState.Error -> {
            b.progressBar.isVisible = false
            Toast.makeText(requireContext(), state.message, Toast.LENGTH_SHORT).show()
        }
        is UiState.Empty -> {
            b.progressBar.isVisible = false
            b.textEmpty.isVisible = true
        }
    }
}
```
