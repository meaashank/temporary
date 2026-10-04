###### Class com.google.android.exoplayer2.extractor.mkv.VarintReader (com.google.android.exoplayer2.extractor.mkv.VarintReader)
.class final Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;
.super Ljava/lang/Object;
.source "VarintReader.java"


# static fields
.field private static final STATE_BEGIN_READING:I = 0x0

.field private static final STATE_READ_CONTENTS:I = 0x1

.field private static final VARINT_LENGTH_MASKS:[J


# instance fields
.field private length:I

.field private final scratch:[B

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    .line 37
    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    return-void

    :array_a
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 47
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    return-void
.end method

.method public static assembleVarint([BIZ)J
    .registers 11

    const/4 v0, 0x0

    .line 145
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    if-eqz p2, :cond_13

    .line 147
    sget-object p2, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    add-int/lit8 v4, p1, -0x1

    aget-wide v4, p2, v4

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v0, v4

    :cond_13
    const/4 p2, 0x1

    :goto_14
    if-ge p2, p1, :cond_21

    const/16 v4, 0x8

    shl-long/2addr v0, v4

    .line 150
    aget-byte v4, p0, p2

    int-to-long v4, v4

    and-long/2addr v4, v2

    or-long/2addr v0, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :cond_21
    return-wide v0
.end method

.method public static parseUnsignedVarintLength(I)I
    .registers 7

    const/4 v0, 0x0

    .line 126
    :goto_1
    sget-object v1, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 127
    sget-object v1, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    aget-wide v2, v1, v0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_15

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    const/4 v0, -0x1

    :goto_19
    return v0
.end method


# virtual methods
.method public getLastLength()I
    .registers 2

    .line 114
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    return v0
.end method

.method public readUnsignedVarint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J
    .registers 8

    .line 83
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2d

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p2

    if-nez p2, :cond_11

    const-wide/16 p1, -0x1

    return-wide p1

    .line 88
    :cond_11
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    aget-byte p2, p2, v1

    and-int/lit16 p2, p2, 0xff

    .line 89
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    .line 90
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_25

    .line 93
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->state:I

    goto :goto_2d

    .line 91
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No valid varint length mask found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_2d
    :goto_2d
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    if-le p2, p4, :cond_36

    .line 97
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->state:I

    const-wide/16 p1, -0x2

    return-wide p1

    .line 101
    :cond_36
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    if-eq p2, v2, :cond_42

    .line 103
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    iget p4, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    sub-int/2addr p4, v2

    invoke-interface {p1, p2, v2, p4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 106
    :cond_42
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->state:I

    .line 107
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->state:I

    .line 55
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    return-void
.end method
