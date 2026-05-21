.class public final Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 LiveViewModel.kt\ncom/bayyari/tv/ui/live/LiveViewModel\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n50#2:219\n37#3:220\n38#3,2:225\n40#3:232\n1563#4:221\n1634#4,3:222\n1563#4:227\n1634#4,2:228\n1636#4:231\n1#5:230\n*S KotlinDebug\n*F\n+ 1 LiveViewModel.kt\ncom/bayyari/tv/ui/live/LiveViewModel\n*L\n37#1:221\n37#1:222,3\n39#1:227\n39#1:228,2\n39#1:231\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "R",
        "value",
        "emit",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1",
        "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;

    iget v3, v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;->label:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;

    invoke-direct {v2, v0, v1}, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;-><init>(Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .local v2, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 35
    iget v5, v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;->label:I

    packed-switch v5, :pswitch_data_0

    .end local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v4, v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;->I$0:I

    .local v4, "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1\\1\\49\\0":I
    iget-object v5, v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    .local v5, "$this$map_u24lambda_u245":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v6, v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;->L$2:Ljava/lang/Object;

    .local v6, "value":Ljava/lang/Object;
    iget-object v7, v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;

    .local v7, "$completion":Lkotlin/coroutines/Continuation;
    iget-object v8, v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    .end local p1    # "value":Ljava/lang/Object;
    .local v8, "value":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v22, v3

    goto/16 :goto_3

    .end local v4    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1\\1\\49\\0":I
    .end local v5    # "$this$map_u24lambda_u245":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v8    # "value":Ljava/lang/Object;
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    iget-object v5, v0, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .restart local v5    # "$this$map_u24lambda_u245":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v7, v2

    .restart local v7    # "$completion":Lkotlin/coroutines/Continuation;
    move-object/from16 v6, p1

    .restart local v6    # "value":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 219
    .local v8, "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1\\1\\49\\0":I
    move-object v9, v2

    check-cast v9, Lkotlin/coroutines/Continuation;

    .local v9, "$completion\\1":Lkotlin/coroutines/Continuation;
    move-object v10, v6

    check-cast v10, Ljava/util/List;

    .local v10, "list\\1":Ljava/util/List;
    const/4 v11, 0x0

    .line 220
    .local v11, "$i$a$-map-LiveViewModel$categories$1\\1\\219\\0":I
    move-object v12, v10

    check-cast v12, Ljava/lang/Iterable;

    .local v12, "$this$map\\2":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 221
    .local v13, "$i$f$map\\2\\220":I
    new-instance v14, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v12, v15}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v14

    check-cast v0, Ljava/util/Collection;

    .local v0, "destination\\3":Ljava/util/Collection;
    move-object v14, v12

    .local v14, "$this$mapTo\\3":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 222
    .local v16, "$i$f$mapTo\\3\\221":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 223
    .local v18, "item\\3":Ljava/lang/Object;
    move-object/from16 v19, v18

    check-cast v19, Lcom/bayyari/tv/domain/model/Channel;

    .local v19, "it\\4":Lcom/bayyari/tv/domain/model/Channel;
    const/16 v20, 0x0

    .line 220
    .local v20, "$i$a$-map-LiveViewModel$categories$1$grouped$1\\4\\223\\1":I
    invoke-virtual/range {v19 .. v19}, Lcom/bayyari/tv/domain/model/Channel;->getCategoryId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v19 .. v19}, Lcom/bayyari/tv/domain/model/Channel;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 223
    .end local v19    # "it\\4":Lcom/bayyari/tv/domain/model/Channel;
    .end local v20    # "$i$a$-map-LiveViewModel$categories$1$grouped$1\\4\\223\\1":I
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    const/16 v15, 0xa

    goto :goto_1

    .line 224
    .end local v18    # "item\\3":Ljava/lang/Object;
    :cond_1
    nop

    .end local v0    # "destination\\3":Ljava/util/Collection;
    .end local v14    # "$this$mapTo\\3":Ljava/lang/Iterable;
    .end local v16    # "$i$f$mapTo\\3\\221":I
    check-cast v0, Ljava/util/List;

    .line 221
    nop

    .end local v12    # "$this$map\\2":Ljava/lang/Iterable;
    .end local v13    # "$i$f$map\\2\\220":I
    check-cast v0, Ljava/lang/Iterable;

    .line 225
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 226
    nop

    .local v0, "$this$map\\5":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 227
    .local v1, "$i$f$map\\5\\226":I
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v0, v13}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v12, Ljava/util/Collection;

    .local v12, "destination\\6":Ljava/util/Collection;
    move-object v13, v0

    .local v13, "$this$mapTo\\6":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 228
    .local v14, "$i$f$mapTo\\6\\227":I
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    move-object/from16 v17, v0

    .end local v0    # "$this$map\\5":Ljava/lang/Iterable;
    .local v17, "$this$map\\5":Ljava/lang/Iterable;
    const-string v0, "live"

    if-eqz v16, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 229
    .local v16, "item\\6":Ljava/lang/Object;
    move-object/from16 v18, v16

    check-cast v18, Lkotlin/Pair;

    const/16 v19, 0x0

    .local v19, "$i$a$-map-LiveViewModel$categories$1$grouped$2\\7\\229\\1":I
    invoke-virtual/range {v18 .. v18}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v1

    .end local v1    # "$i$f$map\\5\\226":I
    .local v21, "$i$f$map\\5\\226":I
    move-object/from16 v1, v20

    check-cast v1, Ljava/lang/String;

    .local v1, "id\\7":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 226
    .local v18, "name\\7":Ljava/lang/String;
    move-object/from16 v20, v18

    check-cast v20, Ljava/lang/CharSequence;

    invoke-static/range {v20 .. v20}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 230
    const/16 v20, 0x0

    .line 226
    .local v20, "$i$a$-ifBlank-LiveViewModel$categories$1$grouped$2$1\\8\\226\\7":I
    move-object/from16 v20, v1

    .end local v20    # "$i$a$-ifBlank-LiveViewModel$categories$1$grouped$2$1\\8\\226\\7":I
    :cond_2
    move-object/from16 v22, v3

    .end local v3    # "$result":Ljava/lang/Object;
    .local v22, "$result":Ljava/lang/Object;
    move-object/from16 v3, v20

    check-cast v3, Ljava/lang/String;

    move-object/from16 v20, v6

    .end local v6    # "value":Ljava/lang/Object;
    .local v20, "value":Ljava/lang/Object;
    new-instance v6, Lcom/bayyari/tv/domain/model/Category;

    invoke-direct {v6, v1, v3, v0}, Lcom/bayyari/tv/domain/model/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v1    # "id\\7":Ljava/lang/String;
    .end local v18    # "name\\7":Ljava/lang/String;
    .end local v19    # "$i$a$-map-LiveViewModel$categories$1$grouped$2\\7\\229\\1":I
    invoke-interface {v12, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    move-object/from16 v6, v20

    move/from16 v1, v21

    move-object/from16 v3, v22

    goto :goto_2

    .line 231
    .end local v16    # "item\\6":Ljava/lang/Object;
    .end local v20    # "value":Ljava/lang/Object;
    .end local v21    # "$i$f$map\\5\\226":I
    .end local v22    # "$result":Ljava/lang/Object;
    .local v1, "$i$f$map\\5\\226":I
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_3
    move/from16 v21, v1

    move-object/from16 v22, v3

    move-object/from16 v20, v6

    .end local v1    # "$i$f$map\\5\\226":I
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v12    # "destination\\6":Ljava/util/Collection;
    .end local v13    # "$this$mapTo\\6":Ljava/lang/Iterable;
    .end local v14    # "$i$f$mapTo\\6\\227":I
    .restart local v20    # "value":Ljava/lang/Object;
    .restart local v21    # "$i$f$map\\5\\226":I
    .restart local v22    # "$result":Ljava/lang/Object;
    move-object v1, v12

    check-cast v1, Ljava/util/List;

    .line 227
    nop

    .line 226
    .end local v17    # "$this$map\\5":Ljava/lang/Iterable;
    .end local v21    # "$i$f$map\\5\\226":I
    nop

    .line 220
    nop

    .line 232
    .local v1, "grouped\\1":Ljava/util/List;
    new-instance v3, Lcom/bayyari/tv/domain/model/Category;

    const-string v6, ""

    const-string v12, "All"

    invoke-direct {v3, v6, v12, v0}, Lcom/bayyari/tv/domain/model/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 219
    .end local v1    # "grouped\\1":Ljava/util/List;
    .end local v9    # "$completion\\1":Lkotlin/coroutines/Continuation;
    .end local v10    # "list\\1":Ljava/util/List;
    .end local v11    # "$i$a$-map-LiveViewModel$categories$1\\1\\219\\0":I
    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;->L$1:Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;->L$3:Ljava/lang/Object;

    iput v8, v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;->I$0:I

    const/4 v1, 0x1

    iput v1, v2, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1$2$1;->label:I

    invoke-interface {v5, v0, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_4

    .line 35
    return-object v4

    .line 219
    :cond_4
    move v4, v8

    move-object/from16 v6, v20

    move-object/from16 v8, p1

    .line 49
    .end local v20    # "value":Ljava/lang/Object;
    .end local p1    # "value":Ljava/lang/Object;
    .restart local v4    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1\\1\\49\\0":I
    .restart local v6    # "value":Ljava/lang/Object;
    .local v8, "value":Ljava/lang/Object;
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .end local v4    # "$i$a$-unsafeTransform-FlowKt__TransformKt$map$1\\1\\49\\0":I
    .end local v5    # "$this$map_u24lambda_u245":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
