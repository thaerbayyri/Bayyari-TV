.class public final Landroidx/media3/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;
.implements Landroidx/media3/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;,
        Landroidx/media3/extractor/mp4/Mp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FILE_TYPE_HEIC:I = 0x2

.field private static final FILE_TYPE_MP4:I = 0x0

.field private static final FILE_TYPE_QUICKTIME:I = 0x1

.field public static final FLAG_EMIT_RAW_SUBTITLE_DATA:I = 0x10

.field public static final FLAG_MARK_FIRST_VIDEO_TRACK_WITH_MAIN_ROLE:I = 0x8

.field public static final FLAG_READ_MOTION_PHOTO_METADATA:I = 0x2

.field public static final FLAG_READ_SEF_DATA:I = 0x4

.field public static final FLAG_WORKAROUND_IGNORE_EDIT_LISTS:I = 0x1

.field private static final MAXIMUM_READ_AHEAD_BYTES_STREAM:J = 0xa00000L

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2

.field private static final STATE_READING_SEF:I = 0x3


# instance fields
.field private accumulatedSampleSizes:[[J

.field private atomData:Landroidx/media3/common/util/ParsableByteArray;

.field private final atomHeader:Landroidx/media3/common/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs:J

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private fileType:I

.field private firstVideoTrackIndex:I

.field private final flags:I

.field private motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

.field private final nalLength:Landroidx/media3/common/util/ParsableByteArray;

.field private final nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleTrackIndex:I

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field private seenFtypAtom:Z

.field private final sefReader:Landroidx/media3/extractor/mp4/SefReader;

.field private final slowMotionMetadataEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field private tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 126
    new-instance v0, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    sget-object v0, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 213
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    sget-object v0, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {p0, v0, p1}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 1
    .param p1, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 223
    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V
    .locals 3
    .param p1, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;
    .param p2, "flags"    # I

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 243
    iput p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    .line 244
    nop

    .line 245
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    .line 246
    new-instance v0, Landroidx/media3/extractor/mp4/SefReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mp4/SefReader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sefReader:Landroidx/media3/extractor/mp4/SefReader;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    .line 248
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    .line 249
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 250
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v2, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    .line 251
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    .line 252
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 253
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 254
    sget-object v0, Landroidx/media3/extractor/ExtractorOutput;->PLACEHOLDER:Landroidx/media3/extractor/ExtractorOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 255
    new-array v0, v1, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 256
    return-void
.end method

.method private static brandToFileType(I)I
    .locals 1
    .param p0, "brand"    # I

    .line 970
    sparse-switch p0, :sswitch_data_0

    .line 976
    const/4 v0, 0x0

    return v0

    .line 972
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 974
    :sswitch_1
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x68656963 -> :sswitch_1
        0x71742020 -> :sswitch_0
    .end sparse-switch
.end method

.method private static calculateAccumulatedSampleSizes([Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;)[[J
    .locals 14
    .param p0, "tracks"    # [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 873
    array-length v0, p0

    new-array v0, v0, [[J

    .line 874
    .local v0, "accumulatedSampleSizes":[[J
    array-length v1, p0

    new-array v1, v1, [I

    .line 875
    .local v1, "nextSampleIndex":[I
    array-length v2, p0

    new-array v2, v2, [J

    .line 876
    .local v2, "nextSampleTimesUs":[J
    array-length v3, p0

    new-array v3, v3, [Z

    .line 877
    .local v3, "tracksFinished":[Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 878
    aget-object v5, p0, v4

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    new-array v5, v5, [J

    aput-object v5, v0, v4

    .line 879
    aget-object v5, p0, v4

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    aput-wide v6, v2, v4

    .line 877
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 881
    .end local v4    # "i":I
    :cond_0
    const-wide/16 v4, 0x0

    .line 882
    .local v4, "accumulatedSampleSize":J
    const/4 v6, 0x0

    .line 883
    .local v6, "finishedTracks":I
    :goto_1
    array-length v7, p0

    if-ge v6, v7, :cond_4

    .line 884
    const-wide v7, 0x7fffffffffffffffL

    .line 885
    .local v7, "minTimeUs":J
    const/4 v9, -0x1

    .line 886
    .local v9, "minTimeTrackIndex":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v11, p0

    if-ge v10, v11, :cond_2

    .line 887
    aget-boolean v11, v3, v10

    if-nez v11, :cond_1

    aget-wide v11, v2, v10

    cmp-long v11, v11, v7

    if-gtz v11, :cond_1

    .line 888
    move v9, v10

    .line 889
    aget-wide v7, v2, v10

    .line 886
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 892
    .end local v10    # "i":I
    :cond_2
    aget v10, v1, v9

    .line 893
    .local v10, "trackSampleIndex":I
    aget-object v11, v0, v9

    aput-wide v4, v11, v10

    .line 894
    aget-object v11, p0, v9

    iget-object v11, v11, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v11, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v11, v11, v10

    int-to-long v11, v11

    add-long/2addr v4, v11

    .line 895
    const/4 v11, 0x1

    add-int/2addr v10, v11

    aput v10, v1, v9

    .line 896
    aget-object v12, v0, v9

    array-length v12, v12

    if-ge v10, v12, :cond_3

    .line 897
    aget-object v11, p0, v9

    iget-object v11, v11, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v11, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v12, v11, v10

    aput-wide v12, v2, v9

    goto :goto_3

    .line 900
    :cond_3
    aput-boolean v11, v3, v9

    .line 901
    add-int/lit8 v6, v6, 0x1

    .line 903
    .end local v7    # "minTimeUs":J
    .end local v9    # "minTimeTrackIndex":I
    .end local v10    # "trackSampleIndex":I
    :goto_3
    goto :goto_1

    .line 904
    :cond_4
    return-object v0
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    .line 417
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 418
    return-void
.end method

.method private static getSynchronizationSampleIndex(Landroidx/media3/extractor/mp4/TrackSampleTable;J)I
    .locals 2
    .param p0, "sampleTable"    # Landroidx/media3/extractor/mp4/TrackSampleTable;
    .param p1, "timeUs"    # J

    .line 938
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v0

    .line 939
    .local v0, "sampleIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 941
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v0

    .line 943
    :cond_0
    return v0
.end method

.method private getTrackIndexOfNextReadSample(J)I
    .locals 23
    .param p1, "inputPosition"    # J

    .line 784
    move-object/from16 v0, p0

    const-wide v1, 0x7fffffffffffffffL

    .line 785
    .local v1, "preferredSkipAmount":J
    const/4 v3, 0x1

    .line 786
    .local v3, "preferredRequiresReload":Z
    const/4 v4, -0x1

    .line 787
    .local v4, "preferredTrackIndex":I
    const-wide v5, 0x7fffffffffffffffL

    .line 788
    .local v5, "preferredAccumulatedBytes":J
    const-wide v7, 0x7fffffffffffffffL

    .line 789
    .local v7, "minAccumulatedBytes":J
    const/4 v9, 0x1

    .line 790
    .local v9, "minAccumulatedBytesRequiresReload":Z
    const/4 v10, -0x1

    .line 791
    .local v10, "minAccumulatedBytesTrackIndex":I
    const/4 v11, 0x0

    .local v11, "trackIndex":I
    :goto_0
    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v12, v12

    if-ge v11, v12, :cond_7

    .line 792
    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v12, v12, v11

    .line 793
    .local v12, "track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    iget v13, v12, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 794
    .local v13, "sampleIndex":I
    iget-object v14, v12, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v14, v14, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v13, v14, :cond_0

    .line 795
    goto :goto_3

    .line 797
    :cond_0
    iget-object v14, v12, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v14, v14, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v15, v14, v13

    .line 798
    .local v15, "sampleOffset":J
    iget-object v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    invoke-static {v14}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[J

    aget-object v14, v14, v11

    aget-wide v17, v14, v13

    .line 799
    .local v17, "sampleAccumulatedBytes":J
    sub-long v19, v15, p1

    .line 800
    .local v19, "skipAmount":J
    const-wide/16 v21, 0x0

    cmp-long v14, v19, v21

    if-ltz v14, :cond_2

    const-wide/32 v21, 0x40000

    cmp-long v14, v19, v21

    if-ltz v14, :cond_1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v14, 0x1

    .line 801
    .local v14, "requiresReload":Z
    :goto_2
    if-nez v14, :cond_3

    if-nez v3, :cond_4

    :cond_3
    if-ne v14, v3, :cond_5

    cmp-long v21, v19, v1

    if-gez v21, :cond_5

    .line 803
    :cond_4
    move v3, v14

    .line 804
    move-wide/from16 v1, v19

    .line 805
    move v4, v11

    .line 806
    move-wide/from16 v5, v17

    .line 808
    :cond_5
    cmp-long v21, v17, v7

    if-gez v21, :cond_6

    .line 809
    move-wide/from16 v7, v17

    .line 810
    move v9, v14

    .line 811
    move v10, v11

    .line 791
    .end local v12    # "track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v13    # "sampleIndex":I
    .end local v14    # "requiresReload":Z
    .end local v15    # "sampleOffset":J
    .end local v17    # "sampleAccumulatedBytes":J
    .end local v19    # "skipAmount":J
    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 816
    .end local v11    # "trackIndex":I
    :cond_7
    const-wide v11, 0x7fffffffffffffffL

    cmp-long v11, v7, v11

    if-eqz v11, :cond_9

    if-eqz v9, :cond_9

    const-wide/32 v11, 0xa00000

    add-long/2addr v11, v7

    cmp-long v11, v5, v11

    if-gez v11, :cond_8

    goto :goto_4

    .line 818
    :cond_8
    move v11, v10

    goto :goto_5

    .line 817
    :cond_9
    :goto_4
    move v11, v4

    .line 814
    :goto_5
    return v11
.end method

.method static synthetic lambda$newFactory$0(Landroidx/media3/extractor/text/SubtitleParser$Factory;)[Landroidx/media3/extractor/Extractor;
    .locals 3
    .param p0, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-direct {v1, p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic lambda$processMoovAtom$2(Landroidx/media3/extractor/mp4/Track;)Landroidx/media3/extractor/mp4/Track;
    .locals 0
    .param p0, "track"    # Landroidx/media3/extractor/mp4/Track;

    .line 586
    return-object p0
.end method

.method static synthetic lambda$static$1()[Landroidx/media3/extractor/Extractor;
    .locals 4

    .line 128
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/mp4/Mp4Extractor;

    sget-object v2, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static maybeAdjustSeekOffset(Landroidx/media3/extractor/mp4/TrackSampleTable;JJ)J
    .locals 6
    .param p0, "sampleTable"    # Landroidx/media3/extractor/mp4/TrackSampleTable;
    .param p1, "seekTimeUs"    # J
    .param p3, "offset"    # J

    .line 918
    invoke-static {p0, p1, p2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Landroidx/media3/extractor/mp4/TrackSampleTable;J)I

    move-result v0

    .line 919
    .local v0, "sampleIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 920
    return-wide p3

    .line 922
    :cond_0
    iget-object v1, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v2, v1, v0

    .line 923
    .local v2, "sampleOffset":J
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method private maybeSkipRemainingMetaAtomHeaderBytes(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 3
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 846
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 847
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 848
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v0}, Landroidx/media3/extractor/mp4/AtomParsers;->maybeSkipRemainingMetaAtomHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 849
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 850
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 851
    return-void
.end method

.method public static newFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 1
    .param p0, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 74
    new-instance v0, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    return-object v0
.end method

.method private processAtomEnded(J)V
    .locals 4
    .param p1, "atomEndPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 536
    nop

    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    iget-wide v2, v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    .line 537
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    .line 538
    .local v0, "containerAtom":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    iget v2, v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->type:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_0

    .line 540
    invoke-direct {p0, v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processMoovAtom(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)V

    .line 541
    iget-object v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 542
    iput v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_1

    .line 543
    :cond_0
    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 544
    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->add(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)V

    .line 546
    .end local v0    # "containerAtom":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    :cond_1
    :goto_1
    goto :goto_0

    .line 547
    :cond_2
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    if-eq v0, v1, :cond_3

    .line 548
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 550
    :cond_3
    return-void
.end method

.method private processEndOfStreamReadingAtomHeader()V
    .locals 6

    .line 834
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    .line 838
    .local v0, "trackOutput":Landroidx/media3/extractor/TrackOutput;
    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/common/Metadata;

    const/4 v3, 0x1

    new-array v3, v3, [Landroidx/media3/common/Metadata$Entry;

    iget-object v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    aput-object v4, v3, v2

    invoke-direct {v1, v3}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 839
    .local v1, "metadata":Landroidx/media3/common/Metadata;
    :goto_0
    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 840
    iget-object v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v2}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 841
    iget-object v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v3, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v3, v4, v5}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v2, v3}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 843
    .end local v0    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .end local v1    # "metadata":Landroidx/media3/common/Metadata;
    :cond_1
    return-void
.end method

.method private static processFtypAtom(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 3
    .param p0, "atomData"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 953
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 954
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 955
    .local v0, "majorBrand":I
    invoke-static {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->brandToFileType(I)I

    move-result v1

    .line 956
    .local v1, "fileType":I
    if-eqz v1, :cond_0

    .line 957
    return v1

    .line 959
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 960
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_2

    .line 961
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-static {v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->brandToFileType(I)I

    move-result v1

    .line 962
    if-eqz v1, :cond_1

    .line 963
    return v1

    .line 966
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private processMoovAtom(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)V
    .locals 30
    .param p1, "moov"    # Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 554
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v9, -0x1

    .line 555
    .local v9, "firstVideoTrackIndex":I
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 556
    .local v10, "durationUs":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v2

    .line 559
    .local v12, "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v2, v14, :cond_0

    move v7, v14

    goto :goto_0

    :cond_0
    move v7, v13

    .line 560
    .local v7, "isQuickTime":Z
    :goto_0
    new-instance v2, Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-direct {v2}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    .line 561
    .local v2, "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    const/4 v3, 0x0

    .line 562
    .local v3, "udtaMetadata":Landroidx/media3/common/Metadata;
    const v4, 0x75647461

    invoke-virtual {v1, v4}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v15

    .line 563
    .local v15, "udta":Landroidx/media3/extractor/mp4/Atom$LeafAtom;
    if-eqz v15, :cond_1

    .line 564
    invoke-static {v15}, Landroidx/media3/extractor/mp4/AtomParsers;->parseUdta(Landroidx/media3/extractor/mp4/Atom$LeafAtom;)Landroidx/media3/common/Metadata;

    move-result-object v3

    .line 565
    invoke-virtual {v2, v3}, Landroidx/media3/extractor/GaplessInfoHolder;->setFromMetadata(Landroidx/media3/common/Metadata;)Z

    move-object/from16 v16, v3

    goto :goto_1

    .line 563
    :cond_1
    move-object/from16 v16, v3

    .line 567
    .end local v3    # "udtaMetadata":Landroidx/media3/common/Metadata;
    .local v16, "udtaMetadata":Landroidx/media3/common/Metadata;
    :goto_1
    const/4 v3, 0x0

    .line 568
    .local v3, "mdtaMetadata":Landroidx/media3/common/Metadata;
    const v4, 0x6d657461

    invoke-virtual {v1, v4}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v17

    .line 569
    .local v17, "meta":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    if-eqz v17, :cond_2

    .line 570
    invoke-static/range {v17 .. v17}, Landroidx/media3/extractor/mp4/AtomParsers;->parseMdtaFromMeta(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)Landroidx/media3/common/Metadata;

    move-result-object v3

    .line 573
    :cond_2
    new-instance v4, Landroidx/media3/common/Metadata;

    new-array v5, v14, [Landroidx/media3/common/Metadata$Entry;

    .line 575
    const v6, 0x6d766864

    invoke-virtual {v1, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v6}, Landroidx/media3/extractor/mp4/AtomParsers;->parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-direct {v4, v5}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    move-object/from16 v18, v4

    .line 577
    .local v18, "mvhdMetadata":Landroidx/media3/common/Metadata;
    iget v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v4, v14

    if-eqz v4, :cond_3

    move v6, v14

    goto :goto_2

    :cond_3
    move v6, v13

    .line 578
    .local v6, "ignoreEditLists":Z
    :goto_2
    new-instance v8, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;-><init>()V

    .line 579
    move-object v5, v3

    .end local v3    # "mdtaMetadata":Landroidx/media3/common/Metadata;
    .local v5, "mdtaMetadata":Landroidx/media3/common/Metadata;
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v19, v5

    .end local v5    # "mdtaMetadata":Landroidx/media3/common/Metadata;
    .local v19, "mdtaMetadata":Landroidx/media3/common/Metadata;
    const/4 v5, 0x0

    move/from16 v20, v14

    move-object/from16 v14, v19

    .end local v19    # "mdtaMetadata":Landroidx/media3/common/Metadata;
    .local v14, "mdtaMetadata":Landroidx/media3/common/Metadata;
    invoke-static/range {v1 .. v8}, Landroidx/media3/extractor/mp4/AtomParsers;->parseTraks(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v3

    .line 588
    .local v3, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    const/4 v1, 0x0

    .line 589
    .local v1, "trackIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 590
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 591
    .local v5, "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    iget v8, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-nez v8, :cond_4

    .line 592
    move-object/from16 v28, v2

    move-object/from16 v22, v3

    move/from16 v23, v4

    move/from16 v25, v6

    move/from16 v19, v13

    move-object v5, v14

    goto/16 :goto_a

    .line 594
    :cond_4
    iget-object v8, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    .line 596
    .local v8, "track":Landroidx/media3/extractor/mp4/Track;
    move/from16 v19, v13

    move-object/from16 v21, v14

    .end local v14    # "mdtaMetadata":Landroidx/media3/common/Metadata;
    .local v21, "mdtaMetadata":Landroidx/media3/common/Metadata;
    iget-wide v13, v8, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v13, v22

    if-eqz v13, :cond_5

    iget-wide v13, v8, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    goto :goto_4

    :cond_5
    iget-wide v13, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 597
    .local v13, "trackDurationUs":J
    :goto_4
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 598
    move-object/from16 v22, v3

    .end local v3    # "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    .local v22, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    new-instance v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    move/from16 v23, v4

    .end local v4    # "i":I
    .local v23, "i":I
    iget-object v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    add-int/lit8 v24, v1, 0x1

    move/from16 v25, v6

    .end local v1    # "trackIndex":I
    .end local v6    # "ignoreEditLists":Z
    .local v24, "trackIndex":I
    .local v25, "ignoreEditLists":Z
    iget v6, v8, Landroidx/media3/extractor/mp4/Track;->type:I

    .line 599
    invoke-interface {v4, v1, v6}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v1

    invoke-direct {v3, v8, v5, v1}, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/TrackOutput;)V

    .line 602
    .local v3, "mp4Track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-object v1, v8, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v4, "audio/true-hd"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 604
    iget v1, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->maximumSize:I

    mul-int/lit8 v1, v1, 0x10

    .local v1, "maxInputSize":I
    goto :goto_5

    .line 608
    .end local v1    # "maxInputSize":I
    :cond_6
    iget v1, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v1, v1, 0x1e

    .line 611
    .restart local v1    # "maxInputSize":I
    :goto_5
    iget-object v4, v8, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-virtual {v4}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 612
    .local v4, "formatBuilder":Landroidx/media3/common/Format$Builder;
    invoke-virtual {v4, v1}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    .line 613
    iget v6, v8, Landroidx/media3/extractor/mp4/Track;->type:I

    move/from16 v26, v1

    .end local v1    # "maxInputSize":I
    .local v26, "maxInputSize":I
    const/4 v1, 0x2

    if-ne v6, v1, :cond_9

    .line 614
    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_8

    .line 615
    iget-object v6, v8, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v6, v6, Landroidx/media3/common/Format;->roleFlags:I

    .line 617
    move/from16 v27, v1

    const/4 v1, -0x1

    if-ne v9, v1, :cond_7

    .line 618
    move/from16 v1, v20

    goto :goto_6

    .line 619
    :cond_7
    move/from16 v1, v27

    :goto_6
    or-int/2addr v1, v6

    .line 615
    invoke-virtual {v4, v1}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    goto :goto_7

    .line 614
    :cond_8
    move/from16 v27, v1

    .line 621
    :goto_7
    const-wide/16 v28, 0x0

    cmp-long v1, v13, v28

    if-lez v1, :cond_a

    iget v1, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-lez v1, :cond_a

    .line 622
    iget v1, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    int-to-float v1, v1

    long-to-float v6, v13

    const v28, 0x49742400    # 1000000.0f

    div-float v6, v6, v28

    div-float/2addr v1, v6

    .line 623
    .local v1, "frameRate":F
    invoke-virtual {v4, v1}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    goto :goto_8

    .line 613
    .end local v1    # "frameRate":F
    :cond_9
    move/from16 v27, v1

    .line 627
    :cond_a
    :goto_8
    iget v1, v8, Landroidx/media3/extractor/mp4/Track;->type:I

    invoke-static {v1, v2, v4}, Landroidx/media3/extractor/mp4/MetadataUtil;->setFormatGaplessInfo(ILandroidx/media3/extractor/GaplessInfoHolder;Landroidx/media3/common/Format$Builder;)V

    .line 628
    iget v1, v8, Landroidx/media3/extractor/mp4/Track;->type:I

    const/4 v6, 0x3

    new-array v6, v6, [Landroidx/media3/common/Metadata;

    .line 632
    move-object/from16 v28, v2

    .end local v2    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .local v28, "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    move-object/from16 v29, v5

    goto :goto_9

    :cond_b
    new-instance v2, Landroidx/media3/common/Metadata;

    move-object/from16 v29, v5

    .end local v5    # "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    .local v29, "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    iget-object v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-direct {v2, v5}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_9
    aput-object v2, v6, v19

    aput-object v16, v6, v20

    aput-object v18, v6, v27

    .line 628
    move-object/from16 v5, v21

    .end local v21    # "mdtaMetadata":Landroidx/media3/common/Metadata;
    .local v5, "mdtaMetadata":Landroidx/media3/common/Metadata;
    invoke-static {v1, v5, v4, v6}, Landroidx/media3/extractor/mp4/MetadataUtil;->setFormatMetadata(ILandroidx/media3/common/Metadata;Landroidx/media3/common/Format$Builder;[Landroidx/media3/common/Metadata;)V

    .line 635
    iget-object v1, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 637
    iget v1, v8, Landroidx/media3/extractor/mp4/Track;->type:I

    move/from16 v2, v27

    if-ne v1, v2, :cond_c

    const/4 v1, -0x1

    if-ne v9, v1, :cond_c

    .line 638
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    .line 640
    :cond_c
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v24

    .line 589
    .end local v3    # "mp4Track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v4    # "formatBuilder":Landroidx/media3/common/Format$Builder;
    .end local v8    # "track":Landroidx/media3/extractor/mp4/Track;
    .end local v13    # "trackDurationUs":J
    .end local v24    # "trackIndex":I
    .end local v26    # "maxInputSize":I
    .end local v29    # "trackSampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    .local v1, "trackIndex":I
    :goto_a
    add-int/lit8 v4, v23, 0x1

    move-object v14, v5

    move/from16 v13, v19

    move-object/from16 v3, v22

    move/from16 v6, v25

    move-object/from16 v2, v28

    .end local v23    # "i":I
    .local v4, "i":I
    goto/16 :goto_3

    .end local v5    # "mdtaMetadata":Landroidx/media3/common/Metadata;
    .end local v22    # "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    .end local v25    # "ignoreEditLists":Z
    .end local v28    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .restart local v2    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .local v3, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mp4/TrackSampleTable;>;"
    .restart local v6    # "ignoreEditLists":Z
    .restart local v14    # "mdtaMetadata":Landroidx/media3/common/Metadata;
    :cond_d
    move-object/from16 v28, v2

    move/from16 v19, v13

    .line 642
    .end local v2    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    .end local v4    # "i":I
    .restart local v28    # "gaplessInfoHolder":Landroidx/media3/extractor/GaplessInfoHolder;
    iput v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    .line 643
    iput-wide v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->durationUs:J

    .line 644
    move/from16 v2, v19

    new-array v2, v2, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-interface {v12, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 645
    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-static {v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->calculateAccumulatedSampleSizes([Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;)[[J

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    .line 647
    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v2}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 648
    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v2, v0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 649
    return-void
.end method

.method private processUnparsedAtom(J)V
    .locals 13
    .param p1, "atomStartPosition"    # J

    .line 855
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v1, 0x6d707664

    if-ne v0, v1, :cond_0

    .line 858
    new-instance v2, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v0, v0

    add-long v9, p1, v0

    iget-wide v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v3, v3

    sub-long v11, v0, v3

    const-wide/16 v3, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v5, p1

    .end local p1    # "atomStartPosition":J
    .local v5, "atomStartPosition":J
    invoke-direct/range {v2 .. v12}, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    goto :goto_0

    .line 855
    .end local v5    # "atomStartPosition":J
    .restart local p1    # "atomStartPosition":J
    :cond_0
    move-wide v5, p1

    .line 866
    .end local p1    # "atomStartPosition":J
    .restart local v5    # "atomStartPosition":J
    :goto_0
    return-void
.end method

.method private readAtomHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 10
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v3, v1, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processEndOfStreamReadingAtomHeader()V

    .line 425
    return v3

    .line 427
    :cond_0
    iput v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 428
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 429
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 430
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    .line 433
    :cond_1
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 435
    const/16 v0, 0x8

    .line 436
    .local v0, "headerBytesRemaining":I
    iget-object v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-interface {p1, v4, v1, v0}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 437
    iget v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v4, v0

    iput v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 438
    iget-object v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    .end local v0    # "headerBytesRemaining":I
    goto :goto_0

    .line 439
    :cond_2
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 442
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    .line 443
    .local v4, "endPosition":J
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 444
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    .line 445
    .local v0, "containerAtom":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    if-eqz v0, :cond_3

    .line 446
    iget-wide v4, v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    .line 449
    .end local v0    # "containerAtom":Landroidx/media3/extractor/mp4/Atom$ContainerAtom;
    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    .line 450
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    goto :goto_1

    .line 439
    .end local v4    # "endPosition":J
    :cond_4
    :goto_0
    nop

    .line 454
    :cond_5
    :goto_1
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_c

    .line 459
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 460
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v0, v3

    iget v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v3, v3

    sub-long/2addr v0, v3

    .line 461
    .local v0, "endPosition":J
    iget-wide v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v5, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    iget v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v4, 0x6d657461

    if-ne v3, v4, :cond_6

    .line 462
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/Mp4Extractor;->maybeSkipRemainingMetaAtomHeaderBytes(Landroidx/media3/extractor/ExtractorInput;)V

    .line 464
    :cond_6
    iget-object v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v4, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    iget v5, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v4, v5, v0, v1}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 465
    iget-wide v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v5, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 466
    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    goto :goto_2

    .line 469
    :cond_7
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 471
    .end local v0    # "endPosition":J
    :goto_2
    goto :goto_5

    :cond_8
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 474
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne v0, v1, :cond_9

    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v3

    :goto_3
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 475
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_a

    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v3

    :goto_4
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 476
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-wide v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v4, v4

    invoke-direct {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 477
    .local v0, "atomData":Landroidx/media3/common/util/ParsableByteArray;
    iget-object v4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-static {v4, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    .line 479
    iput v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    .line 480
    .end local v0    # "atomData":Landroidx/media3/common/util/ParsableByteArray;
    goto :goto_5

    .line 481
    :cond_b
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget v3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v3, v3

    sub-long/2addr v0, v3

    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processUnparsedAtom(J)V

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    .line 483
    iput v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    .line 486
    :goto_5
    return v2

    .line 455
    :cond_c
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method private readAtomPayload(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)Z
    .locals 10
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 497
    .local v0, "atomPayloadSize":J
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 498
    .local v2, "atomEndPosition":J
    const/4 v4, 0x0

    .line 499
    .local v4, "seekRequired":Z
    iget-object v5, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    .line 500
    .local v5, "atomData":Landroidx/media3/common/util/ParsableByteArray;
    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 501
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v7

    iget v8, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v9, v0

    invoke-interface {p1, v7, v8, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 502
    iget v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v8, 0x66747970

    if-ne v7, v8, :cond_0

    .line 503
    iput-boolean v6, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seenFtypAtom:Z

    .line 504
    invoke-static {v5}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processFtypAtom(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v7

    iput v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    goto :goto_0

    .line 505
    :cond_0
    iget-object v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 506
    iget-object v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    new-instance v8, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget v9, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v8, v9, v5}, Landroidx/media3/extractor/mp4/Atom$LeafAtom;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    invoke-virtual {v7, v8}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->add(Landroidx/media3/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    .line 509
    :cond_1
    iget-boolean v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->seenFtypAtom:Z

    if-nez v7, :cond_2

    iget v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v8, 0x6d646174

    if-ne v7, v8, :cond_2

    .line 512
    iput v6, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    .line 515
    :cond_2
    const-wide/32 v7, 0x40000

    cmp-long v7, v0, v7

    if-gez v7, :cond_3

    .line 516
    long-to-int v7, v0

    invoke-interface {p1, v7}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0

    .line 518
    :cond_3
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 519
    const/4 v4, 0x1

    .line 522
    :cond_4
    :goto_0
    invoke-direct {p0, v2, v3}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    .line 523
    if-eqz v4, :cond_5

    iget v7, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    return v6
.end method

.method private readSample(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 24
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 667
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 668
    .local v2, "inputPosition":J
    iget v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 669
    invoke-direct {v0, v2, v3}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getTrackIndexOfNextReadSample(J)I

    move-result v4

    iput v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 670
    iget v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    if-ne v4, v5, :cond_0

    .line 671
    return v5

    .line 674
    :cond_0
    iget-object v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    aget-object v4, v4, v6

    .line 675
    .local v4, "track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-object v6, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 676
    .local v6, "trackOutput":Landroidx/media3/extractor/TrackOutput;
    iget v14, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 677
    .local v14, "sampleIndex":I
    iget-object v7, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v7, v7, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v8, v7, v14

    .line 678
    .local v8, "position":J
    iget-object v7, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v7, v7, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v7, v7, v14

    .line 679
    .local v7, "sampleSize":I
    iget-object v10, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 680
    .local v10, "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    sub-long v11, v8, v2

    iget v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    move-object/from16 v16, v6

    .end local v6    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .local v16, "trackOutput":Landroidx/media3/extractor/TrackOutput;
    int-to-long v5, v13

    add-long/2addr v11, v5

    .line 681
    .local v11, "skipAmount":J
    const-wide/16 v5, 0x0

    cmp-long v5, v11, v5

    const/4 v6, 0x1

    if-ltz v5, :cond_d

    const-wide/32 v17, 0x40000

    cmp-long v5, v11, v17

    if-ltz v5, :cond_1

    move-wide/from16 v20, v2

    move/from16 v18, v6

    move-wide v2, v8

    move-object v13, v10

    move-object/from16 v15, v16

    goto/16 :goto_4

    .line 685
    :cond_1
    iget-object v5, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget v5, v5, Landroidx/media3/extractor/mp4/Track;->sampleTransformation:I

    if-ne v5, v6, :cond_2

    .line 688
    const-wide/16 v17, 0x8

    add-long v11, v11, v17

    .line 689
    add-int/lit8 v7, v7, -0x8

    .line 691
    :cond_2
    long-to-int v5, v11

    invoke-interface {v1, v5}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 692
    iget-object v5, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget v5, v5, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v15, 0x0

    if-eqz v5, :cond_6

    .line 695
    iget-object v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    .line 696
    .local v5, "nalLengthData":[B
    aput-byte v15, v5, v15

    .line 697
    aput-byte v15, v5, v6

    .line 698
    const/16 v18, 0x2

    aput-byte v15, v5, v18

    .line 699
    iget-object v6, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget v6, v6, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 700
    .local v6, "nalUnitLengthFieldLength":I
    iget-object v13, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget v13, v13, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v15, 0x4

    rsub-int/lit8 v13, v13, 0x4

    .line 704
    .local v13, "nalUnitLengthFieldLengthDiff":I
    :goto_0
    iget v15, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v15, v7, :cond_5

    .line 705
    iget v15, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v15, :cond_4

    .line 707
    invoke-interface {v1, v5, v13, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 708
    iget v15, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v15, v6

    iput v15, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 709
    iget-object v15, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    move-wide/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "inputPosition":J
    .local v20, "inputPosition":J
    invoke-virtual {v15, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 710
    iget-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 711
    .local v3, "nalLengthInt":I
    if-ltz v3, :cond_3

    .line 715
    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 717
    iget-object v15, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v15, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 718
    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    move-object/from16 v15, v16

    move/from16 v16, v3

    const/4 v3, 0x4

    .end local v3    # "nalLengthInt":I
    .local v15, "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .local v16, "nalLengthInt":I
    invoke-interface {v15, v2, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 719
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 720
    add-int/2addr v7, v13

    .line 721
    .end local v16    # "nalLengthInt":I
    move-object/from16 v16, v15

    move v15, v3

    move-wide/from16 v2, v20

    goto :goto_0

    .line 712
    .end local v15    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .restart local v3    # "nalLengthInt":I
    .local v16, "trackOutput":Landroidx/media3/extractor/TrackOutput;
    :cond_3
    move-object/from16 v15, v16

    move/from16 v16, v3

    .end local v3    # "nalLengthInt":I
    .restart local v15    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .local v16, "nalLengthInt":I
    const-string v2, "Invalid NAL length"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v2

    throw v2

    .line 723
    .end local v15    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .end local v20    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    .local v16, "trackOutput":Landroidx/media3/extractor/TrackOutput;
    :cond_4
    move-wide/from16 v20, v2

    move-object/from16 v15, v16

    const/4 v3, 0x4

    const/16 v19, 0x0

    .end local v2    # "inputPosition":J
    .end local v16    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .restart local v15    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .restart local v20    # "inputPosition":J
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v3, 0x0

    invoke-interface {v15, v1, v2, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v2

    .line 724
    .local v2, "writtenBytes":I
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 725
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 726
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 727
    .end local v2    # "writtenBytes":I
    move-wide/from16 v2, v20

    const/4 v15, 0x4

    goto :goto_0

    .line 704
    .end local v15    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .end local v20    # "inputPosition":J
    .local v2, "inputPosition":J
    .restart local v16    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    :cond_5
    move-wide/from16 v20, v2

    move-object/from16 v15, v16

    const/16 v19, 0x0

    .line 729
    .end local v2    # "inputPosition":J
    .end local v5    # "nalLengthData":[B
    .end local v6    # "nalUnitLengthFieldLength":I
    .end local v13    # "nalUnitLengthFieldLengthDiff":I
    .end local v16    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .restart local v15    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .restart local v20    # "inputPosition":J
    goto :goto_2

    .line 730
    .end local v15    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .end local v20    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    .restart local v16    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    :cond_6
    move-wide/from16 v20, v2

    move-object/from16 v15, v16

    const/16 v19, 0x0

    .end local v2    # "inputPosition":J
    .end local v16    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .restart local v15    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .restart local v20    # "inputPosition":J
    iget-object v2, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v2, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 731
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-nez v2, :cond_7

    .line 732
    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v7, v2}, Landroidx/media3/extractor/Ac4Util;->getAc4SampleHeader(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 733
    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v3, 0x7

    invoke-interface {v15, v2, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 734
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 736
    :cond_7
    add-int/lit8 v7, v7, 0x7

    goto :goto_1

    .line 737
    :cond_8
    if-eqz v10, :cond_9

    .line 738
    invoke-virtual {v10, v1}, Landroidx/media3/extractor/TrueHdSampleRechunker;->startSample(Landroidx/media3/extractor/ExtractorInput;)V

    .line 741
    :cond_9
    :goto_1
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v2, v7, :cond_a

    .line 742
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    sub-int v2, v7, v2

    const/4 v3, 0x0

    invoke-interface {v15, v1, v2, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v2

    .line 743
    .local v2, "writtenBytes":I
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 744
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 745
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 746
    .end local v2    # "writtenBytes":I
    goto :goto_1

    .line 749
    :cond_a
    :goto_2
    iget-object v2, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v5, v2, v14

    .line 750
    .local v5, "timeUs":J
    iget-object v2, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    aget v2, v2, v14

    .line 751
    .local v2, "flags":I
    if-eqz v10, :cond_b

    .line 752
    move-wide/from16 v22, v11

    .end local v11    # "skipAmount":J
    .local v22, "skipAmount":J
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v10

    move v10, v2

    move-wide v2, v8

    move-wide v8, v5

    move-object v6, v11

    move v11, v7

    move-object v7, v15

    move-object/from16 v5, v19

    const/16 v18, 0x1

    .end local v5    # "timeUs":J
    .end local v15    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .local v2, "position":J
    .local v6, "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .local v7, "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .local v8, "timeUs":J
    .local v10, "flags":I
    .local v11, "sampleSize":I
    invoke-virtual/range {v6 .. v13}, Landroidx/media3/extractor/TrueHdSampleRechunker;->sampleMetadata(Landroidx/media3/extractor/TrackOutput;JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 754
    move-object v13, v6

    move-wide v7, v8

    move v9, v10

    move v10, v11

    .end local v6    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .end local v8    # "timeUs":J
    .end local v11    # "sampleSize":I
    .local v7, "timeUs":J
    .local v9, "flags":I
    .local v10, "sampleSize":I
    .local v13, "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .restart local v15    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    add-int/lit8 v6, v14, 0x1

    iget-object v11, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v11, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v6, v11, :cond_c

    .line 755
    invoke-virtual {v13, v15, v5}, Landroidx/media3/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/TrackOutput$CryptoData;)V

    goto :goto_3

    .line 758
    .end local v9    # "flags":I
    .end local v13    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .end local v22    # "skipAmount":J
    .local v2, "flags":I
    .restart local v5    # "timeUs":J
    .local v7, "sampleSize":I
    .local v8, "position":J
    .local v10, "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .local v11, "skipAmount":J
    :cond_b
    move-wide/from16 v22, v8

    move v9, v2

    move-wide/from16 v2, v22

    move-object v13, v10

    move-wide/from16 v22, v11

    const/16 v18, 0x1

    move v10, v7

    move-wide v7, v5

    .end local v5    # "timeUs":J
    .end local v8    # "position":J
    .end local v11    # "skipAmount":J
    .local v2, "position":J
    .local v7, "timeUs":J
    .restart local v9    # "flags":I
    .local v10, "sampleSize":I
    .restart local v13    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .restart local v22    # "skipAmount":J
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v15

    .end local v15    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .local v6, "trackOutput":Landroidx/media3/extractor/TrackOutput;
    invoke-interface/range {v6 .. v12}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 762
    .end local v6    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .restart local v15    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    :cond_c
    :goto_3
    iget v5, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 763
    const/4 v5, -0x1

    iput v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 764
    const/4 v5, 0x0

    iput v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 765
    iput v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 766
    iput v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 767
    return v5

    .line 681
    .end local v9    # "flags":I
    .end local v13    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .end local v15    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .end local v20    # "inputPosition":J
    .end local v22    # "skipAmount":J
    .local v2, "inputPosition":J
    .local v7, "sampleSize":I
    .restart local v8    # "position":J
    .local v10, "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .restart local v11    # "skipAmount":J
    .restart local v16    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    :cond_d
    move-wide/from16 v20, v2

    move/from16 v18, v6

    move-wide v2, v8

    move-object v13, v10

    move-object/from16 v15, v16

    .line 682
    .end local v8    # "position":J
    .end local v10    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .end local v16    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .local v2, "position":J
    .restart local v13    # "trueHdSampleRechunker":Landroidx/media3/extractor/TrueHdSampleRechunker;
    .restart local v15    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .restart local v20    # "inputPosition":J
    :goto_4
    move-object/from16 v5, p2

    iput-wide v2, v5, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 683
    return v18
.end method

.method private readSefData(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 5
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sefReader:Landroidx/media3/extractor/mp4/SefReader;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Landroidx/media3/extractor/mp4/SefReader;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;Ljava/util/List;)I

    move-result v0

    .line 529
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v1, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 530
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 532
    :cond_0
    return v0
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .line 1004
    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-eq p0, v0, :cond_1

    const v0, 0x6d657461

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static shouldParseLeafAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .line 982
    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x66747970

    if-eq p0, v0, :cond_1

    const v0, 0x75647461

    if-eq p0, v0, :cond_1

    const v0, 0x6b657973

    if-eq p0, v0, :cond_1

    const v0, 0x696c7374

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private updateSampleIndex(Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;J)V
    .locals 3
    .param p1, "track"    # Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    .param p2, "timeUs"    # J

    .line 823
    iget-object v0, p1, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 824
    .local v0, "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    invoke-virtual {v0, p2, p3}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v1

    .line 825
    .local v1, "sampleIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 827
    invoke-virtual {v0, p2, p3}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v1

    .line 829
    :cond_0
    iput v1, p1, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 830
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 337
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 1
    .param p1, "timeUs"    # J

    .line 342
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getSeekPoints(JI)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    return-object v0
.end method

.method public getSeekPoints(JI)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 21
    .param p1, "timeUs"    # J
    .param p3, "trackId"    # I

    .line 358
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    iget-object v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v4, v4

    if-nez v4, :cond_0

    .line 359
    new-instance v4, Landroidx/media3/extractor/SeekMap$SeekPoints;

    sget-object v5, Landroidx/media3/extractor/SeekPoint;->START:Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v4, v5}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v4

    .line 364
    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 365
    .local v4, "secondTimeUs":J
    const-wide/16 v6, -0x1

    .line 368
    .local v6, "secondOffset":J
    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    move v9, v3

    goto :goto_0

    :cond_1
    iget v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    .line 370
    .local v9, "mainTrackIndex":I
    :goto_0
    if-eq v9, v8, :cond_4

    .line 371
    iget-object v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v10, v10, v9

    iget-object v10, v10, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 372
    .local v10, "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    invoke-static {v10, v1, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Landroidx/media3/extractor/mp4/TrackSampleTable;J)I

    move-result v11

    .line 373
    .local v11, "sampleIndex":I
    if-ne v11, v8, :cond_2

    .line 374
    new-instance v8, Landroidx/media3/extractor/SeekMap$SeekPoints;

    sget-object v12, Landroidx/media3/extractor/SeekPoint;->START:Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v8, v12}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v8

    .line 376
    :cond_2
    iget-object v12, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v13, v12, v11

    .line 377
    .local v13, "sampleTimeUs":J
    move-wide v15, v13

    .line 378
    .local v15, "firstTimeUs":J
    iget-object v12, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v17, v12, v11

    .line 379
    .local v17, "firstOffset":J
    cmp-long v12, v13, v1

    if-gez v12, :cond_3

    iget v12, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_3

    .line 380
    invoke-virtual {v10, v1, v2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v12

    .line 381
    .local v12, "secondSampleIndex":I
    if-eq v12, v8, :cond_3

    if-eq v12, v11, :cond_3

    .line 382
    iget-object v8, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v4, v8, v12

    .line 383
    iget-object v8, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v6, v8, v12

    .line 386
    .end local v10    # "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    .end local v11    # "sampleIndex":I
    .end local v12    # "secondSampleIndex":I
    .end local v13    # "sampleTimeUs":J
    :cond_3
    move-wide v10, v15

    goto :goto_1

    .line 387
    .end local v15    # "firstTimeUs":J
    .end local v17    # "firstOffset":J
    :cond_4
    move-wide/from16 v15, p1

    .line 388
    .restart local v15    # "firstTimeUs":J
    const-wide v17, 0x7fffffffffffffffL

    move-wide v10, v15

    .line 391
    .end local v15    # "firstTimeUs":J
    .local v10, "firstTimeUs":J
    .restart local v17    # "firstOffset":J
    :goto_1
    const/4 v8, -0x1

    if-ne v3, v8, :cond_6

    .line 393
    const/4 v8, 0x0

    move-wide/from16 v14, v17

    .end local v17    # "firstOffset":J
    .local v8, "i":I
    .local v14, "firstOffset":J
    :goto_2
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v12, v12

    if-ge v8, v12, :cond_7

    .line 394
    iget v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    if-eq v8, v12, :cond_5

    .line 395
    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v12, v12, v8

    iget-object v12, v12, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 396
    .local v12, "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    invoke-static {v12, v10, v11, v14, v15}, Landroidx/media3/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Landroidx/media3/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v14

    .line 397
    cmp-long v13, v4, v19

    if-eqz v13, :cond_5

    .line 398
    invoke-static {v12, v4, v5, v6, v7}, Landroidx/media3/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Landroidx/media3/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v6

    .line 393
    .end local v12    # "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 391
    .end local v8    # "i":I
    .end local v14    # "firstOffset":J
    .restart local v17    # "firstOffset":J
    :cond_6
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v14, v17

    .line 404
    .end local v17    # "firstOffset":J
    .restart local v14    # "firstOffset":J
    :cond_7
    new-instance v8, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v8, v10, v11, v14, v15}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 405
    .local v8, "firstSeekPoint":Landroidx/media3/extractor/SeekPoint;
    cmp-long v12, v4, v19

    if-nez v12, :cond_8

    .line 406
    new-instance v12, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v12, v8}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v12

    .line 408
    :cond_8
    new-instance v12, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v12, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 409
    .local v12, "secondSeekPoint":Landroidx/media3/extractor/SeekPoint;
    new-instance v13, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v13, v8, v12}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v13
.end method

.method public synthetic getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;
    .locals 1

    invoke-static {p0}, Landroidx/media3/extractor/Extractor$-CC;->$default$getUnderlyingImplementation(Landroidx/media3/extractor/Extractor;)Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 266
    nop

    .line 267
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    goto :goto_0

    .line 269
    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 270
    return-void
.end method

.method public isSeekable()Z
    .locals 1

    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 1
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    nop

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    .line 323
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 321
    :pswitch_0
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->readSefData(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 319
    :pswitch_1
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->readSample(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 314
    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->readAtomPayload(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x1

    return v0

    .line 309
    :pswitch_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp4/Mp4Extractor;->readAtomHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .line 302
    return-void
.end method

.method public seek(JJ)V
    .locals 5
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 274
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 275
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 276
    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 277
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 278
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 279
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 280
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 283
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 284
    invoke-direct {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_1

    .line 286
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sefReader:Landroidx/media3/extractor/mp4/SefReader;

    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/SefReader;->reset()V

    .line 287
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 290
    :cond_1
    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 291
    .local v3, "track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    invoke-direct {p0, v3, p3, p4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->updateSampleIndex(Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;J)V

    .line 292
    iget-object v4, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz v4, :cond_2

    .line 293
    iget-object v4, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    invoke-virtual {v4}, Landroidx/media3/extractor/TrueHdSampleRechunker;->reset()V

    .line 290
    .end local v3    # "track":Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_3
    :goto_1
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroidx/media3/extractor/mp4/Sniffer;->sniffUnfragmented(Landroidx/media3/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method
