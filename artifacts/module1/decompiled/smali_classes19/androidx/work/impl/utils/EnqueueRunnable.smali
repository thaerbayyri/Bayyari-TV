.class public Landroidx/work/impl/utils/EnqueueRunnable;
.super Ljava/lang/Object;
.source "EnqueueRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mOperation:Landroidx/work/impl/OperationImpl;

.field private final mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkContinuationImpl;)V
    .locals 1
    .param p1, "workContinuation"    # Landroidx/work/impl/WorkContinuationImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workContinuation"
        }
    .end annotation

    .line 72
    new-instance v0, Landroidx/work/impl/OperationImpl;

    invoke-direct {v0}, Landroidx/work/impl/OperationImpl;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/work/impl/utils/EnqueueRunnable;-><init>(Landroidx/work/impl/WorkContinuationImpl;Landroidx/work/impl/OperationImpl;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkContinuationImpl;Landroidx/work/impl/OperationImpl;)V
    .locals 0
    .param p1, "workContinuation"    # Landroidx/work/impl/WorkContinuationImpl;
    .param p2, "result"    # Landroidx/work/impl/OperationImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "workContinuation",
            "result"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    .line 79
    iput-object p2, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    .line 80
    return-void
.end method

.method private static enqueueContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z
    .locals 6
    .param p0, "workContinuation"    # Landroidx/work/impl/WorkContinuationImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workContinuation"
        }
    .end annotation

    .line 164
    invoke-static {p0}, Landroidx/work/impl/WorkContinuationImpl;->prerequisitesFor(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/Set;

    move-result-object v0

    .line 166
    .local v0, "prerequisiteIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 167
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v1

    .line 168
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getWork()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 169
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getName()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getExistingWorkPolicy()Landroidx/work/ExistingWorkPolicy;

    move-result-object v5

    .line 166
    invoke-static {v1, v2, v3, v4, v5}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueueWorkWithPrerequisites(Landroidx/work/impl/WorkManagerImpl;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)Z

    move-result v1

    .line 173
    .local v1, "needsScheduling":Z
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->markEnqueued()V

    .line 174
    return v1
.end method

.method private static enqueueWorkWithPrerequisites(Landroidx/work/impl/WorkManagerImpl;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)Z
    .locals 21
    .param p0, "workManagerImpl"    # Landroidx/work/impl/WorkManagerImpl;
    .param p2, "prerequisiteIds"    # [Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "existingWorkPolicy"    # Landroidx/work/ExistingWorkPolicy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "workManagerImpl",
            "workList",
            "prerequisiteIds",
            "name",
            "existingWorkPolicy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/WorkManagerImpl;",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/WorkRequest;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/work/ExistingWorkPolicy;",
            ")Z"
        }
    .end annotation

    .line 189
    .local p1, "workList":Ljava/util/List;, "Ljava/util/List<+Landroidx/work/WorkRequest;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    .line 191
    .local v3, "needsScheduling":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/work/Configuration;->getClock()Landroidx/work/Clock;

    move-result-object v4

    invoke-interface {v4}, Landroidx/work/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 192
    .local v4, "currentTimeMillis":J
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v6

    .line 194
    .local v6, "workDatabase":Landroidx/work/impl/WorkDatabase;
    if-eqz v0, :cond_0

    array-length v9, v0

    if-lez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 195
    .local v9, "hasPrerequisite":Z
    :goto_0
    const/4 v10, 0x1

    .line 196
    .local v10, "hasCompletedAllPrerequisites":Z
    const/4 v11, 0x0

    .line 197
    .local v11, "hasFailedPrerequisites":Z
    const/4 v12, 0x0

    .line 199
    .local v12, "hasCancelledPrerequisites":Z
    if-eqz v9, :cond_6

    .line 203
    array-length v13, v0

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_5

    aget-object v15, v0, v14

    .line 204
    .local v15, "id":Ljava/lang/String;
    const/16 v16, 0x1

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v7

    invoke-interface {v7, v15}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v7

    .line 205
    .local v7, "prerequisiteWorkSpec":Landroidx/work/impl/model/WorkSpec;
    if-nez v7, :cond_1

    .line 206
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v13

    sget-object v14, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    const/16 v17, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v3

    .end local v3    # "needsScheduling":Z
    .local v18, "needsScheduling":Z
    const-string v3, "Prerequisite "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " doesn\'t exist; not enqueuing"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v14, v3}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return v17

    .line 210
    .end local v18    # "needsScheduling":Z
    .restart local v3    # "needsScheduling":Z
    :cond_1
    move/from16 v18, v3

    const/16 v17, 0x0

    .end local v3    # "needsScheduling":Z
    .restart local v18    # "needsScheduling":Z
    iget-object v3, v7, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 211
    .local v3, "prerequisiteState":Landroidx/work/WorkInfo$State;
    sget-object v8, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    if-ne v3, v8, :cond_2

    move/from16 v8, v16

    goto :goto_2

    :cond_2
    move/from16 v8, v17

    :goto_2
    and-int/2addr v10, v8

    .line 212
    sget-object v8, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-ne v3, v8, :cond_3

    .line 213
    const/4 v8, 0x1

    move v11, v8

    .end local v11    # "hasFailedPrerequisites":Z
    .local v8, "hasFailedPrerequisites":Z
    goto :goto_3

    .line 214
    .end local v8    # "hasFailedPrerequisites":Z
    .restart local v11    # "hasFailedPrerequisites":Z
    :cond_3
    sget-object v8, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-ne v3, v8, :cond_4

    .line 215
    const/4 v8, 0x1

    move v12, v8

    .line 203
    .end local v3    # "prerequisiteState":Landroidx/work/WorkInfo$State;
    .end local v7    # "prerequisiteWorkSpec":Landroidx/work/impl/model/WorkSpec;
    .end local v15    # "id":Ljava/lang/String;
    :cond_4
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v18

    goto :goto_1

    .end local v18    # "needsScheduling":Z
    .local v3, "needsScheduling":Z
    :cond_5
    move/from16 v18, v3

    const/16 v16, 0x1

    const/16 v17, 0x0

    .end local v3    # "needsScheduling":Z
    .restart local v18    # "needsScheduling":Z
    goto :goto_4

    .line 199
    .end local v18    # "needsScheduling":Z
    .restart local v3    # "needsScheduling":Z
    :cond_6
    move/from16 v18, v3

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 220
    .end local v3    # "needsScheduling":Z
    .restart local v18    # "needsScheduling":Z
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 224
    .local v3, "isNamed":Z
    if-eqz v3, :cond_7

    if-nez v9, :cond_7

    move/from16 v7, v16

    goto :goto_5

    :cond_7
    move/from16 v7, v17

    .line 225
    .local v7, "shouldApplyExistingWorkPolicy":Z
    :goto_5
    if-eqz v7, :cond_19

    .line 227
    nop

    .line 228
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v8

    invoke-interface {v8, v1}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 230
    .local v8, "existingWorkSpecIdAndStates":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_18

    .line 232
    sget-object v13, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    if-eq v2, v13, :cond_e

    sget-object v13, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    if-ne v2, v13, :cond_8

    move/from16 v19, v3

    goto :goto_a

    .line 266
    :cond_8
    sget-object v13, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    if-ne v2, v13, :cond_c

    .line 267
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 268
    .local v14, "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    iget-object v15, v14, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    move/from16 v19, v3

    .end local v3    # "isNamed":Z
    .local v19, "isNamed":Z
    sget-object v3, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-eq v15, v3, :cond_a

    iget-object v3, v14, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    sget-object v15, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v3, v15, :cond_9

    goto :goto_7

    .line 271
    .end local v14    # "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    :cond_9
    move/from16 v3, v19

    goto :goto_6

    .line 269
    .restart local v14    # "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    :cond_a
    :goto_7
    return v17

    .line 267
    .end local v14    # "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    .end local v19    # "isNamed":Z
    .restart local v3    # "isNamed":Z
    :cond_b
    move/from16 v19, v3

    .end local v3    # "isNamed":Z
    .restart local v19    # "isNamed":Z
    goto :goto_8

    .line 266
    .end local v19    # "isNamed":Z
    .restart local v3    # "isNamed":Z
    :cond_c
    move/from16 v19, v3

    .line 279
    .end local v3    # "isNamed":Z
    .restart local v19    # "isNamed":Z
    :goto_8
    move-object/from16 v3, p0

    move/from16 v13, v17

    invoke-static {v1, v3, v13}, Landroidx/work/impl/utils/CancelWorkRunnable;->forName(Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;Z)Landroidx/work/impl/utils/CancelWorkRunnable;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/work/impl/utils/CancelWorkRunnable;->run()V

    .line 283
    const/4 v14, 0x1

    .line 286
    .end local v18    # "needsScheduling":Z
    .local v14, "needsScheduling":Z
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v15

    .line 287
    .local v15, "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v13, v17

    check-cast v13, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 288
    .local v13, "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    iget-object v3, v13, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v15, v3}, Landroidx/work/impl/model/WorkSpecDao;->delete(Ljava/lang/String;)V

    .line 289
    .end local v13    # "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    const/4 v13, 0x0

    move-object/from16 v3, p0

    goto :goto_9

    .line 287
    :cond_d
    move-object/from16 v17, v6

    move v3, v14

    goto/16 :goto_12

    .line 232
    .end local v14    # "needsScheduling":Z
    .end local v15    # "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    .end local v19    # "isNamed":Z
    .restart local v3    # "isNamed":Z
    .restart local v18    # "needsScheduling":Z
    :cond_e
    move/from16 v19, v3

    .line 233
    .end local v3    # "isNamed":Z
    .restart local v19    # "isNamed":Z
    :goto_a
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object v3

    .line 234
    .local v3, "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v13, "newPrerequisiteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 236
    .local v15, "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    move-object/from16 v17, v6

    .end local v6    # "workDatabase":Landroidx/work/impl/WorkDatabase;
    .local v17, "workDatabase":Landroidx/work/impl/WorkDatabase;
    iget-object v6, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v3, v6}, Landroidx/work/impl/model/DependencyDao;->hasDependents(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 237
    iget-object v6, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    move-object/from16 v20, v3

    .end local v3    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    .local v20, "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    sget-object v3, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    if-ne v6, v3, :cond_f

    move/from16 v3, v16

    goto :goto_c

    :cond_f
    const/4 v3, 0x0

    :goto_c
    and-int/2addr v3, v10

    .line 238
    .end local v10    # "hasCompletedAllPrerequisites":Z
    .local v3, "hasCompletedAllPrerequisites":Z
    iget-object v6, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    sget-object v10, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-ne v6, v10, :cond_10

    .line 239
    const/4 v11, 0x1

    goto :goto_d

    .line 240
    :cond_10
    iget-object v6, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    sget-object v10, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-ne v6, v10, :cond_11

    .line 241
    const/4 v12, 0x1

    .line 243
    :cond_11
    :goto_d
    iget-object v6, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v10, v3

    goto :goto_e

    .line 236
    .end local v20    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    .local v3, "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    .restart local v10    # "hasCompletedAllPrerequisites":Z
    :cond_12
    move-object/from16 v20, v3

    .line 245
    .end local v3    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    .end local v15    # "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    .restart local v20    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    :goto_e
    move-object/from16 v6, v17

    move-object/from16 v3, v20

    goto :goto_b

    .line 246
    .end local v17    # "workDatabase":Landroidx/work/impl/WorkDatabase;
    .end local v20    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    .restart local v3    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    .restart local v6    # "workDatabase":Landroidx/work/impl/WorkDatabase;
    :cond_13
    move-object/from16 v20, v3

    move-object/from16 v17, v6

    .end local v3    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    .end local v6    # "workDatabase":Landroidx/work/impl/WorkDatabase;
    .restart local v17    # "workDatabase":Landroidx/work/impl/WorkDatabase;
    .restart local v20    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    sget-object v3, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    if-ne v2, v3, :cond_16

    .line 247
    if-nez v12, :cond_14

    if-eqz v11, :cond_16

    .line 249
    :cond_14
    invoke-virtual/range {v17 .. v17}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v3

    .line 250
    .local v3, "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    nop

    .line 251
    invoke-interface {v3, v1}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 252
    .local v6, "idAndStates":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 253
    .restart local v15    # "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    iget-object v2, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v3, v2}, Landroidx/work/impl/model/WorkSpecDao;->delete(Ljava/lang/String;)V

    .line 254
    .end local v15    # "idAndState":Landroidx/work/impl/model/WorkSpec$IdAndState;
    move-object/from16 v2, p4

    goto :goto_f

    .line 256
    :cond_15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 257
    const/4 v2, 0x0

    .line 258
    .end local v12    # "hasCancelledPrerequisites":Z
    .local v2, "hasCancelledPrerequisites":Z
    const/4 v11, 0x0

    move v12, v2

    .line 261
    .end local v2    # "hasCancelledPrerequisites":Z
    .end local v3    # "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    .end local v6    # "idAndStates":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    .restart local v12    # "hasCancelledPrerequisites":Z
    :cond_16
    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    .line 262
    .end local p2    # "prerequisiteIds":[Ljava/lang/String;
    .local v0, "prerequisiteIds":[Ljava/lang/String;
    array-length v2, v0

    if-lez v2, :cond_17

    goto :goto_10

    :cond_17
    const/16 v16, 0x0

    :goto_10
    move/from16 v9, v16

    .line 263
    .end local v13    # "newPrerequisiteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "dependencyDao":Landroidx/work/impl/model/DependencyDao;
    move/from16 v3, v18

    goto :goto_12

    .line 230
    .end local v0    # "prerequisiteIds":[Ljava/lang/String;
    .end local v17    # "workDatabase":Landroidx/work/impl/WorkDatabase;
    .end local v19    # "isNamed":Z
    .local v3, "isNamed":Z
    .local v6, "workDatabase":Landroidx/work/impl/WorkDatabase;
    .restart local p2    # "prerequisiteIds":[Ljava/lang/String;
    :cond_18
    move/from16 v19, v3

    move-object/from16 v17, v6

    .end local v3    # "isNamed":Z
    .end local v6    # "workDatabase":Landroidx/work/impl/WorkDatabase;
    .restart local v17    # "workDatabase":Landroidx/work/impl/WorkDatabase;
    .restart local v19    # "isNamed":Z
    goto :goto_11

    .line 225
    .end local v8    # "existingWorkSpecIdAndStates":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    .end local v17    # "workDatabase":Landroidx/work/impl/WorkDatabase;
    .end local v19    # "isNamed":Z
    .restart local v3    # "isNamed":Z
    .restart local v6    # "workDatabase":Landroidx/work/impl/WorkDatabase;
    :cond_19
    move/from16 v19, v3

    move-object/from16 v17, v6

    .line 294
    .end local v3    # "isNamed":Z
    .end local v6    # "workDatabase":Landroidx/work/impl/WorkDatabase;
    .restart local v17    # "workDatabase":Landroidx/work/impl/WorkDatabase;
    .restart local v19    # "isNamed":Z
    :goto_11
    move/from16 v3, v18

    .end local v18    # "needsScheduling":Z
    .end local p2    # "prerequisiteIds":[Ljava/lang/String;
    .restart local v0    # "prerequisiteIds":[Ljava/lang/String;
    .local v3, "needsScheduling":Z
    :goto_12
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/work/WorkRequest;

    .line 295
    .local v6, "work":Landroidx/work/WorkRequest;
    invoke-virtual {v6}, Landroidx/work/WorkRequest;->getWorkSpec()Landroidx/work/impl/model/WorkSpec;

    move-result-object v8

    .line 297
    .local v8, "workSpec":Landroidx/work/impl/model/WorkSpec;
    if-eqz v9, :cond_1c

    if-nez v10, :cond_1c

    .line 298
    if-eqz v11, :cond_1a

    .line 299
    sget-object v13, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    iput-object v13, v8, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_14

    .line 300
    :cond_1a
    if-eqz v12, :cond_1b

    .line 301
    sget-object v13, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    iput-object v13, v8, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_14

    .line 303
    :cond_1b
    sget-object v13, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    iput-object v13, v8, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_14

    .line 309
    :cond_1c
    iput-wide v4, v8, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 313
    :goto_14
    iget-object v13, v8, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    sget-object v14, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v13, v14, :cond_1d

    .line 314
    const/4 v3, 0x1

    .line 317
    :cond_1d
    invoke-virtual/range {v17 .. v17}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v13

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v14

    .line 318
    invoke-static {v14, v8}, Landroidx/work/impl/utils/EnqueueUtilsKt;->wrapInConstraintTrackingWorkerIfNeeded(Ljava/util/List;Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v14

    .line 317
    invoke-interface {v13, v14}, Landroidx/work/impl/model/WorkSpecDao;->insertWorkSpec(Landroidx/work/impl/model/WorkSpec;)V

    .line 324
    if-eqz v9, :cond_1f

    .line 325
    array-length v13, v0

    const/4 v14, 0x0

    :goto_15
    if-ge v14, v13, :cond_1e

    aget-object v15, v0, v14

    .line 326
    .local v15, "prerequisiteId":Ljava/lang/String;
    move-object/from16 v16, v0

    .end local v0    # "prerequisiteIds":[Ljava/lang/String;
    .local v16, "prerequisiteIds":[Ljava/lang/String;
    new-instance v0, Landroidx/work/impl/model/Dependency;

    move-object/from16 p2, v2

    invoke-virtual {v6}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v15}, Landroidx/work/impl/model/Dependency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .local v0, "dep":Landroidx/work/impl/model/Dependency;
    invoke-virtual/range {v17 .. v17}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object v2

    invoke-interface {v2, v0}, Landroidx/work/impl/model/DependencyDao;->insertDependency(Landroidx/work/impl/model/Dependency;)V

    .line 325
    .end local v0    # "dep":Landroidx/work/impl/model/Dependency;
    .end local v15    # "prerequisiteId":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    move-object/from16 v0, v16

    goto :goto_15

    .end local v16    # "prerequisiteIds":[Ljava/lang/String;
    .local v0, "prerequisiteIds":[Ljava/lang/String;
    :cond_1e
    move-object/from16 v16, v0

    move-object/from16 p2, v2

    .end local v0    # "prerequisiteIds":[Ljava/lang/String;
    .restart local v16    # "prerequisiteIds":[Ljava/lang/String;
    goto :goto_16

    .line 324
    .end local v16    # "prerequisiteIds":[Ljava/lang/String;
    .restart local v0    # "prerequisiteIds":[Ljava/lang/String;
    :cond_1f
    move-object/from16 v16, v0

    move-object/from16 p2, v2

    .line 331
    .end local v0    # "prerequisiteIds":[Ljava/lang/String;
    .restart local v16    # "prerequisiteIds":[Ljava/lang/String;
    :goto_16
    invoke-virtual/range {v17 .. v17}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/work/impl/model/WorkTagDao;

    move-result-object v0

    invoke-virtual {v6}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Landroidx/work/WorkRequest;->getTags()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v0, v2, v13}, Landroidx/work/impl/model/WorkTagDao;->insertTags(Ljava/lang/String;Ljava/util/Set;)V

    .line 332
    if-eqz v19, :cond_20

    .line 333
    invoke-virtual/range {v17 .. v17}, Landroidx/work/impl/WorkDatabase;->workNameDao()Landroidx/work/impl/model/WorkNameDao;

    move-result-object v0

    new-instance v2, Landroidx/work/impl/model/WorkName;

    invoke-virtual {v6}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v1, v13}, Landroidx/work/impl/model/WorkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Landroidx/work/impl/model/WorkNameDao;->insert(Landroidx/work/impl/model/WorkName;)V

    .line 335
    .end local v6    # "work":Landroidx/work/WorkRequest;
    .end local v8    # "workSpec":Landroidx/work/impl/model/WorkSpec;
    :cond_20
    move-object/from16 v2, p2

    move-object/from16 v0, v16

    goto/16 :goto_13

    .line 336
    .end local v16    # "prerequisiteIds":[Ljava/lang/String;
    .restart local v0    # "prerequisiteIds":[Ljava/lang/String;
    :cond_21
    return v3
.end method

.method private static processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z
    .locals 9
    .param p0, "workContinuation"    # Landroidx/work/impl/WorkContinuationImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workContinuation"
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "needsScheduling":Z
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getParents()Ljava/util/List;

    move-result-object v1

    .line 146
    .local v1, "parents":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/WorkContinuationImpl;>;"
    if-eqz v1, :cond_1

    .line 147
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/impl/WorkContinuationImpl;

    .line 150
    .local v3, "parent":Landroidx/work/impl/WorkContinuationImpl;
    invoke-virtual {v3}, Landroidx/work/impl/WorkContinuationImpl;->isEnqueued()Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    invoke-static {v3}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v4

    or-int/2addr v0, v4

    goto :goto_1

    .line 153
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Already enqueued work ids ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 155
    invoke-virtual {v3}, Landroidx/work/impl/WorkContinuationImpl;->getIds()Ljava/util/List;

    move-result-object v7

    const-string v8, ", "

    invoke-static {v8, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    invoke-virtual {v4, v5, v6}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v3    # "parent":Landroidx/work/impl/WorkContinuationImpl;
    :goto_1
    goto :goto_0

    .line 159
    :cond_1
    invoke-static {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueueContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 160
    return v0
.end method


# virtual methods
.method public addToDatabase()Z
    .locals 4

    .line 117
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    .line 118
    .local v0, "workManagerImpl":Landroidx/work/impl/WorkManagerImpl;
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 119
    .local v1, "workDatabase":Landroidx/work/impl/WorkDatabase;
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 121
    nop

    .line 122
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    move-result-object v2

    iget-object v3, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    .line 121
    invoke-static {v1, v2, v3}, Landroidx/work/impl/utils/EnqueueUtilsKt;->checkContentUriTriggerWorkerLimits(Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Landroidx/work/impl/WorkContinuationImpl;)V

    .line 123
    iget-object v2, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-static {v2}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v2

    .line 124
    .local v2, "needsScheduling":Z
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    nop

    .line 127
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 125
    return v2

    .line 127
    .end local v2    # "needsScheduling":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 128
    throw v2
.end method

.method public getOperation()Landroidx/work/Operation;
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 85
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkContinuationImpl;->hasCycles()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->addToDatabase()Z

    move-result v0

    .line 90
    .local v0, "needsScheduling":Z
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    .line 93
    invoke-virtual {v1}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 94
    .local v1, "context":Landroid/content/Context;
    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 95
    invoke-virtual {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->scheduleWorkInBackground()V

    .line 97
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    sget-object v2, Landroidx/work/Operation;->SUCCESS:Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {v1, v2}, Landroidx/work/impl/OperationImpl;->markState(Landroidx/work/Operation$State;)V

    .line 100
    .end local v0    # "needsScheduling":Z
    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WorkContinuation has cycles ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    .local v0, "exception":Ljava/lang/Throwable;
    iget-object v1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    new-instance v2, Landroidx/work/Operation$State$FAILURE;

    invoke-direct {v2, v0}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroidx/work/impl/OperationImpl;->markState(Landroidx/work/Operation$State;)V

    .line 101
    .end local v0    # "exception":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public scheduleWorkInBackground()V
    .locals 4

    .line 136
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    .line 137
    .local v0, "workManager":Landroidx/work/impl/WorkManagerImpl;
    nop

    .line 138
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    move-result-object v1

    .line 139
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    .line 140
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v3

    .line 137
    invoke-static {v1, v2, v3}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 141
    return-void
.end method
