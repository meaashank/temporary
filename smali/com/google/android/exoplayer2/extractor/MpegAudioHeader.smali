###### Class com.google.android.exoplayer2.extractor.MpegAudioHeader (com.google.android.exoplayer2.extractor.MpegAudioHeader)
.class public final Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;
.super Ljava/lang/Object;
.source "MpegAudioHeader.java"


# static fields
.field private static final BITRATE_V1_L1:[I

.field private static final BITRATE_V1_L2:[I

.field private static final BITRATE_V1_L3:[I

.field private static final BITRATE_V2:[I

.field private static final BITRATE_V2_L1:[I

.field public static final MAX_FRAME_SIZE_BYTES:I = 0x1000

.field private static final MIME_TYPE_BY_LAYER:[Ljava/lang/String;

.field private static final SAMPLING_RATE_V1:[I


# instance fields
.field public bitrate:I

.field public channels:I

.field public frameSize:I

.field public mimeType:Ljava/lang/String;

.field public sampleRate:I

.field public samplesPerFrame:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x3

    .line 34
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "audio/mpeg-L1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "audio/mpeg-L2"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "audio/mpeg"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sput-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    .line 36
    new-array v0, v0, [I

    fill-array-data v0, :array_42

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    const/16 v0, 0xe

    .line 37
    new-array v1, v0, [I

    fill-array-data v1, :array_4c

    sput-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    .line 39
    new-array v1, v0, [I

    fill-array-data v1, :array_6c

    sput-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    .line 41
    new-array v1, v0, [I

    fill-array-data v1, :array_8c

    sput-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    .line 43
    new-array v1, v0, [I

    fill-array-data v1, :array_ac

    sput-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    .line 45
    new-array v0, v0, [I

    fill-array-data v0, :array_cc

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    return-void

    nop

    :array_42
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    :array_4c
    .array-data 4
        0x20
        0x40
        0x60
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x120
        0x140
        0x160
        0x180
        0x1a0
        0x1c0
    .end array-data

    :array_6c
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
        0xb0
        0xc0
        0xe0
        0x100
    .end array-data

    :array_8c
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
    .end array-data

    :array_ac
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
    .end array-data

    :array_cc
    .array-data 4
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrameSize(I)I
    .registers 8

    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, -0x1

    if-eq v1, v0, :cond_8

    return v2

    :cond_8
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/2addr v0, v1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    return v2

    :cond_10
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v1

    if-nez v4, :cond_16

    return v2

    :cond_16
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_76

    if-ne v5, v6, :cond_20

    goto :goto_76

    :cond_20
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_26

    return v2

    .line 78
    :cond_26
    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v2, v2, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_30

    .line 81
    div-int/lit8 v2, v2, 0x2

    goto :goto_34

    :cond_30
    if-nez v0, :cond_34

    .line 84
    div-int/lit8 v2, v2, 0x4

    :cond_34
    :goto_34
    ushr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v3

    if-ne v4, v1, :cond_4d

    if-ne v0, v1, :cond_41

    .line 91
    sget-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_46

    :cond_41
    sget-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_46
    mul-int/lit16 v0, v0, 0x2ee0

    .line 92
    div-int/2addr v0, v2

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0

    :cond_4d
    if-ne v0, v1, :cond_5d

    if-ne v4, v6, :cond_57

    .line 96
    sget-object v6, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_62

    :cond_57
    sget-object v6, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_62

    .line 99
    :cond_5d
    sget-object v6, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    :goto_62
    const v6, 0x23280

    if-ne v0, v1, :cond_6c

    mul-int v5, v5, v6

    .line 105
    div-int/2addr v5, v2

    add-int/2addr v5, p0

    return v5

    :cond_6c
    if-ne v4, v3, :cond_71

    const v6, 0x11940

    :cond_71
    mul-int v6, v6, v5

    .line 108
    div-int/2addr v6, v2

    add-int/2addr v6, p0

    return v6

    :cond_76
    :goto_76
    return v2
.end method

.method public static populateHeader(ILcom/google/android/exoplayer2/extractor/MpegAudioHeader;)Z
    .registers 13

    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, 0x0

    if-eq v1, v0, :cond_8

    return v2

    :cond_8
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/lit8 v4, v0, 0x3

    const/4 v0, 0x1

    if-ne v4, v0, :cond_11

    return v2

    :cond_11
    ushr-int/lit8 v3, p0, 0x11

    and-int/2addr v3, v1

    if-nez v3, :cond_17

    return v2

    :cond_17
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_9c

    if-ne v5, v6, :cond_22

    goto/16 :goto_9c

    :cond_22
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_28

    return v2

    .line 146
    :cond_28
    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v2, v2, v6

    const/4 v6, 0x2

    if-ne v4, v6, :cond_33

    .line 149
    div-int/lit8 v2, v2, 0x2

    :cond_31
    :goto_31
    move v7, v2

    goto :goto_38

    :cond_33
    if-nez v4, :cond_31

    .line 152
    div-int/lit8 v2, v2, 0x4

    goto :goto_31

    :goto_38
    ushr-int/lit8 v2, p0, 0x9

    and-int/2addr v2, v0

    const/16 v8, 0x480

    if-ne v3, v1, :cond_58

    if-ne v4, v1, :cond_47

    .line 159
    sget-object v8, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    goto :goto_4c

    :cond_47
    sget-object v8, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    :goto_4c
    mul-int/lit16 v8, v5, 0x2ee0

    .line 160
    div-int/2addr v8, v7

    add-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0x4

    const/16 v2, 0x180

    move v9, v8

    const/16 v10, 0x180

    goto :goto_84

    :cond_58
    const v9, 0x23280

    if-ne v4, v1, :cond_71

    if-ne v3, v6, :cond_65

    .line 166
    sget-object v10, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    sub-int/2addr v5, v0

    aget v5, v10, v5

    goto :goto_6a

    :cond_65
    sget-object v10, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    sub-int/2addr v5, v0

    aget v5, v10, v5

    :goto_6a
    mul-int v9, v9, v5

    .line 168
    div-int/2addr v9, v7

    add-int/2addr v9, v2

    const/16 v10, 0x480

    goto :goto_84

    .line 171
    :cond_71
    sget-object v10, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    sub-int/2addr v5, v0

    aget v5, v10, v5

    if-ne v3, v0, :cond_7a

    const/16 v8, 0x240

    :cond_7a
    if-ne v3, v0, :cond_7f

    const v9, 0x11940

    :cond_7f
    mul-int v9, v9, v5

    .line 173
    div-int/2addr v9, v7

    add-int/2addr v9, v2

    move v10, v8

    .line 177
    :goto_84
    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    rsub-int/lit8 v3, v3, 0x3

    aget-object v2, v2, v3

    shr-int/lit8 p0, p0, 0x6

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_91

    const/4 v8, 0x1

    goto :goto_92

    :cond_91
    const/4 v8, 0x2

    :goto_92
    mul-int/lit16 p0, v5, 0x3e8

    move-object v3, p1

    move-object v5, v2

    move v6, v9

    move v9, p0

    .line 179
    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->setValues(ILjava/lang/String;IIIII)V

    return v0

    :cond_9c
    :goto_9c
    return v2
.end method

.method private setValues(ILjava/lang/String;IIIII)V
    .registers 8

    .line 201
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->version:I

    .line 202
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->mimeType:Ljava/lang/String;

    .line 203
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    .line 204
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    .line 205
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->channels:I

    .line 206
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->bitrate:I

    .line 207
    iput p7, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->samplesPerFrame:I

    return-void
.end method
