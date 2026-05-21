.class public final Lcom/bayyari/tv/data/api/models/LoginResponse;
.super Ljava/lang/Object;
.source "LoginResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/bayyari/tv/data/api/models/LoginResponse;",
        "",
        "userInfo",
        "Lcom/bayyari/tv/data/api/models/UserInfoDto;",
        "serverInfo",
        "Lcom/bayyari/tv/data/api/models/ServerInfoDto;",
        "<init>",
        "(Lcom/bayyari/tv/data/api/models/UserInfoDto;Lcom/bayyari/tv/data/api/models/ServerInfoDto;)V",
        "getUserInfo",
        "()Lcom/bayyari/tv/data/api/models/UserInfoDto;",
        "getServerInfo",
        "()Lcom/bayyari/tv/data/api/models/ServerInfoDto;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final serverInfo:Lcom/bayyari/tv/data/api/models/ServerInfoDto;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server_info"
    .end annotation
.end field

.field private final userInfo:Lcom/bayyari/tv/data/api/models/UserInfoDto;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_info"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/api/models/UserInfoDto;Lcom/bayyari/tv/data/api/models/ServerInfoDto;)V
    .locals 0
    .param p1, "userInfo"    # Lcom/bayyari/tv/data/api/models/UserInfoDto;
    .param p2, "serverInfo"    # Lcom/bayyari/tv/data/api/models/ServerInfoDto;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/bayyari/tv/data/api/models/LoginResponse;->userInfo:Lcom/bayyari/tv/data/api/models/UserInfoDto;

    .line 7
    iput-object p2, p0, Lcom/bayyari/tv/data/api/models/LoginResponse;->serverInfo:Lcom/bayyari/tv/data/api/models/ServerInfoDto;

    .line 5
    return-void
.end method

.method public static synthetic copy$default(Lcom/bayyari/tv/data/api/models/LoginResponse;Lcom/bayyari/tv/data/api/models/UserInfoDto;Lcom/bayyari/tv/data/api/models/ServerInfoDto;ILjava/lang/Object;)Lcom/bayyari/tv/data/api/models/LoginResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/bayyari/tv/data/api/models/LoginResponse;->userInfo:Lcom/bayyari/tv/data/api/models/UserInfoDto;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/bayyari/tv/data/api/models/LoginResponse;->serverInfo:Lcom/bayyari/tv/data/api/models/ServerInfoDto;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/api/models/LoginResponse;->copy(Lcom/bayyari/tv/data/api/models/UserInfoDto;Lcom/bayyari/tv/data/api/models/ServerInfoDto;)Lcom/bayyari/tv/data/api/models/LoginResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/bayyari/tv/data/api/models/UserInfoDto;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/LoginResponse;->userInfo:Lcom/bayyari/tv/data/api/models/UserInfoDto;

    return-object v0
.end method

.method public final component2()Lcom/bayyari/tv/data/api/models/ServerInfoDto;
    .locals 1

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/LoginResponse;->serverInfo:Lcom/bayyari/tv/data/api/models/ServerInfoDto;

    return-object v0
.end method

.method public final copy(Lcom/bayyari/tv/data/api/models/UserInfoDto;Lcom/bayyari/tv/data/api/models/ServerInfoDto;)Lcom/bayyari/tv/data/api/models/LoginResponse;
    .locals 1

    new-instance v0, Lcom/bayyari/tv/data/api/models/LoginResponse;

    invoke-direct {v0, p1, p2}, Lcom/bayyari/tv/data/api/models/LoginResponse;-><init>(Lcom/bayyari/tv/data/api/models/UserInfoDto;Lcom/bayyari/tv/data/api/models/ServerInfoDto;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bayyari/tv/data/api/models/LoginResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/bayyari/tv/data/api/models/LoginResponse;

    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/LoginResponse;->userInfo:Lcom/bayyari/tv/data/api/models/UserInfoDto;

    iget-object v4, v1, Lcom/bayyari/tv/data/api/models/LoginResponse;->userInfo:Lcom/bayyari/tv/data/api/models/UserInfoDto;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/LoginResponse;->serverInfo:Lcom/bayyari/tv/data/api/models/ServerInfoDto;

    iget-object v1, v1, Lcom/bayyari/tv/data/api/models/LoginResponse;->serverInfo:Lcom/bayyari/tv/data/api/models/ServerInfoDto;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getServerInfo()Lcom/bayyari/tv/data/api/models/ServerInfoDto;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/LoginResponse;->serverInfo:Lcom/bayyari/tv/data/api/models/ServerInfoDto;

    return-object v0
.end method

.method public final getUserInfo()Lcom/bayyari/tv/data/api/models/UserInfoDto;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/LoginResponse;->userInfo:Lcom/bayyari/tv/data/api/models/UserInfoDto;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/LoginResponse;->userInfo:Lcom/bayyari/tv/data/api/models/UserInfoDto;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/LoginResponse;->userInfo:Lcom/bayyari/tv/data/api/models/UserInfoDto;

    invoke-virtual {v0}, Lcom/bayyari/tv/data/api/models/UserInfoDto;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/bayyari/tv/data/api/models/LoginResponse;->serverInfo:Lcom/bayyari/tv/data/api/models/ServerInfoDto;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/bayyari/tv/data/api/models/LoginResponse;->serverInfo:Lcom/bayyari/tv/data/api/models/ServerInfoDto;

    invoke-virtual {v1}, Lcom/bayyari/tv/data/api/models/ServerInfoDto;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bayyari/tv/data/api/models/LoginResponse;->userInfo:Lcom/bayyari/tv/data/api/models/UserInfoDto;

    iget-object v1, p0, Lcom/bayyari/tv/data/api/models/LoginResponse;->serverInfo:Lcom/bayyari/tv/data/api/models/ServerInfoDto;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoginResponse(userInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", serverInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
