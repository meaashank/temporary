###### Class com.google.android.exoplayer2.source.ExtractorMediaPeriod (com.google.android.exoplayer2.source.ExtractorMediaPeriod)
.class final Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod;",
        "Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LAST_SAMPLE_DURATION_US:J = 0x2710L


# instance fields
.field private actualMinLoadableRetryCount:I

.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final continueLoadingCheckIntervalBytes:J

.field private final customCacheKey:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private durationUs:J

.field private enabledTrackCount:I

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private extractedSamplesCountAtStartOfLoad:I

.field private final extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoTracks:Z

.field private lastSeekPositionUs:J

.field private length:J

.field private final listener:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;

.field private final loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private final loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final minLoadableRetryCount:I

.field private notifyDiscontinuity:Z

.field private final onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

.field private pendingDeferredRetry:Z

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private released:Z

.field private sampleQueueTrackIds:[I

.field private sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

.field private sampleQueuesBuilt:Z

.field private seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

.field private seenFirstTrackSelection:Z

.field private trackEnabledStates:[Z

.field private trackFormatNotificationSent:[Z

.field private trackIsAudioVideoFlags:[Z

.field private tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;[Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V
    .registers 10
    .param p8    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->uri:Landroid/net/Uri;

    .line 144
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 145
    iput p4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->minLoadableRetryCount:I

    .line 146
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 147
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;

    .line 148
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 149
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->customCacheKey:Ljava/lang/String;

    int-to-long p1, p9

    .line 150
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->continueLoadingCheckIntervalBytes:J

    .line 151
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:ExtractorMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 152
    new-instance p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-direct {p1, p3, p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;-><init>([Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    .line 153
    new-instance p1, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 154
    new-instance p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$1;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$1;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 160
    new-instance p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    .line 168
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 169
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    .line 170
    new-array p1, p1, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 171
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    const-wide/16 p5, -0x1

    .line 172
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->length:J

    .line 173
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    const/4 p1, -0x1

    if-ne p4, p1, :cond_5a

    const/4 p4, 0x3

    .line 175
    :cond_5a
    iput p4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepare()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Z
    .registers 1

    .line 53
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/Runnable;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Landroid/os/Handler;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->customCacheKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->continueLoadingCheckIntervalBytes:J

    return-wide v0
.end method

.method private configureRetry(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;I)Z
    .registers 9

    .line 673
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_46

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 674
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1d

    goto :goto_46

    .line 679
    :cond_1d
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2b

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->suppressRead()Z

    move-result p2

    if-nez p2, :cond_2b

    .line 689
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    return v0

    .line 696
    :cond_2b
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    const-wide/16 v3, 0x0

    .line 697
    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    .line 698
    iput v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 699
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, p2

    :goto_38
    if-ge v0, v1, :cond_42

    aget-object v5, p2, v0

    .line 700
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 702
    :cond_42
    invoke-virtual {p1, v3, v4, v3, v4}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    return v2

    .line 677
    :cond_46
    :goto_46
    iput p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    return v2
.end method

.method private copyLengthFromLoader(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V
    .registers 7

    .line 630
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    .line 631
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$700(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->length:J

    :cond_e
    return-void
.end method

.method private getExtractedSamplesCount()I
    .registers 6

    .line 733
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v2, v1, :cond_11

    aget-object v4, v0, v2

    .line 734
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getWriteIndex()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    return v3
.end method

.method private getLargestQueuedTimestampUs()J
    .registers 8

    .line 741
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_15

    aget-object v5, v0, v4

    .line 743
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v5

    .line 742
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_15
    return-wide v2
.end method

.method private static isLoadableExceptionFatal(Ljava/io/IOException;)Z
    .registers 1

    .line 753
    instance-of p0, p0, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    return p0
.end method

.method private isPendingReset()Z
    .registers 6

    .line 749
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private maybeFinishPrepare()V
    .registers 9

    .line 596
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    if-nez v0, :cond_b1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-nez v0, :cond_b1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    if-eqz v0, :cond_b1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueuesBuilt:Z

    if-nez v0, :cond_12

    goto/16 :goto_b1

    .line 599
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_25

    aget-object v4, v0, v3

    .line 600
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    if-nez v4, :cond_22

    return-void

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 604
    :cond_25
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 605
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    .line 606
    new-array v1, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 607
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    .line 608
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    .line 609
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackFormatNotificationSent:[Z

    .line 610
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    const/4 v3, 0x0

    :goto_44
    const/4 v4, 0x1

    if-ge v3, v0, :cond_76

    .line 612
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 613
    new-instance v6, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v7, v4, [Lcom/google/android/exoplayer2/Format;

    aput-object v5, v7, v2

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v6, v1, v3

    .line 614
    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 615
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6a

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_69

    goto :goto_6a

    :cond_69
    const/4 v4, 0x0

    .line 616
    :cond_6a
    :goto_6a
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aput-boolean v4, v5, v3

    .line 617
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 619
    :cond_76
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 620
    iget v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->minLoadableRetryCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9c

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_9c

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 621
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v2

    if-nez v5, :cond_9c

    const/4 v0, 0x6

    .line 622
    iput v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    .line 624
    :cond_9c
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    .line 625
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;->onSourceInfoRefreshed(JZ)V

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void

    :cond_b1
    :goto_b1
    return-void
.end method

.method private maybeNotifyTrackFormat(I)V
    .registers 11

    .line 439
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackFormatNotificationSent:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_25

    .line 440
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 441
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v0, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 442
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    .line 441
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 447
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackFormatNotificationSent:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    :cond_25
    return-void
.end method

.method private maybeStartDeferredRetry(I)V
    .registers 5

    .line 452
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p1, v0, p1

    .line 454
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_36

    :cond_15
    const-wide/16 v0, 0x0

    .line 457
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    const/4 p1, 0x0

    .line 458
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    const/4 v2, 0x1

    .line 459
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    .line 460
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    .line 461
    iput p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 462
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    :goto_26
    if-ge p1, v1, :cond_30

    aget-object v2, v0, p1

    .line 463
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_26

    .line 465
    :cond_30
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void

    :cond_36
    :goto_36
    return-void
.end method

.method private seekInsideBufferUs(J)Z
    .registers 9

    .line 714
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x1

    if-ge v2, v0, :cond_28

    .line 716
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v4, v4, v2

    .line 717
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 718
    invoke-virtual {v4, p1, p2, v3, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_17

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    if-nez v3, :cond_25

    .line 724
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_24

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    if-nez v3, :cond_25

    :cond_24
    return v1

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_28
    return v3
.end method

.method private startLoading()V
    .registers 22

    move-object/from16 v6, p0

    .line 636
    new-instance v7, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    iget-object v2, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->uri:Landroid/net/Uri;

    iget-object v3, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v4, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iget-object v5, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;Lcom/google/android/exoplayer2/util/ConditionVariable;)V

    .line 638
    iget-boolean v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz v0, :cond_49

    .line 639
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 640
    iget-wide v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_36

    iget-wide v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    iget-wide v4, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    cmp-long v8, v0, v4

    if-ltz v8, :cond_36

    const/4 v0, 0x1

    .line 641
    iput-boolean v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    .line 642
    iput-wide v2, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    return-void

    .line 645
    :cond_36
    iget-object v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    iget-wide v4, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 646
    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;->position:J

    iget-wide v4, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 645
    invoke-virtual {v7, v0, v1, v4, v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    .line 647
    iput-wide v2, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 649
    :cond_49
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iput v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 650
    iget-object v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget v1, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    invoke-virtual {v0, v7, v6, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v19

    .line 651
    iget-object v8, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 652
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$400(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 658
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$500(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v15

    iget-wide v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    move-wide/from16 v17, v0

    .line 651
    invoke-virtual/range {v8 .. v20}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method private suppressRead()Z
    .registers 2

    .line 469
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 3

    .line 304
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-nez p1, :cond_24

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    if-nez p1, :cond_24

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz p1, :cond_11

    iget p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-nez p1, :cond_11

    goto :goto_24

    .line 307
    :cond_11
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    move-result p1

    .line 308
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p2

    if-nez p2, :cond_23

    .line 309
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->startLoading()V

    const/4 p1, 0x1

    :cond_23
    return p1

    :cond_24
    :goto_24
    const/4 p1, 0x0

    return p1
.end method

.method public discardBuffer(JZ)V
    .registers 8

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_14

    .line 293
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

.method public endTracks()V
    .registers 3

    const/4 v0, 0x1

    .line 576
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueuesBuilt:Z

    .line 577
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .registers 13

    .line 381
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_b

    const-wide/16 p1, 0x0

    return-wide p1

    .line 385
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    .line 386
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->second:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/util/Util;->resolveSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 9

    .line 332
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_7

    return-wide v1

    .line 334
    :cond_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 335
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    return-wide v0

    .line 338
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    if-eqz v0, :cond_34

    const-wide v3, 0x7fffffffffffffffL

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v0, :cond_38

    .line 343
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_31

    .line 344
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v6, v6, v5

    .line 345
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v6

    .line 344
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 349
    :cond_34
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v3

    :cond_38
    cmp-long v0, v3, v1

    if-nez v0, :cond_3e

    .line 351
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    :cond_3e
    return-wide v3
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 317
    iget v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_7

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method isReady(I)Z
    .registers 3

    .line 393
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->suppressRead()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result p1

    if-eqz p1, :cond_16

    :cond_14
    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method maybeThrowError()V
    .registers 3

    .line 397
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->actualMinLoadableRetryCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError(I)V

    return-void
.end method

.method public maybeThrowPrepareError()V
    .registers 1

    .line 211
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeThrowError()V

    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJZ)V
    .registers 25

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    .line 503
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 504
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$400(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v2

    .line 510
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$500(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    .line 514
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$600(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v16

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 503
    invoke-virtual/range {v1 .. v17}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_3a

    .line 516
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    .line 517
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v2, :cond_31

    aget-object v4, v1, v3

    .line 518
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 520
    :cond_31
    iget v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-lez v1, :cond_3a

    .line 521
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_3a
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .registers 7

    .line 53
    check-cast p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->onLoadCanceled(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJ)V
    .registers 28

    move-object/from16 v0, p0

    .line 477
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_2c

    .line 478
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_1a

    const-wide/16 v1, 0x0

    goto :goto_1d

    :cond_1a
    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    .line 479
    :goto_1d
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    .line 481
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;->onSourceInfoRefreshed(JZ)V

    .line 483
    :cond_2c
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 484
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$400(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 490
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$500(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v12

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    .line 494
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$600(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v20

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    .line 483
    invoke-virtual/range {v5 .. v21}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 495
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    const/4 v1, 0x1

    .line 496
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    .line 497
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .registers 6

    .line 53
    check-cast p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->onLoadCompleted(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJ)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;)I
    .registers 28

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v18, p6

    .line 529
    invoke-static/range {p6 .. p6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->isLoadableExceptionFatal(Ljava/io/IOException;)Z

    move-result v20

    move/from16 v19, v20

    .line 530
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 531
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$400(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v2

    .line 537
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$500(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    .line 541
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$600(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v16

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 530
    invoke-virtual/range {v1 .. v19}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 544
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    if-eqz v20, :cond_2d

    const/4 v1, 0x3

    return v1

    .line 548
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v1

    .line 549
    iget v2, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_3b

    move-object/from16 v2, p1

    const/4 v5, 0x1

    goto :goto_3e

    :cond_3b
    move-object/from16 v2, p1

    const/4 v5, 0x0

    .line 550
    :goto_3e
    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->configureRetry(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;I)Z

    move-result v1

    if-eqz v1, :cond_48

    if-eqz v5, :cond_49

    const/4 v3, 0x1

    goto :goto_49

    :cond_48
    const/4 v3, 0x2

    :cond_49
    :goto_49
    return v3
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .registers 7

    .line 53
    check-cast p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->onLoadError(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public onLoaderReleased()V
    .registers 5

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 197
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 199
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->release()V

    return-void
.end method

.method public onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .registers 3

    .line 590
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .registers 4

    .line 204
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 205
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 206
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->startLoading()V

    return-void
.end method

.method readData(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .registers 14

    .line 402
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->suppressRead()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_8

    return v1

    .line 405
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v0, p1

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 406
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/SampleQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_1e

    .line 409
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeNotifyTrackFormat(I)V

    goto :goto_23

    :cond_1e
    if-ne p2, v1, :cond_23

    .line 411
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeStartDeferredRetry(I)V

    :cond_23
    :goto_23
    return p2
.end method

.method public readDiscontinuity()J
    .registers 3

    .line 322
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_10

    .line 323
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v0, v1, :cond_16

    :cond_10
    const/4 v0, 0x0

    .line 324
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    .line 325
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    return-wide v0

    :cond_16
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .registers 3

    return-void
.end method

.method public release()V
    .registers 5

    .line 182
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz v0, :cond_12

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 186
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 189
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    return-void
.end method

.method public seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .registers 3

    .line 582
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 583
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public seekToUs(J)J
    .registers 7

    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const-wide/16 p1, 0x0

    .line 359
    :goto_b
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    .line 362
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekInsideBufferUs(J)Z

    move-result v1

    if-eqz v1, :cond_1d

    return-wide p1

    .line 366
    :cond_1d
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    .line 367
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 368
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    .line 369
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 370
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_3e

    .line 372
    :cond_31
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v1

    :goto_34
    if-ge v0, v2, :cond_3e

    aget-object v3, v1, v0

    .line 373
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_3e
    :goto_3e
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .registers 13

    .line 222
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 223
    iget v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 225
    :goto_9
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_37

    .line 226
    aget-object v3, p3, v2

    if-eqz v3, :cond_34

    aget-object v3, p1, v2

    if-eqz v3, :cond_19

    aget-boolean v3, p2, v2

    if-nez v3, :cond_34

    .line 227
    :cond_19
    aget-object v3, p3, v2

    check-cast v3, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;

    invoke-static {v3}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->access$300(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;)I

    move-result v3

    .line 228
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v5, v5, v3

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 229
    iget v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    .line 230
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aput-boolean v1, v4, v3

    const/4 v3, 0x0

    .line 231
    aput-object v3, p3, v2

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 236
    :cond_37
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz p2, :cond_41

    if-nez v0, :cond_3f

    :goto_3d
    const/4 p2, 0x1

    goto :goto_48

    :cond_3f
    const/4 p2, 0x0

    goto :goto_48

    :cond_41
    const-wide/16 v2, 0x0

    cmp-long p2, p5, v2

    if-eqz p2, :cond_3f

    goto :goto_3d

    :goto_48
    move v0, p2

    const/4 p2, 0x0

    .line 238
    :goto_4a
    array-length v2, p1

    if-ge p2, v2, :cond_af

    .line 239
    aget-object v2, p3, p2

    if-nez v2, :cond_ac

    aget-object v2, p1, p2

    if-eqz v2, :cond_ac

    .line 240
    aget-object v2, p1, p2

    .line 241
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v3

    if-ne v3, v4, :cond_5f

    const/4 v3, 0x1

    goto :goto_60

    :cond_5f
    const/4 v3, 0x0

    :goto_60
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 242
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v3

    if-nez v3, :cond_6b

    const/4 v3, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v3, 0x0

    :goto_6c
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 243
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v2

    .line 244
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v3, v3, v2

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 245
    iget v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    .line 246
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aput-boolean v4, v3, v2

    .line 247
    new-instance v3, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;I)V

    aput-object v3, p3, p2

    .line 248
    aput-boolean v4, p4, p2

    if-nez v0, :cond_ac

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v0, v0, v2

    .line 252
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 257
    invoke-virtual {v0, p5, p6, v4, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_ab

    .line 258
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v0

    if-eqz v0, :cond_ab

    const/4 v0, 0x1

    goto :goto_ac

    :cond_ab
    const/4 v0, 0x0

    :cond_ac
    :goto_ac
    add-int/lit8 p2, p2, 0x1

    goto :goto_4a

    .line 262
    :cond_af
    iget p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-nez p1, :cond_df

    .line 263
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->pendingDeferredRetry:Z

    .line 264
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->notifyDiscontinuity:Z

    .line 265
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 267
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length p2, p1

    :goto_c2
    if-ge v1, p2, :cond_cc

    aget-object p3, p1, v1

    .line 268
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    .line 270
    :cond_cc
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_f1

    .line 272
    :cond_d2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length p2, p1

    :goto_d5
    if-ge v1, p2, :cond_f1

    aget-object p3, p1, v1

    .line 273
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d5

    :cond_df
    if-eqz v0, :cond_f1

    .line 277
    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seekToUs(J)J

    move-result-wide p5

    .line 279
    :goto_e5
    array-length p1, p3

    if-ge v1, p1, :cond_f1

    .line 280
    aget-object p1, p3, v1

    if-eqz p1, :cond_ee

    .line 281
    aput-boolean v4, p4, v1

    :cond_ee
    add-int/lit8 v1, v1, 0x1

    goto :goto_e5

    .line 285
    :cond_f1
    :goto_f1
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->seenFirstTrackSelection:Z

    return-wide p5
.end method

.method skipData(IJ)I
    .registers 9

    .line 417
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->suppressRead()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 420
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v0, v0, p1

    .line 422
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    cmp-long v4, p2, v2

    if-lez v4, :cond_1d

    .line 423
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceToEnd()I

    move-result v1

    goto :goto_27

    :cond_1d
    const/4 v2, 0x1

    .line 425
    invoke-virtual {v0, p2, p3, v2, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_26

    goto :goto_27

    :cond_26
    move v1, p2

    :goto_27
    if-lez v1, :cond_2d

    .line 431
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeNotifyTrackFormat(I)V

    goto :goto_30

    .line 433
    :cond_2d
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeStartDeferredRetry(I)V

    :goto_30
    return v1
.end method

.method public track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .registers 6

    .line 559
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length p2, p2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p2, :cond_14

    .line 561
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_11

    .line 562
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p1, p1, v0

    return-object p1

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 565
    :cond_14
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 566
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 567
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    .line 568
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueueTrackIds:[I

    aput p1, v1, p2

    .line 569
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 570
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aput-object v0, p1, p2

    return-object v0
.end method

###### Class com.google.android.exoplayer2.source.ExtractorMediaPeriod.AnonymousClass1 (com.google.android.exoplayer2.source.ExtractorMediaPeriod$1)
.class Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$1;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;[Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$1;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$1;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$000(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.source.ExtractorMediaPeriod.AnonymousClass2 (com.google.android.exoplayer2.source.ExtractorMediaPeriod$2)
.class Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;[Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$100(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$200(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_13
    return-void
.end method

###### Class com.google.android.exoplayer2.source.ExtractorMediaPeriod.ExtractingLoadable (com.google.android.exoplayer2.source.ExtractorMediaPeriod$ExtractingLoadable)
.class final Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExtractingLoadable"
.end annotation


# instance fields
.field private bytesLoaded:J

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

.field private length:J

.field private volatile loadCanceled:Z

.field private final loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private pendingExtractorSeek:Z

.field private final positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

.field private seekTimeUs:J

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;Lcom/google/android/exoplayer2/util/ConditionVariable;)V
    .registers 6

    .line 807
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 809
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 810
    invoke-static {p4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    .line 811
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 812
    new-instance p1, Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/PositionHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    const/4 p1, 0x1

    .line 813
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    const-wide/16 p1, -0x1

    .line 814
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .registers 1

    .line 790
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J
    .registers 3

    .line 790
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J
    .registers 3

    .line 790
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->bytesLoaded:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J
    .registers 3

    .line 790
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    return-wide v0
.end method


# virtual methods
.method public cancelLoad()V
    .registers 2

    const/4 v0, 0x1

    .line 825
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    return-void
.end method

.method public isLoadCanceled()Z
    .registers 2

    .line 830
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    return v0
.end method

.method public load()V
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_d8

    .line 836
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v2, :cond_d8

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 839
    :try_start_a
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-wide v12, v4, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 840
    new-instance v4, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    const-wide/16 v9, -0x1

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$800(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v4

    move-wide v7, v12

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 841
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 842
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_39

    .line 843
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    const/4 v6, 0x0

    add-long/2addr v4, v12

    iput-wide v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 845
    :cond_39
    new-instance v4, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    move-object v5, v4

    move-wide v7, v12

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;JJ)V
    :try_end_44
    .catchall {:try_start_a .. :try_end_44} :catchall_b9

    .line 846
    :try_start_44
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->selectExtractor(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Landroid/net/Uri;)Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v2

    .line 847
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v5, :cond_5b

    .line 848
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-interface {v2, v12, v13, v5, v6}, Lcom/google/android/exoplayer2/extractor/Extractor;->seek(JJ)V

    .line 849
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    :cond_5b
    :goto_5b
    if-nez v1, :cond_99

    .line 851
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v5, :cond_99

    .line 852
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block()V

    .line 853
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v2, v4, v5}, Lcom/google/android/exoplayer2/extractor/Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v5
    :try_end_6c
    .catchall {:try_start_44 .. :try_end_6c} :catchall_b7

    .line 854
    :try_start_6c
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$900(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)J

    move-result-wide v8

    const/4 v1, 0x0

    add-long/2addr v8, v12

    cmp-long v1, v6, v8

    if-lez v1, :cond_94

    .line 855
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    .line 856
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 857
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$1100(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Landroid/os/Handler;

    move-result-object v1

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->access$1000(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_94
    .catchall {:try_start_6c .. :try_end_94} :catchall_96

    :cond_94
    move v1, v5

    goto :goto_5b

    :catchall_96
    move-exception v0

    move v1, v5

    goto :goto_bb

    :cond_99
    if-ne v1, v3, :cond_9d

    const/4 v1, 0x0

    goto :goto_b0

    .line 864
    :cond_9d
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 865
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->bytesLoaded:J

    .line 867
    :goto_b0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    goto/16 :goto_2

    :catchall_b7
    move-exception v0

    goto :goto_bb

    :catchall_b9
    move-exception v0

    move-object v4, v2

    :goto_bb
    if-eq v1, v3, :cond_d2

    if-eqz v4, :cond_d2

    .line 864
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 865
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->bytesLoaded:J

    .line 867
    :cond_d2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw v0

    :cond_d8
    return-void
.end method

.method public setLoadPosition(JJ)V
    .registers 6

    .line 818
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iput-wide p1, v0, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 819
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    const/4 p1, 0x1

    .line 820
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    return-void
.end method

###### Class com.google.android.exoplayer2.source.ExtractorMediaPeriod.ExtractorHolder (com.google.android.exoplayer2.source.ExtractorMediaPeriod$ExtractorHolder)
.class final Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtractorHolder"
.end annotation


# instance fields
.field private extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

.field private final extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final extractors:[Lcom/google/android/exoplayer2/extractor/Extractor;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 3

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 890
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractors:[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 891
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method


# virtual methods
.method public release()V
    .registers 2

    .line 931
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz v0, :cond_c

    .line 932
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/Extractor;->release()V

    const/4 v0, 0x0

    .line 933
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    :cond_c
    return-void
.end method

.method public selectExtractor(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Landroid/net/Uri;)Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 8

    .line 907
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz v0, :cond_7

    .line 908
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    return-object p1

    .line 910
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractors:[Lcom/google/android/exoplayer2/extractor/Extractor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_26

    aget-object v3, v0, v2

    .line 912
    :try_start_f
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 913
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;
    :try_end_17
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_17} :catch_20
    .catchall {:try_start_f .. :try_end_17} :catchall_1b

    .line 919
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_26

    :catchall_1b
    move-exception p2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    throw p2

    :catch_20
    :cond_20
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 922
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz p1, :cond_34

    .line 926
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/Extractor;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 927
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    return-object p1

    .line 923
    :cond_34
    new-instance p1, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "None of the available extractors ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractors:[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 924
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") could read the stream."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p1
.end method

###### Class com.google.android.exoplayer2.source.ExtractorMediaPeriod.Listener (com.google.android.exoplayer2.source.ExtractorMediaPeriod$Listener)
.class interface abstract Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onSourceInfoRefreshed(JZ)V
.end method

###### Class com.google.android.exoplayer2.source.ExtractorMediaPeriod.SampleStreamImpl (com.google.android.exoplayer2.source.ExtractorMediaPeriod$SampleStreamImpl)
.class final Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

.field private final track:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;I)V
    .registers 3

    .line 760
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iput p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;)I
    .registers 1

    .line 756
    iget p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    return p0
.end method


# virtual methods
.method public isReady()Z
    .registers 3

    .line 766
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->isReady(I)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .registers 2

    .line 771
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->maybeThrowError()V

    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .registers 6

    .line 777
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->readData(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    return p1
.end method

.method public skipData(J)I
    .registers 5

    .line 782
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->skipData(IJ)I

    move-result p1

    return p1
.end method
