###### Class com.google.android.exoplayer2.audio.DefaultAudioSink (com.google.android.exoplayer2.audio.DefaultAudioSink)
.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;
    }
.end annotation


# static fields
.field private static final BUFFER_MULTIPLICATION_FACTOR:I = 0x4

.field private static final ERROR_BAD_VALUE:I = -0x2

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_BUFFER_DURATION_US:J = 0xb71b0L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_BUFFER_DURATION_US:J = 0x3d090L

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MIN_TIMESTAMP_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final MODE_STATIC:I = 0x0

.field private static final MODE_STREAM:I = 0x1

.field private static final PASSTHROUGH_BUFFER_DURATION_US:J = 0x3d090L

.field private static final PLAYSTATE_PAUSED:I = 0x2

.field private static final PLAYSTATE_PLAYING:I = 0x3

.field private static final PLAYSTATE_STOPPED:I = 0x1

.field private static final START_IN_SYNC:I = 0x1

.field private static final START_NEED_SYNC:I = 0x2

.field private static final START_NOT_SET:I = 0x0

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioTrack"

.field private static final WRITE_NON_BLOCKING:I = 0x1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static enablePreV21AudioSessionWorkaround:Z = false

.field public static failOnSpuriousAudioTimestamp:Z = false


# instance fields
.field private audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field private final audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private audioSessionId:I

.field private audioTimestampSet:Z

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

.field private avSyncHeader:Ljava/nio/ByteBuffer;

.field private bufferSize:I

.field private bufferSizeUs:J

.field private bytesUntilNextAvSync:I

.field private canApplyPlaybackParameters:Z

.field private channelConfig:I

.field private final channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

.field private drainingAudioProcessorIndex:I

.field private drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private final enableConvertHighResIntPcmToFloat:Z

.field private framesPerEncodedSample:I

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private handledEndOfStream:Z

.field private hasData:Z

.field private inputBuffer:Ljava/nio/ByteBuffer;

.field private inputSampleRate:I

.field private isInputPcm:Z

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private lastFeedElapsedRealtimeMs:J

.field private lastPlayheadSampleTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private latencyUs:J

.field private listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private nextPlayheadOffsetIndex:I

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputEncoding:I

.field private outputPcmFrameSize:I

.field private pcmFrameSize:I

.field private playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private final playbackParametersCheckpoints:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;",
            ">;"
        }
    .end annotation
.end field

.field private playbackParametersOffsetUs:J

.field private playbackParametersPositionUs:J

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private playing:Z

.field private preV21OutputBuffer:[B

.field private preV21OutputBufferOffset:I

.field private processingEnabled:Z

.field private final releasingConditionVariable:Landroid/os/ConditionVariable;

.field private resumeSystemTimeUs:J

.field private sampleRate:I

.field private shouldConvertHighResIntPcmToFloat:Z

.field private smoothedPlayheadOffsetUs:J

.field private final sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

.field private startMediaTimeState:I

.field private startMediaTimeUs:J

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private final toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private final toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private final trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

.field private tunneling:Z

.field private volume:F

.field private writtenEncodedFrames:J

.field private writtenPcmBytes:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .registers 4
    .param p1    # Lcom/google/android/exoplayer2/audio/AudioCapabilities;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 248
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Z)V
    .registers 7
    .param p1    # Lcom/google/android/exoplayer2/audio/AudioCapabilities;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 266
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->enableConvertHighResIntPcmToFloat:Z

    .line 267
    new-instance p1, Landroid/os/ConditionVariable;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    .line 268
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x12

    if-lt p1, v1, :cond_25

    .line 270
    :try_start_16
    const-class p1, Landroid/media/AudioTrack;

    const-string v1, "getLatency"

    move-object v2, v0

    check-cast v2, [Ljava/lang/Class;

    .line 271
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_23} :catch_24

    goto :goto_25

    :catch_24
    nop

    .line 276
    :cond_25
    :goto_25
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p1, v1, :cond_33

    .line 277
    new-instance p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    goto :goto_3a

    .line 279
    :cond_33
    new-instance p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    .line 281
    :goto_3a
    new-instance p1, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    .line 282
    new-instance p1, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    .line 283
    new-instance p1, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    .line 284
    array-length p1, p2

    add-int/lit8 p1, p1, 0x4

    new-array p1, p1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 285
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    new-instance v0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 286
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    aput-object v0, p1, p3

    .line 287
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    aput-object v2, p1, v0

    .line 288
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v0, p2

    const/4 v2, 0x3

    invoke-static {p2, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length p2, p2

    add-int/2addr p2, v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    aput-object v0, p1, p2

    .line 291
    new-array p1, p3, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    new-instance p2, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;-><init>()V

    aput-object p2, p1, v1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/16 p1, 0xa

    .line 292
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsets:[J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 293
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    .line 294
    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    .line 295
    sget-object p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 296
    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 297
    sget-object p1, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    const/4 p1, -0x1

    .line 298
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    .line 299
    new-array p1, v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 300
    new-array p1, v1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 301
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Landroid/os/ConditionVariable;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private applySpeedup(J)J
    .registers 8

    .line 1035
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 1036
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_36

    .line 1038
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    .line 1039
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$200(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1040
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    .line 1041
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$500(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    goto :goto_0

    .line 1044
    :cond_36
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_47

    .line 1045
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    sub-long/2addr p1, v0

    return-wide p1

    .line 1048
    :cond_47
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1049
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    sub-long/2addr p1, v3

    .line 1050
    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->scaleDurationForSpeedup(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0

    .line 1053
    :cond_5c
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    sub-long/2addr p1, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v2, v2, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 1054
    invoke-static {p1, p2, v2}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private createAudioTrackV21()Landroid/media/AudioTrack;
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1228
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_1f

    .line 1229
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    .line 1230
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 1231
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1232
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1233
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    :goto_1d
    move-object v2, v0

    goto :goto_26

    .line 1235
    :cond_1f
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->getAudioAttributesV21()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_1d

    .line 1237
    :goto_26
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelConfig:I

    .line 1238
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    .line 1239
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sampleRate:I

    .line 1240
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1241
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    .line 1242
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    if-eqz v0, :cond_49

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    move v6, v0

    goto :goto_4b

    :cond_49
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 1244
    :goto_4b
    new-instance v0, Landroid/media/AudioTrack;

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0
.end method

.method private drainAudioProcessorsToEndOfStream()Z
    .registers 9

    .line 798
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_14

    .line 799
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->processingEnabled:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    goto :goto_10

    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v0, v0

    :goto_10
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    :goto_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 802
    :goto_15
    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v5, v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v5, :cond_3c

    .line 803
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    aget-object v4, v4, v5

    if-eqz v0, :cond_2c

    .line 805
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->queueEndOfStream()V

    .line 807
    :cond_2c
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->processBuffers(J)V

    .line 808
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isEnded()Z

    move-result v0

    if-nez v0, :cond_36

    return v3

    .line 812
    :cond_36
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    goto :goto_12

    .line 816
    :cond_3c
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4a

    .line 817
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v6, v7}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    .line 818
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4a

    return v3

    .line 822
    :cond_4a
    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    return v2
.end method

.method private durationUsToFrames(J)J
    .registers 5

    .line 1155
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sampleRate:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private framesToDurationUs(J)J
    .registers 5

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 1151
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private getAvailableAudioProcessors()[Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .registers 2

    .line 1257
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->shouldConvertHighResIntPcmToFloat:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    :goto_9
    return-object v0
.end method

.method private static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .registers 4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3a

    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    goto :goto_3a

    :cond_8
    const/4 v1, 0x5

    if-ne p0, v1, :cond_10

    .line 1272
    invoke-static {}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result p0

    return p0

    :cond_10
    const/4 v1, 0x6

    if-ne p0, v1, :cond_18

    .line 1274
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_18
    const/16 v1, 0xe

    if-ne p0, v1, :cond_23

    .line 1276
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    return p0

    .line 1279
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected audio encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1270
    :cond_3a
    :goto_3a
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method private getSubmittedFrames()J
    .registers 5

    .line 1159
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInputPcm:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedPcmBytes:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_d

    :cond_b
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedEncodedFrames:J

    :goto_d
    return-wide v0
.end method

.method private getWrittenFrames()J
    .registers 5

    .line 1163
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInputPcm:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputPcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_d

    :cond_b
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    :goto_d
    return-wide v0
.end method

.method private hasCurrentPositionUs()Z
    .registers 2

    .line 1028
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private initialize()V
    .registers 4

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 517
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->initializeAudioTrack()Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 520
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 523
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->resetAudioProcessors()V

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    .line 526
    sget-boolean v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->enablePreV21AudioSessionWorkaround:Z

    if-eqz v1, :cond_3c

    .line 527
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_3c

    .line 530
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 531
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    if-eq v0, v1, :cond_32

    .line 532
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releaseKeepSessionIdAudioTrack()V

    .line 534
    :cond_32
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_3c

    .line 535
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->initializeKeepSessionIdAudioTrack(I)Landroid/media/AudioTrack;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 539
    :cond_3c
    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v1, v0, :cond_4b

    .line 540
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 541
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz v1, :cond_4b

    .line 542
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onAudioSessionId(I)V

    .line 546
    :cond_4b
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->needsPassthroughWorkarounds()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 547
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setVolumeInternal()V

    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasData:Z

    return-void
.end method

.method private initializeAudioTrack()Landroid/media/AudioTrack;
    .registers 10

    .line 1198
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 1199
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->createAudioTrackV21()Landroid/media/AudioTrack;

    move-result-object v0

    goto :goto_38

    .line 1201
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v2

    .line 1202
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    if-nez v0, :cond_27

    .line 1203
    new-instance v0, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sampleRate:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelConfig:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    goto :goto_38

    .line 1207
    :cond_27
    new-instance v0, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sampleRate:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelConfig:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    const/4 v7, 0x1

    iget v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 1212
    :goto_38
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    return-object v0

    .line 1215
    :cond_40
    :try_start_40
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_43

    .line 1220
    :catch_43
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;-><init>(IIII)V

    throw v0
.end method

.method private initializeKeepSessionIdAudioTrack(I)Landroid/media/AudioTrack;
    .registers 11

    .line 1252
    new-instance v8, Landroid/media/AudioTrack;

    const/16 v2, 0xfa0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v1, 0x3

    const/4 v6, 0x0

    move-object v0, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v8
.end method

.method private inputFramesToDurationUs(J)J
    .registers 5

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 1147
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputSampleRate:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private static isEncodingPcm(I)Z
    .registers 2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_14

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method private isInitialized()Z
    .registers 2

    .line 1143
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private maybeSampleSyncParams()V
    .registers 18

    move-object/from16 v0, p0

    .line 1062
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getPositionUs()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_f

    return-void

    .line 1067
    :cond_f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 1068
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastPlayheadSampleTimeUs:J

    sub-long v9, v5, v9

    const-wide/16 v11, 0x7530

    const/4 v13, 0x0

    cmp-long v14, v9, v11

    if-ltz v14, :cond_57

    .line 1070
    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsets:[J

    iget v10, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->nextPlayheadOffsetIndex:I

    sub-long v11, v1, v5

    aput-wide v11, v9, v10

    .line 1071
    iget v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->nextPlayheadOffsetIndex:I

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0xa

    rem-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->nextPlayheadOffsetIndex:I

    .line 1072
    iget v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsetCount:I

    if-ge v9, v10, :cond_3c

    .line 1073
    iget v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsetCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsetCount:I

    .line 1075
    :cond_3c
    iput-wide v5, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastPlayheadSampleTimeUs:J

    .line 1076
    iput-wide v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->smoothedPlayheadOffsetUs:J

    const/4 v9, 0x0

    .line 1077
    :goto_41
    iget v10, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsetCount:I

    if-ge v9, v10, :cond_57

    .line 1078
    iget-wide v10, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->smoothedPlayheadOffsetUs:J

    iget-object v12, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsets:[J

    aget-wide v14, v12, v9

    iget v12, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsetCount:I

    int-to-long v3, v12

    div-long/2addr v14, v3

    add-long/2addr v10, v14

    iput-wide v10, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->smoothedPlayheadOffsetUs:J

    add-int/lit8 v9, v9, 0x1

    const-wide/16 v3, 0x0

    goto :goto_41

    .line 1082
    :cond_57
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->needsPassthroughWorkarounds()Z

    move-result v3

    if-eqz v3, :cond_5e

    return-void

    .line 1088
    :cond_5e
    iget-wide v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastTimestampSampleTimeUs:J

    sub-long v3, v5, v3

    const-wide/32 v9, 0x7a120

    cmp-long v11, v3, v9

    if-ltz v11, :cond_1a1

    .line 1089
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->updateTimestamp()Z

    move-result v3

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTimestampSet:Z

    .line 1090
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTimestampSet:Z

    const-wide/32 v9, 0x4c4b40

    if-eqz v3, :cond_14d

    .line 1092
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v3

    div-long/2addr v3, v7

    .line 1093
    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v11

    .line 1094
    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->resumeSystemTimeUs:J

    cmp-long v16, v3, v14

    if-gez v16, :cond_8f

    .line 1096
    iput-boolean v13, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTimestampSet:Z

    goto/16 :goto_14d

    :cond_8f
    const/4 v14, 0x0

    sub-long v14, v3, v5

    .line 1097
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    cmp-long v16, v14, v9

    if-lez v16, :cond_ed

    .line 1099
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v1

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1102
    sget-boolean v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->failOnSpuriousAudioTimestamp:Z

    if-nez v2, :cond_e7

    const-string v2, "AudioTrack"

    .line 1105
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iput-boolean v13, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTimestampSet:Z

    goto :goto_14d

    .line 1103
    :cond_e7
    new-instance v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1107
    :cond_ed
    invoke-direct {v0, v11, v12}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesToDurationUs(J)J

    move-result-wide v14

    sub-long/2addr v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    cmp-long v16, v14, v9

    if-lez v16, :cond_14d

    .line 1110
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v1

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1113
    sget-boolean v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->failOnSpuriousAudioTimestamp:Z

    if-nez v2, :cond_147

    const-string v2, "AudioTrack"

    .line 1116
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iput-boolean v13, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTimestampSet:Z

    goto :goto_14d

    .line 1114
    :cond_147
    new-instance v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1120
    :cond_14d
    :goto_14d
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_19f

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInputPcm:Z

    if-eqz v1, :cond_19f

    const/4 v1, 0x0

    .line 1124
    :try_start_156
    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getLatencyMethod:Ljava/lang/reflect/Method;

    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    mul-long v2, v2, v7

    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSizeUs:J

    const/4 v4, 0x0

    sub-long/2addr v2, v7

    iput-wide v2, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->latencyUs:J

    .line 1127
    iget-wide v2, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->latencyUs:J

    const-wide/16 v7, 0x0

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->latencyUs:J

    .line 1129
    iget-wide v2, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->latencyUs:J

    cmp-long v4, v2, v9

    if-lez v4, :cond_19f

    const-string v2, "AudioTrack"

    .line 1130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring impossibly large audio latency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->latencyUs:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    .line 1131
    iput-wide v2, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->latencyUs:J
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_19c} :catch_19d

    goto :goto_19f

    .line 1135
    :catch_19d
    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getLatencyMethod:Ljava/lang/reflect/Method;

    .line 1138
    :cond_19f
    :goto_19f
    iput-wide v5, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastTimestampSampleTimeUs:J

    :cond_1a1
    return-void
.end method

.method private needsPassthroughWorkarounds()Z
    .registers 3

    .line 1180
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_12

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private overrideHasPendingData()Z
    .registers 3

    .line 1191
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->needsPassthroughWorkarounds()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 1192
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 1193
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method private processBuffers(J)V
    .registers 8

    .line 693
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v0, v0

    move v1, v0

    :goto_4
    if-ltz v1, :cond_40

    if-lez v1, :cond_f

    .line 696
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_18

    :cond_f
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    goto :goto_18

    :cond_16
    sget-object v2, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    :goto_18
    if-ne v1, v0, :cond_1e

    .line 699
    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    goto :goto_36

    .line 701
    :cond_1e
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aget-object v3, v3, v1

    .line 702
    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 703
    invoke-interface {v3}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 704
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 705
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_36

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 712
    :cond_36
    :goto_36
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3d

    return-void

    :cond_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_40
    return-void
.end method

.method private releaseKeepSessionIdAudioTrack()V
    .registers 3

    .line 1009
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_5

    return-void

    .line 1014
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    .line 1015
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 1016
    new-instance v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$2;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Landroid/media/AudioTrack;)V

    .line 1021
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$2;->start()V

    return-void
.end method

.method private resetAudioProcessors()V
    .registers 8

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getAvailableAudioProcessors()[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v2, :cond_20

    aget-object v5, v1, v4

    .line 493
    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isActive()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 494
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 496
    :cond_1a
    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    :goto_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 499
    :cond_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 500
    new-array v2, v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 501
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    :goto_32
    if-ge v3, v1, :cond_46

    .line 503
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aget-object v0, v0, v3

    .line 504
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    .line 505
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_46
    return-void
.end method

.method private resetSyncParams()V
    .registers 4

    const-wide/16 v0, 0x0

    .line 1167
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->smoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    .line 1168
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsetCount:I

    .line 1169
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->nextPlayheadOffsetIndex:I

    .line 1170
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastPlayheadSampleTimeUs:J

    .line 1171
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTimestampSet:Z

    .line 1172
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastTimestampSampleTimeUs:J

    return-void
.end method

.method private setVolumeInternal()V
    .registers 3

    .line 919
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1c

    .line 921
    :cond_7
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    .line 922
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setVolumeInternalV21(Landroid/media/AudioTrack;F)V

    goto :goto_1c

    .line 924
    :cond_15
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setVolumeInternalV3(Landroid/media/AudioTrack;F)V

    :goto_1c
    return-void
.end method

.method private static setVolumeInternalV21(Landroid/media/AudioTrack;F)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1329
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method private static setVolumeInternalV3(Landroid/media/AudioTrack;F)V
    .registers 2

    .line 1334
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private writeBuffer(Ljava/nio/ByteBuffer;J)V
    .registers 16

    .line 724
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 727
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eqz v0, :cond_1a

    .line 728
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-ne v0, p1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    goto :goto_3f

    .line 730
    :cond_1a
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 731
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v0, v2, :cond_3f

    .line 732
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 733
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    array-length v4, v4

    if-ge v4, v0, :cond_31

    .line 734
    :cond_2d
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    .line 736
    :cond_31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 737
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 738
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 739
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 742
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 744
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v4, v2, :cond_79

    .line 746
    iget-wide p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    .line 747
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v1

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputPcmFrameSize:I

    int-to-long v4, v4

    mul-long v1, v1, v4

    sub-long/2addr p2, v1

    long-to-int p2, p2

    .line 748
    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    sub-int/2addr p3, p2

    if-lez p3, :cond_9c

    .line 750
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 751
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    invoke-virtual {p3, v1, v2, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v3

    if-lez v3, :cond_9c

    .line 753
    iget p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 754
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_9c

    .line 757
    :cond_79
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v2, :cond_96

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v4

    if-eqz v2, :cond_87

    goto :goto_88

    :cond_87
    const/4 v1, 0x0

    .line 758
    :goto_88
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 759
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    move-object v6, p0

    move-object v8, p1

    move v9, v0

    move-wide v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v3

    goto :goto_9c

    .line 762
    :cond_96
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {p2, p1, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 765
    :cond_9c
    :goto_9c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    if-ltz v3, :cond_c0

    .line 771
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInputPcm:Z

    if-eqz p1, :cond_ae

    .line 772
    iget-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    int-to-long v1, v3

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    :cond_ae
    if-ne v3, v0, :cond_bf

    .line 775
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInputPcm:Z

    if-nez p1, :cond_bc

    .line 776
    iget-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    :cond_bc
    const/4 p1, 0x0

    .line 778
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    :cond_bf
    return-void

    .line 768
    :cond_c0
    new-instance p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;

    invoke-direct {p1, v3}, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;-><init>(I)V

    throw p1
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x1

    .line 1285
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method private writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .registers 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1296
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1b

    const/16 v0, 0x10

    .line 1297
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 1298
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1299
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const v1, 0x55550001

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1301
    :cond_1b
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    const/4 v1, 0x0

    if-nez v0, :cond_38

    .line 1302
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1303
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    const-wide/16 v3, 0x3e8

    mul-long p4, p4, v3

    invoke-virtual {v0, v2, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1304
    iget-object p4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1305
    iput p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 1307
    :cond_38
    iget-object p4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    if-lez p4, :cond_4f

    .line 1309
    iget-object p5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, p5, p4, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p5

    if-gez p5, :cond_4c

    .line 1311
    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    return p5

    :cond_4c
    if-ge p5, p4, :cond_4f

    return v1

    .line 1318
    :cond_4f
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gez p1, :cond_58

    .line 1320
    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    return p1

    .line 1323
    :cond_58
    iget p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    return p1
.end method


# virtual methods
.method public configure(IIII[III)V
    .registers 16
    .param p5    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 365
    iput p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputSampleRate:I

    .line 368
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isEncodingPcm(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInputPcm:Z

    .line 369
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->enableConvertHighResIntPcmToFloat:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    const/high16 v0, 0x40000000    # 2.0f

    .line 371
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isEncodingSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 372
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->isEncodingHighResolutionIntegerPcm(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->shouldConvertHighResIntPcmToFloat:Z

    .line 373
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInputPcm:Z

    if-eqz v0, :cond_2b

    .line 374
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pcmFrameSize:I

    .line 377
    :cond_2b
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInputPcm:Z

    const/4 v3, 0x4

    if-eqz v0, :cond_34

    if-eq p1, v3, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    if-eqz v0, :cond_3d

    .line 378
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->shouldConvertHighResIntPcmToFloat:Z

    if-nez v4, :cond_3d

    const/4 v4, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v4, 0x0

    :goto_3e
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->canApplyPlaybackParameters:Z

    if-eqz v0, :cond_7c

    .line 380
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    invoke-virtual {v4, p6, p7}, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->setTrimSampleCount(II)V

    .line 381
    iget-object p6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    invoke-virtual {p6, p5}, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->setChannelMap([I)V

    .line 382
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getAvailableAudioProcessors()[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-result-object p5

    array-length p6, p5

    move v4, p1

    move p7, p3

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_55
    if-ge p1, p6, :cond_7a

    aget-object v5, p5, p1

    .line 384
    :try_start_59
    invoke-interface {v5, p7, p2, v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->configure(III)Z

    move-result v6
    :try_end_5d
    .catch Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException; {:try_start_59 .. :try_end_5d} :catch_73

    or-int/2addr p3, v6

    .line 388
    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isActive()Z

    move-result v6

    if-eqz v6, :cond_70

    .line 389
    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutputChannelCount()I

    move-result p2

    .line 390
    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutputSampleRateHz()I

    move-result p7

    .line 391
    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutputEncoding()I

    move-result v4

    :cond_70
    add-int/lit8 p1, p1, 0x1

    goto :goto_55

    :catch_73
    move-exception p1

    .line 386
    new-instance p2, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_7a
    move p1, v4

    goto :goto_7e

    :cond_7c
    move p7, p3

    const/4 p3, 0x0

    :goto_7e
    const/16 p5, 0xfc

    const/16 p6, 0xc

    packed-switch p2, :pswitch_data_190

    .line 423
    new-instance p1, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported channel count: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 420
    :pswitch_9c
    sget v3, Lcom/google/android/exoplayer2/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    goto :goto_b0

    :pswitch_9f
    const/16 v3, 0x4fc

    goto :goto_b0

    :pswitch_a2
    const/16 v3, 0xfc

    goto :goto_b0

    :pswitch_a5
    const/16 v3, 0xdc

    goto :goto_b0

    :pswitch_a8
    const/16 v3, 0xcc

    goto :goto_b0

    :pswitch_ab
    const/16 v3, 0x1c

    goto :goto_b0

    :pswitch_ae
    const/16 v3, 0xc

    .line 427
    :goto_b0
    :pswitch_b0
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v5, 0x17

    const/4 v6, 0x7

    const/4 v7, 0x5

    if-gt v4, v5, :cond_d7

    const-string v4, "foster"

    sget-object v5, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d7

    const-string v4, "NVIDIA"

    sget-object v5, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d7

    const/4 v4, 0x3

    if-eq p2, v4, :cond_d8

    if-eq p2, v7, :cond_d8

    if-eq p2, v6, :cond_d4

    goto :goto_d7

    .line 430
    :cond_d4
    sget p5, Lcom/google/android/exoplayer2/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    goto :goto_d8

    :cond_d7
    :goto_d7
    move p5, v3

    .line 443
    :cond_d8
    :goto_d8
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x19

    if-gt v3, v4, :cond_f0

    const-string v3, "fugu"

    sget-object v4, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInputPcm:Z

    if-nez v3, :cond_f0

    if-ne p2, v1, :cond_f0

    const/16 p5, 0xc

    :cond_f0
    if-nez p3, :cond_105

    .line 447
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result p3

    if-eqz p3, :cond_105

    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    if-ne p3, p1, :cond_105

    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sampleRate:I

    if-ne p3, p7, :cond_105

    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelConfig:I

    if-ne p3, p5, :cond_105

    return-void

    .line 453
    :cond_105
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->reset()V

    .line 455
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->processingEnabled:Z

    .line 456
    iput p7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sampleRate:I

    .line 457
    iput p5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelConfig:I

    .line 458
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    .line 459
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInputPcm:Z

    if-eqz p1, :cond_11c

    .line 460
    iget p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputPcmFrameSize:I

    :cond_11c
    if-eqz p4, :cond_121

    .line 463
    iput p4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    goto :goto_178

    .line 464
    :cond_121
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInputPcm:Z

    if-eqz p1, :cond_15a

    .line 465
    iget p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    invoke-static {p7, p5, p1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_12f

    goto :goto_130

    :cond_12f
    const/4 v1, 0x0

    .line 466
    :goto_130
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    mul-int/lit8 p2, p1, 0x4

    const-wide/32 p3, 0x3d090

    .line 468
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->durationUsToFrames(J)J

    move-result-wide p3

    long-to-int p3, p3

    iget p4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputPcmFrameSize:I

    mul-int p3, p3, p4

    int-to-long p4, p1

    const-wide/32 p6, 0xb71b0

    .line 470
    invoke-direct {p0, p6, p7}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->durationUsToFrames(J)J

    move-result-wide p6

    iget p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputPcmFrameSize:I

    int-to-long v0, p1

    mul-long p6, p6, v0

    .line 469
    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    long-to-int p1, p4

    .line 471
    invoke-static {p2, p3, p1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    goto :goto_178

    .line 475
    :cond_15a
    iget p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    if-eq p1, v7, :cond_174

    iget p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_164

    goto :goto_174

    .line 478
    :cond_164
    iget p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    if-ne p1, v6, :cond_16e

    const p1, 0xc000

    .line 480
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    goto :goto_178

    :cond_16e
    const p1, 0x48000

    .line 483
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    goto :goto_178

    :cond_174
    :goto_174
    const/16 p1, 0x5000

    .line 477
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    .line 486
    :goto_178
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInputPcm:Z

    if-eqz p1, :cond_187

    iget p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    iget p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputPcmFrameSize:I

    div-int/2addr p1, p2

    int-to-long p1, p1

    .line 487
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesToDurationUs(J)J

    move-result-wide p1

    goto :goto_18c

    :cond_187
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_18c
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSizeUs:J

    return-void

    nop

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
    .end packed-switch
.end method

.method public disableTunneling()V
    .registers 2

    .line 903
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 904
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    .line 905
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 906
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->reset()V

    :cond_c
    return-void
.end method

.method public enableTunnelingV21(I)V
    .registers 5

    .line 893
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 894
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v0, p1, :cond_1c

    .line 895
    :cond_15
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    .line 896
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 897
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->reset()V

    :cond_1c
    return-void
.end method

.method public getCurrentPositionUs(Z)J
    .registers 8

    .line 323
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasCurrentPositionUs()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 327
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 328
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->maybeSampleSyncParams()V

    .line 333
    :cond_15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 335
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTimestampSet:Z

    if-eqz v4, :cond_38

    .line 337
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 338
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->durationUsToFrames(J)J

    move-result-wide v0

    .line 339
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 340
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesToDurationUs(J)J

    move-result-wide v0

    goto :goto_4b

    .line 342
    :cond_38
    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsetCount:I

    if-nez v2, :cond_43

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getPositionUs()J

    move-result-wide v0

    goto :goto_46

    .line 349
    :cond_43
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->smoothedPlayheadOffsetUs:J

    add-long/2addr v0, v2

    :goto_46
    if-nez p1, :cond_4b

    .line 352
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->latencyUs:J

    sub-long/2addr v0, v2

    .line 356
    :cond_4b
    :goto_4b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesToDurationUs(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 357
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->applySpeedup(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 2

    .line 866
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;J)Z
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 572
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_13

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-ne v1, v4, :cond_11

    goto :goto_13

    :cond_11
    const/4 v4, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v4, 0x1

    :goto_14
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 573
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_27

    .line 574
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->initialize()V

    .line 575
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    if-eqz v4, :cond_27

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->play()V

    .line 580
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->needsPassthroughWorkarounds()Z

    move-result v4

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    if-eqz v4, :cond_4e

    .line 583
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v9, :cond_3b

    .line 585
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasData:Z

    return v5

    .line 592
    :cond_3b
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v6, :cond_4e

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    .line 593
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v10

    cmp-long v4, v10, v7

    if-eqz v4, :cond_4e

    return v5

    .line 598
    :cond_4e
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasData:Z

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v10

    iput-boolean v10, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasData:Z

    if-eqz v4, :cond_7d

    .line 600
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasData:Z

    if-nez v4, :cond_7d

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-eq v4, v6, :cond_7d

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz v4, :cond_7d

    .line 601
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    sub-long v18, v10, v12

    .line 602
    iget-object v14, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    iget v15, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    iget-wide v10, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSizeUs:J

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v16

    invoke-interface/range {v14 .. v19}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onUnderrun(IJJ)V

    .line 605
    :cond_7d
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    if-nez v4, :cond_14e

    .line 607
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_89

    return v6

    .line 612
    :cond_89
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInputPcm:Z

    if-nez v4, :cond_9e

    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v4, :cond_9e

    .line 614
    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v4

    iput v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    .line 615
    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v4, :cond_9e

    return v6

    .line 624
    :cond_9e
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    if-eqz v4, :cond_cb

    .line 625
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainAudioProcessorsToEndOfStream()Z

    move-result v4

    if-nez v4, :cond_a9

    return v5

    .line 630
    :cond_a9
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    new-instance v15, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    iget-object v12, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 631
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 632
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesToDurationUs(J)J

    move-result-wide v5

    const/16 v17, 0x0

    move-object v11, v15

    move-object v9, v15

    move-wide v15, v5

    invoke-direct/range {v11 .. v17}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;-><init>(Lcom/google/android/exoplayer2/PlaybackParameters;JJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    .line 630
    invoke-virtual {v4, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 633
    iput-object v10, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 636
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->resetAudioProcessors()V

    .line 639
    :cond_cb
    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    if-nez v4, :cond_d9

    .line 640
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    const/4 v4, 0x1

    .line 641
    iput v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    goto :goto_135

    :cond_d9
    const/4 v4, 0x1

    .line 644
    iget-wide v5, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 645
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputFramesToDurationUs(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 646
    iget v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    if-ne v7, v4, :cond_11d

    sub-long v7, v5, v2

    .line 647
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v11, 0x30d40

    cmp-long v4, v7, v11

    if-lez v4, :cond_11d

    const-string v4, "AudioTrack"

    .line 648
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Discontinuity detected [expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    .line 650
    iput v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    goto :goto_11e

    :cond_11d
    const/4 v4, 0x2

    .line 652
    :goto_11e
    iget v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    if-ne v7, v4, :cond_135

    .line 655
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    sub-long v5, v2, v5

    add-long/2addr v7, v5

    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    const/4 v4, 0x1

    .line 656
    iput v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    .line 657
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz v4, :cond_135

    .line 658
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onPositionDiscontinuity()V

    .line 663
    :cond_135
    :goto_135
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInputPcm:Z

    if-eqz v4, :cond_144

    .line 664
    iget-wide v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedPcmBytes:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedPcmBytes:J

    goto :goto_14c

    .line 666
    :cond_144
    iget-wide v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedEncodedFrames:J

    iget v6, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 669
    :goto_14c
    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 672
    :cond_14e
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->processingEnabled:Z

    if-eqz v1, :cond_156

    .line 673
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->processBuffers(J)V

    goto :goto_15b

    .line 675
    :cond_156
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    .line 678
    :goto_15b
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_167

    .line 679
    iput-object v10, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    return v1

    :cond_167
    const/4 v1, 0x1

    .line 683
    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->needsReset(J)Z

    move-result v2

    if-eqz v2, :cond_17f

    const-string v2, "AudioTrack"

    const-string v3, "Resetting stalled audio track"

    .line 684
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->reset()V

    return v1

    :cond_17f
    const/4 v1, 0x0

    return v1
.end method

.method public handleDiscontinuity()V
    .registers 3

    .line 563
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x2

    .line 564
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    :cond_8
    return-void
.end method

.method public hasPendingData()Z
    .registers 6

    .line 833
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 834
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1a

    .line 835
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->overrideHasPendingData()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public isEncodingSupported(I)Z
    .registers 5

    .line 311
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isEncodingPcm(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    const/4 v0, 0x4

    if-ne p1, v0, :cond_11

    .line 315
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_12

    :cond_11
    const/4 v1, 0x1

    :cond_12
    return v1

    .line 317
    :cond_13
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public isEnded()Z
    .registers 2

    .line 828
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 930
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    .line 931
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 932
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->resetSyncParams()V

    .line 933
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->pause()V

    :cond_11
    return-void
.end method

.method public play()V
    .registers 5

    const/4 v0, 0x1

    .line 553
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    .line 554
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 555
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->resumeSystemTimeUs:J

    .line 556
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_17
    return-void
.end method

.method public playToEndOfStream()V
    .registers 4

    .line 784
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_21

    .line 788
    :cond_b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainAudioProcessorsToEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 790
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->handleEndOfStream(J)V

    const/4 v0, 0x0

    .line 791
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    const/4 v0, 0x1

    .line 792
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->handledEndOfStream:Z

    :cond_20
    return-void

    :cond_21
    :goto_21
    return-void
.end method

.method public release()V
    .registers 6

    .line 993
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->reset()V

    .line 994
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releaseKeepSessionIdAudioTrack()V

    .line 995
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_15

    aget-object v4, v0, v3

    .line 996
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 998
    :cond_15
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_23

    aget-object v4, v0, v3

    .line 999
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1001
    :cond_23
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 1002
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    return-void
.end method

.method public reset()V
    .registers 8

    .line 939
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_8e

    const-wide/16 v0, 0x0

    .line 940
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedPcmBytes:J

    .line 941
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 942
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    .line 943
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    const/4 v2, 0x0

    .line 944
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    .line 945
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    const/4 v4, 0x0

    if-eqz v3, :cond_1f

    .line 946
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 947
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    goto :goto_35

    .line 948
    :cond_1f
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35

    .line 949
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    invoke-static {v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$200(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 951
    :cond_35
    :goto_35
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 952
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    .line 953
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    .line 954
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 955
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 956
    :goto_43
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v5, v5

    if-ge v3, v5, :cond_5a

    .line 957
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aget-object v5, v5, v3

    .line 958
    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    .line 959
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 961
    :cond_5a
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->handledEndOfStream:Z

    const/4 v3, -0x1

    .line 962
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    .line 963
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 964
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 965
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    .line 966
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->latencyUs:J

    .line 967
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->resetSyncParams()V

    .line 968
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_78

    .line 970
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 973
    :cond_78
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 974
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 975
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 976
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 977
    new-instance v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Landroid/media/AudioTrack;)V

    .line 987
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;->start()V

    :cond_8e
    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 3

    .line 871
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 874
    :cond_9
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 875
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-eqz p1, :cond_10

    return-void

    .line 879
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->reset()V

    const/4 p1, 0x0

    .line 880
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    return-void
.end method

.method public setAudioSessionId(I)V
    .registers 3

    .line 885
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v0, p1, :cond_9

    .line 886
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 887
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->reset()V

    :cond_9
    return-void
.end method

.method public setListener(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 5

    .line 840
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->canApplyPlaybackParameters:Z

    if-nez v0, :cond_11

    .line 841
    sget-object p1, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 842
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object p1

    .line 844
    :cond_11
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    iget v2, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 845
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->setSpeed(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    .line 846
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->setPitch(F)F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    .line 847
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    goto :goto_44

    :cond_2d
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 849
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_42

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 850
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$200(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    goto :goto_44

    :cond_42
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 852
    :goto_44
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_55

    .line 853
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 856
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    goto :goto_55

    .line 858
    :cond_53
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 861
    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object p1
.end method

.method public setVolume(F)V
    .registers 3

    .line 912
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 913
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    .line 914
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setVolumeInternal()V

    :cond_b
    return-void
.end method

###### Class com.google.android.exoplayer2.audio.DefaultAudioSink.AnonymousClass1 (com.google.android.exoplayer2.audio.DefaultAudioSink$1)
.class Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;
.super Ljava/lang/Thread;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

.field final synthetic val$toRelease:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Landroid/media/AudioTrack;)V
    .registers 3

    .line 977
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;->val$toRelease:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 981
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;->val$toRelease:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 982
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;->val$toRelease:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_14

    .line 984
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$300(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$300(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method

###### Class com.google.android.exoplayer2.audio.DefaultAudioSink.AnonymousClass2 (com.google.android.exoplayer2.audio.DefaultAudioSink$2)
.class Lcom/google/android/exoplayer2/audio/DefaultAudioSink$2;
.super Ljava/lang/Thread;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releaseKeepSessionIdAudioTrack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

.field final synthetic val$toRelease:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Landroid/media/AudioTrack;)V
    .registers 3

    .line 1016
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$2;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$2;->val$toRelease:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1019
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$2;->val$toRelease:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    return-void
.end method

###### Class com.google.android.exoplayer2.audio.DefaultAudioSink.AudioTrackUtil (com.google.android.exoplayer2.audio.DefaultAudioSink$AudioTrackUtil)
.class Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioTrackUtil"
.end annotation


# static fields
.field private static final FORCE_RESET_WORKAROUND_TIMEOUT_MS:J = 0xc8L


# instance fields
.field protected audioTrack:Landroid/media/AudioTrack;

.field private endPlaybackHeadPosition:J

.field private forceResetWorkaroundTimeMs:J

.field private lastRawPlaybackHeadPosition:J

.field private needsPassthroughWorkaround:Z

.field private passthroughWorkaroundPauseOffset:J

.field private rawPlaybackHeadWrapCount:J

.field private sampleRate:I

.field private stopPlaybackHeadPosition:J

.field private stopTimestampUs:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V
    .registers 2

    .line 1340
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaybackHeadPosition()J
    .registers 11

    .line 1422
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_29

    .line 1424
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopTimestampUs:J

    sub-long/2addr v0, v2

    .line 1425
    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->sampleRate:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 1426
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->endPlaybackHeadPosition:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopPlaybackHeadPosition:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 1429
    :cond_29
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    if-ne v0, v1, :cond_35

    return-wide v4

    :cond_35
    const-wide v6, 0xffffffffL

    .line 1435
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    int-to-long v8, v1

    and-long/2addr v6, v8

    .line 1436
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->needsPassthroughWorkaround:Z

    if-eqz v1, :cond_54

    const/4 v1, 0x2

    if-ne v0, v1, :cond_51

    cmp-long v1, v6, v4

    if-nez v1, :cond_51

    .line 1441
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    iput-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    .line 1443
    :cond_51
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    add-long/2addr v6, v8

    .line 1446
    :cond_54
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v8, 0x1a

    if-gt v1, v8, :cond_78

    cmp-long v1, v6, v4

    if-nez v1, :cond_76

    .line 1447
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    cmp-long v1, v8, v4

    if-lez v1, :cond_76

    const/4 v1, 0x3

    if-ne v0, v1, :cond_76

    .line 1454
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_73

    .line 1455
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    .line 1457
    :cond_73
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    return-wide v0

    .line 1459
    :cond_76
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    .line 1463
    :cond_78
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    cmp-long v2, v0, v6

    if-lez v2, :cond_85

    .line 1465
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    .line 1467
    :cond_85
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    .line 1468
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v6, v0

    return-wide v6
.end method

.method public getPositionUs()J
    .registers 5

    .line 1475
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimestampFramePosition()J
    .registers 2

    .line 1515
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTimestampNanoTime()J
    .registers 2

    .line 1499
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public handleEndOfStream(J)V
    .registers 7

    .line 1384
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopPlaybackHeadPosition:J

    .line 1385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopTimestampUs:J

    .line 1386
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->endPlaybackHeadPosition:J

    .line 1387
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method

.method public needsReset(J)Z
    .registers 8

    .line 1408
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_20

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_20

    .line 1409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method

.method public pause()V
    .registers 6

    .line 1395
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    return-void

    .line 1399
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method public reconfigure(Landroid/media/AudioTrack;Z)V
    .registers 5

    .line 1364
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    .line 1365
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->needsPassthroughWorkaround:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1366
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopTimestampUs:J

    .line 1367
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    const-wide/16 v0, 0x0

    .line 1368
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    .line 1369
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    .line 1370
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    if-eqz p1, :cond_1d

    .line 1372
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->sampleRate:I

    :cond_1d
    return-void
.end method

.method public updateTimestamp()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.google.android.exoplayer2.audio.DefaultAudioSink.AudioTrackUtilV19 (com.google.android.exoplayer2.audio.DefaultAudioSink$AudioTrackUtilV19)
.class Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;
.super Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;
.source "DefaultAudioSink.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioTrackUtilV19"
.end annotation


# instance fields
.field private final audioTimestamp:Landroid/media/AudioTimestamp;

.field private lastRawTimestampFramePosition:J

.field private lastTimestampFramePosition:J

.field private rawTimestampFramePositionWrapCount:J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1529
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    .line 1530
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    return-void
.end method


# virtual methods
.method public getTimestampFramePosition()J
    .registers 3

    .line 1563
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;->lastTimestampFramePosition:J

    return-wide v0
.end method

.method public getTimestampNanoTime()J
    .registers 3

    .line 1558
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    return-wide v0
.end method

.method public reconfigure(Landroid/media/AudioTrack;Z)V
    .registers 3

    .line 1535
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    const-wide/16 p1, 0x0

    .line 1536
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;->rawTimestampFramePositionWrapCount:J

    .line 1537
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;->lastRawTimestampFramePosition:J

    .line 1538
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;->lastTimestampFramePosition:J

    return-void
.end method

.method public updateTimestamp()Z
    .registers 8

    .line 1543
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1545
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v1, v1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 1546
    iget-wide v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;->lastRawTimestampFramePosition:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_1b

    .line 1548
    iget-wide v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;->rawTimestampFramePositionWrapCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;->rawTimestampFramePositionWrapCount:J

    .line 1550
    :cond_1b
    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;->lastRawTimestampFramePosition:J

    .line 1551
    iget-wide v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;->rawTimestampFramePositionWrapCount:J

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;->lastTimestampFramePosition:J

    :cond_25
    return v0
.end method

###### Class com.google.android.exoplayer2.audio.DefaultAudioSink.InvalidAudioTrackTimestampException (com.google.android.exoplayer2.audio.DefaultAudioSink$InvalidAudioTrackTimestampException)
.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;
.super Ljava/lang/RuntimeException;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvalidAudioTrackTimestampException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.audio.DefaultAudioSink.PlaybackParametersCheckpoint (com.google.android.exoplayer2.audio.DefaultAudioSink$PlaybackParametersCheckpoint)
.class final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackParametersCheckpoint"
.end annotation


# instance fields
.field private final mediaTimeUs:J

.field private final playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private final positionUs:J


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/PlaybackParameters;JJ)V
    .registers 6

    .line 1578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1580
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->mediaTimeUs:J

    .line 1581
    iput-wide p4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->positionUs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/PlaybackParameters;JJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V
    .registers 7

    .line 1571
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;-><init>(Lcom/google/android/exoplayer2/PlaybackParameters;JJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 1

    .line 1571
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)J
    .registers 3

    .line 1571
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->positionUs:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)J
    .registers 3

    .line 1571
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->mediaTimeUs:J

    return-wide v0
.end method
