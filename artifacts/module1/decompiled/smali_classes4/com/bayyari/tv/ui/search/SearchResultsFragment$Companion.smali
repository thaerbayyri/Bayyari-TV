.class public final Lcom/bayyari/tv/ui/search/SearchResultsFragment$Companion;
.super Ljava/lang/Object;
.source "SearchResultsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/ui/search/SearchResultsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchResultsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchResultsFragment.kt\ncom/bayyari/tv/ui/search/SearchResultsFragment$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n1#2:73\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/search/SearchResultsFragment$Companion;",
        "",
        "<init>",
        "()V",
        "ARG_TAB",
        "",
        "newInstance",
        "Lcom/bayyari/tv/ui/search/SearchResultsFragment;",
        "tab",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/bayyari/tv/ui/search/SearchResultsFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;)Lcom/bayyari/tv/ui/search/SearchResultsFragment;
    .locals 7
    .param p1, "tab"    # Ljava/lang/String;

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v1, Lcom/bayyari/tv/ui/search/SearchResultsFragment;

    invoke-direct {v1}, Lcom/bayyari/tv/ui/search/SearchResultsFragment;-><init>()V

    move-object v2, v1

    .local v2, "$this$newInstance_u24lambda_u241\\1":Lcom/bayyari/tv/ui/search/SearchResultsFragment;
    const/4 v3, 0x0

    .line 24
    .local v3, "$i$a$-apply-SearchResultsFragment$Companion$newInstance$1\\1\\23\\0":I
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 73
    move-object v5, v4

    .local v5, "$this$newInstance_u24lambda_u241_u24lambda_u240\\2":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 24
    .local v6, "$i$a$-apply-SearchResultsFragment$Companion$newInstance$1$1\\2\\24\\1":I
    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .end local v5    # "$this$newInstance_u24lambda_u241_u24lambda_u240\\2":Landroid/os/Bundle;
    .end local v6    # "$i$a$-apply-SearchResultsFragment$Companion$newInstance$1$1\\2\\24\\1":I
    invoke-virtual {v2, v4}, Lcom/bayyari/tv/ui/search/SearchResultsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 25
    nop

    .line 23
    .end local v2    # "$this$newInstance_u24lambda_u241\\1":Lcom/bayyari/tv/ui/search/SearchResultsFragment;
    .end local v3    # "$i$a$-apply-SearchResultsFragment$Companion$newInstance$1\\1\\23\\0":I
    nop

    .line 25
    return-object v1
.end method
