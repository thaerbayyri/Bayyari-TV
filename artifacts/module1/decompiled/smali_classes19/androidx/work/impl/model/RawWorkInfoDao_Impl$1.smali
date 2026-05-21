.class Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;
.super Ljava/lang/Object;
.source "RawWorkInfoDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/RawWorkInfoDao_Impl;->getWorkInfoPojosLiveData(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

.field final synthetic val$_internalQuery:Landroidx/sqlite/db/SupportSQLiteQuery;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/db/SupportSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/work/impl/model/RawWorkInfoDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_internalQuery"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 280
    iput-object p1, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    iput-object p2, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;->val$_internalQuery:Landroidx/sqlite/db/SupportSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 65
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->access$000(Landroidx/work/impl/model/RawWorkInfoDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;->val$_internalQuery:Landroidx/sqlite/db/SupportSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 285
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 286
    .local v0, "_cursorIndexOfId":I
    const-string v3, "state"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 287
    .local v3, "_cursorIndexOfState":I
    const-string v5, "output"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 288
    .local v5, "_cursorIndexOfOutput":I
    const-string v6, "initial_delay"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 289
    .local v6, "_cursorIndexOfInitialDelay":I
    const-string v7, "interval_duration"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 290
    .local v7, "_cursorIndexOfIntervalDuration":I
    const-string v8, "flex_duration"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 291
    .local v8, "_cursorIndexOfFlexDuration":I
    const-string v9, "run_attempt_count"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 292
    .local v9, "_cursorIndexOfRunAttemptCount":I
    const-string v10, "backoff_policy"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 293
    .local v10, "_cursorIndexOfBackoffPolicy":I
    const-string v11, "backoff_delay_duration"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 294
    .local v11, "_cursorIndexOfBackoffDelayDuration":I
    const-string v12, "last_enqueue_time"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 295
    .local v12, "_cursorIndexOfLastEnqueueTime":I
    const-string v13, "period_count"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 296
    .local v13, "_cursorIndexOfPeriodCount":I
    const-string v14, "generation"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 297
    .local v14, "_cursorIndexOfGeneration":I
    const-string v15, "next_schedule_time_override"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 298
    .local v15, "_cursorIndexOfNextScheduleTimeOverride":I
    const-string v4, "stop_reason"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 299
    .local v4, "_cursorIndexOfStopReason":I
    move/from16 v16, v4

    .end local v4    # "_cursorIndexOfStopReason":I
    .local v16, "_cursorIndexOfStopReason":I
    const-string v4, "required_network_type"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 300
    .local v4, "_cursorIndexOfRequiredNetworkType":I
    move/from16 v17, v4

    .end local v4    # "_cursorIndexOfRequiredNetworkType":I
    .local v17, "_cursorIndexOfRequiredNetworkType":I
    const-string v4, "requires_charging"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 301
    .local v4, "_cursorIndexOfRequiresCharging":I
    move/from16 v18, v4

    .end local v4    # "_cursorIndexOfRequiresCharging":I
    .local v18, "_cursorIndexOfRequiresCharging":I
    const-string v4, "requires_device_idle"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 302
    .local v4, "_cursorIndexOfRequiresDeviceIdle":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v19, "_cursorIndexOfRequiresDeviceIdle":I
    const-string v4, "requires_battery_not_low"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 303
    .local v4, "_cursorIndexOfRequiresBatteryNotLow":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v20, "_cursorIndexOfRequiresBatteryNotLow":I
    const-string v4, "requires_storage_not_low"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 304
    .local v4, "_cursorIndexOfRequiresStorageNotLow":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v21, "_cursorIndexOfRequiresStorageNotLow":I
    const-string v4, "trigger_content_update_delay"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 305
    .local v4, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v22, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const-string v4, "trigger_max_content_delay"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 306
    .local v4, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v23, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const-string v4, "content_uri_triggers"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 307
    .local v4, "_cursorIndexOfContentUriTriggers":I
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v25, v24

    .line 308
    .local v25, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v26, v24

    .line 309
    .local v26, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 310
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v27, v24

    .line 311
    .local v27, "_tmpKey":Ljava/lang/String;
    move/from16 v24, v4

    move-object/from16 v4, v25

    move/from16 v25, v15

    move-object/from16 v15, v27

    .end local v27    # "_tmpKey":Ljava/lang/String;
    .local v4, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v15, "_tmpKey":Ljava/lang/String;
    .local v24, "_cursorIndexOfContentUriTriggers":I
    .local v25, "_cursorIndexOfNextScheduleTimeOverride":I
    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    .line 312
    .local v27, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v27, :cond_0

    .line 313
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v27, v28

    .line 314
    move/from16 v28, v14

    move-object/from16 v14, v27

    .end local v27    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v14, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v28, "_cursorIndexOfGeneration":I
    invoke-virtual {v4, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v27, v14

    goto :goto_1

    .line 312
    .end local v28    # "_cursorIndexOfGeneration":I
    .local v14, "_cursorIndexOfGeneration":I
    .restart local v27    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move/from16 v28, v14

    .line 316
    .end local v14    # "_cursorIndexOfGeneration":I
    .restart local v28    # "_cursorIndexOfGeneration":I
    :goto_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 317
    .local v14, "_tmpKey_1":Ljava/lang/String;
    move-object/from16 v29, v15

    move-object/from16 v15, v26

    .end local v26    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v15, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v29, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 318
    .local v26, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v26, :cond_1

    .line 319
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v26, v30

    .line 320
    move/from16 v30, v13

    move-object/from16 v13, v26

    .end local v26    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v13, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v30, "_cursorIndexOfPeriodCount":I
    invoke-virtual {v15, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 318
    .end local v30    # "_cursorIndexOfPeriodCount":I
    .local v13, "_cursorIndexOfPeriodCount":I
    .restart local v26    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :cond_1
    move/from16 v30, v13

    .line 322
    .end local v13    # "_cursorIndexOfPeriodCount":I
    .end local v14    # "_tmpKey_1":Ljava/lang/String;
    .end local v26    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v27    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v29    # "_tmpKey":Ljava/lang/String;
    .restart local v30    # "_cursorIndexOfPeriodCount":I
    :goto_2
    move-object/from16 v26, v15

    move/from16 v15, v25

    move/from16 v14, v28

    move/from16 v13, v30

    move-object/from16 v25, v4

    move/from16 v4, v24

    goto :goto_0

    .line 323
    .end local v24    # "_cursorIndexOfContentUriTriggers":I
    .end local v28    # "_cursorIndexOfGeneration":I
    .end local v30    # "_cursorIndexOfPeriodCount":I
    .local v4, "_cursorIndexOfContentUriTriggers":I
    .restart local v13    # "_cursorIndexOfPeriodCount":I
    .local v14, "_cursorIndexOfGeneration":I
    .local v15, "_cursorIndexOfNextScheduleTimeOverride":I
    .local v25, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v26, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :cond_2
    move/from16 v24, v4

    move/from16 v30, v13

    move/from16 v28, v14

    move-object/from16 v4, v25

    move/from16 v25, v15

    move-object/from16 v15, v26

    .end local v13    # "_cursorIndexOfPeriodCount":I
    .end local v14    # "_cursorIndexOfGeneration":I
    .end local v26    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v4, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v15, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v24    # "_cursorIndexOfContentUriTriggers":I
    .local v25, "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v28    # "_cursorIndexOfGeneration":I
    .restart local v30    # "_cursorIndexOfPeriodCount":I
    const/4 v13, -0x1

    invoke-interface {v2, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 324
    iget-object v14, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    invoke-static {v14, v4}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->access$100(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Ljava/util/HashMap;)V

    .line 325
    iget-object v14, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    invoke-static {v14, v15}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->access$200(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Ljava/util/HashMap;)V

    .line 326
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    .local v14, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_22

    .line 330
    const/4 v13, -0x1

    if-ne v0, v13, :cond_3

    .line 331
    const/4 v13, 0x0

    move-object/from16 v32, v13

    .local v13, "_tmpId":Ljava/lang/String;
    goto :goto_4

    .line 333
    .end local v13    # "_tmpId":Ljava/lang/String;
    :cond_3
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 334
    const/4 v13, 0x0

    move-object/from16 v32, v13

    .restart local v13    # "_tmpId":Ljava/lang/String;
    goto :goto_4

    .line 336
    .end local v13    # "_tmpId":Ljava/lang/String;
    :cond_4
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v32, v13

    .line 340
    .local v32, "_tmpId":Ljava/lang/String;
    :goto_4
    const/4 v13, -0x1

    if-ne v3, v13, :cond_5

    .line 341
    const/4 v13, 0x0

    move-object/from16 v33, v13

    .local v13, "_tmpState":Landroidx/work/WorkInfo$State;
    goto :goto_5

    .line 344
    .end local v13    # "_tmpState":Landroidx/work/WorkInfo$State;
    :cond_5
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 345
    .local v13, "_tmp":I
    sget-object v27, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v13}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v27

    move-object/from16 v33, v27

    .line 348
    .end local v13    # "_tmp":I
    .local v33, "_tmpState":Landroidx/work/WorkInfo$State;
    :goto_5
    const/4 v13, -0x1

    if-ne v5, v13, :cond_6

    .line 349
    const/4 v13, 0x0

    move-object/from16 v34, v13

    .local v13, "_tmpOutput":Landroidx/work/Data;
    goto :goto_7

    .line 352
    .end local v13    # "_tmpOutput":Landroidx/work/Data;
    :cond_6
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 353
    const/4 v13, 0x0

    .local v13, "_tmp_1":[B
    goto :goto_6

    .line 355
    .end local v13    # "_tmp_1":[B
    :cond_7
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 357
    .restart local v13    # "_tmp_1":[B
    :goto_6
    invoke-static {v13}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v27

    move-object/from16 v34, v27

    .line 360
    .end local v13    # "_tmp_1":[B
    .local v34, "_tmpOutput":Landroidx/work/Data;
    :goto_7
    const/4 v13, -0x1

    if-ne v6, v13, :cond_8

    .line 361
    const-wide/16 v26, 0x0

    move-wide/from16 v35, v26

    .local v26, "_tmpInitialDelay":J
    goto :goto_8

    .line 363
    .end local v26    # "_tmpInitialDelay":J
    :cond_8
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-wide/from16 v35, v26

    .line 366
    .local v35, "_tmpInitialDelay":J
    :goto_8
    if-ne v7, v13, :cond_9

    .line 367
    const-wide/16 v26, 0x0

    move-wide/from16 v37, v26

    .local v26, "_tmpIntervalDuration":J
    goto :goto_9

    .line 369
    .end local v26    # "_tmpIntervalDuration":J
    :cond_9
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-wide/from16 v37, v26

    .line 372
    .local v37, "_tmpIntervalDuration":J
    :goto_9
    if-ne v8, v13, :cond_a

    .line 373
    const-wide/16 v26, 0x0

    move-wide/from16 v39, v26

    .local v26, "_tmpFlexDuration":J
    goto :goto_a

    .line 375
    .end local v26    # "_tmpFlexDuration":J
    :cond_a
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-wide/from16 v39, v26

    .line 378
    .local v39, "_tmpFlexDuration":J
    :goto_a
    if-ne v9, v13, :cond_b

    .line 379
    const/16 v26, 0x0

    move/from16 v42, v26

    .local v26, "_tmpRunAttemptCount":I
    goto :goto_b

    .line 381
    .end local v26    # "_tmpRunAttemptCount":I
    :cond_b
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    move/from16 v42, v26

    .line 384
    .local v42, "_tmpRunAttemptCount":I
    :goto_b
    if-ne v10, v13, :cond_c

    .line 385
    const/4 v13, 0x0

    move-object/from16 v43, v13

    .local v13, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    goto :goto_c

    .line 388
    .end local v13    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    :cond_c
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 389
    .local v13, "_tmp_2":I
    sget-object v27, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v13}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v27

    move-object/from16 v43, v27

    .line 392
    .end local v13    # "_tmp_2":I
    .local v43, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    :goto_c
    const/4 v13, -0x1

    if-ne v11, v13, :cond_d

    .line 393
    const-wide/16 v26, 0x0

    move-wide/from16 v44, v26

    .local v26, "_tmpBackoffDelayDuration":J
    goto :goto_d

    .line 395
    .end local v26    # "_tmpBackoffDelayDuration":J
    :cond_d
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-wide/from16 v44, v26

    .line 398
    .local v44, "_tmpBackoffDelayDuration":J
    :goto_d
    if-ne v12, v13, :cond_e

    .line 399
    const-wide/16 v26, 0x0

    move-wide/from16 v46, v26

    .local v26, "_tmpLastEnqueueTime":J
    goto :goto_e

    .line 401
    .end local v26    # "_tmpLastEnqueueTime":J
    :cond_e
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-wide/from16 v46, v26

    .line 404
    .local v46, "_tmpLastEnqueueTime":J
    :goto_e
    move/from16 v1, v30

    .end local v30    # "_cursorIndexOfPeriodCount":I
    .local v1, "_cursorIndexOfPeriodCount":I
    if-ne v1, v13, :cond_f

    .line 405
    const/16 v26, 0x0

    move/from16 v48, v26

    .local v26, "_tmpPeriodCount":I
    goto :goto_f

    .line 407
    .end local v26    # "_tmpPeriodCount":I
    :cond_f
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    move/from16 v48, v26

    .line 410
    .local v48, "_tmpPeriodCount":I
    :goto_f
    move/from16 v30, v1

    move/from16 v1, v28

    .end local v28    # "_cursorIndexOfGeneration":I
    .local v1, "_cursorIndexOfGeneration":I
    .restart local v30    # "_cursorIndexOfPeriodCount":I
    if-ne v1, v13, :cond_10

    .line 411
    const/16 v26, 0x0

    move/from16 v49, v26

    .local v26, "_tmpGeneration":I
    goto :goto_10

    .line 413
    .end local v26    # "_tmpGeneration":I
    :cond_10
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    move/from16 v49, v26

    .line 416
    .local v49, "_tmpGeneration":I
    :goto_10
    move/from16 v28, v1

    move/from16 v1, v25

    .end local v25    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v1, "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v28    # "_cursorIndexOfGeneration":I
    if-ne v1, v13, :cond_11

    .line 417
    const-wide/16 v25, 0x0

    move-wide/from16 v50, v25

    .local v25, "_tmpNextScheduleTimeOverride":J
    goto :goto_11

    .line 419
    .end local v25    # "_tmpNextScheduleTimeOverride":J
    :cond_11
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v50, v25

    .line 422
    .local v50, "_tmpNextScheduleTimeOverride":J
    :goto_11
    move/from16 v25, v1

    move/from16 v1, v16

    .end local v16    # "_cursorIndexOfStopReason":I
    .local v1, "_cursorIndexOfStopReason":I
    .local v25, "_cursorIndexOfNextScheduleTimeOverride":I
    if-ne v1, v13, :cond_12

    .line 423
    const/16 v16, 0x0

    move/from16 v52, v16

    .local v16, "_tmpStopReason":I
    goto :goto_12

    .line 425
    .end local v16    # "_tmpStopReason":I
    :cond_12
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v52, v16

    .line 429
    .local v52, "_tmpStopReason":I
    :goto_12
    move/from16 v16, v1

    move/from16 v1, v17

    .end local v17    # "_cursorIndexOfRequiredNetworkType":I
    .local v1, "_cursorIndexOfRequiredNetworkType":I
    .local v16, "_cursorIndexOfStopReason":I
    if-ne v1, v13, :cond_13

    .line 430
    const/4 v13, 0x0

    move-object/from16 v54, v13

    .local v13, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    goto :goto_13

    .line 433
    .end local v13    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    :cond_13
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 434
    .local v13, "_tmp_3":I
    sget-object v17, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v13}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v17

    move-object/from16 v54, v17

    .line 437
    .end local v13    # "_tmp_3":I
    .local v54, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    :goto_13
    move/from16 v13, v18

    move/from16 v18, v1

    const/4 v1, -0x1

    .end local v1    # "_cursorIndexOfRequiredNetworkType":I
    .local v13, "_cursorIndexOfRequiresCharging":I
    .local v18, "_cursorIndexOfRequiredNetworkType":I
    if-ne v13, v1, :cond_14

    .line 438
    const/4 v1, 0x0

    move/from16 v55, v1

    .local v1, "_tmpRequiresCharging":Z
    goto :goto_15

    .line 441
    .end local v1    # "_tmpRequiresCharging":Z
    :cond_14
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 442
    .local v1, "_tmp_4":I
    if-eqz v1, :cond_15

    const/16 v27, 0x1

    goto :goto_14

    :cond_15
    const/16 v27, 0x0

    :goto_14
    move/from16 v55, v27

    .line 445
    .end local v1    # "_tmp_4":I
    .local v55, "_tmpRequiresCharging":Z
    :goto_15
    move/from16 v1, v19

    move/from16 v19, v3

    const/4 v3, -0x1

    .end local v3    # "_cursorIndexOfState":I
    .local v1, "_cursorIndexOfRequiresDeviceIdle":I
    .local v19, "_cursorIndexOfState":I
    if-ne v1, v3, :cond_16

    .line 446
    const/4 v3, 0x0

    move/from16 v56, v3

    .local v3, "_tmpRequiresDeviceIdle":Z
    goto :goto_17

    .line 449
    .end local v3    # "_tmpRequiresDeviceIdle":Z
    :cond_16
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 450
    .local v3, "_tmp_5":I
    if-eqz v3, :cond_17

    const/16 v27, 0x1

    goto :goto_16

    :cond_17
    const/16 v27, 0x0

    :goto_16
    move/from16 v56, v27

    .line 453
    .end local v3    # "_tmp_5":I
    .local v56, "_tmpRequiresDeviceIdle":Z
    :goto_17
    move/from16 v3, v20

    move/from16 v20, v1

    const/4 v1, -0x1

    .end local v1    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v3, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v20, "_cursorIndexOfRequiresDeviceIdle":I
    if-ne v3, v1, :cond_18

    .line 454
    const/4 v1, 0x0

    move/from16 v57, v1

    .local v1, "_tmpRequiresBatteryNotLow":Z
    goto :goto_19

    .line 457
    .end local v1    # "_tmpRequiresBatteryNotLow":Z
    :cond_18
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 458
    .local v1, "_tmp_6":I
    if-eqz v1, :cond_19

    const/16 v27, 0x1

    goto :goto_18

    :cond_19
    const/16 v27, 0x0

    :goto_18
    move/from16 v57, v27

    .line 461
    .end local v1    # "_tmp_6":I
    .local v57, "_tmpRequiresBatteryNotLow":Z
    :goto_19
    move/from16 v1, v21

    move/from16 v21, v3

    const/4 v3, -0x1

    .end local v3    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v1, "_cursorIndexOfRequiresStorageNotLow":I
    .local v21, "_cursorIndexOfRequiresBatteryNotLow":I
    if-ne v1, v3, :cond_1a

    .line 462
    const/4 v3, 0x0

    move/from16 v58, v3

    .local v3, "_tmpRequiresStorageNotLow":Z
    goto :goto_1b

    .line 465
    .end local v3    # "_tmpRequiresStorageNotLow":Z
    :cond_1a
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 466
    .local v3, "_tmp_7":I
    if-eqz v3, :cond_1b

    const/16 v17, 0x1

    goto :goto_1a

    :cond_1b
    const/16 v17, 0x0

    :goto_1a
    move/from16 v58, v17

    .line 469
    .end local v3    # "_tmp_7":I
    .local v58, "_tmpRequiresStorageNotLow":Z
    :goto_1b
    move/from16 v17, v1

    move/from16 v3, v22

    const/4 v1, -0x1

    .end local v1    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v22    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v3, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v17, "_cursorIndexOfRequiresStorageNotLow":I
    if-ne v3, v1, :cond_1c

    .line 470
    const-wide/16 v26, 0x0

    move-wide/from16 v59, v26

    .local v26, "_tmpContentTriggerUpdateDelayMillis":J
    goto :goto_1c

    .line 472
    .end local v26    # "_tmpContentTriggerUpdateDelayMillis":J
    :cond_1c
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-wide/from16 v59, v26

    .line 475
    .local v59, "_tmpContentTriggerUpdateDelayMillis":J
    :goto_1c
    move/from16 v22, v3

    move/from16 v3, v23

    .end local v23    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v3, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v22    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    if-ne v3, v1, :cond_1d

    .line 476
    const-wide/16 v26, 0x0

    move-wide/from16 v61, v26

    .local v26, "_tmpContentTriggerMaxDelayMillis":J
    goto :goto_1d

    .line 478
    .end local v26    # "_tmpContentTriggerMaxDelayMillis":J
    :cond_1d
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-wide/from16 v61, v26

    .line 481
    .local v61, "_tmpContentTriggerMaxDelayMillis":J
    :goto_1d
    move/from16 v23, v3

    move/from16 v3, v24

    .end local v24    # "_cursorIndexOfContentUriTriggers":I
    .local v3, "_cursorIndexOfContentUriTriggers":I
    .restart local v23    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    if-ne v3, v1, :cond_1e

    .line 482
    const/16 v24, 0x0

    move-object/from16 v63, v24

    .local v24, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    goto :goto_1f

    .line 485
    .end local v24    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    :cond_1e
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 486
    const/16 v24, 0x0

    .local v24, "_tmp_8":[B
    goto :goto_1e

    .line 488
    .end local v24    # "_tmp_8":[B
    :cond_1f
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    .line 490
    .restart local v24    # "_tmp_8":[B
    :goto_1e
    sget-object v26, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v24 .. v24}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v26

    move-object/from16 v63, v26

    .line 492
    .end local v24    # "_tmp_8":[B
    .local v63, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    :goto_1f
    new-instance v53, Landroidx/work/Constraints;

    invoke-direct/range {v53 .. v63}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    move-object/from16 v24, v54

    .end local v54    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .local v24, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move-object/from16 v41, v53

    .line 493
    .local v41, "_tmpConstraints":Landroidx/work/Constraints;
    const/16 v26, 0x0

    .line 494
    .local v26, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v29, v27

    .line 495
    .local v29, "_tmpKey_2":Ljava/lang/String;
    move-object/from16 v1, v29

    .end local v29    # "_tmpKey_2":Ljava/lang/String;
    .local v1, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/ArrayList;

    .line 496
    .end local v26    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v29, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v29, :cond_20

    .line 497
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v26

    move-object/from16 v53, v29

    goto :goto_20

    .line 496
    :cond_20
    move-object/from16 v53, v29

    .line 499
    .end local v29    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v53, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_20
    const/16 v26, 0x0

    .line 500
    .local v26, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v64, v29

    .line 501
    .local v64, "_tmpKey_3":Ljava/lang/String;
    move/from16 v29, v0

    move-object/from16 v0, v64

    .end local v64    # "_tmpKey_3":Ljava/lang/String;
    .local v0, "_tmpKey_3":Ljava/lang/String;
    .local v29, "_cursorIndexOfId":I
    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/ArrayList;

    .line 502
    .end local v26    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v31, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v31, :cond_21

    .line 503
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v31, v26

    move-object/from16 v54, v31

    goto :goto_21

    .line 502
    :cond_21
    move-object/from16 v54, v31

    .line 505
    .end local v31    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v54, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :goto_21
    new-instance v31, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct/range {v31 .. v54}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    move-object/from16 v26, v31

    .line 506
    .local v26, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    move-object/from16 v31, v0

    move-object/from16 v0, v26

    .end local v26    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v31, "_tmpKey_3":Ljava/lang/String;
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    move-object/from16 v1, p0

    move/from16 v24, v3

    move/from16 v3, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v0, v29

    move/from16 v21, v17

    move/from16 v17, v18

    move/from16 v18, v13

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v1    # "_tmpKey_2":Ljava/lang/String;
    .end local v24    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v31    # "_tmpKey_3":Ljava/lang/String;
    .end local v32    # "_tmpId":Ljava/lang/String;
    .end local v33    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v34    # "_tmpOutput":Landroidx/work/Data;
    .end local v35    # "_tmpInitialDelay":J
    .end local v37    # "_tmpIntervalDuration":J
    .end local v39    # "_tmpFlexDuration":J
    .end local v41    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v42    # "_tmpRunAttemptCount":I
    .end local v43    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v44    # "_tmpBackoffDelayDuration":J
    .end local v46    # "_tmpLastEnqueueTime":J
    .end local v48    # "_tmpPeriodCount":I
    .end local v49    # "_tmpGeneration":I
    .end local v50    # "_tmpNextScheduleTimeOverride":J
    .end local v52    # "_tmpStopReason":I
    .end local v53    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v54    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v55    # "_tmpRequiresCharging":Z
    .end local v56    # "_tmpRequiresDeviceIdle":Z
    .end local v57    # "_tmpRequiresBatteryNotLow":Z
    .end local v58    # "_tmpRequiresStorageNotLow":Z
    .end local v59    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v61    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v63    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    goto/16 :goto_3

    .line 508
    .end local v13    # "_cursorIndexOfRequiresCharging":I
    .end local v29    # "_cursorIndexOfId":I
    .local v0, "_cursorIndexOfId":I
    .local v3, "_cursorIndexOfState":I
    .local v17, "_cursorIndexOfRequiredNetworkType":I
    .local v18, "_cursorIndexOfRequiresCharging":I
    .local v19, "_cursorIndexOfRequiresDeviceIdle":I
    .local v20, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v21, "_cursorIndexOfRequiresStorageNotLow":I
    .local v24, "_cursorIndexOfContentUriTriggers":I
    :cond_22
    nop

    .line 510
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 508
    return-object v14

    .line 510
    .end local v0    # "_cursorIndexOfId":I
    .end local v3    # "_cursorIndexOfState":I
    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v5    # "_cursorIndexOfOutput":I
    .end local v6    # "_cursorIndexOfInitialDelay":I
    .end local v7    # "_cursorIndexOfIntervalDuration":I
    .end local v8    # "_cursorIndexOfFlexDuration":I
    .end local v9    # "_cursorIndexOfRunAttemptCount":I
    .end local v10    # "_cursorIndexOfBackoffPolicy":I
    .end local v11    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v12    # "_cursorIndexOfLastEnqueueTime":I
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v15    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v16    # "_cursorIndexOfStopReason":I
    .end local v17    # "_cursorIndexOfRequiredNetworkType":I
    .end local v18    # "_cursorIndexOfRequiresCharging":I
    .end local v19    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v20    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v21    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v22    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v23    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v24    # "_cursorIndexOfContentUriTriggers":I
    .end local v25    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v28    # "_cursorIndexOfGeneration":I
    .end local v30    # "_cursorIndexOfPeriodCount":I
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 511
    throw v0
.end method
