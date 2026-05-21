.class final Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "LoginUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/domain/usecase/LoginUseCase;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.bayyari.tv.domain.usecase.LoginUseCase"
    f = "LoginUseCase.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x15
    }
    m = "invoke"
    n = {
        "serverUrl",
        "username",
        "password",
        "label",
        "remember"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "Z$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/bayyari/tv/domain/usecase/LoginUseCase;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/domain/usecase/LoginUseCase;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/domain/usecase/LoginUseCase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->this$0:Lcom/bayyari/tv/domain/usecase/LoginUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->result:Ljava/lang/Object;

    iget v0, p0, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->label:I

    iget-object v1, p0, Lcom/bayyari/tv/domain/usecase/LoginUseCase$invoke$1;->this$0:Lcom/bayyari/tv/domain/usecase/LoginUseCase;

    const/4 v6, 0x0

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/bayyari/tv/domain/usecase/LoginUseCase;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
