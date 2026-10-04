###### Class com.google.android.exoplayer2.audio.ResamplingAudioProcessor (com.google.android.exoplayer2.audio.ResamplingAudioProcessor)
.class final Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;
.super Ljava/lang/Object;
.source "ResamplingAudioProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private channelCount:I

.field private encoding:I

.field private inputEnded:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private sampleRateHz:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->sampleRateHz:I

    .line 42
    iput v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->channelCount:I

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    .line 44
    sget-object v0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 45
    sget-object v0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public configure(III)Z
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_15

    if-eq p3, v0, :cond_15

    const/high16 v1, -0x80000000

    if-eq p3, v1, :cond_15

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p3, v1, :cond_f

    goto :goto_15

    .line 53
    :cond_f
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0

    .line 55
    :cond_15
    :goto_15
    iget v1, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->sampleRateHz:I

    if-ne v1, p1, :cond_23

    iget v1, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->channelCount:I

    if-ne v1, p2, :cond_23

    iget v1, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    if-ne v1, p3, :cond_23

    const/4 p1, 0x0

    return p1

    .line 59
    :cond_23
    iput p1, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->sampleRateHz:I

    .line 60
    iput p2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->channelCount:I

    .line 61
    iput p3, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    if-ne p3, v0, :cond_2f

    .line 63
    sget-object p1, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    :cond_2f
    const/4 p1, 0x1

    return p1
.end method

.method public flush()V
    .registers 2

    .line 173
    sget-object v0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 161
    sget-object v1, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOutputChannelCount()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->channelCount:I

    return v0
.end method

.method public getOutputEncoding()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getOutputSampleRateHz()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->sampleRateHz:I

    return v0
.end method

.method public isActive()Z
    .registers 3

    .line 70
    iget v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isEnded()Z
    .registers 3

    .line 168
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public queueEndOfStream()V
    .registers 2

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 9

    .line 91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 92
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    .line 95
    iget v3, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const/4 v6, 0x3

    if-eq v3, v5, :cond_23

    if-eq v3, v6, :cond_20

    if-ne v3, v4, :cond_1a

    .line 103
    div-int/lit8 v2, v2, 0x2

    goto :goto_26

    .line 110
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_20
    mul-int/lit8 v2, v2, 0x2

    goto :goto_26

    .line 100
    :cond_23
    div-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x2

    .line 112
    :goto_26
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v2, :cond_3d

    .line 113
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_42

    .line 115
    :cond_3d
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 119
    :goto_42
    iget v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    if-eq v2, v5, :cond_84

    if-eq v2, v6, :cond_6b

    if-ne v2, v4, :cond_65

    :goto_4a
    if-ge v0, v1, :cond_9f

    .line 137
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 138
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_4a

    .line 146
    :cond_65
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_6b
    :goto_6b
    if-ge v0, v1, :cond_9f

    .line 123
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 124
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    :cond_84
    :goto_84
    if-ge v0, v1, :cond_9f

    .line 130
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 131
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x3

    goto :goto_84

    .line 148
    :cond_9f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 149
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 150
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public reset()V
    .registers 2

    .line 179
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->flush()V

    .line 180
    sget-object v0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 181
    iput v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->sampleRateHz:I

    .line 182
    iput v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->channelCount:I

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    return-void
.end method
