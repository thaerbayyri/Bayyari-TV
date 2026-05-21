.class public final Lcom/bayyari/tv/util/EncryptedPrefs;
.super Ljava/lang/Object;
.source "EncryptedPrefs.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/util/EncryptedPrefs$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEncryptedPrefs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EncryptedPrefs.kt\ncom/bayyari/tv/util/EncryptedPrefs\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,160:1\n1#2:161\n360#3,7:162\n827#3:169\n855#3,2:170\n295#3,2:172\n*S KotlinDebug\n*F\n+ 1 EncryptedPrefs.kt\ncom/bayyari/tv/util/EncryptedPrefs\n*L\n87#1:162,7\n100#1:169\n100#1:170,2\n113#1:172,2\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0007\u0018\u0000 22\u00020\u0001:\u00012B\u001b\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fJ\u0014\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fJ\u000e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0010J\u000e\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018J\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0010J\u000e\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001eJ\u0006\u0010\u001f\u001a\u00020\u001eJ\u000e\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\"J\u000e\u0010$\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\"J\u0006\u0010%\u001a\u00020\"J\u000e\u0010&\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u0018J\u0006\u0010\'\u001a\u00020\u0018J\u000e\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u001eJ\u0006\u0010*\u001a\u00020\u001eJ\u000e\u0010+\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\"J\u0006\u0010-\u001a\u00020\"J\u000e\u0010.\u001a\u00020\u00122\u0006\u0010/\u001a\u00020\u0018J\u0006\u00100\u001a\u00020\u0018J\u0006\u00101\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcom/bayyari/tv/util/EncryptedPrefs;",
        "",
        "context",
        "Landroid/content/Context;",
        "gson",
        "Lcom/google/gson/Gson;",
        "<init>",
        "(Landroid/content/Context;Lcom/google/gson/Gson;)V",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "createPrefs",
        "listType",
        "Ljava/lang/reflect/Type;",
        "kotlin.jvm.PlatformType",
        "getServers",
        "",
        "Lcom/bayyari/tv/domain/model/Server;",
        "saveServers",
        "",
        "servers",
        "upsertServer",
        "server",
        "removeServer",
        "id",
        "",
        "getActiveServerId",
        "setActiveServerId",
        "getActiveServer",
        "setRememberLogin",
        "remember",
        "",
        "isRememberLogin",
        "setDefaultPlayer",
        "value",
        "",
        "getDefaultPlayer",
        "setStreamFormat",
        "getStreamFormat",
        "setBufferSizeMs",
        "getBufferSizeMs",
        "setAutoPlayNext",
        "enabled",
        "getAutoPlayNext",
        "setParentalPin",
        "pin",
        "getParentalPin",
        "setLastChannelId",
        "streamId",
        "getLastChannelId",
        "clearAll",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/bayyari/tv/util/EncryptedPrefs$Companion;

.field private static final TAG:Ljava/lang/String; = "EncryptedPrefs"


# instance fields
.field private final context:Landroid/content/Context;

.field private final gson:Lcom/google/gson/Gson;

.field private final listType:Ljava/lang/reflect/Type;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bayyari/tv/util/EncryptedPrefs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bayyari/tv/util/EncryptedPrefs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bayyari/tv/util/EncryptedPrefs;->Companion:Lcom/bayyari/tv/util/EncryptedPrefs$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/gson/Gson;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .param p2, "gson"    # Lcom/google/gson/Gson;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->gson:Lcom/google/gson/Gson;

    .line 32
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/bayyari/tv/util/EncryptedPrefs;->createPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    .line 71
    new-instance v0, Lcom/bayyari/tv/util/EncryptedPrefs$listType$1;

    invoke-direct {v0}, Lcom/bayyari/tv/util/EncryptedPrefs$listType$1;-><init>()V

    invoke-virtual {v0}, Lcom/bayyari/tv/util/EncryptedPrefs$listType$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->listType:Ljava/lang/reflect/Type;

    .line 27
    return-void
.end method

.method private final createPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    const-string v0, "build(...)"

    const-string v1, "bayyari_secure"

    .line 36
    :try_start_0
    new-instance v2, Landroidx/security/crypto/MasterKey$Builder;

    invoke-direct {v2, p1}, Landroidx/security/crypto/MasterKey$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    sget-object v3, Landroidx/security/crypto/MasterKey$KeyScheme;->AES256_GCM:Landroidx/security/crypto/MasterKey$KeyScheme;

    invoke-virtual {v2, v3}, Landroidx/security/crypto/MasterKey$Builder;->setKeyScheme(Landroidx/security/crypto/MasterKey$KeyScheme;)Landroidx/security/crypto/MasterKey$Builder;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroidx/security/crypto/MasterKey$Builder;->build()Landroidx/security/crypto/MasterKey;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    nop

    .line 40
    .local v2, "masterKey":Landroidx/security/crypto/MasterKey;
    nop

    .line 41
    nop

    .line 42
    nop

    .line 43
    sget-object v3, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->AES256_SIV:Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    .line 44
    sget-object v4, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->AES256_GCM:Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    .line 39
    invoke-static {p1, v1, v2, v3, v4}, Landroidx/security/crypto/EncryptedSharedPreferences;->create(Landroid/content/Context;Ljava/lang/String;Landroidx/security/crypto/MasterKey;Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 35
    .end local v2    # "masterKey":Landroidx/security/crypto/MasterKey;
    nop

    .line 38
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    return-object v3

    .line 46
    :catchall_0
    move-exception v2

    .line 47
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "EncryptedPrefs"

    const-string v4, "EncryptedSharedPreferences unavailable, falling back to plain prefs"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    nop

    .line 50
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    .line 51
    new-instance v3, Landroidx/security/crypto/MasterKey$Builder;

    invoke-direct {v3, p1}, Landroidx/security/crypto/MasterKey$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    sget-object v4, Landroidx/security/crypto/MasterKey$KeyScheme;->AES256_GCM:Landroidx/security/crypto/MasterKey$KeyScheme;

    invoke-virtual {v3, v4}, Landroidx/security/crypto/MasterKey$Builder;->setKeyScheme(Landroidx/security/crypto/MasterKey$KeyScheme;)Landroidx/security/crypto/MasterKey$Builder;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Landroidx/security/crypto/MasterKey$Builder;->build()Landroidx/security/crypto/MasterKey;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    nop

    .line 55
    .local v3, "masterKey":Landroidx/security/crypto/MasterKey;
    nop

    .line 56
    nop

    .line 57
    nop

    .line 58
    sget-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->AES256_SIV:Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    .line 59
    sget-object v4, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->AES256_GCM:Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    .line 54
    invoke-static {p1, v1, v3, v0, v4}, Landroidx/security/crypto/EncryptedSharedPreferences;->create(Landroid/content/Context;Ljava/lang/String;Landroidx/security/crypto/MasterKey;Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    .end local v3    # "masterKey":Landroidx/security/crypto/MasterKey;
    nop

    .line 53
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 61
    :catchall_1
    move-exception v0

    .line 62
    .local v0, "<unused var>":Ljava/lang/Throwable;
    const-string v1, "bayyari_secure_fallback"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 61
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v1

    .line 49
    .end local v0    # "<unused var>":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final clearAll()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final getActiveServer()Lcom/bayyari/tv/domain/model/Server;
    .locals 9

    .line 111
    invoke-virtual {p0}, Lcom/bayyari/tv/util/EncryptedPrefs;->getActiveServerId()I

    move-result v0

    .line 112
    .local v0, "activeId":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/bayyari/tv/util/EncryptedPrefs;->getServers()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$firstOrNull\\1":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 172
    .local v3, "$i$f$firstOrNull\\1\\113":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element\\1":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/bayyari/tv/domain/model/Server;

    .local v6, "it\\2":Lcom/bayyari/tv/domain/model/Server;
    const/4 v7, 0x0

    .line 113
    .local v7, "$i$a$-firstOrNull-EncryptedPrefs$getActiveServer$1\\2\\172\\0":I
    invoke-virtual {v6}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v8

    if-ne v8, v0, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 172
    .end local v6    # "it\\2":Lcom/bayyari/tv/domain/model/Server;
    .end local v7    # "$i$a$-firstOrNull-EncryptedPrefs$getActiveServer$1\\2\\172\\0":I
    :goto_0
    if-eqz v8, :cond_1

    move-object v1, v5

    goto :goto_1

    .line 173
    .end local v5    # "element\\1":Ljava/lang/Object;
    :cond_3
    nop

    .end local v2    # "$this$firstOrNull\\1":Ljava/lang/Iterable;
    .end local v3    # "$i$f$firstOrNull\\1\\113":I
    :goto_1
    check-cast v1, Lcom/bayyari/tv/domain/model/Server;

    .line 113
    return-object v1
.end method

.method public final getActiveServerId()I
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "active_server_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getAutoPlayNext()Z
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "auto_play_next"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getBufferSizeMs()I
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "buffer_size_ms"

    const/16 v2, 0x3a98

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getDefaultPlayer()Ljava/lang/String;
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "default_player"

    const-string v2, "internal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final getLastChannelId()I
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_channel_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getParentalPin()Ljava/lang/String;
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "parental_pin"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public final declared-synchronized getServers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Server;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "servers_json"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v0

    .line 76
    .end local p0    # "this":Lcom/bayyari/tv/util/EncryptedPrefs;
    .local v0, "raw":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/bayyari/tv/util/EncryptedPrefs;

    .line 161
    .local v1, "$this$getServers_u24lambda_u240\\1":Lcom/bayyari/tv/util/EncryptedPrefs;
    const/4 v2, 0x0

    .line 76
    .local v2, "$i$a$-runCatching-EncryptedPrefs$getServers$1\\1\\76\\0":I
    iget-object v3, v1, Lcom/bayyari/tv/util/EncryptedPrefs;->gson:Lcom/google/gson/Gson;

    iget-object v4, v1, Lcom/bayyari/tv/util/EncryptedPrefs;->listType:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .end local v1    # "$this$getServers_u24lambda_u240\\1":Lcom/bayyari/tv/util/EncryptedPrefs;
    .end local v2    # "$i$a$-runCatching-EncryptedPrefs$getServers$1\\1\\76\\0":I
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_1
    check-cast v1, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .line 74
    .end local v0    # "raw":Ljava/lang/String;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final getStreamFormat()Ljava/lang/String;
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "stream_format"

    const-string v2, "hls"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final isRememberLogin()Z
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "remember_login"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized removeServer(I)V
    .locals 11
    .param p1, "id"    # I

    monitor-enter p0

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/bayyari/tv/util/EncryptedPrefs;->getServers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filterNot\\1":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 169
    .local v1, "$i$f$filterNot\\1\\100":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination\\2":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterNotTo\\2":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 170
    .local v4, "$i$f$filterNotTo\\2\\169":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element\\2":Ljava/lang/Object;
    move-object v8, v6

    check-cast v8, Lcom/bayyari/tv/domain/model/Server;

    .local v8, "it\\3":Lcom/bayyari/tv/domain/model/Server;
    const/4 v9, 0x0

    .line 100
    .local v9, "$i$a$-filterNot-EncryptedPrefs$removeServer$remaining$1\\3\\170\\0":I
    invoke-virtual {v8}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v10

    if-ne v10, p1, :cond_1

    const/4 v7, 0x1

    .line 170
    .end local v8    # "it\\3":Lcom/bayyari/tv/domain/model/Server;
    .end local v9    # "$i$a$-filterNot-EncryptedPrefs$removeServer$remaining$1\\3\\170\\0":I
    :cond_1
    if-nez v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v6    # "element\\2":Ljava/lang/Object;
    .end local p0    # "this":Lcom/bayyari/tv/util/EncryptedPrefs;
    :cond_2
    nop

    .end local v2    # "destination\\2":Ljava/util/Collection;
    .end local v3    # "$this$filterNotTo\\2":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterNotTo\\2\\169":I
    check-cast v2, Ljava/util/List;

    .line 169
    nop

    .line 100
    .end local v0    # "$this$filterNot\\1":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filterNot\\1\\100":I
    nop

    .line 101
    .local v2, "remaining":Ljava/util/List;
    invoke-virtual {p0, v2}, Lcom/bayyari/tv/util/EncryptedPrefs;->saveServers(Ljava/util/List;)V

    .line 102
    invoke-virtual {p0}, Lcom/bayyari/tv/util/EncryptedPrefs;->getActiveServerId()I

    move-result v0

    if-ne v0, p1, :cond_4

    .line 103
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/domain/model/Server;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v7

    :cond_3
    invoke-virtual {p0, v7}, Lcom/bayyari/tv/util/EncryptedPrefs;->setActiveServerId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_4
    monitor-exit p0

    return-void

    .line 99
    .end local v2    # "remaining":Ljava/util/List;
    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized saveServers(Ljava/util/List;)V
    .locals 3
    .param p1, "servers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Server;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "servers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "servers_json"

    iget-object v2, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 80
    .end local p0    # "this":Lcom/bayyari/tv/util/EncryptedPrefs;
    .end local p1    # "servers":Ljava/util/List;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setActiveServerId(I)V
    .locals 2
    .param p1, "id"    # I

    .line 108
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "active_server_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setAutoPlayNext(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 141
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_play_next"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setBufferSizeMs(I)V
    .locals 2
    .param p1, "value"    # I

    .line 135
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "buffer_size_ms"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setDefaultPlayer(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_player"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setLastChannelId(I)V
    .locals 2
    .param p1, "streamId"    # I

    .line 153
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_channel_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setParentalPin(Ljava/lang/String;)V
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    const-string v0, "pin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "parental_pin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setRememberLogin(Z)V
    .locals 2
    .param p1, "remember"    # Z

    .line 117
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "remember_login"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setStreamFormat(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/bayyari/tv/util/EncryptedPrefs;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "stream_format"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final declared-synchronized upsertServer(Lcom/bayyari/tv/domain/model/Server;)Lcom/bayyari/tv/domain/model/Server;
    .locals 14
    .param p1, "server"    # Lcom/bayyari/tv/domain/model/Server;

    monitor-enter p0

    :try_start_0
    const-string v0, "server"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/bayyari/tv/util/EncryptedPrefs;->getServers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, "current":Ljava/util/List;
    move-object v2, v0

    .local v2, "$this$indexOfFirst\\1":Ljava/util/List;
    const/4 v3, 0x0

    .line 162
    .local v3, "$i$f$indexOfFirst\\1\\87":I
    const/4 v4, 0x0

    .line 163
    .local v4, "index\\1":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 164
    .local v6, "item\\1":Ljava/lang/Object;
    move-object v9, v6

    check-cast v9, Lcom/bayyari/tv/domain/model/Server;

    .local v9, "it\\2":Lcom/bayyari/tv/domain/model/Server;
    const/4 v10, 0x0

    .line 87
    .local v10, "$i$a$-indexOfFirst-EncryptedPrefs$upsertServer$idx$1\\2\\164\\0":I
    invoke-virtual {v9}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v11

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v12

    if-ne v11, v12, :cond_0

    move v9, v8

    goto :goto_1

    :cond_0
    move v9, v7

    .line 164
    .end local v9    # "it\\2":Lcom/bayyari/tv/domain/model/Server;
    .end local v10    # "$i$a$-indexOfFirst-EncryptedPrefs$upsertServer$idx$1\\2\\164\\0":I
    :goto_1
    if-eqz v9, :cond_1

    .line 165
    goto :goto_2

    .line 166
    :cond_1
    nop

    .end local v6    # "item\\1":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    .end local p0    # "this":Lcom/bayyari/tv/util/EncryptedPrefs;
    :cond_2
    const/4 v5, -0x1

    move v4, v5

    .line 87
    .end local v2    # "$this$indexOfFirst\\1":Ljava/util/List;
    .end local v3    # "$i$f$indexOfFirst\\1\\87":I
    .end local v4    # "index\\1":I
    :goto_2
    move v13, v4

    .line 88
    .local v13, "idx":I
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v2

    if-nez v2, :cond_7

    .line 89
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x0

    goto :goto_4

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bayyari/tv/domain/model/Server;

    .line 161
    .local v3, "it\\3":Lcom/bayyari/tv/domain/model/Server;
    const/4 v4, 0x0

    .line 89
    .local v4, "$i$a$-maxOfOrNull-EncryptedPrefs$upsertServer$withId$nextId$1\\3\\89\\0":I
    invoke-virtual {v3}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v5

    .end local v3    # "it\\3":Lcom/bayyari/tv/domain/model/Server;
    .end local v4    # "$i$a$-maxOfOrNull-EncryptedPrefs$upsertServer$withId$nextId$1\\3\\89\\0":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bayyari/tv/domain/model/Server;

    .line 161
    .local v4, "it\\4":Lcom/bayyari/tv/domain/model/Server;
    const/4 v5, 0x0

    .line 89
    .local v5, "$i$a$-maxOfOrNull-EncryptedPrefs$upsertServer$withId$nextId$1\\4\\89\\0":I
    invoke-virtual {v4}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v6

    .end local v4    # "it\\4":Lcom/bayyari/tv/domain/model/Server;
    .end local v5    # "$i$a$-maxOfOrNull-EncryptedPrefs$upsertServer$withId$nextId$1\\4\\89\\0":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_4

    move-object v3, v4

    goto :goto_3

    :cond_5
    move-object v2, v3

    :goto_4
    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_6
    add-int/lit8 v2, v7, 0x1

    .line 90
    .local v2, "nextId":I
    const/16 v11, 0xfe

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v1 .. v12}, Lcom/bayyari/tv/domain/model/Server;->copy$default(Lcom/bayyari/tv/domain/model/Server;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZILjava/lang/Object;)Lcom/bayyari/tv/domain/model/Server;

    move-result-object v3

    move-object v1, v3

    .end local v2    # "nextId":I
    goto :goto_5

    .line 91
    :cond_7
    move-object v1, p1

    .line 88
    :goto_5
    nop

    .line 92
    .local v1, "withId":Lcom/bayyari/tv/domain/model/Server;
    if-ltz v13, :cond_8

    invoke-interface {v0, v13, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_6
    invoke-virtual {p0, v0}, Lcom/bayyari/tv/util/EncryptedPrefs;->saveServers(Ljava/util/List;)V

    .line 94
    invoke-virtual {p0}, Lcom/bayyari/tv/util/EncryptedPrefs;->getActiveServerId()I

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bayyari/tv/util/EncryptedPrefs;->setActiveServerId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_9
    monitor-exit p0

    return-object v1

    .line 85
    .end local v0    # "current":Ljava/util/List;
    .end local v1    # "withId":Lcom/bayyari/tv/domain/model/Server;
    .end local v13    # "idx":I
    .end local p1    # "server":Lcom/bayyari/tv/domain/model/Server;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
