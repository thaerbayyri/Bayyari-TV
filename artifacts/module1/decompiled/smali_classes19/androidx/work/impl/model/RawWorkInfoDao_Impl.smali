.class public final Landroidx/work/impl/model/RawWorkInfoDao_Impl;
.super Ljava/lang/Object;
.source "RawWorkInfoDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/model/RawWorkInfoDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "__db"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 39
    return-void
.end method

.method private __fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/work/Data;",
            ">;>;)V"
        }
    .end annotation

    .line 826
    .local p1, "_map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 827
    .local v0, "__mapKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    return-void

    .line 831
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x3e7

    if-le v1, v2, :cond_4

    .line 832
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 833
    .local v1, "_tmpInnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    const/4 v3, 0x0

    .line 834
    .local v3, "_tmpIndex":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 835
    .local v5, "_mapKey":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    add-int/lit8 v3, v3, 0x1

    .line 837
    if-ne v3, v2, :cond_1

    .line 838
    invoke-direct {p0, v1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V

    .line 839
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 840
    .end local v1    # "_tmpInnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v6, "_tmpInnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    const/4 v1, 0x0

    move v3, v1

    move-object v1, v6

    .line 842
    .end local v5    # "_mapKey":Ljava/lang/String;
    .end local v6    # "_tmpInnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v1    # "_tmpInnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :cond_1
    goto :goto_0

    .line 843
    :cond_2
    if-lez v3, :cond_3

    .line 844
    invoke-direct {p0, v1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V

    .line 846
    :cond_3
    return-void

    .line 848
    .end local v1    # "_tmpInnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v3    # "_tmpIndex":I
    :cond_4
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 849
    .local v1, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 851
    .local v2, "_inputSize":I
    invoke-static {v1, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 852
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 854
    .local v3, "_sql":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x0

    .line 855
    .local v4, "_argCount":I
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 856
    .local v5, "_stmt":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 857
    .local v6, "_argIndex":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 858
    .local v8, "_item":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 859
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 861
    :cond_5
    invoke-virtual {v5, v6, v8}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 863
    :goto_2
    nop

    .end local v8    # "_item":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    .line 864
    goto :goto_1

    .line 865
    :cond_6
    iget-object v7, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v5, v9, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 867
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v8, "work_spec_id"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    .local v8, "_itemKeyIndex":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_7

    .line 887
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 869
    return-void

    .line 871
    :cond_7
    :goto_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 872
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 873
    .local v10, "_tmpKey":Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 874
    .local v11, "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-eqz v11, :cond_9

    .line 877
    invoke-interface {v7, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 878
    const/4 v12, 0x0

    .local v12, "_tmp":[B
    goto :goto_4

    .line 880
    .end local v12    # "_tmp":[B
    :cond_8
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 882
    .restart local v12    # "_tmp":[B
    :goto_4
    invoke-static {v12}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v13

    .line 883
    .local v13, "_item_1":Landroidx/work/Data;
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 885
    .end local v10    # "_tmpKey":Ljava/lang/String;
    .end local v11    # "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v12    # "_tmp":[B
    .end local v13    # "_item_1":Landroidx/work/Data;
    :cond_9
    goto :goto_3

    .line 887
    .end local v8    # "_itemKeyIndex":I
    :cond_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 888
    nop

    .line 889
    return-void

    .line 887
    :catchall_0
    move-exception v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 888
    throw v8
.end method

.method private __fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 761
    .local p1, "_map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 762
    .local v0, "__mapKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    return-void

    .line 766
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x3e7

    if-le v1, v2, :cond_4

    .line 767
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 768
    .local v1, "_tmpInnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 769
    .local v3, "_tmpIndex":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 770
    .local v5, "_mapKey":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    add-int/lit8 v3, v3, 0x1

    .line 772
    if-ne v3, v2, :cond_1

    .line 773
    invoke-direct {p0, v1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V

    .line 774
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 775
    .end local v1    # "_tmpInnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v6, "_tmpInnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    move v3, v1

    move-object v1, v6

    .line 777
    .end local v5    # "_mapKey":Ljava/lang/String;
    .end local v6    # "_tmpInnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v1    # "_tmpInnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_1
    goto :goto_0

    .line 778
    :cond_2
    if-lez v3, :cond_3

    .line 779
    invoke-direct {p0, v1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V

    .line 781
    :cond_3
    return-void

    .line 783
    .end local v1    # "_tmpInnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v3    # "_tmpIndex":I
    :cond_4
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 784
    .local v1, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 786
    .local v2, "_inputSize":I
    invoke-static {v1, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 787
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 789
    .local v3, "_sql":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x0

    .line 790
    .local v4, "_argCount":I
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 791
    .local v5, "_stmt":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 792
    .local v6, "_argIndex":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 793
    .local v8, "_item":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 794
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 796
    :cond_5
    invoke-virtual {v5, v6, v8}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 798
    :goto_2
    nop

    .end local v8    # "_item":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    .line 799
    goto :goto_1

    .line 800
    :cond_6
    iget-object v7, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v5, v9, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 802
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v8, "work_spec_id"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    .local v8, "_itemKeyIndex":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_7

    .line 820
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 804
    return-void

    .line 806
    :cond_7
    :goto_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 807
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 808
    .local v10, "_tmpKey":Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 809
    .local v11, "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_9

    .line 811
    invoke-interface {v7, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 812
    const/4 v12, 0x0

    .local v12, "_item_1":Ljava/lang/String;
    goto :goto_4

    .line 814
    .end local v12    # "_item_1":Ljava/lang/String;
    :cond_8
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 816
    .restart local v12    # "_item_1":Ljava/lang/String;
    :goto_4
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 818
    .end local v10    # "_tmpKey":Ljava/lang/String;
    .end local v11    # "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "_item_1":Ljava/lang/String;
    :cond_9
    goto :goto_3

    .line 820
    .end local v8    # "_itemKeyIndex":I
    :cond_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 821
    nop

    .line 822
    return-void

    .line 820
    :catchall_0
    move-exception v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 821
    throw v8
.end method

.method static synthetic access$000(Landroidx/work/impl/model/RawWorkInfoDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 1
    .param p0, "x0"    # Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    .line 34
    iget-object v0, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Landroidx/work/impl/model/RawWorkInfoDao_Impl;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 34
    invoke-direct {p0, p1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Landroidx/work/impl/model/RawWorkInfoDao_Impl;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 34
    invoke-direct {p0, p1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V

    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 756
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getWorkInfoPojos(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;
    .locals 66
    .param p1, "query"    # Landroidx/sqlite/db/SupportSQLiteQuery;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "query"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 43
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 44
    .local v2, "_internalQuery":Landroidx/sqlite/db/SupportSQLiteQuery;
    iget-object v0, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 45
    iget-object v0, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 47
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 48
    .local v0, "_cursorIndexOfId":I
    const-string v5, "state"

    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 49
    .local v5, "_cursorIndexOfState":I
    const-string v6, "output"

    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 50
    .local v6, "_cursorIndexOfOutput":I
    const-string v7, "initial_delay"

    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 51
    .local v7, "_cursorIndexOfInitialDelay":I
    const-string v8, "interval_duration"

    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 52
    .local v8, "_cursorIndexOfIntervalDuration":I
    const-string v9, "flex_duration"

    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 53
    .local v9, "_cursorIndexOfFlexDuration":I
    const-string v10, "run_attempt_count"

    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 54
    .local v10, "_cursorIndexOfRunAttemptCount":I
    const-string v11, "backoff_policy"

    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 55
    .local v11, "_cursorIndexOfBackoffPolicy":I
    const-string v12, "backoff_delay_duration"

    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 56
    .local v12, "_cursorIndexOfBackoffDelayDuration":I
    const-string v13, "last_enqueue_time"

    invoke-static {v3, v13}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 57
    .local v13, "_cursorIndexOfLastEnqueueTime":I
    const-string v14, "period_count"

    invoke-static {v3, v14}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 58
    .local v14, "_cursorIndexOfPeriodCount":I
    const-string v15, "generation"

    invoke-static {v3, v15}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 59
    .local v15, "_cursorIndexOfGeneration":I
    const-string v4, "next_schedule_time_override"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    .local v4, "_cursorIndexOfNextScheduleTimeOverride":I
    move-object/from16 v16, v2

    .end local v2    # "_internalQuery":Landroidx/sqlite/db/SupportSQLiteQuery;
    .local v16, "_internalQuery":Landroidx/sqlite/db/SupportSQLiteQuery;
    :try_start_1
    const-string v2, "stop_reason"

    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 61
    .local v2, "_cursorIndexOfStopReason":I
    move/from16 v17, v2

    .end local v2    # "_cursorIndexOfStopReason":I
    .local v17, "_cursorIndexOfStopReason":I
    const-string v2, "required_network_type"

    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 62
    .local v2, "_cursorIndexOfRequiredNetworkType":I
    move/from16 v18, v2

    .end local v2    # "_cursorIndexOfRequiredNetworkType":I
    .local v18, "_cursorIndexOfRequiredNetworkType":I
    const-string v2, "requires_charging"

    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 63
    .local v2, "_cursorIndexOfRequiresCharging":I
    move/from16 v19, v2

    .end local v2    # "_cursorIndexOfRequiresCharging":I
    .local v19, "_cursorIndexOfRequiresCharging":I
    const-string v2, "requires_device_idle"

    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 64
    .local v2, "_cursorIndexOfRequiresDeviceIdle":I
    move/from16 v20, v2

    .end local v2    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v20, "_cursorIndexOfRequiresDeviceIdle":I
    const-string v2, "requires_battery_not_low"

    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 65
    .local v2, "_cursorIndexOfRequiresBatteryNotLow":I
    move/from16 v21, v2

    .end local v2    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v21, "_cursorIndexOfRequiresBatteryNotLow":I
    const-string v2, "requires_storage_not_low"

    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 66
    .local v2, "_cursorIndexOfRequiresStorageNotLow":I
    move/from16 v22, v2

    .end local v2    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v22, "_cursorIndexOfRequiresStorageNotLow":I
    const-string v2, "trigger_content_update_delay"

    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 67
    .local v2, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    move/from16 v23, v2

    .end local v2    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v23, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const-string v2, "trigger_max_content_delay"

    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 68
    .local v2, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    move/from16 v24, v2

    .end local v2    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v24, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const-string v2, "content_uri_triggers"

    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 69
    .local v2, "_cursorIndexOfContentUriTriggers":I
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v26, v25

    .line 70
    .local v26, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v27, v25

    .line 71
    .local v27, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 72
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v28, v25

    .line 73
    .local v28, "_tmpKey":Ljava/lang/String;
    move/from16 v25, v2

    move-object/from16 v2, v26

    move/from16 v26, v4

    move-object/from16 v4, v28

    .end local v28    # "_tmpKey":Ljava/lang/String;
    .local v2, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v4, "_tmpKey":Ljava/lang/String;
    .local v25, "_cursorIndexOfContentUriTriggers":I
    .local v26, "_cursorIndexOfNextScheduleTimeOverride":I
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/ArrayList;

    .line 74
    .local v28, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v28, :cond_0

    .line 75
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v28, v29

    .line 76
    move/from16 v29, v15

    move-object/from16 v15, v28

    .end local v28    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v15, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v29, "_cursorIndexOfGeneration":I
    invoke-virtual {v2, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v28, v15

    goto :goto_1

    .line 74
    .end local v29    # "_cursorIndexOfGeneration":I
    .local v15, "_cursorIndexOfGeneration":I
    .restart local v28    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move/from16 v29, v15

    .line 78
    .end local v15    # "_cursorIndexOfGeneration":I
    .restart local v29    # "_cursorIndexOfGeneration":I
    :goto_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 79
    .local v15, "_tmpKey_1":Ljava/lang/String;
    move-object/from16 v30, v4

    move-object/from16 v4, v27

    .end local v27    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v4, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v30, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    .line 80
    .local v27, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v27, :cond_1

    .line 81
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v27, v31

    .line 82
    move/from16 v31, v14

    move-object/from16 v14, v27

    .end local v27    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v14, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v31, "_cursorIndexOfPeriodCount":I
    invoke-virtual {v4, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 80
    .end local v31    # "_cursorIndexOfPeriodCount":I
    .local v14, "_cursorIndexOfPeriodCount":I
    .restart local v27    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :cond_1
    move/from16 v31, v14

    .line 84
    .end local v14    # "_cursorIndexOfPeriodCount":I
    .end local v15    # "_tmpKey_1":Ljava/lang/String;
    .end local v27    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v28    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v30    # "_tmpKey":Ljava/lang/String;
    .restart local v31    # "_cursorIndexOfPeriodCount":I
    :goto_2
    move-object/from16 v27, v4

    move/from16 v4, v26

    move/from16 v15, v29

    move/from16 v14, v31

    move-object/from16 v26, v2

    move/from16 v2, v25

    goto :goto_0

    .line 85
    .end local v25    # "_cursorIndexOfContentUriTriggers":I
    .end local v29    # "_cursorIndexOfGeneration":I
    .end local v31    # "_cursorIndexOfPeriodCount":I
    .local v2, "_cursorIndexOfContentUriTriggers":I
    .local v4, "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v14    # "_cursorIndexOfPeriodCount":I
    .local v15, "_cursorIndexOfGeneration":I
    .local v26, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v27, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :cond_2
    move/from16 v25, v2

    move/from16 v31, v14

    move/from16 v29, v15

    move-object/from16 v2, v26

    move/from16 v26, v4

    move-object/from16 v4, v27

    .end local v14    # "_cursorIndexOfPeriodCount":I
    .end local v15    # "_cursorIndexOfGeneration":I
    .end local v27    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v2, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v4, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v25    # "_cursorIndexOfContentUriTriggers":I
    .local v26, "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v29    # "_cursorIndexOfGeneration":I
    .restart local v31    # "_cursorIndexOfPeriodCount":I
    const/4 v14, -0x1

    invoke-interface {v3, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 86
    invoke-direct {v1, v2}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V

    .line 87
    invoke-direct {v1, v4}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V

    .line 88
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v15, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_22

    .line 92
    const/4 v14, -0x1

    if-ne v0, v14, :cond_3

    .line 93
    const/4 v14, 0x0

    move-object/from16 v33, v14

    .local v14, "_tmpId":Ljava/lang/String;
    goto :goto_4

    .line 95
    .end local v14    # "_tmpId":Ljava/lang/String;
    :cond_3
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 96
    const/4 v14, 0x0

    move-object/from16 v33, v14

    .restart local v14    # "_tmpId":Ljava/lang/String;
    goto :goto_4

    .line 98
    .end local v14    # "_tmpId":Ljava/lang/String;
    :cond_4
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v33, v14

    .line 102
    .local v33, "_tmpId":Ljava/lang/String;
    :goto_4
    const/4 v14, -0x1

    if-ne v5, v14, :cond_5

    .line 103
    const/4 v14, 0x0

    move-object/from16 v34, v14

    .local v14, "_tmpState":Landroidx/work/WorkInfo$State;
    goto :goto_5

    .line 106
    .end local v14    # "_tmpState":Landroidx/work/WorkInfo$State;
    :cond_5
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 107
    .local v14, "_tmp":I
    sget-object v28, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v14}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v28

    move-object/from16 v34, v28

    .line 110
    .end local v14    # "_tmp":I
    .local v34, "_tmpState":Landroidx/work/WorkInfo$State;
    :goto_5
    const/4 v14, -0x1

    if-ne v6, v14, :cond_6

    .line 111
    const/4 v14, 0x0

    move-object/from16 v35, v14

    .local v14, "_tmpOutput":Landroidx/work/Data;
    goto :goto_7

    .line 114
    .end local v14    # "_tmpOutput":Landroidx/work/Data;
    :cond_6
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 115
    const/4 v14, 0x0

    .local v14, "_tmp_1":[B
    goto :goto_6

    .line 117
    .end local v14    # "_tmp_1":[B
    :cond_7
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 119
    .restart local v14    # "_tmp_1":[B
    :goto_6
    invoke-static {v14}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v28

    move-object/from16 v35, v28

    .line 122
    .end local v14    # "_tmp_1":[B
    .local v35, "_tmpOutput":Landroidx/work/Data;
    :goto_7
    const/4 v14, -0x1

    if-ne v7, v14, :cond_8

    .line 123
    const-wide/16 v27, 0x0

    move-wide/from16 v36, v27

    .local v27, "_tmpInitialDelay":J
    goto :goto_8

    .line 125
    .end local v27    # "_tmpInitialDelay":J
    :cond_8
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    move-wide/from16 v36, v27

    .line 128
    .local v36, "_tmpInitialDelay":J
    :goto_8
    if-ne v8, v14, :cond_9

    .line 129
    const-wide/16 v27, 0x0

    move-wide/from16 v38, v27

    .local v27, "_tmpIntervalDuration":J
    goto :goto_9

    .line 131
    .end local v27    # "_tmpIntervalDuration":J
    :cond_9
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    move-wide/from16 v38, v27

    .line 134
    .local v38, "_tmpIntervalDuration":J
    :goto_9
    if-ne v9, v14, :cond_a

    .line 135
    const-wide/16 v27, 0x0

    move-wide/from16 v40, v27

    .local v27, "_tmpFlexDuration":J
    goto :goto_a

    .line 137
    .end local v27    # "_tmpFlexDuration":J
    :cond_a
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    move-wide/from16 v40, v27

    .line 140
    .local v40, "_tmpFlexDuration":J
    :goto_a
    if-ne v10, v14, :cond_b

    .line 141
    const/16 v27, 0x0

    move/from16 v43, v27

    .local v27, "_tmpRunAttemptCount":I
    goto :goto_b

    .line 143
    .end local v27    # "_tmpRunAttemptCount":I
    :cond_b
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v43, v27

    .line 146
    .local v43, "_tmpRunAttemptCount":I
    :goto_b
    if-ne v11, v14, :cond_c

    .line 147
    const/4 v14, 0x0

    move-object/from16 v44, v14

    .local v14, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    goto :goto_c

    .line 150
    .end local v14    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    :cond_c
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 151
    .local v14, "_tmp_2":I
    sget-object v28, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v14}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v28

    move-object/from16 v44, v28

    .line 154
    .end local v14    # "_tmp_2":I
    .local v44, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    :goto_c
    const/4 v14, -0x1

    if-ne v12, v14, :cond_d

    .line 155
    const-wide/16 v27, 0x0

    move-wide/from16 v45, v27

    .local v27, "_tmpBackoffDelayDuration":J
    goto :goto_d

    .line 157
    .end local v27    # "_tmpBackoffDelayDuration":J
    :cond_d
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    move-wide/from16 v45, v27

    .line 160
    .local v45, "_tmpBackoffDelayDuration":J
    :goto_d
    if-ne v13, v14, :cond_e

    .line 161
    const-wide/16 v27, 0x0

    move-wide/from16 v47, v27

    .local v27, "_tmpLastEnqueueTime":J
    goto :goto_e

    .line 163
    .end local v27    # "_tmpLastEnqueueTime":J
    :cond_e
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    move-wide/from16 v47, v27

    .line 166
    .local v47, "_tmpLastEnqueueTime":J
    :goto_e
    move/from16 v1, v31

    .end local v31    # "_cursorIndexOfPeriodCount":I
    .local v1, "_cursorIndexOfPeriodCount":I
    if-ne v1, v14, :cond_f

    .line 167
    const/16 v27, 0x0

    move/from16 v49, v27

    .local v27, "_tmpPeriodCount":I
    goto :goto_f

    .line 169
    .end local v27    # "_tmpPeriodCount":I
    :cond_f
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v49, v27

    .line 172
    .local v49, "_tmpPeriodCount":I
    :goto_f
    move/from16 v31, v1

    move/from16 v1, v29

    .end local v29    # "_cursorIndexOfGeneration":I
    .local v1, "_cursorIndexOfGeneration":I
    .restart local v31    # "_cursorIndexOfPeriodCount":I
    if-ne v1, v14, :cond_10

    .line 173
    const/16 v27, 0x0

    move/from16 v50, v27

    .local v27, "_tmpGeneration":I
    goto :goto_10

    .line 175
    .end local v27    # "_tmpGeneration":I
    :cond_10
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v50, v27

    .line 178
    .local v50, "_tmpGeneration":I
    :goto_10
    move/from16 v29, v1

    move/from16 v1, v26

    .end local v26    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v1, "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v29    # "_cursorIndexOfGeneration":I
    if-ne v1, v14, :cond_11

    .line 179
    const-wide/16 v26, 0x0

    move-wide/from16 v51, v26

    .local v26, "_tmpNextScheduleTimeOverride":J
    goto :goto_11

    .line 181
    .end local v26    # "_tmpNextScheduleTimeOverride":J
    :cond_11
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-wide/from16 v51, v26

    .line 184
    .local v51, "_tmpNextScheduleTimeOverride":J
    :goto_11
    move/from16 v26, v1

    move/from16 v1, v17

    .end local v17    # "_cursorIndexOfStopReason":I
    .local v1, "_cursorIndexOfStopReason":I
    .local v26, "_cursorIndexOfNextScheduleTimeOverride":I
    if-ne v1, v14, :cond_12

    .line 185
    const/16 v17, 0x0

    move/from16 v53, v17

    .local v17, "_tmpStopReason":I
    goto :goto_12

    .line 187
    .end local v17    # "_tmpStopReason":I
    :cond_12
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v53, v17

    .line 191
    .local v53, "_tmpStopReason":I
    :goto_12
    move/from16 v17, v1

    move/from16 v1, v18

    .end local v18    # "_cursorIndexOfRequiredNetworkType":I
    .local v1, "_cursorIndexOfRequiredNetworkType":I
    .local v17, "_cursorIndexOfStopReason":I
    if-ne v1, v14, :cond_13

    .line 192
    const/4 v14, 0x0

    move-object/from16 v55, v14

    .local v14, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    goto :goto_13

    .line 195
    .end local v14    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    :cond_13
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 196
    .local v14, "_tmp_3":I
    sget-object v18, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v14}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v18

    move-object/from16 v55, v18

    .line 199
    .end local v14    # "_tmp_3":I
    .local v55, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    :goto_13
    move/from16 v14, v19

    move/from16 v19, v1

    const/4 v1, -0x1

    .end local v1    # "_cursorIndexOfRequiredNetworkType":I
    .local v14, "_cursorIndexOfRequiresCharging":I
    .local v19, "_cursorIndexOfRequiredNetworkType":I
    if-ne v14, v1, :cond_14

    .line 200
    const/4 v1, 0x0

    move/from16 v56, v1

    .local v1, "_tmpRequiresCharging":Z
    goto :goto_15

    .line 203
    .end local v1    # "_tmpRequiresCharging":Z
    :cond_14
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 204
    .local v1, "_tmp_4":I
    if-eqz v1, :cond_15

    const/16 v28, 0x1

    goto :goto_14

    :cond_15
    const/16 v28, 0x0

    :goto_14
    move/from16 v56, v28

    .line 207
    .end local v1    # "_tmp_4":I
    .local v56, "_tmpRequiresCharging":Z
    :goto_15
    move/from16 v1, v20

    move/from16 v20, v5

    const/4 v5, -0x1

    .end local v5    # "_cursorIndexOfState":I
    .local v1, "_cursorIndexOfRequiresDeviceIdle":I
    .local v20, "_cursorIndexOfState":I
    if-ne v1, v5, :cond_16

    .line 208
    const/4 v5, 0x0

    move/from16 v57, v5

    .local v5, "_tmpRequiresDeviceIdle":Z
    goto :goto_17

    .line 211
    .end local v5    # "_tmpRequiresDeviceIdle":Z
    :cond_16
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 212
    .local v5, "_tmp_5":I
    if-eqz v5, :cond_17

    const/16 v28, 0x1

    goto :goto_16

    :cond_17
    const/16 v28, 0x0

    :goto_16
    move/from16 v57, v28

    .line 215
    .end local v5    # "_tmp_5":I
    .local v57, "_tmpRequiresDeviceIdle":Z
    :goto_17
    move/from16 v5, v21

    move/from16 v21, v1

    const/4 v1, -0x1

    .end local v1    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v5, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v21, "_cursorIndexOfRequiresDeviceIdle":I
    if-ne v5, v1, :cond_18

    .line 216
    const/4 v1, 0x0

    move/from16 v58, v1

    .local v1, "_tmpRequiresBatteryNotLow":Z
    goto :goto_19

    .line 219
    .end local v1    # "_tmpRequiresBatteryNotLow":Z
    :cond_18
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 220
    .local v1, "_tmp_6":I
    if-eqz v1, :cond_19

    const/16 v28, 0x1

    goto :goto_18

    :cond_19
    const/16 v28, 0x0

    :goto_18
    move/from16 v58, v28

    .line 223
    .end local v1    # "_tmp_6":I
    .local v58, "_tmpRequiresBatteryNotLow":Z
    :goto_19
    move/from16 v1, v22

    move/from16 v22, v5

    const/4 v5, -0x1

    .end local v5    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v1, "_cursorIndexOfRequiresStorageNotLow":I
    .local v22, "_cursorIndexOfRequiresBatteryNotLow":I
    if-ne v1, v5, :cond_1a

    .line 224
    const/4 v5, 0x0

    move/from16 v59, v5

    .local v5, "_tmpRequiresStorageNotLow":Z
    goto :goto_1b

    .line 227
    .end local v5    # "_tmpRequiresStorageNotLow":Z
    :cond_1a
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 228
    .local v5, "_tmp_7":I
    if-eqz v5, :cond_1b

    const/16 v18, 0x1

    goto :goto_1a

    :cond_1b
    const/16 v18, 0x0

    :goto_1a
    move/from16 v59, v18

    .line 231
    .end local v5    # "_tmp_7":I
    .local v59, "_tmpRequiresStorageNotLow":Z
    :goto_1b
    move/from16 v18, v1

    move/from16 v5, v23

    const/4 v1, -0x1

    .end local v1    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v23    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v5, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v18, "_cursorIndexOfRequiresStorageNotLow":I
    if-ne v5, v1, :cond_1c

    .line 232
    const-wide/16 v27, 0x0

    move-wide/from16 v60, v27

    .local v27, "_tmpContentTriggerUpdateDelayMillis":J
    goto :goto_1c

    .line 234
    .end local v27    # "_tmpContentTriggerUpdateDelayMillis":J
    :cond_1c
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    move-wide/from16 v60, v27

    .line 237
    .local v60, "_tmpContentTriggerUpdateDelayMillis":J
    :goto_1c
    move/from16 v23, v5

    move/from16 v5, v24

    .end local v24    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v5, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v23    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    if-ne v5, v1, :cond_1d

    .line 238
    const-wide/16 v27, 0x0

    move-wide/from16 v62, v27

    .local v27, "_tmpContentTriggerMaxDelayMillis":J
    goto :goto_1d

    .line 240
    .end local v27    # "_tmpContentTriggerMaxDelayMillis":J
    :cond_1d
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    move-wide/from16 v62, v27

    .line 243
    .local v62, "_tmpContentTriggerMaxDelayMillis":J
    :goto_1d
    move/from16 v24, v5

    move/from16 v5, v25

    .end local v25    # "_cursorIndexOfContentUriTriggers":I
    .local v5, "_cursorIndexOfContentUriTriggers":I
    .restart local v24    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    if-ne v5, v1, :cond_1e

    .line 244
    const/16 v25, 0x0

    move-object/from16 v64, v25

    .local v25, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    goto :goto_1f

    .line 247
    .end local v25    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    :cond_1e
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_1f

    .line 248
    const/16 v25, 0x0

    .local v25, "_tmp_8":[B
    goto :goto_1e

    .line 250
    .end local v25    # "_tmp_8":[B
    :cond_1f
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v25

    .line 252
    .restart local v25    # "_tmp_8":[B
    :goto_1e
    sget-object v27, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v25 .. v25}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v27

    move-object/from16 v64, v27

    .line 254
    .end local v25    # "_tmp_8":[B
    .local v64, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    :goto_1f
    new-instance v54, Landroidx/work/Constraints;

    invoke-direct/range {v54 .. v64}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    move-object/from16 v25, v55

    .end local v55    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .local v25, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move-object/from16 v42, v54

    .line 255
    .local v42, "_tmpConstraints":Landroidx/work/Constraints;
    const/16 v27, 0x0

    .line 256
    .local v27, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v30, v28

    .line 257
    .local v30, "_tmpKey_2":Ljava/lang/String;
    move-object/from16 v1, v30

    .end local v30    # "_tmpKey_2":Ljava/lang/String;
    .local v1, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/ArrayList;

    .line 258
    .end local v27    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v30, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v30, :cond_20

    .line 259
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v30, v27

    move-object/from16 v54, v30

    goto :goto_20

    .line 258
    :cond_20
    move-object/from16 v54, v30

    .line 261
    .end local v30    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v54, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_20
    const/16 v27, 0x0

    .line 262
    .local v27, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v65, v30

    .line 263
    .local v65, "_tmpKey_3":Ljava/lang/String;
    move/from16 v30, v0

    move-object/from16 v0, v65

    .end local v65    # "_tmpKey_3":Ljava/lang/String;
    .local v0, "_tmpKey_3":Ljava/lang/String;
    .local v30, "_cursorIndexOfId":I
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 264
    .end local v27    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v32, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v32, :cond_21

    .line 265
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v32, v27

    move-object/from16 v55, v32

    goto :goto_21

    .line 264
    :cond_21
    move-object/from16 v55, v32

    .line 267
    .end local v32    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v55, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :goto_21
    new-instance v32, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct/range {v32 .. v55}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    move-object/from16 v27, v32

    .line 268
    .local v27, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    move-object/from16 v32, v0

    move-object/from16 v0, v27

    .end local v27    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v32, "_tmpKey_3":Ljava/lang/String;
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    move-object/from16 v1, p0

    move/from16 v25, v5

    move/from16 v5, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v0, v30

    move/from16 v22, v18

    move/from16 v18, v19

    move/from16 v19, v14

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v1    # "_tmpKey_2":Ljava/lang/String;
    .end local v25    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v32    # "_tmpKey_3":Ljava/lang/String;
    .end local v33    # "_tmpId":Ljava/lang/String;
    .end local v34    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v35    # "_tmpOutput":Landroidx/work/Data;
    .end local v36    # "_tmpInitialDelay":J
    .end local v38    # "_tmpIntervalDuration":J
    .end local v40    # "_tmpFlexDuration":J
    .end local v42    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v43    # "_tmpRunAttemptCount":I
    .end local v44    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v45    # "_tmpBackoffDelayDuration":J
    .end local v47    # "_tmpLastEnqueueTime":J
    .end local v49    # "_tmpPeriodCount":I
    .end local v50    # "_tmpGeneration":I
    .end local v51    # "_tmpNextScheduleTimeOverride":J
    .end local v53    # "_tmpStopReason":I
    .end local v54    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v55    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v56    # "_tmpRequiresCharging":Z
    .end local v57    # "_tmpRequiresDeviceIdle":Z
    .end local v58    # "_tmpRequiresBatteryNotLow":Z
    .end local v59    # "_tmpRequiresStorageNotLow":Z
    .end local v60    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v62    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v64    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    goto/16 :goto_3

    .line 270
    .end local v14    # "_cursorIndexOfRequiresCharging":I
    .end local v30    # "_cursorIndexOfId":I
    .local v0, "_cursorIndexOfId":I
    .local v5, "_cursorIndexOfState":I
    .local v18, "_cursorIndexOfRequiredNetworkType":I
    .local v19, "_cursorIndexOfRequiresCharging":I
    .local v20, "_cursorIndexOfRequiresDeviceIdle":I
    .local v21, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v22, "_cursorIndexOfRequiresStorageNotLow":I
    .local v25, "_cursorIndexOfContentUriTriggers":I
    :cond_22
    nop

    .line 272
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 270
    return-object v15

    .line 272
    .end local v0    # "_cursorIndexOfId":I
    .end local v2    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v4    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v5    # "_cursorIndexOfState":I
    .end local v6    # "_cursorIndexOfOutput":I
    .end local v7    # "_cursorIndexOfInitialDelay":I
    .end local v8    # "_cursorIndexOfIntervalDuration":I
    .end local v9    # "_cursorIndexOfFlexDuration":I
    .end local v10    # "_cursorIndexOfRunAttemptCount":I
    .end local v11    # "_cursorIndexOfBackoffPolicy":I
    .end local v12    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v13    # "_cursorIndexOfLastEnqueueTime":I
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v17    # "_cursorIndexOfStopReason":I
    .end local v18    # "_cursorIndexOfRequiredNetworkType":I
    .end local v19    # "_cursorIndexOfRequiresCharging":I
    .end local v20    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v21    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v22    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v23    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v24    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v25    # "_cursorIndexOfContentUriTriggers":I
    .end local v26    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v29    # "_cursorIndexOfGeneration":I
    .end local v31    # "_cursorIndexOfPeriodCount":I
    :catchall_0
    move-exception v0

    goto :goto_22

    .end local v16    # "_internalQuery":Landroidx/sqlite/db/SupportSQLiteQuery;
    .local v2, "_internalQuery":Landroidx/sqlite/db/SupportSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "_internalQuery":Landroidx/sqlite/db/SupportSQLiteQuery;
    .restart local v16    # "_internalQuery":Landroidx/sqlite/db/SupportSQLiteQuery;
    :goto_22
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 273
    throw v0
.end method

.method public getWorkInfoPojosFlow(Landroidx/sqlite/db/SupportSQLiteQuery;)Lkotlinx/coroutines/flow/Flow;
    .locals 5
    .param p1, "query"    # Landroidx/sqlite/db/SupportSQLiteQuery;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "query"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 518
    move-object v0, p1

    .line 519
    .local v0, "_internalQuery":Landroidx/sqlite/db/SupportSQLiteQuery;
    iget-object v1, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v2, "WorkProgress"

    const-string v3, "WorkSpec"

    const-string v4, "WorkTag"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;

    invoke-direct {v3, p0, v0}, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;-><init>(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/db/SupportSQLiteQuery;)V

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    return-object v1
.end method

.method public getWorkInfoPojosLiveData(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/lifecycle/LiveData;
    .locals 5
    .param p1, "query"    # Landroidx/sqlite/db/SupportSQLiteQuery;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "query"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 279
    move-object v0, p1

    .line 280
    .local v0, "_internalQuery":Landroidx/sqlite/db/SupportSQLiteQuery;
    iget-object v1, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v1

    const-string v2, "WorkProgress"

    const-string v3, "WorkSpec"

    const-string v4, "WorkTag"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;

    invoke-direct {v3, p0, v0}, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;-><init>(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/db/SupportSQLiteQuery;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    return-object v1
.end method
