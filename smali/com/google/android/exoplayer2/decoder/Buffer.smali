###### Class com.google.android.exoplayer2.decoder.Buffer (com.google.android.exoplayer2.decoder.Buffer)
.class public abstract Lcom/google/android/exoplayer2/decoder/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# instance fields
.field private flags:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addFlag(I)V
    .registers 3

    .line 73
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    return-void
.end method

.method public final clearFlag(I)V
    .registers 3

    .line 82
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    return-void
.end method

.method protected final getFlag(I)Z
    .registers 3

    .line 92
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public final isDecodeOnly()Z
    .registers 2

    const/high16 v0, -0x80000000

    .line 39
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isEndOfStream()Z
    .registers 2

    const/4 v0, 0x4

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isKeyFrame()Z
    .registers 2

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final setFlags(I)V
    .registers 2

    .line 63
    iput p1, p0, Lcom/google/android/exoplayer2/decoder/Buffer;->flags:I

    return-void
.end method
