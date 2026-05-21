.class public final Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;,
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
        "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTR_CLOSED_CAPTIONS_NONE:Ljava/lang/String; = "CLOSED-CAPTIONS=NONE"

.field private static final BOOLEAN_FALSE:Ljava/lang/String; = "NO"

.field private static final BOOLEAN_TRUE:Ljava/lang/String; = "YES"

.field private static final KEYFORMAT_IDENTITY:Ljava/lang/String; = "identity"

.field private static final KEYFORMAT_PLAYREADY:Ljava/lang/String; = "com.microsoft.playready"

.field private static final KEYFORMAT_WIDEVINE_PSSH_BINARY:Ljava/lang/String; = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

.field private static final KEYFORMAT_WIDEVINE_PSSH_JSON:Ljava/lang/String; = "com.widevine"

.field private static final LOG_TAG:Ljava/lang/String; = "HlsPlaylistParser"

.field private static final METHOD_AES_128:Ljava/lang/String; = "AES-128"

.field private static final METHOD_NONE:Ljava/lang/String; = "NONE"

.field private static final METHOD_SAMPLE_AES:Ljava/lang/String; = "SAMPLE-AES"

.field private static final METHOD_SAMPLE_AES_CENC:Ljava/lang/String; = "SAMPLE-AES-CENC"

.field private static final METHOD_SAMPLE_AES_CTR:Ljava/lang/String; = "SAMPLE-AES-CTR"

.field private static final PLAYLIST_HEADER:Ljava/lang/String; = "#EXTM3U"

.field private static final REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_AUDIO:Ljava/util/regex/Pattern;

.field private static final REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

.field private static final REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

.field private static final REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

.field private static final REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

.field private static final REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

.field private static final REGEX_CHANNELS:Ljava/util/regex/Pattern;

.field private static final REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

.field private static final REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

.field private static final REGEX_CODECS:Ljava/util/regex/Pattern;

.field private static final REGEX_DEFAULT:Ljava/util/regex/Pattern;

.field private static final REGEX_FORCED:Ljava/util/regex/Pattern;

.field private static final REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

.field private static final REGEX_GAP:Ljava/util/regex/Pattern;

.field private static final REGEX_GROUP_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

.field private static final REGEX_IMPORT:Ljava/util/regex/Pattern;

.field private static final REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

.field private static final REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_IV:Ljava/util/regex/Pattern;

.field private static final REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

.field private static final REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

.field private static final REGEX_LANGUAGE:Ljava/util/regex/Pattern;

.field private static final REGEX_LAST_MSN:Ljava/util/regex/Pattern;

.field private static final REGEX_LAST_PART:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

.field private static final REGEX_METHOD:Ljava/util/regex/Pattern;

.field private static final REGEX_NAME:Ljava/util/regex/Pattern;

.field private static final REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

.field private static final REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_PRECISE:Ljava/util/regex/Pattern;

.field private static final REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

.field private static final REGEX_SUBTITLES:Ljava/util/regex/Pattern;

.field private static final REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

.field private static final REGEX_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_URI:Ljava/util/regex/Pattern;

.field private static final REGEX_VALUE:Ljava/util/regex/Pattern;

.field private static final REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

.field private static final REGEX_VERSION:Ljava/util/regex/Pattern;

.field private static final REGEX_VIDEO:Ljava/util/regex/Pattern;

.field private static final TAG_BYTERANGE:Ljava/lang/String; = "#EXT-X-BYTERANGE"

.field private static final TAG_DEFINE:Ljava/lang/String; = "#EXT-X-DEFINE"

.field private static final TAG_DISCONTINUITY:Ljava/lang/String; = "#EXT-X-DISCONTINUITY"

.field private static final TAG_DISCONTINUITY_SEQUENCE:Ljava/lang/String; = "#EXT-X-DISCONTINUITY-SEQUENCE"

.field private static final TAG_ENDLIST:Ljava/lang/String; = "#EXT-X-ENDLIST"

.field private static final TAG_GAP:Ljava/lang/String; = "#EXT-X-GAP"

.field private static final TAG_IFRAME:Ljava/lang/String; = "#EXT-X-I-FRAMES-ONLY"

.field private static final TAG_INDEPENDENT_SEGMENTS:Ljava/lang/String; = "#EXT-X-INDEPENDENT-SEGMENTS"

.field private static final TAG_INIT_SEGMENT:Ljava/lang/String; = "#EXT-X-MAP"

.field private static final TAG_I_FRAME_STREAM_INF:Ljava/lang/String; = "#EXT-X-I-FRAME-STREAM-INF"

.field private static final TAG_KEY:Ljava/lang/String; = "#EXT-X-KEY"

.field private static final TAG_MEDIA:Ljava/lang/String; = "#EXT-X-MEDIA"

.field private static final TAG_MEDIA_DURATION:Ljava/lang/String; = "#EXTINF"

.field private static final TAG_MEDIA_SEQUENCE:Ljava/lang/String; = "#EXT-X-MEDIA-SEQUENCE"

.field private static final TAG_PART:Ljava/lang/String; = "#EXT-X-PART"

.field private static final TAG_PART_INF:Ljava/lang/String; = "#EXT-X-PART-INF"

.field private static final TAG_PLAYLIST_TYPE:Ljava/lang/String; = "#EXT-X-PLAYLIST-TYPE"

.field private static final TAG_PREFIX:Ljava/lang/String; = "#EXT"

.field private static final TAG_PRELOAD_HINT:Ljava/lang/String; = "#EXT-X-PRELOAD-HINT"

.field private static final TAG_PROGRAM_DATE_TIME:Ljava/lang/String; = "#EXT-X-PROGRAM-DATE-TIME"

.field private static final TAG_RENDITION_REPORT:Ljava/lang/String; = "#EXT-X-RENDITION-REPORT"

.field private static final TAG_SERVER_CONTROL:Ljava/lang/String; = "#EXT-X-SERVER-CONTROL"

.field private static final TAG_SESSION_KEY:Ljava/lang/String; = "#EXT-X-SESSION-KEY"

.field private static final TAG_SKIP:Ljava/lang/String; = "#EXT-X-SKIP"

.field private static final TAG_START:Ljava/lang/String; = "#EXT-X-START"

.field private static final TAG_STREAM_INF:Ljava/lang/String; = "#EXT-X-STREAM-INF"

.field private static final TAG_TARGET_DURATION:Ljava/lang/String; = "#EXT-X-TARGETDURATION"

.field private static final TAG_VERSION:Ljava/lang/String; = "#EXT-X-VERSION"

.field private static final TYPE_AUDIO:Ljava/lang/String; = "AUDIO"

.field private static final TYPE_CLOSED_CAPTIONS:Ljava/lang/String; = "CLOSED-CAPTIONS"

.field private static final TYPE_MAP:Ljava/lang/String; = "MAP"

.field private static final TYPE_PART:Ljava/lang/String; = "PART"

.field private static final TYPE_SUBTITLES:Ljava/lang/String; = "SUBTITLES"

.field private static final TYPE_VIDEO:Ljava/lang/String; = "VIDEO"


# instance fields
.field private final multivariantPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

.field private final previousMediaPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    nop

    .line 134
    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 135
    const-string v0, "VIDEO=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO:Ljava/util/regex/Pattern;

    .line 136
    const-string v0, "AUDIO=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    .line 137
    const-string v0, "SUBTITLES=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SUBTITLES:Ljava/util/regex/Pattern;

    .line 138
    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

    .line 139
    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 140
    const-string v0, "CHANNELS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHANNELS:Ljava/util/regex/Pattern;

    .line 141
    const-string v0, "CODECS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    .line 142
    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 143
    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    .line 144
    nop

    .line 145
    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 146
    const-string v0, "DURATION=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

    .line 147
    nop

    .line 148
    const-string v0, "PART-TARGET=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 149
    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    .line 150
    nop

    .line 151
    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    .line 152
    nop

    .line 153
    const-string v0, "CAN-SKIP-UNTIL=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

    .line 154
    nop

    .line 155
    const-string v0, "CAN-SKIP-DATERANGES"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

    .line 156
    nop

    .line 157
    const-string v0, "SKIPPED-SEGMENTS=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

    .line 158
    const-string v0, "[:|,]HOLD-BACK=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 159
    nop

    .line 160
    const-string v0, "PART-HOLD-BACK=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 161
    nop

    .line 162
    const-string v0, "CAN-BLOCK-RELOAD"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

    .line 163
    nop

    .line 164
    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    .line 165
    nop

    .line 166
    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    .line 167
    nop

    .line 168
    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    .line 169
    const-string v0, "LAST-MSN=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_MSN:Ljava/util/regex/Pattern;

    .line 170
    const-string v0, "LAST-PART=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_PART:Ljava/util/regex/Pattern;

    .line 171
    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    .line 172
    nop

    .line 173
    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    .line 174
    nop

    .line 175
    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    .line 176
    const-string v0, "BYTERANGE-START=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

    .line 177
    nop

    .line 178
    const-string v0, "BYTERANGE-LENGTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

    .line 179
    nop

    .line 180
    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    .line 193
    const-string v0, "KEYFORMAT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 194
    nop

    .line 195
    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    .line 196
    const-string v0, "URI=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 197
    const-string v0, "IV=([^,.*]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    .line 198
    nop

    .line 199
    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    .line 209
    nop

    .line 210
    const-string v0, "TYPE=(PART|MAP)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

    .line 211
    const-string v0, "LANGUAGE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    .line 212
    const-string v0, "NAME=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 213
    const-string v0, "GROUP-ID=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    .line 214
    const-string v0, "CHARACTERISTICS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

    .line 215
    nop

    .line 216
    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    .line 217
    const-string v0, "AUTOSELECT"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    .line 218
    const-string v0, "DEFAULT"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    .line 219
    const-string v0, "FORCED"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    .line 220
    const-string v0, "INDEPENDENT"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

    .line 221
    const-string v0, "GAP"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GAP:Ljava/util/regex/Pattern;

    .line 222
    const-string v0, "PRECISE"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRECISE:Ljava/util/regex/Pattern;

    .line 223
    const-string v0, "VALUE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 224
    const-string v0, "IMPORT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    .line 225
    nop

    .line 226
    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    .line 225
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 236
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->EMPTY:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V
    .locals 0
    .param p1, "multivariantPlaylist"    # Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .param p2, "previousMediaPlaylist"    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->multivariantPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 252
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->previousMediaPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 253
    return-void
.end method

.method private static checkPlaylistHeader(Ljava/io/BufferedReader;)Z
    .locals 6
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 299
    .local v0, "last":I
    const/16 v1, 0xef

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 300
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v3, 0xbb

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v3, 0xbf

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    goto :goto_1

    .line 301
    :cond_1
    :goto_0
    return v2

    .line 306
    :cond_2
    :goto_1
    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I

    move-result v0

    .line 307
    const-string v1, "#EXTM3U"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 308
    .local v3, "playlistHeaderLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_4

    .line 309
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v0, v5, :cond_3

    .line 310
    return v2

    .line 312
    :cond_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 308
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 314
    .end local v4    # "i":I
    :cond_4
    invoke-static {p0, v2, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I

    move-result v0

    .line 315
    invoke-static {v0}, Landroidx/media3/common/util/Util;->isLinebreak(I)Z

    move-result v1

    return v1
.end method

.method private static compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .param p0, "attribute"    # Ljava/lang/String;

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "YES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private static getPlaylistProtectionSchemes(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;
    .locals 4
    .param p0, "encryptionScheme"    # Ljava/lang/String;
    .param p1, "schemeDatas"    # [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 1070
    array-length v0, p1

    new-array v0, v0, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 1071
    .local v0, "playlistSchemeDatas":[Landroidx/media3/common/DrmInitData$SchemeData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1072
    aget-object v2, p1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/media3/common/DrmInitData$SchemeData;->copyWithData([B)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1071
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1074
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Landroidx/media3/common/DrmInitData;

    invoke-direct {v1, p0, v0}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    return-object v1
.end method

.method private static getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "segmentMediaSequence"    # J
    .param p2, "fullSegmentEncryptionKeyUri"    # Ljava/lang/String;
    .param p3, "fullSegmentEncryptionIV"    # Ljava/lang/String;

    .line 1082
    if-nez p2, :cond_0

    .line 1083
    const/4 v0, 0x0

    return-object v0

    .line 1084
    :cond_0
    if-eqz p3, :cond_1

    .line 1085
    return-object p3

    .line 1087
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVariantWithAudioGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    .line 602
    .local p0, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 603
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 604
    .local v1, "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->audioGroupId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    return-object v1

    .line 602
    .end local v1    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 608
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getVariantWithSubtitleGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    .line 624
    .local p0, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 625
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 626
    .local v1, "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->subtitleGroupId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    return-object v1

    .line 624
    .end local v1    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getVariantWithVideoGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    .line 613
    .local p0, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 614
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 615
    .local v1, "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->videoGroupId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    return-object v1

    .line 613
    .end local v1    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .locals 2
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1215
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/common/DrmInitData$SchemeData;
    .locals 7
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "keyFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/common/DrmInitData$SchemeData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1132
    .local p2, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    .line 1133
    const-string v1, "1"

    invoke-static {p0, v0, v1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1134
    .local v0, "keyFormatVersions":Ljava/lang/String;
    const-string/jumbo v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2c

    const-string/jumbo v5, "video/mp4"

    if-eqz v2, :cond_0

    .line 1135
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {p0, v1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 1136
    .local v1, "uriString":Ljava/lang/String;
    new-instance v2, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object v6, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 1139
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v6, v5, v3}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 1136
    return-object v2

    .line 1140
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_0
    const-string v2, "com.widevine"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1141
    new-instance v1, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object v2, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    const-string v3, "hls"

    invoke-static {p0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object v1

    .line 1142
    :cond_1
    const-string v2, "com.microsoft.playready"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1143
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {p0, v1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 1144
    .restart local v1    # "uriString":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 1145
    .local v2, "data":[B
    sget-object v3, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-static {v3, v2}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object v3

    .line 1146
    .local v3, "psshData":[B
    new-instance v4, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object v6, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-direct {v4, v6, v5, v3}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object v4

    .line 1148
    .end local v1    # "uriString":Ljava/lang/String;
    .end local v2    # "data":[B
    .end local v3    # "psshData":[B
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    .line 1179
    const-string v0, "SAMPLE-AES-CENC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SAMPLE-AES-CTR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1181
    :cond_0
    const-string v0, "cbcs"

    goto :goto_1

    .line 1180
    :cond_1
    :goto_0
    const-string v0, "cenc"

    .line 1179
    :goto_1
    return-object v0
.end method

.method private static parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 1
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1185
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static parseLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 2
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1197
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseMediaPlaylist(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .locals 84
    .param p0, "multivariantPlaylist"    # Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .param p1, "previousMediaPlaylist"    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .param p2, "iterator"    # Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;
    .param p3, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 640
    .local v2, "playlistType":I
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 641
    .local v3, "startOffsetUs":J
    const-wide/16 v5, 0x0

    .line 642
    .local v5, "mediaSequence":J
    const/4 v7, 0x1

    .line 643
    .local v7, "version":I
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 644
    .local v8, "targetDurationUs":J
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 645
    .local v10, "partTargetDurationUs":J
    iget-boolean v12, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->hasIndependentSegments:Z

    .line 646
    .local v12, "hasIndependentSegmentsTag":Z
    const/4 v13, 0x0

    .line 647
    .local v13, "hasEndTag":Z
    const/4 v14, 0x0

    .line 648
    .local v14, "initializationSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 649
    .local v15, "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v17, v16

    .line 650
    .local v17, "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v40, v16

    .line 651
    .local v40, "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v16, "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    const/16 v18, 0x0

    .line 653
    .local v18, "preloadPart":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v44, v19

    .line 654
    .local v44, "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v21

    .line 656
    .local v19, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v20, 0x0

    .line 657
    .local v20, "segmentDurationUs":J
    const-string v22, ""

    .line 658
    .local v22, "segmentTitle":Ljava/lang/String;
    const/16 v23, 0x0

    .line 659
    .local v23, "hasDiscontinuitySequence":Z
    const/16 v24, 0x0

    .line 660
    .local v24, "playlistDiscontinuitySequence":I
    const/16 v25, 0x0

    .line 661
    .local v25, "relativeDiscontinuitySequence":I
    const-wide/16 v26, 0x0

    .line 662
    .local v26, "playlistStartTimeUs":J
    const-wide/16 v28, 0x0

    .line 663
    .local v28, "segmentStartTimeUs":J
    const/16 v30, 0x0

    .line 664
    .local v30, "preciseStart":Z
    const-wide/16 v31, 0x0

    .line 665
    .local v31, "segmentByteRangeOffset":J
    const-wide/16 v33, -0x1

    .line 666
    .local v33, "segmentByteRangeLength":J
    const-wide/16 v35, 0x0

    .line 667
    .local v35, "partStartTimeUs":J
    const-wide/16 v37, 0x0

    .line 668
    .local v37, "partByteRangeOffset":J
    const/16 v39, 0x0

    .line 669
    .local v39, "isIFrameOnly":Z
    const-wide/16 v41, 0x0

    .line 670
    .local v41, "segmentMediaSequence":J
    const/16 v43, 0x0

    .line 671
    .local v43, "hasGapTag":Z
    new-instance v45, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    const-wide v51, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v53, 0x0

    const-wide v46, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v48, 0x0

    const-wide v49, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v45 .. v53}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;-><init>(JZJJZ)V

    .line 679
    .local v45, "serverControl":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;
    const/16 v46, 0x0

    .line 680
    .local v46, "playlistProtectionSchemes":Landroidx/media3/common/DrmInitData;
    const/16 v47, 0x0

    .line 681
    .local v47, "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    const/16 v48, 0x0

    .line 682
    .local v48, "fullSegmentEncryptionIV":Ljava/lang/String;
    new-instance v49, Ljava/util/TreeMap;

    invoke-direct/range {v49 .. v49}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v50, v49

    .line 683
    .local v50, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    const/16 v49, 0x0

    .line 684
    .local v49, "encryptionScheme":Ljava/lang/String;
    const/16 v51, 0x0

    move-object/from16 v53, v14

    move/from16 v56, v25

    move-wide/from16 v25, v26

    move-wide/from16 v57, v35

    move/from16 v14, v39

    move/from16 v70, v43

    move-object/from16 v60, v47

    move-object/from16 v66, v48

    move/from16 v36, v12

    move/from16 v27, v23

    move-wide/from16 v80, v31

    move/from16 v31, v7

    move-object/from16 v7, v49

    move-wide/from16 v82, v37

    move/from16 v37, v13

    move-wide/from16 v38, v28

    move-wide/from16 v12, v82

    move/from16 v28, v24

    move/from16 v24, v30

    move-wide/from16 v29, v5

    move-wide/from16 v5, v41

    move-object/from16 v42, v45

    move-wide/from16 v82, v3

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    move-object/from16 v16, v22

    move-wide/from16 v22, v82

    move-wide/from16 v82, v33

    move-wide/from16 v32, v8

    move-wide/from16 v34, v10

    move-wide/from16 v8, v80

    move-wide/from16 v10, v82

    .line 687
    .end local v13    # "hasEndTag":Z
    .end local v18    # "preloadPart":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;
    .end local v23    # "hasDiscontinuitySequence":Z
    .end local v26    # "playlistStartTimeUs":J
    .end local v30    # "preciseStart":Z
    .end local v33    # "segmentByteRangeLength":J
    .end local v35    # "partStartTimeUs":J
    .end local v39    # "isIFrameOnly":Z
    .end local v41    # "segmentMediaSequence":J
    .end local v43    # "hasGapTag":Z
    .end local v45    # "serverControl":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;
    .end local v47    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v48    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .end local v49    # "encryptionScheme":Ljava/lang/String;
    .local v3, "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .local v4, "preloadPart":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;
    .local v5, "segmentMediaSequence":J
    .local v7, "encryptionScheme":Ljava/lang/String;
    .local v8, "segmentByteRangeOffset":J
    .local v10, "segmentByteRangeLength":J
    .local v12, "partByteRangeOffset":J
    .local v14, "isIFrameOnly":Z
    .local v16, "segmentTitle":Ljava/lang/String;
    .local v22, "startOffsetUs":J
    .local v24, "preciseStart":Z
    .local v25, "playlistStartTimeUs":J
    .local v27, "hasDiscontinuitySequence":Z
    .local v28, "playlistDiscontinuitySequence":I
    .local v29, "mediaSequence":J
    .local v31, "version":I
    .local v32, "targetDurationUs":J
    .local v34, "partTargetDurationUs":J
    .local v36, "hasIndependentSegmentsTag":Z
    .local v37, "hasEndTag":Z
    .local v38, "segmentStartTimeUs":J
    .local v42, "serverControl":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;
    .local v51, "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    .local v53, "initializationSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .local v56, "relativeDiscontinuitySequence":I
    .local v57, "partStartTimeUs":J
    .local v60, "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .local v66, "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v70, "hasGapTag":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v18

    move/from16 v41, v2

    .end local v2    # "playlistType":I
    .local v41, "playlistType":I
    const-wide/16 v47, 0x0

    move-object/from16 v71, v3

    .end local v3    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .local v71, "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    const-wide/16 v72, -0x1

    if-eqz v18, :cond_45

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v3

    .line 690
    .local v3, "line":Ljava/lang/String;
    const-string v2, "#EXT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    move-object/from16 v2, v19

    .end local v19    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 690
    .end local v2    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v2, v19

    .line 695
    .end local v19    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    move-object/from16 v19, v2

    .end local v2    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "#EXT-X-PLAYLIST-TYPE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 696
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v3, v2, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 697
    .local v2, "playlistTypeString":Ljava/lang/String;
    move-wide/from16 v74, v8

    .end local v8    # "segmentByteRangeOffset":J
    .local v74, "segmentByteRangeOffset":J
    const-string v8, "VOD"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 698
    const/4 v8, 0x1

    move v2, v8

    .end local v41    # "playlistType":I
    .local v8, "playlistType":I
    goto :goto_2

    .line 699
    .end local v8    # "playlistType":I
    .restart local v41    # "playlistType":I
    :cond_1
    const-string v8, "EVENT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 700
    const/4 v8, 0x2

    move v2, v8

    .end local v41    # "playlistType":I
    .restart local v8    # "playlistType":I
    goto :goto_2

    .line 699
    .end local v8    # "playlistType":I
    .restart local v41    # "playlistType":I
    :cond_2
    move/from16 v2, v41

    .line 702
    .end local v41    # "playlistType":I
    .local v2, "playlistType":I
    :goto_2
    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    goto :goto_0

    .end local v2    # "playlistType":I
    .end local v74    # "segmentByteRangeOffset":J
    .local v8, "segmentByteRangeOffset":J
    .restart local v41    # "playlistType":I
    :cond_3
    move-wide/from16 v74, v8

    .end local v8    # "segmentByteRangeOffset":J
    .restart local v74    # "segmentByteRangeOffset":J
    const-string v2, "#EXT-X-I-FRAMES-ONLY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 703
    const/4 v14, 0x1

    move/from16 v2, v41

    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    goto :goto_0

    .line 704
    :cond_4
    const-string v2, "#EXT-X-START"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-wide v8, 0x412e848000000000L    # 1000000.0

    if-eqz v2, :cond_5

    .line 705
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    invoke-static {v3, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v47

    mul-double v8, v8, v47

    double-to-long v8, v8

    .line 706
    .end local v22    # "startOffsetUs":J
    .local v8, "startOffsetUs":J
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRECISE:Ljava/util/regex/Pattern;

    .line 707
    move-wide/from16 v22, v8

    const/4 v8, 0x0

    .end local v8    # "startOffsetUs":J
    .restart local v22    # "startOffsetUs":J
    invoke-static {v3, v2, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v24

    move/from16 v2, v41

    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    goto/16 :goto_0

    .line 708
    :cond_5
    const-string v2, "#EXT-X-SERVER-CONTROL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 709
    invoke-static {v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseServerControl(Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    move-result-object v42

    move/from16 v2, v41

    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    goto/16 :goto_0

    .line 710
    :cond_6
    const-string v2, "#EXT-X-PART-INF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 711
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

    invoke-static {v3, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v47

    .line 712
    .local v47, "partTargetDurationSeconds":D
    mul-double v8, v8, v47

    double-to-long v8, v8

    .line 713
    .end local v34    # "partTargetDurationUs":J
    .end local v47    # "partTargetDurationSeconds":D
    .local v8, "partTargetDurationUs":J
    move-wide/from16 v34, v8

    move/from16 v2, v41

    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    goto/16 :goto_0

    .end local v8    # "partTargetDurationUs":J
    .restart local v34    # "partTargetDurationUs":J
    :cond_7
    const-string v2, "#EXT-X-MAP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    move-wide/from16 v54, v8

    const-string v8, "@"

    if-eqz v2, :cond_e

    .line 714
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v3, v2, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 715
    .local v2, "uri":Ljava/lang/String;
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v3, v9, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 716
    .local v9, "byteRange":Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 717
    invoke-static {v9, v8}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 718
    .local v8, "splitByteRange":[Ljava/lang/String;
    const/16 v45, 0x0

    aget-object v43, v8, v45

    invoke-static/range {v43 .. v43}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 719
    move-object/from16 v43, v2

    .end local v2    # "uri":Ljava/lang/String;
    .local v43, "uri":Ljava/lang/String;
    array-length v2, v8

    move-object/from16 v45, v8

    const/4 v8, 0x1

    .end local v8    # "splitByteRange":[Ljava/lang/String;
    .local v45, "splitByteRange":[Ljava/lang/String;
    if-le v2, v8, :cond_8

    .line 720
    aget-object v2, v45, v8

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v47

    move-wide/from16 v63, v10

    move-wide/from16 v74, v47

    .end local v74    # "segmentByteRangeOffset":J
    .local v47, "segmentByteRangeOffset":J
    goto :goto_3

    .line 719
    .end local v47    # "segmentByteRangeOffset":J
    .restart local v74    # "segmentByteRangeOffset":J
    :cond_8
    move-wide/from16 v63, v10

    goto :goto_3

    .line 716
    .end local v43    # "uri":Ljava/lang/String;
    .end local v45    # "splitByteRange":[Ljava/lang/String;
    .restart local v2    # "uri":Ljava/lang/String;
    :cond_9
    move-object/from16 v43, v2

    .end local v2    # "uri":Ljava/lang/String;
    .restart local v43    # "uri":Ljava/lang/String;
    move-wide/from16 v63, v10

    .line 723
    .end local v10    # "segmentByteRangeLength":J
    .local v63, "segmentByteRangeLength":J
    :goto_3
    cmp-long v2, v63, v72

    if-nez v2, :cond_a

    .line 725
    const-wide/16 v74, 0x0

    move-wide/from16 v61, v74

    goto :goto_4

    .line 723
    :cond_a
    move-wide/from16 v61, v74

    .line 727
    .end local v74    # "segmentByteRangeOffset":J
    .local v61, "segmentByteRangeOffset":J
    :goto_4
    if-eqz v60, :cond_c

    if-eqz v66, :cond_b

    goto :goto_5

    .line 729
    :cond_b
    const-string v2, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v2

    throw v2

    .line 734
    :cond_c
    :goto_5
    new-instance v59, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v65, v60

    move-object/from16 v60, v43

    .end local v43    # "uri":Ljava/lang/String;
    .local v60, "uri":Ljava/lang/String;
    .local v65, "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    invoke-direct/range {v59 .. v66}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v65

    .end local v65    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .local v2, "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    move-object/from16 v53, v59

    .line 741
    cmp-long v8, v63, v72

    if-eqz v8, :cond_d

    .line 742
    add-long v61, v61, v63

    .line 744
    :cond_d
    const-wide/16 v10, -0x1

    .line 745
    .end local v9    # "byteRange":Ljava/lang/String;
    .end local v60    # "uri":Ljava/lang/String;
    .end local v63    # "segmentByteRangeLength":J
    .restart local v10    # "segmentByteRangeLength":J
    move-object/from16 v60, v2

    move/from16 v2, v41

    move-wide/from16 v8, v61

    move-object/from16 v3, v71

    goto/16 :goto_0

    .end local v2    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v61    # "segmentByteRangeOffset":J
    .local v60, "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .restart local v74    # "segmentByteRangeOffset":J
    :cond_e
    move-object/from16 v2, v60

    move-object/from16 v9, v66

    .end local v60    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v66    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .restart local v2    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .local v9, "fullSegmentEncryptionIV":Ljava/lang/String;
    move-wide/from16 v76, v10

    .end local v10    # "segmentByteRangeLength":J
    .local v76, "segmentByteRangeLength":J
    const-string v10, "#EXT-X-TARGETDURATION"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 746
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    invoke-static {v3, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v8

    int-to-long v10, v8

    const-wide/32 v47, 0xf4240

    mul-long v32, v10, v47

    move-object/from16 v60, v2

    move-object/from16 v66, v9

    move/from16 v2, v41

    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    move-wide/from16 v10, v76

    goto/16 :goto_0

    .line 747
    :cond_f
    const-string v10, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 748
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    invoke-static {v3, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v29

    .line 749
    move-wide/from16 v5, v29

    move-object/from16 v60, v2

    move-object/from16 v66, v9

    move/from16 v2, v41

    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    move-wide/from16 v10, v76

    goto/16 :goto_0

    .line 750
    :cond_10
    const-string v10, "#EXT-X-VERSION"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 751
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    invoke-static {v3, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v31

    move-object/from16 v60, v2

    move-object/from16 v66, v9

    move/from16 v2, v41

    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    move-wide/from16 v10, v76

    goto/16 :goto_0

    .line 752
    :cond_11
    const-string v10, "#EXT-X-DEFINE"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 753
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    invoke-static {v3, v8, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 754
    .local v8, "importName":Ljava/lang/String;
    if-eqz v8, :cond_13

    .line 755
    iget-object v10, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variableDefinitions:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 756
    .local v10, "value":Ljava/lang/String;
    if-eqz v10, :cond_12

    .line 757
    invoke-virtual {v15, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    .end local v10    # "value":Ljava/lang/String;
    :cond_12
    goto :goto_6

    .line 762
    :cond_13
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 763
    invoke-static {v3, v10, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 764
    invoke-static {v3, v11, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 762
    invoke-virtual {v15, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    .end local v8    # "importName":Ljava/lang/String;
    :goto_6
    move-object/from16 v60, v2

    move-wide/from16 v78, v12

    move-object/from16 v13, v17

    move-object/from16 v10, v40

    move-object/from16 v0, v44

    move-object/from16 v49, v50

    move-object/from16 v11, v71

    move-wide/from16 v61, v74

    move-wide/from16 v44, v38

    move-wide/from16 v74, v57

    move-object/from16 v57, v16

    move-wide/from16 v58, v20

    goto/16 :goto_16

    :cond_14
    const-string v10, "#EXTINF"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 767
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    invoke-static {v3, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseTimeSecondsToUs(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v20

    .line 768
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    const-string v10, ""

    invoke-static {v3, v8, v10, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v60, v2

    move-object/from16 v66, v9

    move/from16 v2, v41

    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    move-wide/from16 v10, v76

    goto/16 :goto_0

    .line 769
    :cond_15
    const-string v10, "#EXT-X-SKIP"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const-wide/16 v59, 0x1

    if-eqz v10, :cond_1d

    .line 770
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

    invoke-static {v3, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v8

    .line 771
    .local v8, "skippedSegmentCount":I
    if-eqz v1, :cond_16

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_16

    const/16 v45, 0x1

    goto :goto_7

    :cond_16
    const/16 v45, 0x0

    :goto_7
    invoke-static/range {v45 .. v45}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 772
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-wide v10, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long v10, v29, v10

    long-to-int v10, v10

    .line 773
    .local v10, "startIndex":I
    add-int v11, v10, v8

    .line 774
    .local v11, "endIndex":I
    if-ltz v10, :cond_1c

    iget-object v0, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v11, v0, :cond_1c

    .line 778
    move v0, v10

    move-wide/from16 v80, v38

    move-wide/from16 v38, v5

    move-wide/from16 v5, v80

    move-object/from16 v66, v9

    .end local v9    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v0, "i":I
    .local v5, "segmentStartTimeUs":J
    .local v38, "segmentMediaSequence":J
    .restart local v66    # "fullSegmentEncryptionIV":Ljava/lang/String;
    :goto_8
    if-ge v0, v11, :cond_1b

    .line 779
    iget-object v9, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 780
    .local v9, "segment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    move/from16 v18, v10

    move/from16 v43, v11

    .end local v10    # "startIndex":I
    .end local v11    # "endIndex":I
    .local v18, "startIndex":I
    .local v43, "endIndex":I
    iget-wide v10, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v10, v29, v10

    if-eqz v10, :cond_17

    .line 784
    iget v10, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    sub-int v10, v10, v28

    iget v11, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    add-int/2addr v10, v11

    .line 788
    .local v10, "newRelativeDiscontinuitySequence":I
    invoke-virtual {v9, v5, v6, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->copyWith(JI)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v9

    .line 790
    .end local v10    # "newRelativeDiscontinuitySequence":I
    :cond_17
    move-object/from16 v10, v40

    .end local v40    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v10, "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    iget-wide v0, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long/2addr v5, v0

    .line 792
    move-wide/from16 v57, v5

    .line 793
    iget-wide v0, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeLength:J

    cmp-long v0, v0, v72

    if-eqz v0, :cond_18

    .line 794
    iget-wide v0, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeOffset:J

    move-wide/from16 v47, v0

    iget-wide v0, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeLength:J

    add-long v74, v47, v0

    .line 796
    :cond_18
    iget v0, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    .line 797
    .end local v56    # "relativeDiscontinuitySequence":I
    .local v0, "relativeDiscontinuitySequence":I
    iget-object v1, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->initializationSegment:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 798
    .end local v53    # "initializationSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .local v1, "initializationSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    move/from16 v40, v0

    .end local v0    # "relativeDiscontinuitySequence":I
    .local v40, "relativeDiscontinuitySequence":I
    iget-object v0, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 799
    .end local v51    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    .local v0, "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    iget-object v2, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    .line 800
    move-object/from16 v45, v0

    .end local v0    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    .local v45, "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    iget-object v0, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    .line 801
    move-object/from16 v47, v1

    .end local v1    # "initializationSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .local v47, "initializationSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_9

    .line 800
    .end local v47    # "initializationSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .restart local v1    # "initializationSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    :cond_19
    move-object/from16 v47, v1

    .line 802
    .end local v1    # "initializationSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .restart local v47    # "initializationSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    :goto_9
    iget-object v0, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v66, v0

    .line 804
    :cond_1a
    add-long v38, v38, v59

    .line 778
    .end local v9    # "segment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    add-int/lit8 v0, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v56, v40

    move/from16 v11, v43

    move-object/from16 v51, v45

    move-object/from16 v53, v47

    move-object/from16 v40, v10

    move/from16 v10, v18

    .end local v11    # "i":I
    .local v0, "i":I
    goto :goto_8

    .end local v18    # "startIndex":I
    .end local v43    # "endIndex":I
    .end local v45    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    .end local v47    # "initializationSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .local v10, "startIndex":I
    .local v11, "endIndex":I
    .local v40, "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v51    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    .restart local v53    # "initializationSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .restart local v56    # "relativeDiscontinuitySequence":I
    :cond_1b
    move/from16 v18, v10

    move/from16 v43, v11

    move-object/from16 v10, v40

    move v11, v0

    .line 806
    .end local v0    # "i":I
    .end local v8    # "skippedSegmentCount":I
    .end local v11    # "endIndex":I
    .end local v40    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v10, "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    move-wide/from16 v0, v38

    move-wide/from16 v38, v5

    move-wide v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v60, v2

    move/from16 v2, v41

    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    move-wide/from16 v10, v76

    goto/16 :goto_0

    .line 774
    .end local v66    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v5, "segmentMediaSequence":J
    .restart local v8    # "skippedSegmentCount":I
    .local v9, "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v10, "startIndex":I
    .restart local v11    # "endIndex":I
    .local v38, "segmentStartTimeUs":J
    .restart local v40    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    :cond_1c
    move/from16 v18, v10

    move/from16 v43, v11

    move-object/from16 v10, v40

    .line 776
    .end local v11    # "endIndex":I
    .end local v40    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v10, "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v18    # "startIndex":I
    .restart local v43    # "endIndex":I
    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;

    invoke-direct {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;-><init>()V

    throw v0

    .line 806
    .end local v8    # "skippedSegmentCount":I
    .end local v10    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v18    # "startIndex":I
    .end local v43    # "endIndex":I
    .restart local v40    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    :cond_1d
    move-object/from16 v10, v40

    .end local v40    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v10    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    const-string v0, "#EXT-X-KEY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 807
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    invoke-static {v3, v0, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "method":Ljava/lang/String;
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 809
    const-string v8, "identity"

    invoke-static {v3, v1, v8, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, "keyFormat":Ljava/lang/String;
    const/4 v2, 0x0

    .line 811
    const/4 v9, 0x0

    .line 812
    const-string v11, "NONE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 813
    invoke-virtual/range {v50 .. v50}, Ljava/util/TreeMap;->clear()V

    .line 814
    const/4 v8, 0x0

    move-object/from16 v60, v2

    move-object/from16 v51, v8

    move-object/from16 v66, v9

    move-object/from16 v0, v50

    .end local v51    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    .local v8, "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    goto :goto_a

    .line 816
    .end local v8    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    .restart local v51    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    :cond_1e
    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    invoke-static {v3, v11, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 817
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 818
    const-string v8, "AES-128"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 820
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v3, v8, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v60, v2

    move-object/from16 v66, v9

    move-object/from16 v0, v50

    goto :goto_a

    .line 818
    :cond_1f
    move-object/from16 v60, v2

    move-object/from16 v66, v9

    move-object/from16 v0, v50

    goto :goto_a

    .line 826
    :cond_20
    if-nez v7, :cond_21

    .line 827
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 829
    :cond_21
    invoke-static {v3, v1, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v8

    .line 830
    .local v8, "schemeData":Landroidx/media3/common/DrmInitData$SchemeData;
    if-eqz v8, :cond_22

    .line 831
    const/4 v11, 0x0

    .line 832
    .end local v51    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    .local v11, "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    move-object/from16 v18, v0

    move-object/from16 v0, v50

    .end local v50    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .local v0, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .local v18, "method":Ljava/lang/String;
    invoke-virtual {v0, v1, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v60, v2

    move-object/from16 v66, v9

    move-object/from16 v51, v11

    goto :goto_a

    .line 830
    .end local v11    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    .end local v18    # "method":Ljava/lang/String;
    .local v0, "method":Ljava/lang/String;
    .restart local v50    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .restart local v51    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    :cond_22
    move-object/from16 v18, v0

    move-object/from16 v0, v50

    .end local v50    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .local v0, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .restart local v18    # "method":Ljava/lang/String;
    move-object/from16 v60, v2

    move-object/from16 v66, v9

    .line 836
    .end local v1    # "keyFormat":Ljava/lang/String;
    .end local v2    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v8    # "schemeData":Landroidx/media3/common/DrmInitData$SchemeData;
    .end local v9    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .end local v18    # "method":Ljava/lang/String;
    .restart local v60    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .restart local v66    # "fullSegmentEncryptionIV":Ljava/lang/String;
    :goto_a
    move-object/from16 v1, p1

    move-object/from16 v50, v0

    move-object/from16 v40, v10

    move/from16 v2, v41

    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    move-wide/from16 v10, v76

    move-object/from16 v0, p0

    goto/16 :goto_0

    .end local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .end local v60    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v66    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .restart local v2    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .restart local v9    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .restart local v50    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    :cond_23
    move-object/from16 v0, v50

    .end local v50    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .restart local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    const-string v1, "#EXT-X-BYTERANGE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 837
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v3, v1, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 838
    .local v1, "byteRange":Ljava/lang/String;
    invoke-static {v1, v8}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 839
    .local v8, "splitByteRange":[Ljava/lang/String;
    const/16 v45, 0x0

    aget-object v11, v8, v45

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v47

    .line 840
    .end local v76    # "segmentByteRangeLength":J
    .local v47, "segmentByteRangeLength":J
    array-length v11, v8

    move-object/from16 v49, v0

    const/4 v0, 0x1

    .end local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .local v49, "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    if-le v11, v0, :cond_24

    .line 841
    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v54

    .end local v74    # "segmentByteRangeOffset":J
    .local v54, "segmentByteRangeOffset":J
    goto :goto_b

    .line 840
    .end local v54    # "segmentByteRangeOffset":J
    .restart local v74    # "segmentByteRangeOffset":J
    :cond_24
    move-wide/from16 v54, v74

    .line 843
    .end local v1    # "byteRange":Ljava/lang/String;
    .end local v8    # "splitByteRange":[Ljava/lang/String;
    .end local v74    # "segmentByteRangeOffset":J
    .restart local v54    # "segmentByteRangeOffset":J
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v60, v2

    move-object/from16 v66, v9

    move-object/from16 v40, v10

    move/from16 v2, v41

    move-wide/from16 v10, v47

    move-object/from16 v50, v49

    move-wide/from16 v8, v54

    move-object/from16 v3, v71

    goto/16 :goto_0

    .end local v47    # "segmentByteRangeLength":J
    .end local v49    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .end local v54    # "segmentByteRangeOffset":J
    .restart local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .restart local v74    # "segmentByteRangeOffset":J
    .restart local v76    # "segmentByteRangeLength":J
    :cond_25
    move-object/from16 v49, v0

    .end local v0    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .restart local v49    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    const-string v0, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x3a

    if-eqz v0, :cond_26

    .line 844
    const/16 v27, 0x1

    .line 845
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v18, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v60, v2

    move-object/from16 v66, v9

    move-object/from16 v40, v10

    move/from16 v2, v41

    move-object/from16 v50, v49

    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    move-wide/from16 v10, v76

    goto/16 :goto_0

    .line 846
    :cond_26
    const-string v0, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 847
    add-int/lit8 v56, v56, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v60, v2

    move-object/from16 v66, v9

    move-object/from16 v40, v10

    move/from16 v2, v41

    move-object/from16 v50, v49

    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    move-wide/from16 v10, v76

    goto/16 :goto_0

    .line 848
    :cond_27
    const-string v0, "#EXT-X-PROGRAM-DATE-TIME"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 849
    cmp-long v0, v25, v47

    if-nez v0, :cond_28

    .line 850
    nop

    .line 851
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v18, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    .line 852
    .local v0, "programDatetimeUs":J
    sub-long v25, v0, v38

    .line 853
    .end local v0    # "programDatetimeUs":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v60, v2

    move-object/from16 v66, v9

    move-object/from16 v40, v10

    move/from16 v2, v41

    move-object/from16 v50, v49

    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    move-wide/from16 v10, v76

    goto/16 :goto_0

    .line 849
    :cond_28
    move-object/from16 v60, v2

    move-wide/from16 v78, v12

    move-object/from16 v13, v17

    move-object/from16 v0, v44

    move-object/from16 v11, v71

    move-wide/from16 v61, v74

    move-wide/from16 v44, v38

    move-wide/from16 v74, v57

    move-object/from16 v57, v16

    move-wide/from16 v58, v20

    goto/16 :goto_16

    .line 854
    :cond_29
    const-string v0, "#EXT-X-GAP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 855
    const/16 v70, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v60, v2

    move-object/from16 v66, v9

    move-object/from16 v40, v10

    move/from16 v2, v41

    move-object/from16 v50, v49

    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    move-wide/from16 v10, v76

    goto/16 :goto_0

    .line 856
    :cond_2a
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 857
    const/16 v36, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v60, v2

    move-object/from16 v66, v9

    move-object/from16 v40, v10

    move/from16 v2, v41

    move-object/from16 v50, v49

    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    move-wide/from16 v10, v76

    goto/16 :goto_0

    .line 858
    :cond_2b
    const-string v0, "#EXT-X-ENDLIST"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 859
    const/16 v37, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v60, v2

    move-object/from16 v66, v9

    move-object/from16 v40, v10

    move/from16 v2, v41

    move-object/from16 v50, v49

    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    move-wide/from16 v10, v76

    goto/16 :goto_0

    .line 860
    :cond_2c
    const-string v0, "#EXT-X-RENDITION-REPORT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 861
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_MSN:Ljava/util/regex/Pattern;

    move-wide/from16 v78, v12

    move-wide/from16 v11, v72

    .end local v12    # "partByteRangeOffset":J
    .local v78, "partByteRangeOffset":J
    invoke-static {v3, v0, v11, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v0

    .line 862
    .local v0, "lastMediaSequence":J
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_PART:Ljava/util/regex/Pattern;

    const/4 v11, -0x1

    invoke-static {v3, v8, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    move-result v8

    .line 863
    .local v8, "lastPartIndex":I
    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v3, v11, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 864
    .local v11, "uri":Ljava/lang/String;
    move-object/from16 v12, p3

    invoke-static {v12, v11}, Landroidx/media3/common/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 865
    .local v13, "playlistUri":Landroid/net/Uri;
    move-object/from16 v18, v11

    .end local v11    # "uri":Ljava/lang/String;
    .local v18, "uri":Ljava/lang/String;
    new-instance v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    invoke-direct {v11, v13, v0, v1, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;-><init>(Landroid/net/Uri;JI)V

    move-wide/from16 v47, v0

    move-object/from16 v0, v44

    .end local v44    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .local v0, "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .local v47, "lastMediaSequence":J
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    .end local v8    # "lastPartIndex":I
    .end local v13    # "playlistUri":Landroid/net/Uri;
    .end local v18    # "uri":Ljava/lang/String;
    .end local v47    # "lastMediaSequence":J
    move-object/from16 v60, v2

    move-object/from16 v13, v17

    move-wide/from16 v44, v38

    move-object/from16 v11, v71

    move-wide/from16 v61, v74

    move-wide/from16 v74, v57

    move-object/from16 v57, v16

    move-wide/from16 v58, v20

    goto/16 :goto_16

    .end local v0    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .end local v78    # "partByteRangeOffset":J
    .restart local v12    # "partByteRangeOffset":J
    .restart local v44    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    :cond_2d
    move-wide/from16 v78, v12

    move-object/from16 v0, v44

    move-object/from16 v12, p3

    .end local v12    # "partByteRangeOffset":J
    .end local v44    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .restart local v0    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .restart local v78    # "partByteRangeOffset":J
    const-string v1, "#EXT-X-PRELOAD-HINT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 867
    if-eqz v4, :cond_2e

    .line 868
    move-object/from16 v60, v2

    move-object/from16 v13, v17

    move-wide/from16 v44, v38

    move-object/from16 v11, v71

    move-wide/from16 v61, v74

    move-wide/from16 v74, v57

    move-object/from16 v57, v16

    move-wide/from16 v58, v20

    goto/16 :goto_16

    .line 870
    :cond_2e
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v3, v1, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, "type":Ljava/lang/String;
    const-string v8, "PART"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2f

    .line 872
    move-object/from16 v60, v2

    move-object/from16 v13, v17

    move-wide/from16 v44, v38

    move-object/from16 v11, v71

    move-wide/from16 v61, v74

    move-wide/from16 v74, v57

    move-object/from16 v57, v16

    move-wide/from16 v58, v20

    goto/16 :goto_16

    .line 874
    :cond_2f
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v3, v8, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v52

    .line 875
    .local v52, "url":Ljava/lang/String;
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

    .line 876
    const-wide/16 v11, -0x1

    invoke-static {v3, v8, v11, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v43

    .line 877
    .local v43, "byteRangeStart":J
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

    .line 878
    invoke-static {v3, v8, v11, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v64

    .line 880
    .local v64, "byteRangeLength":J
    nop

    .line 881
    invoke-static {v5, v6, v2, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 883
    .local v61, "segmentEncryptionIV":Ljava/lang/String;
    if-nez v51, :cond_31

    invoke-virtual/range {v49 .. v49}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_31

    .line 884
    invoke-virtual/range {v49 .. v49}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v8

    const/4 v11, 0x0

    new-array v11, v11, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {v8, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 885
    .local v8, "schemeDatas":[Landroidx/media3/common/DrmInitData$SchemeData;
    new-instance v11, Landroidx/media3/common/DrmInitData;

    invoke-direct {v11, v7, v8}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    move-object/from16 v51, v11

    .line 886
    if-nez v46, :cond_30

    .line 887
    invoke-static {v7, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getPlaylistProtectionSchemes(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    move-result-object v11

    move-object/from16 v46, v11

    move-object/from16 v59, v51

    .end local v46    # "playlistProtectionSchemes":Landroidx/media3/common/DrmInitData;
    .local v11, "playlistProtectionSchemes":Landroidx/media3/common/DrmInitData;
    goto :goto_c

    .line 886
    .end local v11    # "playlistProtectionSchemes":Landroidx/media3/common/DrmInitData;
    .restart local v46    # "playlistProtectionSchemes":Landroidx/media3/common/DrmInitData;
    :cond_30
    move-object/from16 v59, v51

    goto :goto_c

    .line 890
    .end local v8    # "schemeDatas":[Landroidx/media3/common/DrmInitData$SchemeData;
    :cond_31
    move-object/from16 v59, v51

    .end local v51    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    .local v59, "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    :goto_c
    const-wide/16 v72, -0x1

    cmp-long v8, v43, v72

    if-eqz v8, :cond_32

    cmp-long v8, v64, v72

    if-eqz v8, :cond_34

    .line 892
    :cond_32
    new-instance v51, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    .line 902
    cmp-long v8, v43, v72

    if-eqz v8, :cond_33

    move-wide/from16 v62, v43

    goto :goto_d

    :cond_33
    move-wide/from16 v62, v47

    :goto_d
    const/16 v67, 0x0

    const/16 v68, 0x1

    const-wide/16 v54, 0x0

    const/16 v66, 0x0

    move-object/from16 v60, v2

    .end local v2    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .restart local v60    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    invoke-direct/range {v51 .. v68}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    .end local v60    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .restart local v2    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    move-object/from16 v4, v51

    .line 908
    .end local v1    # "type":Ljava/lang/String;
    .end local v43    # "byteRangeStart":J
    .end local v52    # "url":Ljava/lang/String;
    .end local v61    # "segmentEncryptionIV":Ljava/lang/String;
    .end local v64    # "byteRangeLength":J
    :cond_34
    move-object/from16 v1, p1

    move-object/from16 v44, v0

    move-object/from16 v60, v2

    move-object/from16 v66, v9

    move-object/from16 v40, v10

    move/from16 v2, v41

    move-object/from16 v50, v49

    move-object/from16 v51, v59

    move-object/from16 v3, v71

    move-wide/from16 v8, v74

    move-wide/from16 v10, v76

    move-wide/from16 v12, v78

    move-object/from16 v0, p0

    goto/16 :goto_0

    .end local v59    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    .restart local v51    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    :cond_35
    const-string v1, "#EXT-X-PART"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 910
    nop

    .line 911
    invoke-static {v5, v6, v2, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 913
    .restart local v61    # "segmentEncryptionIV":Ljava/lang/String;
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v3, v1, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v52

    .line 914
    .restart local v52    # "url":Ljava/lang/String;
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

    .line 915
    invoke-static {v3, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v11

    mul-double v11, v11, v54

    double-to-long v11, v11

    .line 916
    .local v11, "partDurationUs":J
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

    .line 917
    const/4 v13, 0x0

    invoke-static {v3, v1, v13}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    .line 919
    .local v1, "isIndependent":Z
    if-eqz v36, :cond_36

    invoke-interface/range {v71 .. v71}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_36

    const/4 v13, 0x1

    goto :goto_e

    :cond_36
    const/4 v13, 0x0

    :goto_e
    or-int v67, v1, v13

    .line 920
    .end local v1    # "isIndependent":Z
    .local v67, "isIndependent":Z
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GAP:Ljava/util/regex/Pattern;

    const/4 v13, 0x0

    invoke-static {v3, v1, v13}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v66

    .line 922
    .local v66, "isGap":Z
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v3, v1, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, "byteRange":Ljava/lang/String;
    const-wide/16 v43, -0x1

    .line 924
    .local v43, "partByteRangeLength":J
    if-eqz v1, :cond_38

    .line 925
    invoke-static {v1, v8}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 926
    .local v8, "splitByteRange":[Ljava/lang/String;
    aget-object v40, v8, v13

    invoke-static/range {v40 .. v40}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v43

    .line 927
    array-length v13, v8

    move-object/from16 v40, v1

    const/4 v1, 0x1

    .end local v1    # "byteRange":Ljava/lang/String;
    .local v40, "byteRange":Ljava/lang/String;
    if-le v13, v1, :cond_37

    .line 928
    aget-object v1, v8, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v47

    move-wide/from16 v64, v43

    move-wide/from16 v78, v47

    .end local v78    # "partByteRangeOffset":J
    .local v47, "partByteRangeOffset":J
    goto :goto_f

    .line 927
    .end local v47    # "partByteRangeOffset":J
    .restart local v78    # "partByteRangeOffset":J
    :cond_37
    move-wide/from16 v64, v43

    goto :goto_f

    .line 924
    .end local v8    # "splitByteRange":[Ljava/lang/String;
    .end local v40    # "byteRange":Ljava/lang/String;
    .restart local v1    # "byteRange":Ljava/lang/String;
    :cond_38
    move-object/from16 v40, v1

    .end local v1    # "byteRange":Ljava/lang/String;
    .restart local v40    # "byteRange":Ljava/lang/String;
    move-wide/from16 v64, v43

    .line 931
    .end local v43    # "partByteRangeLength":J
    .local v64, "partByteRangeLength":J
    :goto_f
    const-wide/16 v72, -0x1

    cmp-long v1, v64, v72

    if-nez v1, :cond_39

    .line 932
    const-wide/16 v78, 0x0

    move-wide/from16 v62, v78

    goto :goto_10

    .line 931
    :cond_39
    move-wide/from16 v62, v78

    .line 934
    .end local v78    # "partByteRangeOffset":J
    .local v62, "partByteRangeOffset":J
    :goto_10
    if-nez v51, :cond_3b

    invoke-virtual/range {v49 .. v49}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 935
    invoke-virtual/range {v49 .. v49}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v13, 0x0

    new-array v8, v13, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {v1, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 936
    .local v1, "schemeDatas":[Landroidx/media3/common/DrmInitData$SchemeData;
    new-instance v8, Landroidx/media3/common/DrmInitData;

    invoke-direct {v8, v7, v1}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    move-object/from16 v51, v8

    .line 937
    if-nez v46, :cond_3a

    .line 938
    invoke-static {v7, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getPlaylistProtectionSchemes(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    move-result-object v8

    move-object/from16 v46, v8

    move-object/from16 v59, v51

    .end local v46    # "playlistProtectionSchemes":Landroidx/media3/common/DrmInitData;
    .local v8, "playlistProtectionSchemes":Landroidx/media3/common/DrmInitData;
    goto :goto_11

    .line 937
    .end local v8    # "playlistProtectionSchemes":Landroidx/media3/common/DrmInitData;
    .restart local v46    # "playlistProtectionSchemes":Landroidx/media3/common/DrmInitData;
    :cond_3a
    move-object/from16 v59, v51

    goto :goto_11

    .line 941
    .end local v1    # "schemeDatas":[Landroidx/media3/common/DrmInitData$SchemeData;
    :cond_3b
    move-object/from16 v59, v51

    .end local v51    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    .restart local v59    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    :goto_11
    new-instance v51, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    const/16 v68, 0x0

    move-object/from16 v60, v2

    move-wide/from16 v54, v11

    .end local v2    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v11    # "partDurationUs":J
    .local v54, "partDurationUs":J
    .restart local v60    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    invoke-direct/range {v51 .. v68}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    move-object/from16 v12, v51

    move-wide/from16 v1, v57

    move-object/from16 v8, v60

    move-object/from16 v11, v71

    .end local v57    # "partStartTimeUs":J
    .end local v60    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v71    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .local v1, "partStartTimeUs":J
    .local v8, "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .local v11, "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    add-long v57, v1, v54

    .line 957
    .end local v1    # "partStartTimeUs":J
    .restart local v57    # "partStartTimeUs":J
    const-wide/16 v72, -0x1

    cmp-long v1, v64, v72

    if-eqz v1, :cond_3c

    .line 958
    add-long v62, v62, v64

    move-wide/from16 v12, v62

    goto :goto_12

    .line 957
    :cond_3c
    move-wide/from16 v12, v62

    .line 960
    .end local v40    # "byteRange":Ljava/lang/String;
    .end local v52    # "url":Ljava/lang/String;
    .end local v54    # "partDurationUs":J
    .end local v61    # "segmentEncryptionIV":Ljava/lang/String;
    .end local v62    # "partByteRangeOffset":J
    .end local v64    # "partByteRangeLength":J
    .end local v66    # "isGap":Z
    .end local v67    # "isIndependent":Z
    .restart local v12    # "partByteRangeOffset":J
    :goto_12
    move-object/from16 v1, p1

    move-object/from16 v44, v0

    move-object/from16 v60, v8

    move-object/from16 v66, v9

    move-object/from16 v40, v10

    move-object v3, v11

    move/from16 v2, v41

    move-object/from16 v50, v49

    move-object/from16 v51, v59

    move-wide/from16 v8, v74

    move-wide/from16 v10, v76

    move-object/from16 v0, p0

    goto/16 :goto_0

    .end local v8    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v11    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .end local v12    # "partByteRangeOffset":J
    .end local v59    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    .restart local v2    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .restart local v51    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    .restart local v71    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .restart local v78    # "partByteRangeOffset":J
    :cond_3d
    move-object v8, v2

    move-wide/from16 v1, v57

    move-object/from16 v11, v71

    .end local v2    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v57    # "partStartTimeUs":J
    .end local v71    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .restart local v1    # "partStartTimeUs":J
    .restart local v8    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .restart local v11    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    const-string v12, "#"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_44

    .line 962
    nop

    .line 963
    invoke-static {v5, v6, v8, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    .line 965
    .local v65, "segmentEncryptionIV":Ljava/lang/String;
    add-long v5, v5, v59

    .line 966
    invoke-static {v3, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 967
    .local v12, "segmentUri":Ljava/lang/String;
    move-object/from16 v13, v17

    .end local v17    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v13, "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 968
    .local v17, "inferredInitSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    const-wide/16 v72, -0x1

    cmp-long v18, v76, v72

    if-nez v18, :cond_3e

    .line 970
    const-wide/16 v43, 0x0

    move-wide/from16 v74, v1

    move-wide/from16 v66, v43

    .end local v74    # "segmentByteRangeOffset":J
    .local v43, "segmentByteRangeOffset":J
    goto :goto_13

    .line 971
    .end local v43    # "segmentByteRangeOffset":J
    .restart local v74    # "segmentByteRangeOffset":J
    :cond_3e
    if-eqz v14, :cond_3f

    if-nez v53, :cond_3f

    if-nez v17, :cond_3f

    .line 977
    new-instance v57, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    const/16 v63, 0x0

    const/16 v64, 0x0

    const-wide/16 v59, 0x0

    move-object/from16 v58, v12

    move-wide/from16 v61, v74

    .end local v12    # "segmentUri":Ljava/lang/String;
    .end local v74    # "segmentByteRangeOffset":J
    .local v58, "segmentUri":Ljava/lang/String;
    .local v61, "segmentByteRangeOffset":J
    invoke-direct/range {v57 .. v64}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .end local v58    # "segmentUri":Ljava/lang/String;
    .restart local v12    # "segmentUri":Ljava/lang/String;
    move-object/from16 v17, v57

    .line 984
    move-wide/from16 v74, v1

    move-object/from16 v1, v17

    .end local v17    # "inferredInitSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .local v1, "inferredInitSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .local v74, "partStartTimeUs":J
    invoke-virtual {v13, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v66, v61

    goto :goto_13

    .line 971
    .end local v61    # "segmentByteRangeOffset":J
    .local v1, "partStartTimeUs":J
    .restart local v17    # "inferredInitSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .local v74, "segmentByteRangeOffset":J
    :cond_3f
    move-wide/from16 v61, v74

    move-wide/from16 v74, v1

    .line 987
    .end local v1    # "partStartTimeUs":J
    .restart local v61    # "segmentByteRangeOffset":J
    .local v74, "partStartTimeUs":J
    move-wide/from16 v66, v61

    .end local v61    # "segmentByteRangeOffset":J
    .local v66, "segmentByteRangeOffset":J
    :goto_13
    if-nez v51, :cond_41

    invoke-virtual/range {v49 .. v49}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    .line 988
    invoke-virtual/range {v49 .. v49}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 989
    .local v1, "schemeDatas":[Landroidx/media3/common/DrmInitData$SchemeData;
    new-instance v2, Landroidx/media3/common/DrmInitData;

    invoke-direct {v2, v7, v1}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    move-object/from16 v51, v2

    .line 990
    if-nez v46, :cond_40

    .line 991
    invoke-static {v7, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getPlaylistProtectionSchemes(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    move-result-object v2

    move-object/from16 v46, v2

    move-object/from16 v63, v51

    .end local v46    # "playlistProtectionSchemes":Landroidx/media3/common/DrmInitData;
    .local v2, "playlistProtectionSchemes":Landroidx/media3/common/DrmInitData;
    goto :goto_14

    .line 990
    .end local v2    # "playlistProtectionSchemes":Landroidx/media3/common/DrmInitData;
    .restart local v46    # "playlistProtectionSchemes":Landroidx/media3/common/DrmInitData;
    :cond_40
    move-object/from16 v63, v51

    goto :goto_14

    .line 995
    .end local v1    # "schemeDatas":[Landroidx/media3/common/DrmInitData$SchemeData;
    :cond_41
    move-object/from16 v63, v51

    .end local v51    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    .local v63, "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    :goto_14
    new-instance v54, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 998
    move/from16 v60, v56

    if-eqz v53, :cond_42

    move-object/from16 v56, v53

    goto :goto_15

    :cond_42
    move-object/from16 v56, v17

    .end local v56    # "relativeDiscontinuitySequence":I
    .local v60, "relativeDiscontinuitySequence":I
    :goto_15
    move-object/from16 v64, v8

    move-object/from16 v71, v11

    move-object/from16 v55, v12

    move-object/from16 v57, v16

    move-wide/from16 v58, v20

    move-wide/from16 v61, v38

    move-wide/from16 v68, v76

    .end local v8    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v11    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .end local v12    # "segmentUri":Ljava/lang/String;
    .end local v16    # "segmentTitle":Ljava/lang/String;
    .end local v20    # "segmentDurationUs":J
    .end local v38    # "segmentStartTimeUs":J
    .end local v76    # "segmentByteRangeLength":J
    .local v55, "segmentUri":Ljava/lang/String;
    .local v57, "segmentTitle":Ljava/lang/String;
    .local v58, "segmentDurationUs":J
    .local v61, "segmentStartTimeUs":J
    .local v64, "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .local v68, "segmentByteRangeLength":J
    .restart local v71    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    invoke-direct/range {v54 .. v71}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    .line 995
    move-object/from16 v1, v54

    move/from16 v56, v60

    move-wide/from16 v44, v61

    move-object/from16 v60, v64

    .end local v55    # "segmentUri":Ljava/lang/String;
    .end local v61    # "segmentStartTimeUs":J
    .end local v64    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v68    # "segmentByteRangeLength":J
    .end local v71    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .restart local v11    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .restart local v12    # "segmentUri":Ljava/lang/String;
    .local v44, "segmentStartTimeUs":J
    .restart local v56    # "relativeDiscontinuitySequence":I
    .local v60, "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .restart local v76    # "segmentByteRangeLength":J
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    add-long v38, v44, v58

    .line 1011
    .end local v44    # "segmentStartTimeUs":J
    .restart local v38    # "segmentStartTimeUs":J
    move-wide/from16 v1, v38

    .line 1012
    .end local v74    # "partStartTimeUs":J
    .local v1, "partStartTimeUs":J
    const-wide/16 v20, 0x0

    .line 1013
    .end local v58    # "segmentDurationUs":J
    .restart local v20    # "segmentDurationUs":J
    const-string v16, ""

    .line 1014
    .end local v57    # "segmentTitle":Ljava/lang/String;
    .restart local v16    # "segmentTitle":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    .end local v11    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .local v8, "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    const-wide/16 v72, -0x1

    cmp-long v11, v76, v72

    if-eqz v11, :cond_43

    .line 1016
    add-long v66, v66, v76

    .line 1018
    :cond_43
    const-wide/16 v43, -0x1

    .line 1019
    .end local v76    # "segmentByteRangeLength":J
    .local v43, "segmentByteRangeLength":J
    const/16 v70, 0x0

    .line 1020
    .end local v12    # "segmentUri":Ljava/lang/String;
    .end local v17    # "inferredInitSegment":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v65    # "segmentEncryptionIV":Ljava/lang/String;
    move-wide/from16 v57, v1

    move-object v3, v8

    move-object/from16 v40, v10

    move-object/from16 v17, v13

    move/from16 v2, v41

    move-wide/from16 v10, v43

    move-object/from16 v50, v49

    move-object/from16 v51, v63

    move-wide/from16 v12, v78

    move-object/from16 v1, p1

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    move-wide/from16 v80, v66

    move-object/from16 v66, v9

    move-wide/from16 v8, v80

    goto/16 :goto_0

    .line 960
    .end local v13    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v43    # "segmentByteRangeLength":J
    .end local v60    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v63    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    .end local v66    # "segmentByteRangeOffset":J
    .local v8, "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .restart local v11    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .local v17, "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v51    # "cachedDrmInitData":Landroidx/media3/common/DrmInitData;
    .local v74, "segmentByteRangeOffset":J
    .restart local v76    # "segmentByteRangeLength":J
    :cond_44
    move-object/from16 v60, v8

    move-object/from16 v57, v16

    move-object/from16 v13, v17

    move-wide/from16 v58, v20

    move-wide/from16 v44, v38

    move-wide/from16 v61, v74

    move-wide/from16 v74, v1

    .line 687
    .end local v0    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .end local v1    # "partStartTimeUs":J
    .end local v3    # "line":Ljava/lang/String;
    .end local v8    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v10    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v11    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .end local v49    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .end local v78    # "partByteRangeOffset":J
    .local v2, "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .local v12, "partByteRangeOffset":J
    .local v40, "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v44, "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .restart local v50    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .local v57, "partStartTimeUs":J
    .restart local v71    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    :goto_16
    move-object/from16 v1, p1

    move-object/from16 v66, v9

    move-object/from16 v40, v10

    move-object v3, v11

    move-object/from16 v17, v13

    move/from16 v2, v41

    move-wide/from16 v38, v44

    move-object/from16 v50, v49

    move-object/from16 v16, v57

    move-wide/from16 v20, v58

    move-wide/from16 v8, v61

    move-wide/from16 v57, v74

    move-wide/from16 v10, v76

    move-wide/from16 v12, v78

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    .end local v2    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .end local v12    # "partByteRangeOffset":J
    .end local v16    # "segmentTitle":Ljava/lang/String;
    .end local v17    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v20    # "segmentDurationUs":J
    .end local v38    # "segmentStartTimeUs":J
    .end local v40    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v50    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .end local v71    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .restart local v0    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .restart local v10    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v11    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .restart local v13    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v44, "segmentStartTimeUs":J
    .restart local v49    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .local v57, "segmentTitle":Ljava/lang/String;
    .restart local v58    # "segmentDurationUs":J
    .restart local v60    # "fullSegmentEncryptionKeyUri":Ljava/lang/String;
    .local v61, "segmentByteRangeOffset":J
    .local v74, "partStartTimeUs":J
    .restart local v78    # "partByteRangeOffset":J
    goto/16 :goto_0

    .line 1023
    .end local v0    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .end local v9    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .end local v11    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .end local v13    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v49    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .end local v58    # "segmentDurationUs":J
    .end local v61    # "segmentByteRangeOffset":J
    .end local v74    # "partStartTimeUs":J
    .end local v76    # "segmentByteRangeLength":J
    .end local v78    # "partByteRangeOffset":J
    .local v8, "segmentByteRangeOffset":J
    .local v10, "segmentByteRangeLength":J
    .restart local v12    # "partByteRangeOffset":J
    .restart local v16    # "segmentTitle":Ljava/lang/String;
    .restart local v17    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v20    # "segmentDurationUs":J
    .restart local v38    # "segmentStartTimeUs":J
    .restart local v40    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v44, "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .restart local v50    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .local v57, "partStartTimeUs":J
    .local v66, "fullSegmentEncryptionIV":Ljava/lang/String;
    .restart local v71    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    :cond_45
    move-wide/from16 v61, v8

    move-wide/from16 v76, v10

    move-wide/from16 v78, v12

    move-object/from16 v13, v17

    move-object/from16 v10, v40

    move-object/from16 v0, v44

    move-object/from16 v49, v50

    move-wide/from16 v74, v57

    move-object/from16 v9, v66

    move-object/from16 v11, v71

    const/4 v2, 0x0

    move-object/from16 v57, v16

    move-wide/from16 v58, v20

    move-wide/from16 v44, v38

    .end local v8    # "segmentByteRangeOffset":J
    .end local v12    # "partByteRangeOffset":J
    .end local v16    # "segmentTitle":Ljava/lang/String;
    .end local v17    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v20    # "segmentDurationUs":J
    .end local v38    # "segmentStartTimeUs":J
    .end local v40    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v50    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .end local v66    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .end local v71    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .restart local v0    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .restart local v9    # "fullSegmentEncryptionIV":Ljava/lang/String;
    .local v10, "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v11    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .restart local v13    # "urlToInferredInitSegment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v44, "segmentStartTimeUs":J
    .restart local v49    # "currentSchemeDatas":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .local v57, "segmentTitle":Ljava/lang/String;
    .restart local v58    # "segmentDurationUs":J
    .restart local v61    # "segmentByteRangeOffset":J
    .restart local v74    # "partStartTimeUs":J
    .restart local v76    # "segmentByteRangeLength":J
    .restart local v78    # "partByteRangeOffset":J
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1024
    .local v1, "renditionReportMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_49

    .line 1025
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    .line 1026
    .local v8, "renditionReport":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;
    move/from16 v16, v3

    .end local v3    # "i":I
    .local v16, "i":I
    iget-wide v2, v8, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastMediaSequence:J

    .line 1027
    .local v2, "lastMediaSequence":J
    const-wide/16 v72, -0x1

    cmp-long v17, v2, v72

    if-nez v17, :cond_46

    .line 1028
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    move-wide/from16 v20, v2

    .end local v2    # "lastMediaSequence":J
    .local v20, "lastMediaSequence":J
    int-to-long v2, v12

    add-long v2, v29, v2

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    move-wide/from16 v38, v2

    int-to-long v2, v12

    sub-long v2, v38, v2

    .end local v20    # "lastMediaSequence":J
    .restart local v2    # "lastMediaSequence":J
    goto :goto_18

    .line 1027
    :cond_46
    move-wide/from16 v20, v2

    .line 1030
    :goto_18
    iget v12, v8, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastPartIndex:I

    .line 1031
    .local v12, "lastPartIndex":I
    move-object/from16 v50, v0

    const/4 v0, -0x1

    .end local v0    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .local v50, "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    if-ne v12, v0, :cond_48

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v20, v34, v20

    if-eqz v20, :cond_48

    .line 1033
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_47

    invoke-static {v10}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    goto :goto_19

    :cond_47
    move-object v0, v11

    .line 1034
    .local v0, "lastParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    :goto_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v20

    const/16 v18, 0x1

    add-int/lit8 v12, v20, -0x1

    goto :goto_1a

    .line 1031
    .end local v0    # "lastParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    :cond_48
    const/16 v18, 0x1

    .line 1036
    :goto_1a
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->playlistUri:Landroid/net/Uri;

    move-wide/from16 v54, v5

    .end local v5    # "segmentMediaSequence":J
    .local v54, "segmentMediaSequence":J
    new-instance v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    iget-object v6, v8, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->playlistUri:Landroid/net/Uri;

    invoke-direct {v5, v6, v2, v3, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;-><init>(Landroid/net/Uri;JI)V

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    .end local v2    # "lastMediaSequence":J
    .end local v8    # "renditionReport":Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;
    .end local v12    # "lastPartIndex":I
    add-int/lit8 v3, v16, 0x1

    move-object/from16 v0, v50

    move-wide/from16 v5, v54

    const/4 v2, 0x0

    .end local v16    # "i":I
    .restart local v3    # "i":I
    goto :goto_17

    .end local v50    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .end local v54    # "segmentMediaSequence":J
    .local v0, "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .restart local v5    # "segmentMediaSequence":J
    :cond_49
    move-object/from16 v50, v0

    move/from16 v16, v3

    move-wide/from16 v54, v5

    const/16 v18, 0x1

    .line 1041
    .end local v0    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .end local v3    # "i":I
    .end local v5    # "segmentMediaSequence":J
    .restart local v50    # "renditionReports":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .restart local v54    # "segmentMediaSequence":J
    if-eqz v4, :cond_4a

    .line 1042
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1045
    :cond_4a
    move/from16 v0, v18

    new-instance v18, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    cmp-long v2, v25, v47

    if-eqz v2, :cond_4b

    move/from16 v38, v0

    goto :goto_1b

    :cond_4b
    const/16 v38, 0x0

    :goto_1b
    move-object/from16 v20, p3

    move-object/from16 v43, v1

    move-object/from16 v40, v10

    move-object/from16 v21, v19

    move/from16 v19, v41

    move-object/from16 v39, v46

    move-object/from16 v41, v11

    .end local v1    # "renditionReportMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    .end local v10    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v11    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .end local v46    # "playlistProtectionSchemes":Landroidx/media3/common/DrmInitData;
    .local v19, "playlistType":I
    .local v21, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v39, "playlistProtectionSchemes":Landroidx/media3/common/DrmInitData;
    .restart local v40    # "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .local v41, "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .local v43, "renditionReportMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;>;"
    invoke-direct/range {v18 .. v43}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLandroidx/media3/common/DrmInitData;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;Ljava/util/Map;)V

    move-object/from16 v2, v21

    move-object/from16 v71, v41

    .end local v21    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v41    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    .local v2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v71    # "trailingParts":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;>;"
    return-object v18
.end method

.method private static parseMultivariantPlaylist(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .locals 37
    .param p0, "iterator"    # Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;
    .param p1, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    move-object/from16 v1, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v13, v0

    .line 329
    .local v13, "urlToVariantInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;>;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 330
    .local v11, "variableDefinitions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 331
    .local v14, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v4, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v5, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v6, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v7, "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 336
    .local v15, "mediaTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v12, "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v2, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 339
    .local v0, "muxedAudioFormat":Landroidx/media3/common/Format;
    const/4 v3, 0x0

    .line 340
    .local v3, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    const/4 v8, 0x0

    .line 341
    .local v8, "noClosedCaptions":Z
    const/4 v9, 0x0

    move/from16 v16, v8

    move v10, v9

    .line 344
    .end local v8    # "noClosedCaptions":Z
    .local v10, "hasIndependentSegmentsTag":Z
    .local v16, "noClosedCaptions":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v8

    const-string v9, "application/x-mpegURL"

    move-object/from16 v18, v0

    .end local v0    # "muxedAudioFormat":Landroidx/media3/common/Format;
    .local v18, "muxedAudioFormat":Landroidx/media3/common/Format;
    const/16 v19, 0x0

    if-eqz v8, :cond_10

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v8

    .line 347
    .local v8, "line":Ljava/lang/String;
    const-string v0, "#EXT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_0
    const-string v0, "#EXT-X-I-FRAME-STREAM-INF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 353
    .local v0, "isIFrameOnlyVariant":Z
    move/from16 v22, v0

    .end local v0    # "isIFrameOnlyVariant":Z
    .local v22, "isIFrameOnlyVariant":Z
    const-string v0, "#EXT-X-DEFINE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 355
    invoke-static {v8, v0, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 356
    invoke-static {v8, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 354
    invoke-virtual {v11, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    goto/16 :goto_2

    .line 357
    :cond_1
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    const/4 v0, 0x1

    move v10, v0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v34, v4

    move-object/from16 v36, v5

    move-object/from16 v32, v7

    move-object/from16 v33, v12

    .end local v10    # "hasIndependentSegmentsTag":Z
    .local v0, "hasIndependentSegmentsTag":Z
    goto/16 :goto_9

    .line 359
    .end local v0    # "hasIndependentSegmentsTag":Z
    .restart local v10    # "hasIndependentSegmentsTag":Z
    :cond_2
    const-string v0, "#EXT-X-MEDIA"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    goto :goto_2

    .line 363
    :cond_3
    const-string v0, "#EXT-X-SESSION-KEY"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 364
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 365
    const-string v9, "identity"

    invoke-static {v8, v0, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "keyFormat":Ljava/lang/String;
    invoke-static {v8, v0, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v9

    .line 367
    .local v9, "schemeData":Landroidx/media3/common/DrmInitData$SchemeData;
    if-eqz v9, :cond_4

    .line 368
    move-object/from16 v17, v0

    .end local v0    # "keyFormat":Ljava/lang/String;
    .local v17, "keyFormat":Ljava/lang/String;
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    invoke-static {v8, v0, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "method":Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "method":Ljava/lang/String;
    .local v20, "method":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "scheme":Ljava/lang/String;
    move-object/from16 v23, v2

    .end local v2    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v23, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Landroidx/media3/common/DrmInitData;

    move-object/from16 v24, v3

    const/4 v3, 0x1

    .end local v3    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .local v24, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    new-array v3, v3, [Landroidx/media3/common/DrmInitData$SchemeData;

    aput-object v9, v3, v19

    invoke-direct {v2, v0, v3}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 367
    .end local v17    # "keyFormat":Ljava/lang/String;
    .end local v20    # "method":Ljava/lang/String;
    .end local v23    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .local v0, "keyFormat":Ljava/lang/String;
    .restart local v2    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    :cond_4
    move-object/from16 v17, v0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    .end local v0    # "keyFormat":Ljava/lang/String;
    .end local v2    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .restart local v17    # "keyFormat":Ljava/lang/String;
    .restart local v23    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    goto :goto_1

    .line 372
    .end local v9    # "schemeData":Landroidx/media3/common/DrmInitData$SchemeData;
    .end local v17    # "keyFormat":Ljava/lang/String;
    .end local v23    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .restart local v2    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    :cond_5
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    .end local v2    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .restart local v23    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    const-string v0, "#EXT-X-STREAM-INF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v22, :cond_6

    goto :goto_3

    :cond_6
    :goto_1
    nop

    .line 450
    .end local v22    # "isIFrameOnlyVariant":Z
    .end local v23    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .restart local v2    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    :goto_2
    move-object/from16 v34, v4

    move-object/from16 v36, v5

    move-object/from16 v32, v7

    move-object/from16 v33, v12

    .end local v2    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .restart local v23    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    goto/16 :goto_9

    .line 373
    .restart local v22    # "isIFrameOnlyVariant":Z
    :cond_7
    :goto_3
    const-string v0, "CLOSED-CAPTIONS=NONE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    or-int v0, v16, v0

    .line 374
    .end local v16    # "noClosedCaptions":Z
    .local v0, "noClosedCaptions":Z
    if-eqz v22, :cond_8

    const/16 v2, 0x4000

    goto :goto_4

    :cond_8
    move/from16 v2, v19

    .line 375
    .local v2, "roleFlags":I
    :goto_4
    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    invoke-static {v8, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v3

    .line 376
    .local v3, "peakBitrate":I
    move/from16 v16, v0

    .end local v0    # "noClosedCaptions":Z
    .restart local v16    # "noClosedCaptions":Z
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    move-object/from16 v32, v7

    const/4 v7, -0x1

    .end local v7    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v32, "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    invoke-static {v8, v0, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    move-result v0

    .line 377
    .local v0, "averageBitrate":I
    sget-object v7, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    invoke-static {v8, v7, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 378
    .local v7, "codecs":Ljava/lang/String;
    move/from16 v17, v10

    .end local v10    # "hasIndependentSegmentsTag":Z
    .local v17, "hasIndependentSegmentsTag":Z
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 379
    invoke-static {v8, v10, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 382
    .local v10, "resolutionString":Ljava/lang/String;
    if-eqz v10, :cond_b

    .line 383
    move-object/from16 v33, v12

    .end local v12    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData;>;"
    .local v33, "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData;>;"
    const-string/jumbo v12, "x"

    invoke-static {v10, v12}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 384
    .local v12, "widthAndHeight":[Ljava/lang/String;
    aget-object v19, v12, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 385
    .local v19, "width":I
    const/16 v21, 0x1

    aget-object v21, v12, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 386
    .local v21, "height":I
    if-lez v19, :cond_9

    if-gtz v21, :cond_a

    .line 388
    :cond_9
    const/16 v19, -0x1

    .line 389
    const/16 v21, -0x1

    .line 391
    .end local v12    # "widthAndHeight":[Ljava/lang/String;
    :cond_a
    move/from16 v12, v21

    move-object/from16 v21, v10

    move v10, v12

    move/from16 v12, v19

    goto :goto_5

    .line 392
    .end local v19    # "width":I
    .end local v21    # "height":I
    .end local v33    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData;>;"
    .local v12, "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData;>;"
    :cond_b
    move-object/from16 v33, v12

    .end local v12    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData;>;"
    .restart local v33    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData;>;"
    const/16 v19, -0x1

    .line 393
    .restart local v19    # "width":I
    const/16 v21, -0x1

    move/from16 v12, v21

    move-object/from16 v21, v10

    move v10, v12

    move/from16 v12, v19

    .line 395
    .end local v19    # "width":I
    .local v10, "height":I
    .local v12, "width":I
    .local v21, "resolutionString":Ljava/lang/String;
    :goto_5
    const/high16 v19, -0x40800000    # -1.0f

    .line 396
    .local v19, "frameRate":F
    move-object/from16 v34, v4

    .end local v4    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v34, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    .line 397
    invoke-static {v8, v4, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, "frameRateString":Ljava/lang/String;
    if-eqz v4, :cond_c

    .line 399
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move-object/from16 v35, v4

    move/from16 v4, v19

    goto :goto_6

    .line 398
    :cond_c
    move-object/from16 v35, v4

    move/from16 v4, v19

    .line 401
    .end local v19    # "frameRate":F
    .local v4, "frameRate":F
    .local v35, "frameRateString":Ljava/lang/String;
    :goto_6
    move-object/from16 v36, v5

    .end local v5    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v36, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    sget-object v5, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO:Ljava/util/regex/Pattern;

    invoke-static {v8, v5, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v28

    .line 402
    .local v28, "videoGroupId":Ljava/lang/String;
    sget-object v5, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    invoke-static {v8, v5, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v29

    .line 403
    .local v29, "audioGroupId":Ljava/lang/String;
    sget-object v5, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SUBTITLES:Ljava/util/regex/Pattern;

    .line 404
    invoke-static {v8, v5, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v30

    .line 405
    .local v30, "subtitlesGroupId":Ljava/lang/String;
    sget-object v5, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

    .line 406
    invoke-static {v8, v5, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v31

    .line 408
    .local v31, "closedCaptionsGroupId":Ljava/lang/String;
    if-eqz v22, :cond_d

    .line 409
    sget-object v5, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 410
    invoke-static {v8, v5, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v26, v5

    .local v5, "uri":Landroid/net/Uri;
    goto :goto_7

    .line 411
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 416
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 417
    .end local v8    # "line":Ljava/lang/String;
    .local v5, "line":Ljava/lang/String;
    invoke-static {v1, v5}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v26, v8

    move-object v8, v5

    .line 420
    .end local v5    # "line":Ljava/lang/String;
    .restart local v8    # "line":Ljava/lang/String;
    .local v26, "uri":Landroid/net/Uri;
    :goto_7
    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 422
    move-object/from16 v19, v8

    .end local v8    # "line":Ljava/lang/String;
    .local v19, "line":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 423
    invoke-virtual {v5, v9}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 424
    invoke-virtual {v5, v7}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 425
    invoke-virtual {v5, v0}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 426
    invoke-virtual {v5, v3}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 427
    invoke-virtual {v5, v12}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 428
    invoke-virtual {v5, v10}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 429
    invoke-virtual {v5, v4}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 430
    invoke-virtual {v5, v2}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 431
    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v27

    .line 432
    .local v27, "format":Landroidx/media3/common/Format;
    new-instance v25, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    invoke-direct/range {v25 .. v31}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v26

    move-object/from16 v5, v27

    .end local v26    # "uri":Landroid/net/Uri;
    .end local v27    # "format":Landroidx/media3/common/Format;
    .local v5, "format":Landroidx/media3/common/Format;
    .local v8, "uri":Landroid/net/Uri;
    move-object/from16 v9, v25

    .line 435
    .local v9, "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    .line 437
    .local v20, "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    if-nez v20, :cond_e

    .line 438
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v25

    .line 439
    move/from16 v26, v0

    move-object/from16 v0, v20

    .end local v20    # "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    .local v0, "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    .local v26, "averageBitrate":I
    invoke-virtual {v13, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 437
    .end local v26    # "averageBitrate":I
    .local v0, "averageBitrate":I
    .restart local v20    # "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    :cond_e
    move/from16 v26, v0

    .end local v0    # "averageBitrate":I
    .restart local v26    # "averageBitrate":I
    move-object/from16 v0, v20

    .line 441
    .end local v20    # "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    .local v0, "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    :goto_8
    new-instance v25, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;

    move/from16 v27, v3

    .end local v3    # "peakBitrate":I
    .local v27, "peakBitrate":I
    invoke-direct/range {v25 .. v31}, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v17

    move-object/from16 v8, v19

    .line 450
    .end local v0    # "variantInfosForUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;>;"
    .end local v2    # "roleFlags":I
    .end local v4    # "frameRate":F
    .end local v5    # "format":Landroidx/media3/common/Format;
    .end local v7    # "codecs":Ljava/lang/String;
    .end local v9    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .end local v12    # "width":I
    .end local v17    # "hasIndependentSegmentsTag":Z
    .end local v19    # "line":Ljava/lang/String;
    .end local v21    # "resolutionString":Ljava/lang/String;
    .end local v22    # "isIFrameOnlyVariant":Z
    .end local v26    # "averageBitrate":I
    .end local v27    # "peakBitrate":I
    .end local v28    # "videoGroupId":Ljava/lang/String;
    .end local v29    # "audioGroupId":Ljava/lang/String;
    .end local v30    # "subtitlesGroupId":Ljava/lang/String;
    .end local v31    # "closedCaptionsGroupId":Ljava/lang/String;
    .end local v35    # "frameRateString":Ljava/lang/String;
    .local v8, "line":Ljava/lang/String;
    .local v10, "hasIndependentSegmentsTag":Z
    :goto_9
    move-object/from16 v0, v18

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v7, v32

    move-object/from16 v12, v33

    move-object/from16 v4, v34

    move-object/from16 v5, v36

    goto/16 :goto_0

    .line 412
    .local v0, "averageBitrate":I
    .restart local v2    # "roleFlags":I
    .restart local v3    # "peakBitrate":I
    .restart local v4    # "frameRate":F
    .restart local v7    # "codecs":Ljava/lang/String;
    .local v10, "height":I
    .restart local v12    # "width":I
    .restart local v17    # "hasIndependentSegmentsTag":Z
    .restart local v21    # "resolutionString":Ljava/lang/String;
    .restart local v22    # "isIFrameOnlyVariant":Z
    .restart local v28    # "videoGroupId":Ljava/lang/String;
    .restart local v29    # "audioGroupId":Ljava/lang/String;
    .restart local v30    # "subtitlesGroupId":Ljava/lang/String;
    .restart local v31    # "closedCaptionsGroupId":Ljava/lang/String;
    .restart local v35    # "frameRateString":Ljava/lang/String;
    :cond_f
    move/from16 v26, v0

    move/from16 v27, v3

    .end local v0    # "averageBitrate":I
    .end local v3    # "peakBitrate":I
    .restart local v26    # "averageBitrate":I
    .restart local v27    # "peakBitrate":I
    const-string v0, "#EXT-X-STREAM-INF must be followed by another line"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 453
    .end local v8    # "line":Ljava/lang/String;
    .end local v17    # "hasIndependentSegmentsTag":Z
    .end local v21    # "resolutionString":Ljava/lang/String;
    .end local v22    # "isIFrameOnlyVariant":Z
    .end local v23    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .end local v26    # "averageBitrate":I
    .end local v27    # "peakBitrate":I
    .end local v28    # "videoGroupId":Ljava/lang/String;
    .end local v29    # "audioGroupId":Ljava/lang/String;
    .end local v30    # "subtitlesGroupId":Ljava/lang/String;
    .end local v31    # "closedCaptionsGroupId":Ljava/lang/String;
    .end local v32    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v33    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData;>;"
    .end local v34    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v35    # "frameRateString":Ljava/lang/String;
    .end local v36    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v2, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .local v4, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v5, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v7, "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v10, "hasIndependentSegmentsTag":Z
    .local v12, "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData;>;"
    :cond_10
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v34, v4

    move-object/from16 v36, v5

    move-object/from16 v32, v7

    move/from16 v17, v10

    move-object/from16 v33, v12

    const/4 v7, -0x1

    .end local v2    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .end local v4    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v5    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v7    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v10    # "hasIndependentSegmentsTag":Z
    .end local v12    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData;>;"
    .restart local v17    # "hasIndependentSegmentsTag":Z
    .restart local v23    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .restart local v32    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v33    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData;>;"
    .restart local v34    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v36    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v3, "deduplicatedVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 455
    .local v0, "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_13

    .line 456
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 457
    .local v4, "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    iget-object v5, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 458
    iget-object v5, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-nez v5, :cond_11

    const/4 v5, 0x1

    goto :goto_b

    :cond_11
    move/from16 v5, v19

    :goto_b
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 459
    new-instance v5, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;

    iget-object v8, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    .line 463
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    invoke-direct {v5, v10, v10, v8}, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 464
    .local v5, "hlsMetadataEntry":Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;
    new-instance v8, Landroidx/media3/common/Metadata;

    const/4 v12, 0x1

    new-array v7, v12, [Landroidx/media3/common/Metadata$Entry;

    aput-object v5, v7, v19

    invoke-direct {v8, v7}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 465
    .local v8, "metadata":Landroidx/media3/common/Metadata;
    iget-object v7, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    invoke-virtual {v7}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v7

    .line 466
    .local v7, "format":Landroidx/media3/common/Format;
    invoke-virtual {v4, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->copyWithFormat(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 457
    .end local v5    # "hlsMetadataEntry":Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;
    .end local v7    # "format":Landroidx/media3/common/Format;
    .end local v8    # "metadata":Landroidx/media3/common/Metadata;
    :cond_12
    const/4 v10, 0x0

    .line 455
    .end local v4    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    :goto_c
    add-int/lit8 v2, v2, 0x1

    const/4 v7, -0x1

    goto :goto_a

    :cond_13
    const/4 v10, 0x0

    .line 470
    .end local v2    # "i":I
    const/4 v2, 0x0

    move-object/from16 v8, v18

    .end local v18    # "muxedAudioFormat":Landroidx/media3/common/Format;
    .restart local v2    # "i":I
    .local v8, "muxedAudioFormat":Landroidx/media3/common/Format;
    :goto_d
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_22

    .line 471
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 472
    .local v4, "line":Ljava/lang/String;
    sget-object v5, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    invoke-static {v4, v5, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 473
    .local v5, "groupId":Ljava/lang/String;
    sget-object v7, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    invoke-static {v4, v7, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 474
    .local v7, "name":Ljava/lang/String;
    new-instance v12, Landroidx/media3/common/Format$Builder;

    invoke-direct {v12}, Landroidx/media3/common/Format$Builder;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v22, v0

    .end local v0    # "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .local v22, "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    const-string v0, ":"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-virtual {v12, v0}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 477
    invoke-virtual {v0, v7}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 478
    invoke-virtual {v0, v9}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 479
    invoke-static {v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseSelectionFlags(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 480
    invoke-static {v4, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseRoleFlags(Ljava/lang/String;Ljava/util/Map;)I

    move-result v10

    invoke-virtual {v0, v10}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    .line 481
    invoke-static {v4, v10, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 483
    .local v0, "formatBuilder":Landroidx/media3/common/Format$Builder;
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v4, v10, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 484
    .local v10, "referenceUri":Ljava/lang/String;
    if-nez v10, :cond_14

    const/4 v12, 0x0

    goto :goto_e

    :cond_14
    invoke-static {v1, v10}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 485
    .local v12, "uri":Landroid/net/Uri;
    :goto_e
    new-instance v1, Landroidx/media3/common/Metadata;

    move/from16 v25, v2

    move-object/from16 v26, v3

    const/4 v2, 0x1

    .end local v2    # "i":I
    .end local v3    # "deduplicatedVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    .local v25, "i":I
    .local v26, "deduplicatedVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    new-array v3, v2, [Landroidx/media3/common/Metadata$Entry;

    new-instance v2, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;

    .line 486
    move-object/from16 v27, v8

    .end local v8    # "muxedAudioFormat":Landroidx/media3/common/Format;
    .local v27, "muxedAudioFormat":Landroidx/media3/common/Format;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-direct {v2, v5, v7, v8}, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    aput-object v2, v3, v19

    invoke-direct {v1, v3}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 487
    .local v1, "metadata":Landroidx/media3/common/Metadata;
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v4, v2, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v8, 0x2

    sparse-switch v3, :sswitch_data_0

    :cond_15
    goto :goto_f

    :sswitch_0
    const-string v3, "VIDEO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move/from16 v3, v19

    goto :goto_10

    :sswitch_1
    const-string v3, "AUDIO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v3, 0x1

    goto :goto_10

    :sswitch_2
    const-string v3, "CLOSED-CAPTIONS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v3, 0x3

    goto :goto_10

    :sswitch_3
    const-string v3, "SUBTITLES"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v3, v8

    goto :goto_10

    :goto_f
    const/4 v3, -0x1

    :goto_10
    packed-switch v3, :pswitch_data_0

    move-object/from16 v29, v9

    move-object/from16 v3, v34

    move-object/from16 v9, v36

    .end local v34    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v36    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v3, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v9, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    goto/16 :goto_16

    .line 557
    .end local v3    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v9    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v34    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v36    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    :pswitch_0
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    invoke-static {v4, v2, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, "instreamId":Ljava/lang/String;
    const-string v3, "CC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 560
    const-string v3, "application/cea-608"

    .line 561
    .local v3, "sampleMimeType":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .local v8, "accessibilityChannel":I
    goto :goto_11

    .line 563
    .end local v3    # "sampleMimeType":Ljava/lang/String;
    .end local v8    # "accessibilityChannel":I
    :cond_16
    const-string v3, "application/cea-708"

    .line 564
    .restart local v3    # "sampleMimeType":Ljava/lang/String;
    const/4 v8, 0x7

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 566
    .restart local v8    # "accessibilityChannel":I
    :goto_11
    if-nez v24, :cond_17

    .line 567
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v24, v28

    move-object/from16 v28, v2

    move-object/from16 v2, v24

    goto :goto_12

    .line 566
    :cond_17
    move-object/from16 v28, v2

    move-object/from16 v2, v24

    .line 569
    .end local v24    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .local v2, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .local v28, "instreamId":Ljava/lang/String;
    :goto_12
    nop

    .line 570
    move-object/from16 v29, v9

    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    .line 571
    invoke-virtual {v9, v8}, Landroidx/media3/common/Format$Builder;->setAccessibilityChannel(I)Landroidx/media3/common/Format$Builder;

    .line 572
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    move-object/from16 v24, v2

    move-object/from16 v8, v27

    move-object/from16 v3, v34

    move-object/from16 v9, v36

    goto/16 :goto_17

    .line 538
    .end local v2    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .end local v3    # "sampleMimeType":Ljava/lang/String;
    .end local v8    # "accessibilityChannel":I
    .end local v28    # "instreamId":Ljava/lang/String;
    .restart local v24    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    :pswitch_1
    move-object/from16 v29, v9

    const/4 v2, 0x0

    .line 539
    .local v2, "sampleMimeType":Ljava/lang/String;
    invoke-static {v14, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getVariantWithSubtitleGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object v3

    .line 540
    .local v3, "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    if-eqz v3, :cond_18

    .line 542
    iget-object v8, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    iget-object v8, v8, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 543
    .local v8, "codecs":Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 544
    invoke-static {v8}, Landroidx/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 546
    .end local v8    # "codecs":Ljava/lang/String;
    :cond_18
    if-nez v2, :cond_19

    .line 547
    const-string/jumbo v2, "text/vtt"

    .line 549
    :cond_19
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 550
    if-eqz v12, :cond_1a

    .line 551
    new-instance v8, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v9

    invoke-direct {v8, v12, v9, v5, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v34

    move-object/from16 v9, v36

    goto/16 :goto_16

    .line 553
    :cond_1a
    const-string v8, "HlsPlaylistParser"

    const-string v9, "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping"

    invoke-static {v8, v9}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    move-object/from16 v3, v34

    move-object/from16 v9, v36

    goto/16 :goto_16

    .line 509
    .end local v2    # "sampleMimeType":Ljava/lang/String;
    .end local v3    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    :pswitch_2
    move-object/from16 v29, v9

    const/4 v2, 0x0

    .line 510
    .restart local v2    # "sampleMimeType":Ljava/lang/String;
    invoke-static {v14, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getVariantWithAudioGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object v3

    .line 511
    .restart local v3    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    if-eqz v3, :cond_1b

    .line 513
    iget-object v8, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    iget-object v8, v8, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 514
    .restart local v8    # "codecs":Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 515
    invoke-static {v8}, Landroidx/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    .line 511
    .end local v8    # "codecs":Ljava/lang/String;
    :cond_1b
    const/4 v9, 0x1

    .line 518
    :goto_13
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHANNELS:Ljava/util/regex/Pattern;

    .line 519
    invoke-static {v4, v8, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 520
    .local v8, "channelsString":Ljava/lang/String;
    if-eqz v8, :cond_1c

    .line 521
    const-string v9, "/"

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v19

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 522
    .local v9, "channelCount":I
    invoke-virtual {v0, v9}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 523
    move-object/from16 v28, v3

    .end local v3    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .local v28, "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    const-string v3, "audio/eac3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "/JOC"

    invoke-virtual {v8, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 524
    const-string v2, "audio/eac3-joc"

    .line 525
    const-string v3, "ec+3"

    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    goto :goto_14

    .line 520
    .end local v9    # "channelCount":I
    .end local v28    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .restart local v3    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    :cond_1c
    move-object/from16 v28, v3

    .line 528
    .end local v3    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .restart local v28    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    :cond_1d
    :goto_14
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 529
    if-eqz v12, :cond_1e

    .line 530
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 531
    new-instance v3, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v9

    invoke-direct {v3, v12, v9, v5, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v36

    .end local v36    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v9, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v34

    goto :goto_16

    .line 532
    .end local v9    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v36    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    :cond_1e
    move-object/from16 v9, v36

    .end local v36    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v9    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    if-eqz v28, :cond_1f

    .line 534
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    move-object v8, v3

    move-object/from16 v3, v34

    .end local v27    # "muxedAudioFormat":Landroidx/media3/common/Format;
    .local v3, "muxedAudioFormat":Landroidx/media3/common/Format;
    goto :goto_17

    .line 532
    .end local v3    # "muxedAudioFormat":Landroidx/media3/common/Format;
    .restart local v27    # "muxedAudioFormat":Landroidx/media3/common/Format;
    :cond_1f
    move-object/from16 v3, v34

    goto :goto_16

    .line 489
    .end local v2    # "sampleMimeType":Ljava/lang/String;
    .end local v8    # "channelsString":Ljava/lang/String;
    .end local v9    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v28    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .restart local v36    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    :pswitch_3
    move-object/from16 v29, v9

    move-object/from16 v9, v36

    .end local v36    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v9    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    invoke-static {v14, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getVariantWithVideoGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object v2

    .line 490
    .local v2, "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    if-eqz v2, :cond_20

    .line 491
    iget-object v3, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    .line 493
    .local v3, "variantFormat":Landroidx/media3/common/Format;
    move-object/from16 v28, v2

    .end local v2    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .restart local v28    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    iget-object v2, v3, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v2, v8}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, "codecs":Ljava/lang/String;
    nop

    .line 495
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v8

    .line 496
    move-object/from16 v30, v2

    .end local v2    # "codecs":Ljava/lang/String;
    .local v30, "codecs":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroidx/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v8, v3, Landroidx/media3/common/Format;->width:I

    .line 497
    invoke-virtual {v2, v8}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v8, v3, Landroidx/media3/common/Format;->height:I

    .line 498
    invoke-virtual {v2, v8}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v8, v3, Landroidx/media3/common/Format;->frameRate:F

    .line 499
    invoke-virtual {v2, v8}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    goto :goto_15

    .line 490
    .end local v3    # "variantFormat":Landroidx/media3/common/Format;
    .end local v28    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .end local v30    # "codecs":Ljava/lang/String;
    .local v2, "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    :cond_20
    move-object/from16 v28, v2

    .line 501
    .end local v2    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .restart local v28    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    :goto_15
    if-nez v12, :cond_21

    move-object/from16 v3, v34

    goto :goto_16

    .line 504
    :cond_21
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 505
    new-instance v2, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    invoke-direct {v2, v12, v3, v5, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v34

    .end local v34    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v3, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    nop

    .line 470
    .end local v0    # "formatBuilder":Landroidx/media3/common/Format$Builder;
    .end local v1    # "metadata":Landroidx/media3/common/Metadata;
    .end local v5    # "groupId":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "referenceUri":Ljava/lang/String;
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v28    # "variant":Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    :goto_16
    move-object/from16 v8, v27

    .end local v27    # "muxedAudioFormat":Landroidx/media3/common/Format;
    .local v8, "muxedAudioFormat":Landroidx/media3/common/Format;
    :goto_17
    add-int/lit8 v2, v25, 0x1

    move-object/from16 v1, p1

    move-object/from16 v34, v3

    move-object/from16 v36, v9

    move-object/from16 v0, v22

    move-object/from16 v3, v26

    move-object/from16 v9, v29

    const/4 v10, 0x0

    .end local v25    # "i":I
    .local v2, "i":I
    goto/16 :goto_d

    .end local v4    # "line":Ljava/lang/String;
    .end local v9    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v22    # "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .end local v26    # "deduplicatedVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    .local v0, "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .local v3, "deduplicatedVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    .restart local v34    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v36    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    :cond_22
    move-object/from16 v22, v0

    move/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v8

    move-object/from16 v3, v34

    move-object/from16 v9, v36

    .line 581
    .end local v0    # "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .end local v2    # "i":I
    .end local v8    # "muxedAudioFormat":Landroidx/media3/common/Format;
    .end local v34    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v36    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v3, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v9    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v22    # "urlsInDeduplicatedVariants":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .restart local v26    # "deduplicatedVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    .restart local v27    # "muxedAudioFormat":Landroidx/media3/common/Format;
    if-eqz v16, :cond_23

    .line 582
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v24

    .line 585
    :cond_23
    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-object/from16 v1, p1

    move-object v4, v3

    move-object v5, v9

    move/from16 v10, v17

    move-object/from16 v2, v23

    move-object/from16 v9, v24

    move-object/from16 v3, v26

    move-object/from16 v8, v27

    move-object/from16 v7, v32

    move-object/from16 v12, v33

    .end local v17    # "hasIndependentSegmentsTag":Z
    .end local v23    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .end local v26    # "deduplicatedVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    .end local v27    # "muxedAudioFormat":Landroidx/media3/common/Format;
    .end local v32    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v33    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData;>;"
    .local v2, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, "deduplicatedVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    .local v4, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v5, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local v7, "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v8    # "muxedAudioFormat":Landroidx/media3/common/Format;
    .local v9, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    .local v10, "hasIndependentSegmentsTag":Z
    .local v12, "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData;>;"
    invoke-direct/range {v0 .. v12}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media3/common/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    move-object/from16 v34, v4

    move-object/from16 v36, v5

    .end local v4    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v5    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v7    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .end local v10    # "hasIndependentSegmentsTag":Z
    .end local v12    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData;>;"
    .restart local v17    # "hasIndependentSegmentsTag":Z
    .restart local v32    # "closedCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v33    # "sessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/DrmInitData;>;"
    .restart local v34    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .restart local v36    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_3
        -0x13dc6572 -> :sswitch_2
        0x3bba3b6 -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .locals 3
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultValue"    # Z

    .line 1276
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1277
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1278
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "YES"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1280
    :cond_0
    return p2
.end method

.method private static parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D
    .locals 3
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultValue"    # D

    .line 1249
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1250
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1251
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1

    .line 1253
    :cond_0
    return-wide p2
.end method

.method private static parseOptionalIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;I)I
    .locals 2
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultValue"    # I

    .line 1189
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1190
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1191
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1193
    :cond_0
    return p2
.end method

.method private static parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J
    .locals 3
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultValue"    # J

    .line 1201
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1202
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1203
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 1205
    :cond_0
    return-wide p2
.end method

.method private static parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1241
    .local p3, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1242
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p2

    .line 1243
    .local v1, "value":Ljava/lang/String;
    :goto_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 1245
    :cond_1
    invoke-static {v1, p3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1244
    :cond_2
    :goto_1
    move-object v2, v1

    .line 1243
    :goto_2
    return-object v2
.end method

.method private static parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1233
    .local p2, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseRoleFlags(Ljava/lang/String;Ljava/util/Map;)I
    .locals 4
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1106
    .local p1, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

    .line 1107
    invoke-static {p0, v0, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "concatenatedCharacteristics":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1109
    const/4 v1, 0x0

    return v1

    .line 1111
    :cond_0
    const-string v1, ","

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1112
    .local v1, "characteristics":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1113
    .local v2, "roleFlags":I
    const-string/jumbo v3, "public.accessibility.describes-video"

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1114
    or-int/lit16 v2, v2, 0x200

    .line 1116
    :cond_1
    const-string/jumbo v3, "public.accessibility.transcribes-spoken-dialog"

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1117
    or-int/lit16 v2, v2, 0x1000

    .line 1119
    :cond_2
    const-string/jumbo v3, "public.accessibility.describes-music-and-sound"

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1120
    or-int/lit16 v2, v2, 0x400

    .line 1122
    :cond_3
    const-string/jumbo v3, "public.easy-to-read"

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1123
    or-int/lit16 v2, v2, 0x2000

    .line 1125
    :cond_4
    return v2
.end method

.method private static parseSelectionFlags(Ljava/lang/String;)I
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    .line 1091
    const/4 v0, 0x0

    .line 1092
    .local v0, "flags":I
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1093
    or-int/lit8 v0, v0, 0x1

    .line 1095
    :cond_0
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    invoke-static {p0, v1, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1096
    or-int/lit8 v0, v0, 0x2

    .line 1098
    :cond_1
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    invoke-static {p0, v1, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1099
    or-int/lit8 v0, v0, 0x4

    .line 1101
    :cond_2
    return v0
.end method

.method private static parseServerControl(Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;
    .locals 25
    .param p0, "line"    # Ljava/lang/String;

    .line 1152
    move-object/from16 v0, p0

    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

    .line 1153
    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v4

    .line 1155
    .local v4, "skipUntilSeconds":D
    cmpl-double v1, v4, v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, 0x412e848000000000L    # 1000000.0

    if-nez v1, :cond_0

    .line 1156
    move-wide v10, v6

    goto :goto_0

    .line 1157
    :cond_0
    mul-double v10, v4, v8

    double-to-long v10, v10

    :goto_0
    move-wide v13, v10

    .line 1158
    .local v13, "skipUntilUs":J
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

    .line 1159
    const/4 v10, 0x0

    invoke-static {v0, v1, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v15

    .line 1160
    .local v15, "canSkipDateRanges":Z
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 1161
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v21

    .line 1163
    .local v21, "holdBackSeconds":D
    cmpl-double v1, v21, v2

    if-nez v1, :cond_1

    .line 1164
    move-wide/from16 v16, v6

    goto :goto_1

    .line 1165
    :cond_1
    mul-double v11, v21, v8

    double-to-long v11, v11

    move-wide/from16 v16, v11

    :goto_1
    nop

    .line 1166
    .local v16, "holdBackUs":J
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v23

    .line 1168
    .local v23, "partHoldBackSeconds":D
    cmpl-double v1, v23, v2

    if-nez v1, :cond_2

    .line 1169
    move-wide/from16 v18, v6

    goto :goto_2

    .line 1170
    :cond_2
    mul-double v8, v8, v23

    double-to-long v6, v8

    move-wide/from16 v18, v6

    :goto_2
    nop

    .line 1171
    .local v18, "partHoldBackUs":J
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

    .line 1172
    invoke-static {v0, v1, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v20

    .line 1174
    .local v20, "canBlockReload":Z
    new-instance v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    invoke-direct/range {v12 .. v20}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;-><init>(JZJJZ)V

    return-object v12
.end method

.method private static parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1221
    .local p2, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1222
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1223
    return-object v0

    .line 1225
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1226
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1225
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1
.end method

.method private static parseTimeSecondsToUs(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 5
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1209
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1210
    .local v0, "timeValueSeconds":Ljava/lang/String;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1211
    .local v1, "timeValue":Ljava/math/BigDecimal;
    new-instance v2, Ljava/math/BigDecimal;

    const-wide/32 v3, 0xf4240

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method private static replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1258
    .local p1, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1260
    .local v0, "matcher":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1261
    .local v1, "stringWithReplacements":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1262
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1263
    .local v2, "groupName":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1264
    nop

    .line 1265
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1264
    invoke-virtual {v0, v1, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 1269
    .end local v2    # "groupName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1270
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1271
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I
    .locals 1
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .param p1, "skipLinebreaks"    # Z
    .param p2, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    nop

    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {p2}, Landroidx/media3/common/util/Util;->isLinebreak(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result p2

    goto :goto_0

    .line 323
    :cond_1
    return p2
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 258
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 261
    .local v1, "extraLines":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->checkPlaylistHeader(Ljava/io/BufferedReader;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 265
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .local v4, "line":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 266
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 267
    .end local v4    # "line":Ljava/lang/String;
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    const-string v4, "#EXT-X-STREAM-INF"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v3, v1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseMultivariantPlaylist(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 271
    return-object v3

    .line 272
    :cond_1
    :try_start_1
    const-string v4, "#EXT-X-TARGETDURATION"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "#EXT-X-MEDIA-SEQUENCE"

    .line 273
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "#EXTINF"

    .line 274
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "#EXT-X-KEY"

    .line 275
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "#EXT-X-BYTERANGE"

    .line 276
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "#EXT-X-DISCONTINUITY"

    .line 277
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 278
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "#EXT-X-ENDLIST"

    .line 279
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 287
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    :cond_3
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->multivariantPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->previousMediaPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    new-instance v5, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v5, v1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 285
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 281
    invoke-static {v3, v4, v5, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseMediaPlaylist(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 281
    return-object v3

    .line 291
    .end local v2    # "line":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 292
    nop

    .line 293
    const-string v2, "Failed to parse the playlist, could not identify any tags."

    invoke-static {v2, v3}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v2

    throw v2

    .line 262
    .end local v4    # "line":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v2, "Input does not start with the #EXTM3U header."

    invoke-static {v2, v3}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v2

    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v1    # "extraLines":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "inputStream":Ljava/io/InputStream;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "extraLines":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 292
    throw v2
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;

    move-result-object p1

    return-object p1
.end method
