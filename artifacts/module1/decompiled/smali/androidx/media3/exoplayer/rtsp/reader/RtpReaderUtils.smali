.class Landroidx/media3/exoplayer/rtsp/reader/RtpReaderUtils;
.super Ljava/lang/Object;
.source "RtpReaderUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toSampleTimeUs(JJJI)J
    .locals 6
    .param p0, "startTimeOffsetUs"    # J
    .param p2, "rtpTimestamp"    # J
    .param p4, "firstReceivedRtpTimestamp"    # J
    .param p6, "mediaFrequency"    # I

    .line 38
    sub-long v0, p2, p4

    int-to-long v4, p6

    .line 39
    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    add-long/2addr v0, p0

    .line 38
    return-wide v0
.end method
