###### Class com.google.android.exoplayer2.source.ConcatenatingMediaSource (com.google.android.exoplayer2.source.ConcatenatingMediaSource)
.class public final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final isAtomic:Z

.field private listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private final manifests:[Ljava/lang/Object;

.field private final mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

.field private final shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

.field private final sourceIndexByMediaPeriod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

.field private final timelines:[Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public varargs constructor <init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;[Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 8

    .line 74
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 75
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_10

    aget-object v3, p3, v2

    .line 76
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 78
    :cond_10
    invoke-interface {p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLength()I

    move-result v0

    array-length v2, p3

    if-ne v0, v2, :cond_18

    const/4 v1, 0x1

    :cond_18
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 79
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    .line 80
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->isAtomic:Z

    .line 81
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 82
    array-length p1, p3

    new-array p1, p1, [Lcom/google/android/exoplayer2/Timeline;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 83
    array-length p1, p3

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    .line 84
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    return-void
.end method

.method public varargs constructor <init>(Z[Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 5

    .line 61
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    array-length v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;[Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 3

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>(Z[Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method private static buildDuplicateFlags([Lcom/google/android/exoplayer2/source/MediaSource;)[Z
    .registers 6

    .line 154
    array-length v0, p0

    new-array v0, v0, [Z

    .line 155
    new-instance v1, Ljava/util/IdentityHashMap;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    const/4 v2, 0x0

    .line 156
    :goto_a
    array-length v3, p0

    if-ge v2, v3, :cond_20

    .line 157
    aget-object v3, p0, v2

    .line 158
    invoke-virtual {v1, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    const/4 v4, 0x0

    .line 159
    invoke-virtual {v1, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_1a
    const/4 v3, 0x1

    .line 161
    aput-boolean v3, v0, v2

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_20
    return-object v0
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 6

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    .line 106
    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    .line 107
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 106
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    .line 108
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    .line 109
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .registers 7
    .param p4    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object p3, v0, v1

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object p4, v0, v1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_14
    :goto_14
    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v0, v0

    if-ge p1, v0, :cond_2a

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v0, v0, p1

    if-ne v0, p2, :cond_14

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aput-object p3, v0, p1

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    aput-object p4, v0, p1

    goto :goto_14

    .line 143
    :cond_2a
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_2e
    if-ge p3, p2, :cond_38

    aget-object p4, p1, p3

    if-nez p4, :cond_35

    return-void

    :cond_35
    add-int/lit8 p3, p3, 0x1

    goto :goto_2e

    .line 149
    :cond_38
    new-instance p1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p2}, [Lcom/google/android/exoplayer2/Timeline;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/exoplayer2/Timeline;

    iget-boolean p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->isAtomic:Z

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;-><init>([Lcom/google/android/exoplayer2/Timeline;ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    .line 150
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    invoke-virtual {p3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .registers 5
    .param p4    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .registers 5

    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    .line 90
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 91
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->buildDuplicateFlags([Lcom/google/android/exoplayer2/source/MediaSource;)[Z

    move-result-object p1

    .line 92
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length p2, p2

    if-nez p2, :cond_17

    .line 93
    sget-object p1, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    const/4 p2, 0x0

    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    goto :goto_2f

    :cond_17
    const/4 p2, 0x0

    .line 95
    :goto_18
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length p3, p3

    if-ge p2, p3, :cond_2f

    .line 96
    aget-boolean p3, p1, p2

    if-nez p3, :cond_2c

    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v0, v0, p2

    invoke-virtual {p0, p3, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    :cond_2c
    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    :cond_2f
    :goto_2f
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public releaseSource()V
    .registers 2

    .line 122
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->releaseSource()V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 124
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    return-void
.end method

###### Class com.google.android.exoplayer2.source.ConcatenatingMediaSource.ConcatenatedTimeline (com.google.android.exoplayer2.source.ConcatenatingMediaSource$ConcatenatedTimeline)
.class final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;
.super Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedTimeline"
.end annotation


# instance fields
.field private final sourcePeriodOffsets:[I

.field private final sourceWindowOffsets:[I

.field private final timelines:[Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Timeline;ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 13

    .line 177
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;-><init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 178
    array-length p2, p1

    new-array p2, p2, [I

    .line 179
    array-length p3, p1

    new-array p3, p3, [I

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 182
    :goto_f
    array-length v5, p1

    if-ge v1, v5, :cond_36

    .line 183
    aget-object v5, p1, v1

    .line 184
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v2, v6

    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v2, v6

    if-gtz v8, :cond_23

    const/4 v6, 0x1

    goto :goto_24

    :cond_23
    const/4 v6, 0x0

    :goto_24
    const-string v7, "ConcatenatingMediaSource children contain too many periods"

    .line 185
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    long-to-int v6, v2

    .line 187
    aput v6, p2, v1

    .line 188
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v5

    add-int/2addr v4, v5

    .line 189
    aput v4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 191
    :cond_36
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 192
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    .line 193
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    return-void
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .registers 3

    .line 218
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    .line 221
    :cond_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .registers 4

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected getChildIndexByWindowIndex(I)I
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .registers 2

    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    :goto_a
    return p1
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    :goto_a
    return p1
.end method

.method public getPeriodCount()I
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method protected getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getWindowCount()I
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method
