###### Class com.google.android.exoplayer2.source.DynamicConcatenatingMediaSource (com.google.android.exoplayer2.source.DynamicConcatenatingMediaSource)
.class public final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "DynamicConcatenatingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/PlayerMessage$Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DummyTimeline;,
        Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;,
        Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;,
        Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;,
        Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;,
        Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;",
        ">;",
        "Lcom/google/android/exoplayer2/PlayerMessage$Target;"
    }
.end annotation


# static fields
.field private static final MSG_ADD:I = 0x0

.field private static final MSG_ADD_MULTIPLE:I = 0x1

.field private static final MSG_MOVE:I = 0x3

.field private static final MSG_ON_COMPLETION:I = 0x4

.field private static final MSG_REMOVE:I = 0x2


# instance fields
.field private final deferredMediaPeriods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final isAtomic:Z

.field private listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private final mediaSourceByMediaPeriod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourcesPublic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private periodCount:I

.field private player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private preventListenerNotification:Z

.field private final query:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

.field private shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

.field private windowCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;-><init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    .line 84
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;-><init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V

    return-void
.end method

.method public constructor <init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 10

    .line 95
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 97
    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/Map;

    .line 98
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 99
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 100
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    .line 101
    new-instance p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;III)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->query:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 102
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->isAtomic:Z

    return-void
.end method

.method private addMediaSourceInternal(ILcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 11

    .line 476
    new-instance v6, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;-><init>()V

    if-lez p1, :cond_2f

    .line 478
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 479
    new-instance v7, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    .line 484
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result v2

    add-int v4, v1, v2

    iget v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    .line 485
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result v0

    add-int v5, v1, v0

    move-object v0, v7

    move-object v1, p2

    move-object v2, v6

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;III)V

    goto :goto_3a

    .line 487
    :cond_2f
    new-instance v7, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p2

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;III)V

    .line 492
    :goto_3a
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result p2

    .line 493
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x1

    .line 489
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->correctOffsets(IIII)V

    .line 494
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {p2, p1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 495
    iget-object p1, v7, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {p0, v7, p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method private addMediaSourcesInternal(ILjava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 499
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    add-int/lit8 v1, p1, 0x1

    .line 500
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSourceInternal(ILcom/google/android/exoplayer2/source/MediaSource;)V

    move p1, v1

    goto :goto_4

    :cond_17
    return-void
.end method

.method private correctOffsets(IIII)V
    .registers 7

    .line 566
    iget v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->windowCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->windowCount:I

    .line 567
    iget v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->periodCount:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->periodCount:I

    .line 568
    :goto_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3c

    .line 569
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    .line 570
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v1, p3

    iput v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 571
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    add-int/2addr v1, p4

    iput v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_3c
    return-void
.end method

.method private findMediaSourceHolderByPeriodIndex(I)I
    .registers 5

    .line 576
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->query:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iput p1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 577
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->query:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    invoke-static {v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_12

    neg-int p1, v0

    add-int/lit8 p1, p1, -0x2

    return p1

    .line 581
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    .line 582
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v1, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    if-ne v1, p1, :cond_2c

    move v0, v2

    goto :goto_12

    :cond_2c
    return v0
.end method

.method private maybeNotifyListener(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;)V
    .registers 10
    .param p1    # Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 462
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->preventListenerNotification:Z

    if-nez v0, :cond_2e

    .line 463
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    new-instance v7, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    iget v3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->windowCount:I

    iget v4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->periodCount:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->isAtomic:Z

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;-><init>(Ljava/util/Collection;IILcom/google/android/exoplayer2/source/ShuffleOrder;Z)V

    const/4 v1, 0x0

    invoke-interface {v0, p0, v7, v1}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    if-eqz p1, :cond_2e

    .line 469
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    :cond_2e
    return-void
.end method

.method private moveMediaSourceInternal(II)V
    .registers 9

    .line 550
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 551
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 552
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v2, v2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 553
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v3, v3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 554
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v4, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_27
    if-gt v0, v1, :cond_46

    .line 556
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 557
    iput v2, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 558
    iput v3, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 559
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result p2

    add-int/2addr v2, p2

    .line 560
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result p1

    add-int/2addr v3, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_46
    return-void
.end method

.method private removeMediaSourceInternal(I)V
    .registers 6

    .line 535
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 536
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 537
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    .line 541
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    neg-int v2, v2

    .line 542
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v1

    neg-int v1, v1

    const/4 v3, -0x1

    .line 538
    invoke-direct {p0, p1, v3, v2, v1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->correctOffsets(IIII)V

    const/4 p1, 0x1

    .line 543
    iput-boolean p1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    .line 544
    iget p1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:I

    if-nez p1, :cond_27

    .line 545
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->releaseChildSource(Ljava/lang/Object;)V

    :cond_27
    return-void
.end method

.method private updateMediaSourceInternal(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 9

    if-eqz p1, :cond_64

    .line 508
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    .line 509
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    if-ne v1, p2, :cond_b

    return-void

    .line 512
    :cond_b
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 513
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    if-nez v1, :cond_22

    if-eqz v2, :cond_29

    .line 515
    :cond_22
    iget v4, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    add-int/2addr v4, v3

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v1, v2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->correctOffsets(IIII)V

    .line 521
    :cond_29
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->cloneWithNewTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    .line 522
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->isPrepared:Z

    if-nez p2, :cond_5d

    .line 523
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    :goto_3a
    if-ltz p2, :cond_5d

    .line 524
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-ne v0, v1, :cond_5a

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->createPeriod()V

    .line 526
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5a
    add-int/lit8 p2, p2, -0x1

    goto :goto_3a

    .line 530
    :cond_5d
    iput-boolean v3, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->isPrepared:Z

    const/4 p1, 0x0

    .line 531
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->maybeNotifyListener(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;)V

    return-void

    .line 506
    :cond_64
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public declared-synchronized addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 143
    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 144
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    .line 142
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Runnable;)V
    .registers 6
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 160
    :try_start_1
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_30

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 165
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    const/4 v1, 0x0

    .line 166
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Ljava/lang/Runnable;)V

    .line 167
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    goto :goto_35

    :cond_30
    if-eqz p3, :cond_35

    .line 170
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 172
    :cond_35
    :goto_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    .line 159
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 4

    monitor-enter p0

    .line 114
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 115
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    .line 113
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Runnable;)V
    .registers 4
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 129
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 130
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    .line 128
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSources(ILjava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 216
    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSources(ILjava/util/Collection;Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 217
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    .line 215
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSources(ILjava/util/Collection;Ljava/lang/Runnable;)V
    .registers 8
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 234
    :try_start_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource;

    .line 235
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    goto :goto_5

    .line 238
    :cond_20
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_46

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 241
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Ljava/lang/Runnable;)V

    .line 243
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    goto :goto_4b

    :cond_46
    if-eqz p3, :cond_4b

    .line 246
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4d

    .line 248
    :cond_4b
    :goto_4b
    monitor-exit p0

    return-void

    :catchall_4d
    move-exception p1

    .line 233
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSources(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 184
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSources(ILjava/util/Collection;Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 185
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    .line 183
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSources(Ljava/util/Collection;Ljava/lang/Runnable;)V
    .registers 4
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 201
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSources(ILjava/util/Collection;Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 202
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    .line 200
    monitor-exit p0

    throw p1
.end method

.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 6

    .line 361
    iget v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->findMediaSourceHolderByPeriodIndex(I)I

    move-result v0

    .line 362
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 363
    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget v2, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    .line 366
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->isPrepared:Z

    if-nez v1, :cond_2b

    .line 367
    new-instance v1, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {v1, v2, p1, p2}, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 368
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    move-object p2, v1

    check-cast p2, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 370
    :cond_2b
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v1

    .line 372
    :goto_31
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget p1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:I

    return-object v1
.end method

.method public declared-synchronized getMediaSource(I)Lcom/google/android/exoplayer2/source/MediaSource;
    .registers 3

    monitor-enter p0

    .line 343
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSize()I
    .registers 2

    monitor-enter p0

    .line 333
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    .line 416
    check-cast p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;->dispatchEvent()V

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 419
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->preventListenerNotification:Z

    packed-switch p1, :pswitch_data_94

    .line 454
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 446
    :pswitch_15
    check-cast p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;

    .line 447
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iget v1, p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndRemove(I)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 448
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iget-object v1, p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 449
    iget p1, p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    iget-object v0, p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->moveMediaSourceInternal(II)V

    .line 450
    iget-object p1, p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->actionOnCompletion:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;

    goto :goto_8c

    .line 439
    :pswitch_41
    check-cast p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;

    .line 440
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iget v0, p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndRemove(I)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 441
    iget p1, p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->removeMediaSourceInternal(I)V

    .line 442
    iget-object p1, p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->actionOnCompletion:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;

    goto :goto_8c

    .line 430
    :pswitch_55
    check-cast p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;

    .line 432
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iget v0, p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    iget-object v1, p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    .line 433
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 432
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 434
    iget p1, p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    iget-object v0, p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSourcesInternal(ILjava/util/Collection;)V

    .line 435
    iget-object p1, p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->actionOnCompletion:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;

    goto :goto_8c

    .line 423
    :pswitch_75
    check-cast p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;

    .line 424
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iget v1, p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 425
    iget p1, p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    iget-object v0, p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSourceInternal(ILcom/google/android/exoplayer2/source/MediaSource;)V

    .line 426
    iget-object p1, p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->actionOnCompletion:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;

    :goto_8c
    const/4 p2, 0x0

    .line 457
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->preventListenerNotification:Z

    .line 458
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->maybeNotifyListener(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;)V

    return-void

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_75
        :pswitch_55
        :pswitch_41
        :pswitch_15
    .end packed-switch
.end method

.method public declared-synchronized moveMediaSource(II)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 298
    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->moveMediaSource(IILjava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 299
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    .line 297
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized moveMediaSource(IILjava/lang/Runnable;)V
    .registers 6
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    if-ne p1, p2, :cond_5

    .line 315
    monitor-exit p0

    return-void

    .line 317
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_30

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 320
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    const/4 v1, 0x3

    .line 321
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;

    .line 322
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    goto :goto_35

    :cond_30
    if-eqz p3, :cond_35

    .line 325
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_37

    .line 327
    :cond_35
    :goto_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    .line 313
    monitor-exit p0

    throw p1
.end method

.method protected onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .registers 5
    .param p4    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 409
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->updateMediaSourceInternal(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .registers 5
    .param p4    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    check-cast p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .registers 4

    monitor-enter p0

    .line 349
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    .line 350
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 351
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    const/4 p1, 0x1

    .line 352
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->preventListenerNotification:Z

    .line 353
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    invoke-interface {p1, p3, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 354
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-direct {p0, p3, p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSourcesInternal(ILjava/util/Collection;)V

    .line 355
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->preventListenerNotification:Z

    const/4 p1, 0x0

    .line 356
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->maybeNotifyListener(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 357
    monitor-exit p0

    return-void

    :catchall_27
    move-exception p1

    .line 348
    monitor-exit p0

    throw p1
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 4

    .line 379
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 380
    instance-of v1, p1, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;

    if-eqz v1, :cond_17

    .line 381
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 382
    check-cast p1, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->releasePeriod()V

    goto :goto_1c

    .line 384
    :cond_17
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 386
    :goto_1c
    iget p1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:I

    .line 387
    iget p1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:I

    if-nez p1, :cond_2d

    iget-boolean p1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    if-eqz p1, :cond_2d

    .line 388
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->releaseChildSource(Ljava/lang/Object;)V

    :cond_2d
    return-void
.end method

.method public releaseSource()V
    .registers 2

    .line 394
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->releaseSource()V

    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 397
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 398
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndClear()Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    const/4 v0, 0x0

    .line 399
    iput v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->windowCount:I

    .line 400
    iput v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->periodCount:I

    return-void
.end method

.method public declared-synchronized removeMediaSource(I)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 261
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->removeMediaSource(ILjava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 262
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    .line 260
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMediaSource(ILjava/lang/Runnable;)V
    .registers 6
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 277
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_23

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 280
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    const/4 v1, 0x2

    .line 281
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Ljava/lang/Runnable;)V

    .line 282
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    .line 283
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    goto :goto_28

    :cond_23
    if-eqz p2, :cond_28

    .line 285
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 287
    :cond_28
    :goto_28
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    .line 276
    monitor-exit p0

    throw p1
.end method

###### Class com.google.android.exoplayer2.source.DynamicConcatenatingMediaSource.AnonymousClass1 (com.google.android.exoplayer2.source.DynamicConcatenatingMediaSource$1)
.class synthetic Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$1;
.super Ljava/lang/Object;
.source "DynamicConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.source.DynamicConcatenatingMediaSource.ConcatenatedTimeline (com.google.android.exoplayer2.source.DynamicConcatenatingMediaSource$ConcatenatedTimeline)
.class final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;
.super Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;
.source "DynamicConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedTimeline"
.end annotation


# instance fields
.field private final childIndexByUid:Landroid/util/SparseIntArray;

.field private final firstPeriodInChildIndices:[I

.field private final firstWindowInChildIndices:[I

.field private final periodCount:I

.field private final timelines:[Lcom/google/android/exoplayer2/Timeline;

.field private final uids:[I

.field private final windowCount:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;IILcom/google/android/exoplayer2/source/ShuffleOrder;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;",
            ">;II",
            "Lcom/google/android/exoplayer2/source/ShuffleOrder;",
            "Z)V"
        }
    .end annotation

    .line 677
    invoke-direct {p0, p5, p4}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;-><init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 678
    iput p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->windowCount:I

    .line 679
    iput p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->periodCount:I

    .line 680
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    .line 681
    new-array p3, p2, [I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    .line 682
    new-array p3, p2, [I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    .line 683
    new-array p3, p2, [Lcom/google/android/exoplayer2/Timeline;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 684
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->uids:[I

    .line 685
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Landroid/util/SparseIntArray;

    .line 687
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 688
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    iget-object p5, p3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    aput-object p5, p4, p2

    .line 689
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    iget p5, p3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    aput p5, p4, p2

    .line 690
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    iget p5, p3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    aput p5, p4, p2

    .line 691
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->uids:[I

    iget p3, p3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->uid:I

    aput p3, p4, p2

    .line 692
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Landroid/util/SparseIntArray;

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->uids:[I

    aget p4, p4, p2

    add-int/lit8 p5, p2, 0x1

    invoke-virtual {p3, p4, p2}, Landroid/util/SparseIntArray;->put(II)V

    move p2, p5

    goto :goto_27

    :cond_58
    return-void
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .registers 4

    .line 708
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 711
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Landroid/util/SparseIntArray;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v1, :cond_15

    const/4 p1, -0x1

    :cond_15
    return p1
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .registers 4

    .line 698
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result p1

    return p1
.end method

.method protected getChildIndexByWindowIndex(I)I
    .registers 4

    .line 703
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result p1

    return p1
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .registers 3

    .line 732
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->uids:[I

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .registers 3

    .line 722
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    aget p1, v0, p1

    return p1
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .registers 3

    .line 727
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    aget p1, v0, p1

    return p1
.end method

.method public getPeriodCount()I
    .registers 2

    .line 742
    iget v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->periodCount:I

    return v0
.end method

.method protected getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
    .registers 3

    .line 717
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getWindowCount()I
    .registers 2

    .line 737
    iget v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->windowCount:I

    return v0
.end method

###### Class com.google.android.exoplayer2.source.DynamicConcatenatingMediaSource.DeferredTimeline (com.google.android.exoplayer2.source.DynamicConcatenatingMediaSource$DeferredTimeline)
.class final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;
.super Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.source "DynamicConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeferredTimeline"
.end annotation


# static fields
.field private static final DUMMY_ID:Ljava/lang/Object;

.field private static final dummyTimeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DummyTimeline;

.field private static final period:Lcom/google/android/exoplayer2/Timeline$Period;


# instance fields
.field private final replacedId:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 753
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    .line 754
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 755
    new-instance v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DummyTimeline;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DummyTimeline;-><init>(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$1;)V

    sput-object v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->dummyTimeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DummyTimeline;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 760
    sget-object v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->dummyTimeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DummyTimeline;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .registers 3

    .line 764
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    .line 765
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->replacedId:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cloneWithNewTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;
    .registers 6

    .line 769
    new-instance v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->replacedId:Ljava/lang/Object;

    if-nez v1, :cond_17

    .line 771
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v1

    if-lez v1, :cond_17

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v3, 0x1

    .line 772
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    goto :goto_19

    :cond_17
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->replacedId:Ljava/lang/Object;

    :goto_19
    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .registers 4

    .line 791
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    sget-object v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->replacedId:Ljava/lang/Object;

    :cond_c
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 5

    .line 782
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 783
    iget-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->replacedId:Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 784
    sget-object p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    iput-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    :cond_13
    return-object p2
.end method

.method public getTimeline()Lcom/google/android/exoplayer2/Timeline;
    .registers 2

    .line 777
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

###### Class com.google.android.exoplayer2.source.DynamicConcatenatingMediaSource.DummyTimeline (com.google.android.exoplayer2.source.DynamicConcatenatingMediaSource$DummyTimeline)
.class final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DummyTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "DynamicConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DummyTimeline"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 796
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$1;)V
    .registers 2

    .line 796
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DummyTimeline;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    :cond_4
    const/4 p1, -0x1

    :goto_5
    return p1
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p2

    .line 827
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public getPeriodCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 22

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    .line 807
    invoke-virtual/range {v0 .. v15}, Lcom/google/android/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    return-object v0
.end method

.method public getWindowCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class com.google.android.exoplayer2.source.DynamicConcatenatingMediaSource.EventDispatcher (com.google.android.exoplayer2.source.DynamicConcatenatingMediaSource$EventDispatcher)
.class final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;
.super Ljava/lang/Object;
.source "DynamicConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventDispatcher"
.end annotation


# instance fields
.field public final eventHandler:Landroid/os/Handler;

.field public final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;->runnable:Ljava/lang/Runnable;

    .line 632
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_16

    .line 633
    :cond_12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_16
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;->eventHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dispatchEvent()V
    .registers 3

    .line 637
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.google.android.exoplayer2.source.DynamicConcatenatingMediaSource.MediaSourceHolder (com.google.android.exoplayer2.source.DynamicConcatenatingMediaSource$MediaSourceHolder)
.class final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
.super Ljava/lang/Object;
.source "DynamicConcatenatingMediaSource.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MediaSourceHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public activeMediaPeriods:I

.field public childIndex:I

.field public firstPeriodIndexInChild:I

.field public firstWindowIndexInChild:I

.field public isPrepared:Z

.field public isRemoved:Z

.field public final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field public timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;III)V
    .registers 6

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 609
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    .line 610
    iput p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    .line 611
    iput p4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 612
    iput p5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 613
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->uid:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;)I
    .registers 3
    .param p1    # Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 618
    iget v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    iget p1, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 589
    check-cast p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->compareTo(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;)I

    move-result p1

    return p1
.end method

###### Class com.google.android.exoplayer2.source.DynamicConcatenatingMediaSource.MessageData (com.google.android.exoplayer2.source.DynamicConcatenatingMediaSource$MessageData)
.class final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;
.super Ljava/lang/Object;
.source "DynamicConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final actionOnCompletion:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final customData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final index:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Runnable;)V
    .registers 4
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    if-eqz p3, :cond_d

    .line 651
    new-instance p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;-><init>(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->actionOnCompletion:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;

    .line 653
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    return-void
.end method
