.class Lcom/bayyari/tv/ui/auth/Hilt_LoginActivity$1;
.super Ljava/lang/Object;
.source "Hilt_LoginActivity.java"

# interfaces
.implements Landroidx/activity/contextaware/OnContextAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/auth/Hilt_LoginActivity;->_initHiltInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bayyari/tv/ui/auth/Hilt_LoginActivity;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/ui/auth/Hilt_LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bayyari/tv/ui/auth/Hilt_LoginActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/bayyari/tv/ui/auth/Hilt_LoginActivity$1;->this$0:Lcom/bayyari/tv/ui/auth/Hilt_LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextAvailable(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/bayyari/tv/ui/auth/Hilt_LoginActivity$1;->this$0:Lcom/bayyari/tv/ui/auth/Hilt_LoginActivity;

    invoke-virtual {v0}, Lcom/bayyari/tv/ui/auth/Hilt_LoginActivity;->inject()V

    .line 44
    return-void
.end method
