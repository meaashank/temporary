###### Class com.google.android.exoplayer2.audio.ChannelMappingAudioProcessor (com.google.android.exoplayer2.audio.ChannelMappingAudioProcessor)
.class final Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;
.super Ljava/lang/Object;
.source "ChannelMappingAudioProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# instance fields
.field private active:Z

.field private buffer:Ljava/nio/ByteBuffer;

.field private channelCount:I

.field private inputEnded:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private outputChannels:[I

.field private pendingOutputChannels:[I

.field private sampleRateHz:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 46
    sget-object v0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    .line 48
    iput v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->sampleRateHz:I

    return-void
.end method


# virtual methods
.method public configure(III)Z
    .registers 9

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 65
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    .line 66
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    const/4 v3, 0x0

    if-nez v2, :cond_16

    .line 67
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->active:Z

    return v0

    :cond_16
    const/4 v2, 0x2

    if-ne p3, v2, :cond_52

    if-nez v0, :cond_24

    .line 73
    iget v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->sampleRateHz:I

    if-ne v0, p1, :cond_24

    iget v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    if-ne v0, p2, :cond_24

    return v3

    .line 77
    :cond_24
    iput p1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->sampleRateHz:I

    .line 78
    iput p2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    array-length v0, v0

    if-eq p2, v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->active:Z

    const/4 v0, 0x0

    .line 81
    :goto_33
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    array-length v2, v2

    if-ge v0, v2, :cond_51

    .line 82
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    aget v2, v2, v0

    if-ge v2, p2, :cond_4b

    .line 86
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->active:Z

    if-eq v2, v0, :cond_44

    const/4 v2, 0x1

    goto :goto_45

    :cond_44
    const/4 v2, 0x0

    :goto_45
    or-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->active:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 84
    :cond_4b
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0

    :cond_51
    return v1

    .line 71
    :cond_52
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public flush()V
    .registers 2

    .line 153
    sget-object v0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 141
    sget-object v1, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOutputChannelCount()I
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    goto :goto_a

    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    array-length v0, v0

    :goto_a
    return v0
.end method

.method public getOutputEncoding()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getOutputSampleRateHz()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->sampleRateHz:I

    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->active:Z

    return v0
.end method

.method public isEnded()Z
    .registers 3

    .line 148
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

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

    .line 135
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 9

    .line 113
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 114
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    .line 115
    iget v3, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v2, v3

    .line 116
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    array-length v3, v3

    mul-int v2, v2, v3

    mul-int/lit8 v2, v2, 0x2

    .line 117
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v2, :cond_2d

    .line 118
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_32

    .line 120
    :cond_2d
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_32
    if-ge v0, v1, :cond_51

    .line 123
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_38
    if-ge v4, v3, :cond_4b

    aget v5, v2, v4

    .line 124
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 126
    :cond_4b
    iget v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    goto :goto_32

    .line 128
    :cond_51
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 130
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public reset()V
    .registers 2

    .line 159
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->flush()V

    .line 160
    sget-object v0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 161
    iput v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    .line 162
    iput v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->sampleRateHz:I

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->active:Z

    return-void
.end method

.method public setChannelMap([I)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    return-void
.end method
