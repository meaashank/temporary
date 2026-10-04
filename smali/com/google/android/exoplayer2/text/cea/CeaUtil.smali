###### Class com.google.android.exoplayer2.text.cea.CeaUtil (com.google.android.exoplayer2.text.cea.CeaUtil)
.class public final Lcom/google/android/exoplayer2/text/cea/CeaUtil;
.super Ljava/lang/Object;
.source "CeaUtil.java"


# static fields
.field private static final COUNTRY_CODE:I = 0xb5

.field private static final PAYLOAD_TYPE_CC:I = 0x4

.field private static final PROVIDER_CODE_ATSC:I = 0x31

.field private static final PROVIDER_CODE_DIRECTV:I = 0x2f

.field private static final TAG:Ljava/lang/String; = "CeaUtil"

.field private static final USER_DATA_TYPE_CODE:I = 0x3

.field private static final USER_ID_DTG1:I

.field private static final USER_ID_GA94:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "GA94"

    .line 33
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->USER_ID_GA94:I

    const-string v0, "DTG1"

    .line 34
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->USER_ID_DTG1:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .registers 24

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 47
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a1

    .line 48
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v2

    .line 49
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v4

    .line 50
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_91

    .line 52
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    if-le v4, v6, :cond_23

    goto/16 :goto_91

    :cond_23
    const/4 v6, 0x4

    if-ne v2, v6, :cond_9c

    const/16 v2, 0x8

    if-lt v4, v2, :cond_9c

    .line 57
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 58
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    const/16 v6, 0x31

    const/4 v7, 0x0

    if-ne v4, v6, :cond_3c

    .line 61
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    goto :goto_3d

    :cond_3c
    const/4 v8, 0x0

    .line 63
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    const/16 v10, 0x2f

    if-ne v4, v10, :cond_48

    .line 65
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_48
    const/16 v11, 0xb5

    const/4 v12, 0x3

    if-ne v2, v11, :cond_55

    if-eq v4, v6, :cond_51

    if-ne v4, v10, :cond_55

    :cond_51
    if-ne v9, v12, :cond_55

    const/4 v2, 0x1

    goto :goto_56

    :cond_55
    const/4 v2, 0x0

    :goto_56
    if-ne v4, v6, :cond_65

    .line 72
    sget v4, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->USER_ID_GA94:I

    if-eq v8, v4, :cond_63

    sget v4, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->USER_ID_DTG1:I

    if-ne v8, v4, :cond_61

    goto :goto_63

    :cond_61
    const/4 v4, 0x0

    goto :goto_64

    :cond_63
    :goto_63
    const/4 v4, 0x1

    :goto_64
    and-int/2addr v2, v4

    :cond_65
    if-eqz v2, :cond_9c

    .line 77
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    .line 79
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    mul-int/lit8 v2, v2, 0x3

    .line 83
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 84
    array-length v4, v1

    :goto_77
    if-ge v7, v4, :cond_9c

    aget-object v13, v1, v7

    .line 85
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 86
    invoke-interface {v13, v0, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide/from16 v14, p0

    move/from16 v17, v2

    .line 87
    invoke-interface/range {v13 .. v19}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_77

    :cond_91
    :goto_91
    const-string v2, "CeaUtil"

    const-string v3, "Skipping remainder of malformed SEI NAL unit."

    .line 54
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    .line 92
    :cond_9c
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_4

    :cond_a1
    return-void
.end method

.method private static readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 4

    const/4 v0, 0x0

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-nez v1, :cond_9

    const/4 p0, -0x1

    return p0

    .line 111
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1

    return v0
.end method
