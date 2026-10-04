###### Class com.google.android.exoplayer2.audio.SimpleDecoderAudioRenderer (com.google.android.exoplayer2.audio.SimpleDecoderAudioRenderer)
.class public abstract Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "SimpleDecoderAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;
    }
.end annotation


# static fields
.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2


# instance fields
.field private allowFirstBufferPositionDiscontinuity:Z

.field private allowPositionDiscontinuity:Z

.field private final audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

.field private audioTrackNeedsConfigure:Z

.field private currentPositionUs:J

.field private decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<",
            "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/audio/AudioDecoderException;",
            ">;"
        }
    .end annotation
.end field

.field private decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private encoderDelay:I

.field private encoderPadding:I

.field private final eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private final flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

.field private inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private inputFormat:Lcom/google/android/exoplayer2/Format;

.field private inputStreamEnded:Z

.field private outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

.field private outputStreamEnded:Z

.field private pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final playClearSamplesWithoutKeys:Z

.field private waitingForKeys:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    .line 115
    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V
    .registers 12

    const/4 v0, 0x0

    .line 138
    new-array v7, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "Lcom/google/android/exoplayer2/audio/AudioCapabilities;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;Z[",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            ")V"
        }
    .end annotation

    .line 159
    new-instance v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-direct {v5, p3, p6}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLcom/google/android/exoplayer2/audio/AudioSink;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLcom/google/android/exoplayer2/audio/AudioSink;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;Z",
            "Lcom/google/android/exoplayer2/audio/AudioSink;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 179
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 180
    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 181
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->playClearSamplesWithoutKeys:Z

    .line 182
    new-instance p3, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {p3, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 183
    iput-object p5, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 184
    new-instance p1, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;-><init>(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$1;)V

    invoke-interface {p5, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setListener(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V

    .line 185
    new-instance p1, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    .line 186
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->newFlagsOnlyInstance()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p1, 0x0

    .line 187
    iput p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    .line 188
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .registers 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 126
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    return-object p0
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;Z)Z
    .registers 2

    .line 62
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    return p1
.end method

.method private drainOutputBuffer()Z
    .registers 13

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    .line 332
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    .line 333
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    if-nez v0, :cond_14

    return v1

    .line 336
    :cond_14
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    iget v3, v3, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 339
    :cond_1f
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->isEndOfStream()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_42

    .line 340
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_37

    .line 342
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->releaseDecoder()V

    .line 343
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->maybeInitDecoder()V

    .line 345
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    goto :goto_41

    .line 347
    :cond_37
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 348
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    .line 349
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->processEndOfStream()V

    :goto_41
    return v1

    .line 354
    :cond_42
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    if-eqz v0, :cond_5d

    .line 355
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getOutputFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 356
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->encoderDelay:I

    iget v11, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->encoderPadding:I

    invoke-interface/range {v4 .. v11}, Lcom/google/android/exoplayer2/audio/AudioSink;->configure(IIII[III)V

    .line 358
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 361
    :cond_5d
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    iget-object v4, v4, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->timeUs:J

    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;J)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 363
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 364
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    return v3

    :cond_7c
    return v1
.end method

.method private feedInputBuffer()Z
    .registers 6

    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_98

    iget v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_98

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    if-eqz v0, :cond_10

    goto/16 :goto_98

    .line 378
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-nez v0, :cond_21

    .line 379
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeueInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 380
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-nez v0, :cond_21

    return v1

    .line 385
    :cond_21
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_39

    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 387
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 388
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 389
    iput v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    return v1

    .line 394
    :cond_39
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_3f

    const/4 v0, -0x4

    goto :goto_47

    .line 398
    :cond_3f
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v0

    :goto_47
    const/4 v2, -0x3

    if-ne v0, v2, :cond_4b

    return v1

    :cond_4b
    const/4 v2, -0x5

    if-ne v0, v2, :cond_56

    .line 405
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    return v4

    .line 408
    :cond_56
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 409
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 411
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    return v1

    .line 414
    :cond_6a
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    .line 415
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->shouldWaitForKeys(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    .line 416
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_7b

    return v1

    .line 419
    :cond_7b
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 420
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 421
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 422
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 423
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    .line 424
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    return v4

    :cond_98
    :goto_98
    return v1
.end method

.method private flushDecoder()V
    .registers 4

    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    .line 450
    iget v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    if-eqz v1, :cond_e

    .line 451
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->releaseDecoder()V

    .line 452
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->maybeInitDecoder()V

    goto :goto_23

    :cond_e
    const/4 v1, 0x0

    .line 454
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 455
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    if-eqz v2, :cond_1c

    .line 456
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 457
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    .line 459
    :cond_1c
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->flush()V

    .line 460
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReceivedBuffers:Z

    :goto_23
    return-void
.end method

.method private maybeInitDecoder()V
    .registers 10

    .line 574
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    if-eqz v0, :cond_5

    return-void

    .line 578
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v0, 0x0

    .line 580
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_20

    .line 581
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v0

    if-nez v0, :cond_20

    .line 583
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    if-eqz v1, :cond_1f

    goto :goto_20

    :cond_1f
    return-void

    .line 595
    :cond_20
    :goto_20
    :try_start_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "createAudioDecoder"

    .line 596
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 597
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v3, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    .line 598
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 599
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 600
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    sub-long v7, v5, v1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 602
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I
    :try_end_4e
    .catch Lcom/google/android/exoplayer2/audio/AudioDecoderException; {:try_start_20 .. :try_end_4e} :catch_4f

    return-void

    :catch_4f
    move-exception v0

    .line 604
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .registers 6

    .line 623
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 624
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 626
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v2, 0x0

    if-nez v0, :cond_d

    move-object v0, v2

    goto :goto_f

    :cond_d
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    :goto_f
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_51

    .line 629
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_4f

    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-eqz v0, :cond_3f

    .line 634
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 636
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-ne v0, v2, :cond_51

    .line 637
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    goto :goto_51

    .line 631
    :cond_3f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v0

    .line 631
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 640
    :cond_4f
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 644
    :cond_51
    :goto_51
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReceivedBuffers:Z

    if-eqz v0, :cond_58

    .line 646
    iput v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    goto :goto_60

    .line 649
    :cond_58
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->releaseDecoder()V

    .line 650
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->maybeInitDecoder()V

    .line 651
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 654
    :goto_60
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_68

    const/4 v0, 0x0

    goto :goto_6a

    :cond_68
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    :goto_6a
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->encoderDelay:I

    .line 655
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    if-ne v0, v2, :cond_71

    goto :goto_73

    :cond_71
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    :goto_73
    iput v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->encoderPadding:I

    .line 657
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method private onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 7

    .line 661
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-nez v0, :cond_21

    .line 665
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_1e

    .line 666
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    :cond_1e
    const/4 p1, 0x0

    .line 668
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    :cond_21
    return-void
.end method

.method private processEndOfStream()V
    .registers 3

    const/4 v0, 0x1

    .line 440
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    .line 442
    :try_start_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->playToEndOfStream()V
    :try_end_8
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_3 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    .line 444
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private releaseDecoder()V
    .registers 3

    .line 609
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 613
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 614
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    .line 615
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->release()V

    .line 616
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    .line 617
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    const/4 v0, 0x0

    .line 618
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    .line 619
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReceivedBuffers:Z

    return-void
.end method

.method private shouldWaitForKeys(Z)Z
    .registers 5

    .line 429
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->playClearSamplesWithoutKeys:Z

    if-eqz p1, :cond_c

    goto :goto_2a

    .line 432
    :cond_c
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/4 v2, 0x4

    if-eq p1, v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0

    .line 434
    :cond_1b
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_2a
    :goto_2a
    return v1
.end method

.method private updateCurrentPosition()V
    .registers 6

    .line 673
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_20

    .line 675
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_15

    goto :goto_1b

    :cond_15
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    .line 678
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_1b
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    const/4 v0, 0x0

    .line 679
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    :cond_20
    return-void
.end method


# virtual methods
.method protected abstract createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ")",
            "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<",
            "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/audio/AudioDecoderException;",
            ">;"
        }
    .end annotation
.end method

.method public getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;
    .registers 1

    return-object p0
.end method

.method protected getOutputFormat()Lcom/google/android/exoplayer2/Format;
    .registers 13

    const-string v1, "audio/raw"

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 2

    .line 490
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .registers 3

    .line 477
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 478
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->updateCurrentPosition()V

    .line 480
    :cond_a
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    return-wide v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 3

    packed-switch p1, :pswitch_data_1c

    .line 568
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_1a

    .line 564
    :pswitch_7
    check-cast p2, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 565
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    goto :goto_1a

    .line 561
    :pswitch_f
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setVolume(F)V

    :goto_1a
    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_f
        :pswitch_7
    .end packed-switch
.end method

.method public isEnded()Z
    .registers 2

    .line 466
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isReady()Z
    .registers 2

    .line 471
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    if-nez v0, :cond_1b

    .line 472
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    return v0
.end method

.method protected onAudioSessionId(I)V
    .registers 2

    return-void
.end method

.method protected onAudioTrackPositionDiscontinuity()V
    .registers 1

    return-void
.end method

.method protected onAudioTrackUnderrun(IJJ)V
    .registers 6

    return-void
.end method

.method protected onDisabled()V
    .registers 5

    const/4 v0, 0x0

    .line 531
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x1

    .line 532
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    const/4 v1, 0x0

    .line 533
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    .line 535
    :try_start_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->releaseDecoder()V

    .line 536
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->release()V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_85

    .line 539
    :try_start_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_1c

    .line 540
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_50

    .line 544
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_2d

    .line 545
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_3e

    .line 548
    :cond_2d
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 549
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_3e
    move-exception v1

    .line 548
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 549
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_50
    move-exception v1

    .line 544
    :try_start_51
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_62

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_62

    .line 545
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_62
    .catchall {:try_start_51 .. :try_end_62} :catchall_73

    .line 548
    :cond_62
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 549
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_73
    move-exception v1

    .line 548
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 549
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_85
    move-exception v1

    .line 539
    :try_start_86
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_91

    .line 540
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_91
    .catchall {:try_start_86 .. :try_end_91} :catchall_c5

    .line 544
    :cond_91
    :try_start_91
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_a2

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_a2

    .line 545
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_a2
    .catchall {:try_start_91 .. :try_end_a2} :catchall_b3

    .line 548
    :cond_a2
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 549
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_b3
    move-exception v1

    .line 548
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 549
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_c5
    move-exception v1

    .line 544
    :try_start_c6
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_d7

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_d7

    .line 545
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_d7
    .catchall {:try_start_c6 .. :try_end_d7} :catchall_e8

    .line 548
    :cond_d7
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 549
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1

    :catchall_e8
    move-exception v1

    .line 548
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 549
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v1
.end method

.method protected onEnabled(Z)V
    .registers 3

    .line 495
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 496
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 497
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getConfiguration()Lcom/google/android/exoplayer2/RendererConfiguration;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/RendererConfiguration;->tunnelingAudioSessionId:I

    if-eqz p1, :cond_1c

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->enableTunnelingV21(I)V

    goto :goto_21

    .line 501
    :cond_1c
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->disableTunneling()V

    :goto_21
    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 4

    .line 507
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    .line 508
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    const/4 p1, 0x1

    .line 509
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 510
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    const/4 p1, 0x0

    .line 511
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    .line 512
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    .line 513
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    if-eqz p1, :cond_18

    .line 514
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->flushDecoder()V

    :cond_18
    return-void
.end method

.method protected onStarted()V
    .registers 2

    .line 520
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->play()V

    return-void
.end method

.method protected onStopped()V
    .registers 2

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->pause()V

    .line 526
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->updateCurrentPosition()V

    return-void
.end method

.method public render(JJ)V
    .registers 5

    .line 229
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz p1, :cond_14

    .line 231
    :try_start_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->playToEndOfStream()V
    :try_end_9
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_4 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 233
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 239
    :cond_14
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez p1, :cond_44

    .line 241
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 242
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    const/4 p2, -0x5

    if-ne p1, p2, :cond_31

    .line 244
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_44

    :cond_31
    const/4 p2, -0x4

    if-ne p1, p2, :cond_43

    .line 247
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 248
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    .line 249
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->processEndOfStream()V

    return-void

    :cond_43
    return-void

    .line 258
    :cond_44
    :goto_44
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->maybeInitDecoder()V

    .line 260
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    if-eqz p1, :cond_71

    :try_start_4b
    const-string p1, "drainAndFeed"

    .line 263
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 264
    :goto_50
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drainOutputBuffer()Z

    move-result p1

    if-eqz p1, :cond_57

    goto :goto_50

    .line 265
    :cond_57
    :goto_57
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_5e

    goto :goto_57

    .line 266
    :cond_5e
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V
    :try_end_61
    .catch Lcom/google/android/exoplayer2/audio/AudioDecoderException; {:try_start_4b .. :try_end_61} :catch_67
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException; {:try_start_4b .. :try_end_61} :catch_67
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_4b .. :try_end_61} :catch_67
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_4b .. :try_end_61} :catch_67

    .line 271
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    goto :goto_71

    :catch_67
    move-exception p1

    .line 269
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_71
    :goto_71
    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 3

    .line 485
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    return-object p1
.end method

.method public final supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->supportsFormatInternal(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_a

    return p1

    .line 202
    :cond_a
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_13

    const/16 v0, 0x20

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    or-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method protected abstract supportsFormatInternal(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            ")I"
        }
    .end annotation
.end method

.method protected final supportsOutputEncoding(I)Z
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->isEncodingSupported(I)Z

    move-result p1

    return p1
.end method

###### Class com.google.android.exoplayer2.audio.SimpleDecoderAudioRenderer.AnonymousClass1 (com.google.android.exoplayer2.audio.SimpleDecoderAudioRenderer$1)
.class synthetic Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$1;
.super Ljava/lang/Object;
.source "SimpleDecoderAudioRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.audio.SimpleDecoderAudioRenderer.AudioSinkListener (com.google.android.exoplayer2.audio.SimpleDecoderAudioRenderer$AudioSinkListener)
.class final Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;
.super Ljava/lang/Object;
.source "SimpleDecoderAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioSinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)V
    .registers 2

    .line 683
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$1;)V
    .registers 3

    .line 683
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;-><init>(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)V

    return-void
.end method


# virtual methods
.method public onAudioSessionId(I)V
    .registers 3

    .line 687
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioSessionId(I)V

    .line 688
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onAudioSessionId(I)V

    return-void
.end method

.method public onPositionDiscontinuity()V
    .registers 3

    .line 693
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onAudioTrackPositionDiscontinuity()V

    .line 695
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->access$202(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;Z)Z

    return-void
.end method

.method public onUnderrun(IJJ)V
    .registers 14

    .line 700
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioTrackUnderrun(IJJ)V

    .line 701
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onAudioTrackUnderrun(IJJ)V

    return-void
.end method
