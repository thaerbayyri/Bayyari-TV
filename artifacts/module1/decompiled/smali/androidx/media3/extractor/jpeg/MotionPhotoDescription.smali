.class final Landroidx/media3/extractor/jpeg/MotionPhotoDescription;
.super Ljava/lang/Object;
.source "MotionPhotoDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;"
        }
    .end annotation
.end field

.field public final photoPresentationTimestampUs:J


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 0
    .param p1, "photoPresentationTimestampUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide p1, p0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->photoPresentationTimestampUs:J

    .line 69
    iput-object p3, p0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    .line 70
    return-void
.end method


# virtual methods
.method public getMotionPhotoMetadata(J)Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;
    .locals 27
    .param p1, "motionPhotoLength"    # J

    .line 81
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 83
    return-object v3

    .line 88
    :cond_0
    const-wide/16 v1, -0x1

    .line 89
    .local v1, "photoStartPosition":J
    const-wide/16 v4, -0x1

    .line 90
    .local v4, "photoLength":J
    const-wide/16 v6, -0x1

    .line 91
    .local v6, "mp4StartPosition":J
    const-wide/16 v8, -0x1

    .line 92
    .local v8, "mp4Length":J
    const/4 v10, 0x0

    .line 93
    .local v10, "itemContainsMp4":Z
    move-wide/from16 v11, p1

    .line 94
    .local v11, "itemStartPosition":J
    move-wide/from16 v13, p1

    .line 95
    .local v13, "itemEndPosition":J
    iget-object v15, v0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v17, v1

    move-wide/from16 v19, v4

    move-wide/from16 v23, v6

    move-wide/from16 v25, v8

    .end local v1    # "photoStartPosition":J
    .end local v4    # "photoLength":J
    .end local v6    # "mp4StartPosition":J
    .end local v8    # "mp4Length":J
    .local v15, "i":I
    .local v17, "photoStartPosition":J
    .local v19, "photoLength":J
    .local v23, "mp4StartPosition":J
    .local v25, "mp4Length":J
    :goto_0
    if-ltz v15, :cond_4

    .line 96
    iget-object v1, v0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    .line 97
    .local v1, "item":Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;
    const-string/jumbo v2, "video/mp4"

    iget-object v4, v1, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->mime:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v10

    .line 98
    .end local v10    # "itemContainsMp4":Z
    .local v2, "itemContainsMp4":Z
    move-wide v4, v11

    .line 99
    .end local v13    # "itemEndPosition":J
    .local v4, "itemEndPosition":J
    if-nez v15, :cond_1

    .line 101
    const-wide/16 v6, 0x0

    .line 102
    .end local v11    # "itemStartPosition":J
    .local v6, "itemStartPosition":J
    iget-wide v8, v1, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->padding:J

    sub-long/2addr v4, v8

    move-wide v11, v6

    move-wide v13, v4

    goto :goto_1

    .line 104
    .end local v6    # "itemStartPosition":J
    .restart local v11    # "itemStartPosition":J
    :cond_1
    iget-wide v6, v1, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->length:J

    sub-long/2addr v11, v6

    move-wide v13, v4

    .line 106
    .end local v4    # "itemEndPosition":J
    .restart local v13    # "itemEndPosition":J
    :goto_1
    if-eqz v2, :cond_2

    cmp-long v4, v11, v13

    if-eqz v4, :cond_2

    .line 107
    move-wide v4, v11

    .line 108
    .end local v23    # "mp4StartPosition":J
    .local v4, "mp4StartPosition":J
    sub-long v6, v13, v11

    .line 110
    .end local v25    # "mp4Length":J
    .local v6, "mp4Length":J
    const/4 v2, 0x0

    move-wide/from16 v23, v4

    move-wide/from16 v25, v6

    move v10, v2

    goto :goto_2

    .line 112
    .end local v4    # "mp4StartPosition":J
    .end local v6    # "mp4Length":J
    .restart local v23    # "mp4StartPosition":J
    .restart local v25    # "mp4Length":J
    :cond_2
    move v10, v2

    .end local v2    # "itemContainsMp4":Z
    .restart local v10    # "itemContainsMp4":Z
    :goto_2
    if-nez v15, :cond_3

    .line 113
    move-wide v4, v11

    .line 114
    .end local v17    # "photoStartPosition":J
    .local v4, "photoStartPosition":J
    move-wide v6, v13

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    .line 95
    .end local v1    # "item":Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;
    .end local v4    # "photoStartPosition":J
    .restart local v17    # "photoStartPosition":J
    :cond_3
    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    .line 117
    .end local v15    # "i":I
    :cond_4
    const-wide/16 v1, -0x1

    cmp-long v4, v23, v1

    if-eqz v4, :cond_6

    cmp-long v4, v25, v1

    if-eqz v4, :cond_6

    cmp-long v4, v17, v1

    if-eqz v4, :cond_6

    cmp-long v1, v19, v1

    if-nez v1, :cond_5

    goto :goto_3

    .line 123
    :cond_5
    new-instance v16, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    iget-wide v1, v0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->photoPresentationTimestampUs:J

    move-wide/from16 v21, v1

    invoke-direct/range {v16 .. v26}, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    return-object v16

    .line 121
    :cond_6
    :goto_3
    return-object v3
.end method
