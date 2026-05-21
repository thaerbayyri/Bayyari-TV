.class public final Lcom/bayyari/tv/ui/catchup/CatchUpFragment;
.super Lcom/bayyari/tv/ui/catchup/Hilt_CatchUpFragment;
.source "CatchUpFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatchUpFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatchUpFragment.kt\ncom/bayyari/tv/ui/catchup/CatchUpFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,86:1\n106#2,15:87\n774#3:102\n865#3:103\n866#3:105\n1#4:104\n*S KotlinDebug\n*F\n+ 1 CatchUpFragment.kt\ncom/bayyari/tv/ui/catchup/CatchUpFragment\n*L\n23#1:87,15\n73#1:102\n73#1:103\n73#1:105\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u0013H\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \u000e*\u0004\u0018\u00010\r0\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/catchup/CatchUpFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;",
        "getViewModel",
        "()Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lcom/bayyari/tv/databinding/FragmentCatchupBinding;",
        "selectedDate",
        "Ljava/util/Calendar;",
        "kotlin.jvm.PlatformType",
        "allPrograms",
        "",
        "Lcom/bayyari/tv/domain/model/EpgProgram;",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "applyFilter",
        "adapter",
        "Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;",
        "onDestroyView",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private allPrograms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/EpgProgram;",
            ">;"
        }
    .end annotation
.end field

.field private binding:Lcom/bayyari/tv/databinding/FragmentCatchupBinding;

.field private selectedDate:Ljava/util/Calendar;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 21
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_catchup:I

    invoke-direct {p0, v0}, Lcom/bayyari/tv/ui/catchup/Hilt_CatchUpFragment;-><init>(I)V

    .line 23
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 87
    .local v0, "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    nop

    .line 88
    new-instance v1, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 87
    .local v1, "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 89
    const/4 v2, 0x0

    .line 87
    .local v2, "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 90
    const/4 v3, 0x0

    .line 87
    .local v3, "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 92
    .local v4, "$i$f$viewModels\\1\\23":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 93
    .local v5, "owner$delegate\\1":Lkotlin/Lazy;
    const-class v6, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 101
    nop

    .line 93
    new-instance v9, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 23
    .end local v0    # "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v2    # "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v3    # "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$viewModels\\1\\23":I
    .end local v5    # "owner$delegate\\1":Lkotlin/Lazy;
    iput-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 25
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->selectedDate:Ljava/util/Calendar;

    .line 26
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->allPrograms:Ljava/util/List;

    .line 20
    return-void
.end method

.method public static final synthetic access$applyFilter(Lcom/bayyari/tv/ui/catchup/CatchUpFragment;Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;)V
    .locals 0
    .param p0, "$this"    # Lcom/bayyari/tv/ui/catchup/CatchUpFragment;
    .param p1, "adapter"    # Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;

    .line 20
    invoke-direct {p0, p1}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->applyFilter(Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;)V

    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/bayyari/tv/ui/catchup/CatchUpFragment;)Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/catchup/CatchUpFragment;

    .line 20
    invoke-direct {p0}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->getViewModel()Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setAllPrograms$p(Lcom/bayyari/tv/ui/catchup/CatchUpFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Lcom/bayyari/tv/ui/catchup/CatchUpFragment;
    .param p1, "<set-?>"    # Ljava/util/List;

    .line 20
    iput-object p1, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->allPrograms:Ljava/util/List;

    return-void
.end method

.method private final applyFilter(Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;)V
    .locals 14
    .param p1, "adapter"    # Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;

    .line 73
    iget-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->allPrograms:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filter\\1":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 102
    .local v1, "$i$f$filter\\1\\73":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination\\2":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo\\2":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 103
    .local v4, "$i$f$filterTo\\2\\102":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element\\2":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/bayyari/tv/domain/model/EpgProgram;

    .local v7, "program\\3":Lcom/bayyari/tv/domain/model/EpgProgram;
    const/4 v8, 0x0

    .line 74
    .local v8, "$i$a$-filter-CatchUpFragment$applyFilter$filtered$1\\3\\103\\0":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    move-object v10, v9

    .line 104
    .local v10, "$this$applyFilter_u24lambda_u245_u24lambda_u244\\4":Ljava/util/Calendar;
    const/4 v11, 0x0

    .line 74
    .local v11, "$i$a$-apply-CatchUpFragment$applyFilter$filtered$1$cal$1\\4\\74\\3":I
    invoke-virtual {v7}, Lcom/bayyari/tv/domain/model/EpgProgram;->getStartMs()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 75
    .end local v10    # "$this$applyFilter_u24lambda_u245_u24lambda_u244\\4":Ljava/util/Calendar;
    .end local v11    # "$i$a$-apply-CatchUpFragment$applyFilter$filtered$1$cal$1\\4\\74\\3":I
    .local v9, "cal\\3":Ljava/util/Calendar;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    iget-object v12, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v11, v12, :cond_1

    .line 76
    const/4 v11, 0x6

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iget-object v13, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {v13, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v12, v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 103
    .end local v7    # "program\\3":Lcom/bayyari/tv/domain/model/EpgProgram;
    .end local v8    # "$i$a$-filter-CatchUpFragment$applyFilter$filtered$1\\3\\103\\0":I
    .end local v9    # "cal\\3":Ljava/util/Calendar;
    :goto_1
    if-eqz v10, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .end local v6    # "element\\2":Ljava/lang/Object;
    :cond_2
    nop

    .end local v2    # "destination\\2":Ljava/util/Collection;
    .end local v3    # "$this$filterTo\\2":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo\\2\\102":I
    check-cast v2, Ljava/util/List;

    .line 102
    nop

    .line 73
    .end local v0    # "$this$filter\\1":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter\\1\\73":I
    nop

    .line 78
    .local v2, "filtered":Ljava/util/List;
    invoke-virtual {p1, v2}, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;->submitList(Ljava/util/List;)V

    .line 79
    return-void
.end method

.method private final getViewModel()Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;

    return-object v0
.end method

.method static final onViewCreated$lambda$1(Lcom/bayyari/tv/ui/catchup/CatchUpFragment;Lcom/bayyari/tv/domain/model/EpgProgram;)Lkotlin/Unit;
    .locals 7
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/catchup/CatchUpFragment;
    .param p1, "program"    # Lcom/bayyari/tv/domain/model/EpgProgram;

    const-string v0, "program"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bayyari/tv/ui/catchup/CatchUpPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    .local v1, "$this$onViewCreated_u24lambda_u241_u24lambda_u240\\1":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 34
    .local v2, "$i$a$-apply-CatchUpFragment$onViewCreated$adapter$1$1\\1\\33\\0":I
    const-string v3, "extra_stream_id"

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/EpgProgram;->getStreamId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    const-string v3, "extra_start_ms"

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/EpgProgram;->getStartMs()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/EpgProgram;->getDurationMs()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    div-long/2addr v3, v5

    long-to-int v3, v3

    const-string v4, "extra_duration_min"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    nop

    .line 33
    .end local v1    # "$this$onViewCreated_u24lambda_u241_u24lambda_u240\\1":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-CatchUpFragment$onViewCreated$adapter$1$1\\1\\33\\0":I
    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->startActivity(Landroid/content/Intent;)V

    .line 38
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onViewCreated$lambda$3(Lcom/bayyari/tv/ui/catchup/CatchUpFragment;Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;Landroid/view/View;)V
    .locals 7
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/catchup/CatchUpFragment;
    .param p1, "$adapter"    # Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;
    .param p2, "it"    # Landroid/view/View;

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 47
    .local v0, "now":Ljava/util/Calendar;
    new-instance v1, Landroid/app/DatePickerDialog;

    .line 48
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 49
    nop

    .line 56
    new-instance v3, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/catchup/CatchUpFragment;Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;)V

    .line 53
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 54
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 55
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 47
    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 56
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->show()V

    .line 57
    return-void
.end method

.method static final onViewCreated$lambda$3$lambda$2(Lcom/bayyari/tv/ui/catchup/CatchUpFragment;Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;Landroid/widget/DatePicker;III)V
    .locals 0
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/catchup/CatchUpFragment;
    .param p1, "$adapter"    # Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;
    .param p3, "year"    # I
    .param p4, "month"    # I
    .param p5, "day"    # I

    .line 50
    iget-object p2, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {p2, p3, p4, p5}, Ljava/util/Calendar;->set(III)V

    .line 51
    invoke-direct {p0, p1}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->applyFilter(Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;)V

    .line 52
    return-void
.end method


# virtual methods
.method public onDestroyView()V
    .locals 1

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->binding:Lcom/bayyari/tv/databinding/FragmentCatchupBinding;

    .line 83
    invoke-super {p0}, Lcom/bayyari/tv/ui/catchup/Hilt_CatchUpFragment;->onDestroyView()V

    .line 84
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p1}, Lcom/bayyari/tv/databinding/FragmentCatchupBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentCatchupBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->binding:Lcom/bayyari/tv/databinding/FragmentCatchupBinding;

    .line 30
    iget-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->binding:Lcom/bayyari/tv/databinding/FragmentCatchupBinding;

    if-nez v0, :cond_0

    return-void

    .line 32
    .local v0, "b":Lcom/bayyari/tv/databinding/FragmentCatchupBinding;
    :cond_0
    new-instance v1, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;

    new-instance v2, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$$ExternalSyntheticLambda1;-><init>(Lcom/bayyari/tv/ui/catchup/CatchUpFragment;)V

    invoke-direct {v1, v2}, Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 39
    .local v1, "adapter":Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;
    iget-object v2, v0, Lcom/bayyari/tv/databinding/FragmentCatchupBinding;->recyclerCatchUp:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 40
    iget-object v2, v0, Lcom/bayyari/tv/databinding/FragmentCatchupBinding;->recyclerCatchUp:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v1

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 42
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "streamId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 43
    .local v2, "streamId":I
    :goto_0
    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->getViewModel()Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;->load(I)V

    .line 45
    :cond_2
    iget-object v3, v0, Lcom/bayyari/tv/databinding/FragmentCatchupBinding;->buttonPickDate:Lcom/google/android/material/button/MaterialButton;

    new-instance v4, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v1}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$$ExternalSyntheticLambda2;-><init>(Lcom/bayyari/tv/ui/catchup/CatchUpFragment;Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;)V

    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    const-string v4, "getViewLifecycleOwner(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$onViewCreated$2;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v1, v5}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$onViewCreated$2;-><init>(Lcom/bayyari/tv/ui/catchup/CatchUpFragment;Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 70
    return-void
.end method
