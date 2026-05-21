.class public final synthetic Landroidx/room/migration/AutoMigrationSpec$-CC;
.super Ljava/lang/Object;
.source "AutoMigrationSpec.android.kt"


# direct methods
.method public static $default$onPostMigrate(Landroidx/room/migration/AutoMigrationSpec;Landroidx/sqlite/SQLiteConnection;)V
    .locals 1
    .param p0, "_this"    # Landroidx/room/migration/AutoMigrationSpec;
    .param p1, "connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 0
    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    instance-of v0, p1, Landroidx/sqlite/driver/SupportSQLiteConnection;

    if-eqz v0, :cond_0

    .line 50
    move-object v0, p1

    check-cast v0, Landroidx/sqlite/driver/SupportSQLiteConnection;

    invoke-virtual {v0}, Landroidx/sqlite/driver/SupportSQLiteConnection;->getDb()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/room/migration/AutoMigrationSpec;->onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 52
    :cond_0
    return-void
.end method

.method public static $default$onPostMigrate(Landroidx/room/migration/AutoMigrationSpec;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p0, "_this"    # Landroidx/room/migration/AutoMigrationSpec;
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 0
    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    return-void
.end method
