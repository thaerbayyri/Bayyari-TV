.class final Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RefreshWorker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/data/work/RefreshWorker;->doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.bayyari.tv.data.work.RefreshWorker"
    f = "RefreshWorker.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x19
    }
    m = "doWork"
    n = {
        "server",
        "$this$doWork_u24lambda_u240\\1",
        "$i$a$-runCatching-RefreshWorker$doWork$2\\1\\24\\0"
    }
    s = {
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/bayyari/tv/data/work/RefreshWorker;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/data/work/RefreshWorker;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/data/work/RefreshWorker;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;->this$0:Lcom/bayyari/tv/data/work/RefreshWorker;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;->result:Ljava/lang/Object;

    iget v0, p0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;->label:I

    iget-object v0, p0, Lcom/bayyari/tv/data/work/RefreshWorker$doWork$1;->this$0:Lcom/bayyari/tv/data/work/RefreshWorker;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/data/work/RefreshWorker;->doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
