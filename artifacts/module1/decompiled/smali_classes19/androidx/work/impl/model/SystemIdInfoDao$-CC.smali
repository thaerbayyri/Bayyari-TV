.class public final synthetic Landroidx/work/impl/model/SystemIdInfoDao$-CC;
.super Ljava/lang/Object;
.source "SystemIdInfoDao.kt"


# direct methods
.method public static $default$getSystemIdInfo(Landroidx/work/impl/model/SystemIdInfoDao;Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/model/SystemIdInfo;
    .locals 2
    .param p0, "_this"    # Landroidx/work/impl/model/SystemIdInfoDao;
    .param p1, "id"    # Landroidx/work/impl/model/WorkGenerationalId;

    .line 0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/work/impl/model/WorkGenerationalId;->getGeneration()I

    move-result v1

    invoke-interface {p0, v0, v1}, Landroidx/work/impl/model/SystemIdInfoDao;->getSystemIdInfo(Ljava/lang/String;I)Landroidx/work/impl/model/SystemIdInfo;

    move-result-object v0

    return-object v0
.end method

.method public static $default$removeSystemIdInfo(Landroidx/work/impl/model/SystemIdInfoDao;Landroidx/work/impl/model/WorkGenerationalId;)V
    .locals 2
    .param p0, "_this"    # Landroidx/work/impl/model/SystemIdInfoDao;
    .param p1, "id"    # Landroidx/work/impl/model/WorkGenerationalId;

    .line 0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/work/impl/model/WorkGenerationalId;->getGeneration()I

    move-result v1

    invoke-interface {p0, v0, v1}, Landroidx/work/impl/model/SystemIdInfoDao;->removeSystemIdInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$getSystemIdInfo$jd(Landroidx/work/impl/model/SystemIdInfoDao;Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/model/SystemIdInfo;
    .locals 1
    .param p0, "$this"    # Landroidx/work/impl/model/SystemIdInfoDao;
    .param p1, "id"    # Landroidx/work/impl/model/WorkGenerationalId;

    .line 23
    invoke-static {p0, p1}, Landroidx/work/impl/model/SystemIdInfoDao$-CC;->$default$getSystemIdInfo(Landroidx/work/impl/model/SystemIdInfoDao;Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/model/SystemIdInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$removeSystemIdInfo$jd(Landroidx/work/impl/model/SystemIdInfoDao;Landroidx/work/impl/model/WorkGenerationalId;)V
    .locals 0
    .param p0, "$this"    # Landroidx/work/impl/model/SystemIdInfoDao;
    .param p1, "id"    # Landroidx/work/impl/model/WorkGenerationalId;

    .line 23
    invoke-static {p0, p1}, Landroidx/work/impl/model/SystemIdInfoDao$-CC;->$default$removeSystemIdInfo(Landroidx/work/impl/model/SystemIdInfoDao;Landroidx/work/impl/model/WorkGenerationalId;)V

    return-void
.end method
