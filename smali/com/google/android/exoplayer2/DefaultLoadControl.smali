###### Class com.google.android.exoplayer2.DefaultLoadControl (com.google.android.exoplayer2.DefaultLoadControl)
.class public Lcom/google/android/exoplayer2/DefaultLoadControl;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/LoadControl;


# static fields
.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:I = 0x1388

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_MS:I = 0x9c4

.field public static final DEFAULT_MAX_BUFFER_MS:I = 0x7530

.field public static final DEFAULT_MIN_BUFFER_MS:I = 0x3a98

.field public static final DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS:Z = true

.field public static final DEFAULT_TARGET_BUFFER_BYTES:I = -0x1


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

.field private final bufferForPlaybackAfterRebufferUs:J

.field private final bufferForPlaybackUs:J

.field private isBuffering:Z

.field private final maxBufferUs:J

.field private final minBufferUs:J

.field private final prioritizeTimeOverSizeThresholds:Z

.field private final priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final targetBufferBytesOverwrite:I

.field private targetBufferSize:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 80
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;)V
    .registers 10

    const/16 v2, 0x3a98

    const/16 v3, 0x7530

    const/16 v4, 0x9c4

    const/16 v5, 0x1388

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 89
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZ)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 125
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZLcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZLcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .registers 11

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    int-to-long p1, p2

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    .line 167
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->minBufferUs:J

    int-to-long p1, p3

    mul-long p1, p1, v0

    .line 168
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    int-to-long p1, p4

    mul-long p1, p1, v0

    .line 169
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    int-to-long p1, p5

    mul-long p1, p1, v0

    .line 170
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    .line 171
    iput p6, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    .line 172
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    .line 173
    iput-object p8, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-void
.end method

.method private reset(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 273
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    .line 274
    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    if-eqz v1, :cond_10

    .line 275
    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 277
    :cond_10
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    if-eqz p1, :cond_19

    .line 279
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->reset()V

    :cond_19
    return-void
.end method


# virtual methods
.method protected calculateTargetBufferSize([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 264
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_19

    .line 265
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 266
    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getDefaultBufferSize(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    return v1
.end method

.method public getAllocator()Lcom/google/android/exoplayer2/upstream/Allocator;
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    return-object v0
.end method

.method public getBackBufferDurationUs()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onPrepared()V
    .registers 2

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onReleased()V
    .registers 2

    const/4 v0, 0x1

    .line 198
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onStopped()V
    .registers 2

    const/4 v0, 0x1

    .line 193
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onTracksSelected([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .registers 5

    .line 184
    iget p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    .line 186
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/DefaultLoadControl;->calculateTargetBufferSize([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)I

    move-result p1

    goto :goto_c

    :cond_a
    iget p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    :goto_c
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    .line 188
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    iget p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    return-void
.end method

.method public retainBackBufferFromKeyframe()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public shouldContinueLoading(JF)Z
    .registers 10

    .line 218
    iget-object p3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result p3

    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p3, v0, :cond_e

    const/4 p3, 0x1

    goto :goto_f

    :cond_e
    const/4 p3, 0x0

    .line 219
    :goto_f
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    .line 220
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-eqz v3, :cond_2c

    .line 221
    iget-wide v3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->minBufferUs:J

    cmp-long v5, p1, v3

    if-ltz v5, :cond_29

    iget-wide v3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    cmp-long v5, p1, v3

    if-gtz v5, :cond_28

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    if-eqz p1, :cond_28

    if-nez p3, :cond_28

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :cond_29
    :goto_29
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    goto :goto_42

    :cond_2c
    if-nez p3, :cond_3f

    .line 227
    iget-wide v3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->minBufferUs:J

    cmp-long p3, p1, v3

    if-ltz p3, :cond_40

    iget-wide v3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    cmp-long p3, p1, v3

    if-gtz p3, :cond_3f

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    if-eqz p1, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :cond_40
    :goto_40
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    .line 232
    :goto_42
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz p1, :cond_59

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    if-eq p1, v0, :cond_59

    .line 233
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    if-eqz p1, :cond_54

    .line 234
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    goto :goto_59

    .line 236
    :cond_54
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 239
    :cond_59
    :goto_59
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    return p1
.end method

.method public shouldStartPlayback(JFZ)Z
    .registers 8

    .line 245
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide p1

    if-eqz p4, :cond_9

    .line 246
    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    goto :goto_b

    :cond_9
    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    :goto_b
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_26

    cmp-long v0, p1, p3

    if-gez v0, :cond_26

    .line 247
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 250
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result p1

    iget p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    if-lt p1, p2, :cond_24

    goto :goto_26

    :cond_24
    const/4 p1, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p1, 0x1

    :goto_27
    return p1
.end method
