.class public final Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;
.super Landroidx/media3/extractor/metadata/scte35/SpliceCommand;
.source "SpliceInsertCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final autoReturn:Z

.field public final availNum:I

.field public final availsExpected:I

.field public final breakDurationUs:J

.field public final componentSpliceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;"
        }
    .end annotation
.end field

.field public final outOfNetworkIndicator:Z

.field public final programSpliceFlag:Z

.field public final programSplicePlaybackPositionUs:J

.field public final programSplicePts:J

.field public final spliceEventCancelIndicator:Z

.field public final spliceEventId:J

.field public final spliceImmediateFlag:Z

.field public final uniqueProgramId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 266
    new-instance v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$1;

    invoke-direct {v0}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$1;-><init>()V

    sput-object v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JZZZZJJLjava/util/List;ZJIII)V
    .locals 16
    .param p1, "spliceEventId"    # J
    .param p3, "spliceEventCancelIndicator"    # Z
    .param p4, "outOfNetworkIndicator"    # Z
    .param p5, "programSpliceFlag"    # Z
    .param p6, "spliceImmediateFlag"    # Z
    .param p7, "programSplicePts"    # J
    .param p9, "programSplicePlaybackPositionUs"    # J
    .param p12, "autoReturn"    # Z
    .param p13, "breakDurationUs"    # J
    .param p15, "uniqueProgramId"    # I
    .param p16, "availNum"    # I
    .param p17, "availsExpected"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZZJJ",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;ZJIII)V"
        }
    .end annotation

    .line 106
    .local p11, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 107
    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    .line 108
    move/from16 v3, p3

    iput-boolean v3, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    .line 109
    move/from16 v4, p4

    iput-boolean v4, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    .line 110
    move/from16 v5, p5

    iput-boolean v5, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    .line 111
    move/from16 v6, p6

    iput-boolean v6, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    .line 112
    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    .line 113
    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    .line 114
    invoke-static/range {p11 .. p11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    .line 115
    move/from16 v11, p12

    iput-boolean v11, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    .line 116
    move-wide/from16 v12, p13

    iput-wide v12, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->breakDurationUs:J

    .line 117
    move/from16 v14, p15

    iput v14, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    .line 118
    move/from16 v15, p16

    iput v15, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->availNum:I

    .line 119
    move/from16 v1, p17

    iput v1, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    .line 120
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 122
    invoke-direct {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .local v0, "componentSpliceListSize":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .local v3, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v0, :cond_4

    .line 133
    invoke-static {p1}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;->createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 135
    .end local v4    # "i":I
    :cond_4
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-ne v4, v2, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->breakDurationUs:J

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->availNum:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$1;

    .line 30
    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static parseFromSection(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/common/util/TimestampAdjuster;)Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;
    .locals 34
    .param p0, "sectionData"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "ptsAdjustment"    # J
    .param p3, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;

    .line 145
    move-object/from16 v0, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    .line 147
    .local v2, "spliceEventId":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 148
    .local v1, "spliceEventCancelIndicator":Z
    :goto_0
    const/4 v6, 0x0

    .line 149
    .local v6, "outOfNetworkIndicator":Z
    const/4 v7, 0x0

    .line 150
    .local v7, "programSpliceFlag":Z
    const/4 v8, 0x0

    .line 151
    .local v8, "spliceImmediateFlag":Z
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 152
    .local v9, "programSplicePts":J
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 153
    .local v11, "componentSplices":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/4 v12, 0x0

    .line 154
    .local v12, "uniqueProgramId":I
    const/4 v13, 0x0

    .line 155
    .local v13, "availNum":I
    const/4 v14, 0x0

    .line 156
    .local v14, "availsExpected":I
    const/4 v15, 0x0

    .line 157
    .local v15, "autoReturn":Z
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 158
    .local v16, "breakDurationUs":J
    if-nez v1, :cond_b

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 160
    .local v4, "headerByte":I
    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move v6, v5

    .line 161
    and-int/lit8 v5, v4, 0x40

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    move v7, v5

    .line 162
    and-int/lit8 v5, v4, 0x20

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 163
    .local v5, "durationFlag":Z
    :goto_3
    and-int/lit8 v20, v4, 0x10

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    goto :goto_4

    :cond_4
    const/16 v20, 0x0

    :goto_4
    move/from16 v8, v20

    .line 164
    if-eqz v7, :cond_5

    if-nez v8, :cond_5

    .line 165
    invoke-static/range {p0 .. p2}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Landroidx/media3/common/util/ParsableByteArray;J)J

    move-result-wide v9

    .line 167
    :cond_5
    if-nez v7, :cond_8

    .line 168
    move/from16 v20, v1

    .end local v1    # "spliceEventCancelIndicator":Z
    .local v20, "spliceEventCancelIndicator":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 169
    .local v1, "componentCount":I
    move-wide/from16 v21, v2

    .end local v2    # "spliceEventId":J
    .local v21, "spliceEventId":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .end local v11    # "componentSplices":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .local v2, "componentSplices":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v1, :cond_7

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v24

    .line 172
    .local v24, "componentTag":I
    const-wide v25, -0x7fffffffffffffffL    # -4.9E-324

    .line 173
    .local v25, "componentSplicePts":J
    if-nez v8, :cond_6

    .line 174
    invoke-static/range {p0 .. p2}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Landroidx/media3/common/util/ParsableByteArray;J)J

    move-result-wide v25

    move v11, v3

    move/from16 v30, v4

    move-wide/from16 v3, v25

    goto :goto_6

    .line 173
    :cond_6
    move v11, v3

    move/from16 v30, v4

    move-wide/from16 v3, v25

    .line 176
    .end local v4    # "headerByte":I
    .end local v25    # "componentSplicePts":J
    .local v3, "componentSplicePts":J
    .local v11, "i":I
    .local v30, "headerByte":I
    :goto_6
    new-instance v23, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    .line 180
    invoke-virtual {v0, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v27

    const/16 v29, 0x0

    move-wide/from16 v25, v3

    .end local v3    # "componentSplicePts":J
    .restart local v25    # "componentSplicePts":J
    invoke-direct/range {v23 .. v29}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJJLandroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$1;)V

    .line 176
    move-object/from16 v3, v23

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v24    # "componentTag":I
    .end local v25    # "componentSplicePts":J
    add-int/lit8 v3, v11, 0x1

    move/from16 v4, v30

    .end local v11    # "i":I
    .local v3, "i":I
    goto :goto_5

    .end local v30    # "headerByte":I
    .restart local v4    # "headerByte":I
    :cond_7
    move v11, v3

    move/from16 v30, v4

    .end local v3    # "i":I
    .end local v4    # "headerByte":I
    .restart local v11    # "i":I
    .restart local v30    # "headerByte":I
    move-object v11, v2

    goto :goto_7

    .line 167
    .end local v20    # "spliceEventCancelIndicator":Z
    .end local v21    # "spliceEventId":J
    .end local v30    # "headerByte":I
    .local v1, "spliceEventCancelIndicator":Z
    .local v2, "spliceEventId":J
    .restart local v4    # "headerByte":I
    .local v11, "componentSplices":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    :cond_8
    move/from16 v20, v1

    move-wide/from16 v21, v2

    move/from16 v30, v4

    .line 183
    .end local v1    # "spliceEventCancelIndicator":Z
    .end local v2    # "spliceEventId":J
    .end local v4    # "headerByte":I
    .restart local v20    # "spliceEventCancelIndicator":Z
    .restart local v21    # "spliceEventId":J
    .restart local v30    # "headerByte":I
    :goto_7
    if-eqz v5, :cond_a

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    int-to-long v1, v1

    .line 185
    .local v1, "firstByte":J
    const-wide/16 v3, 0x80

    and-long/2addr v3, v1

    const-wide/16 v23, 0x0

    cmp-long v3, v3, v23

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    .line 186
    .end local v15    # "autoReturn":Z
    .local v4, "autoReturn":Z
    :goto_8
    const-wide/16 v18, 0x1

    and-long v18, v1, v18

    const/16 v3, 0x20

    shl-long v18, v18, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v23

    or-long v18, v18, v23

    .line 187
    .local v18, "breakDuration90khz":J
    const-wide/16 v23, 0x3e8

    mul-long v23, v23, v18

    const-wide/16 v25, 0x5a

    div-long v23, v23, v25

    move v15, v4

    move-wide/from16 v16, v23

    .line 189
    .end local v1    # "firstByte":J
    .end local v4    # "autoReturn":Z
    .end local v18    # "breakDuration90khz":J
    .restart local v15    # "autoReturn":Z
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v14

    move v5, v6

    move v6, v7

    move v7, v8

    move-wide v8, v9

    move/from16 v18, v14

    move/from16 v31, v12

    move-object v12, v11

    move-wide/from16 v32, v16

    move/from16 v16, v31

    move/from16 v17, v13

    move v13, v15

    move-wide/from16 v14, v32

    goto :goto_9

    .line 158
    .end local v5    # "durationFlag":Z
    .end local v20    # "spliceEventCancelIndicator":Z
    .end local v21    # "spliceEventId":J
    .end local v30    # "headerByte":I
    .local v1, "spliceEventCancelIndicator":Z
    .restart local v2    # "spliceEventId":J
    :cond_b
    move/from16 v20, v1

    move-wide/from16 v21, v2

    .end local v1    # "spliceEventCancelIndicator":Z
    .end local v2    # "spliceEventId":J
    .restart local v20    # "spliceEventCancelIndicator":Z
    .restart local v21    # "spliceEventId":J
    move v5, v6

    move v6, v7

    move v7, v8

    move-wide v8, v9

    move/from16 v18, v14

    move/from16 v31, v12

    move-object v12, v11

    move-wide/from16 v32, v16

    move/from16 v16, v31

    move/from16 v17, v13

    move v13, v15

    move-wide/from16 v14, v32

    .line 193
    .end local v9    # "programSplicePts":J
    .end local v11    # "componentSplices":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .end local v15    # "autoReturn":Z
    .local v5, "outOfNetworkIndicator":Z
    .local v6, "programSpliceFlag":Z
    .local v7, "spliceImmediateFlag":Z
    .local v8, "programSplicePts":J
    .local v12, "componentSplices":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .local v13, "autoReturn":Z
    .local v14, "breakDurationUs":J
    .local v16, "uniqueProgramId":I
    .local v17, "availNum":I
    .local v18, "availsExpected":I
    :goto_9
    new-instance v1, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;

    .line 200
    invoke-virtual {v0, v8, v9}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v10

    move/from16 v4, v20

    move-wide/from16 v2, v21

    .end local v20    # "spliceEventCancelIndicator":Z
    .end local v21    # "spliceEventId":J
    .restart local v2    # "spliceEventId":J
    .local v4, "spliceEventCancelIndicator":Z
    invoke-direct/range {v1 .. v18}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;-><init>(JZZZZJJLjava/util/List;ZJIII)V

    .line 193
    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCTE-35 SpliceInsertCommand { programSplicePts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", programSplicePlaybackPositionUs= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 247
    iget-wide v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 248
    iget-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 249
    iget-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 250
    iget-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 251
    iget-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 252
    iget-wide v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 253
    iget-wide v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 254
    iget-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 255
    .local v0, "componentSpliceListSize":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 257
    iget-object v2, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    invoke-virtual {v2, p1}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;->writeToParcel(Landroid/os/Parcel;)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "i":I
    :cond_0
    iget-boolean v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 260
    iget-wide v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->breakDurationUs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 261
    iget v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->availNum:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    return-void
.end method
