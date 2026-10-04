###### Class com.google.android.exoplayer2.upstream.cache.CachedRegionTracker (com.google.android.exoplayer2.upstream.cache.CachedRegionTracker)
.class public final Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;
.super Ljava/lang/Object;
.source "CachedRegionTracker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;
    }
.end annotation


# static fields
.field public static final CACHED_TO_END:I = -0x2

.field public static final NOT_CACHED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CachedRegionTracker"


# instance fields
.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheKey:Ljava/lang/String;

.field private final chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

.field private final lookupRegion:Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;

.field private final regions:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/ChunkIndex;)V
    .registers 6

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 46
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->cacheKey:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 48
    new-instance p3, Ljava/util/TreeSet;

    invoke-direct {p3}, Ljava/util/TreeSet;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    .line 49
    new-instance p3, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    const-wide/16 v0, 0x0

    invoke-direct {p3, v0, v1, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;-><init>(JJ)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->lookupRegion:Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    .line 51
    monitor-enter p0

    .line 52
    :try_start_1a
    invoke-interface {p1, p2, p0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->addListener(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;)Ljava/util/NavigableSet;

    move-result-object p1

    .line 55
    invoke-interface {p1}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 56
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 58
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->mergeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    goto :goto_22

    .line 60
    :cond_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_34

    throw p1
.end method

.method private mergeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 9

    .line 135
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;-><init>(JJ)V

    .line 136
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    .line 137
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    .line 138
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->regionsConnect(Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;)Z

    move-result v2

    .line 139
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->regionsConnect(Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;)Z

    move-result v3

    if-eqz v3, :cond_44

    if-eqz v2, :cond_31

    .line 144
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    iput-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    .line 145
    iget v0, v1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    iput v0, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    goto :goto_3e

    .line 148
    :cond_31
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    .line 149
    iget p1, v1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    iput p1, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 150
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 152
    :goto_3e
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_44
    if-eqz v2, :cond_67

    .line 155
    iget-wide v0, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    iput-wide v0, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    .line 156
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 157
    :goto_4c
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->length:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_64

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    add-int/lit8 v2, v0, 0x1

    aget-wide v3, v1, v2

    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    cmp-long v1, v3, v5

    if-gtz v1, :cond_64

    move v0, v2

    goto :goto_4c

    .line 161
    :cond_64
    iput v0, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    goto :goto_7d

    .line 164
    :cond_67
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_76

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    .line 165
    :cond_76
    iput p1, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 166
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_7d
    return-void
.end method

.method private regionsConnect(Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;)Z
    .registers 6

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 171
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    iget-wide p1, p2, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method


# virtual methods
.method public declared-synchronized getRegionEndTimeMs(J)I
    .registers 10

    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->lookupRegion:Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    iput-wide p1, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->lookupRegion:Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    const/4 v1, -0x1

    if-eqz v0, :cond_66

    .line 80
    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    cmp-long v4, p1, v2

    if-gtz v4, :cond_66

    iget p1, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    if-ne p1, v1, :cond_1d

    goto :goto_66

    .line 84
    :cond_1d
    iget p1, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 85
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget p2, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->length:I

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_3e

    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    aget-wide v3, p2, p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->sizes:[I

    aget p2, p2, p1
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_68

    int-to-long v5, p2

    add-long/2addr v3, v5

    cmp-long p2, v1, v3

    if-nez p2, :cond_3e

    const/4 p1, -0x2

    .line 87
    monitor-exit p0

    return p1

    .line 89
    :cond_3e
    :try_start_3e
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->durationsUs:[J

    aget-wide v1, p2, p1

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    aget-wide v5, p2, p1

    const/4 p2, 0x0

    sub-long/2addr v3, v5

    mul-long v1, v1, v3

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->sizes:[I

    aget p2, p2, p1

    int-to-long v3, p2

    div-long/2addr v1, v3

    .line 91
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->timesUs:[J

    aget-wide p1, p2, p1

    const/4 v0, 0x0

    add-long/2addr p1, v1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0
    :try_end_63
    .catchall {:try_start_3e .. :try_end_63} :catchall_68

    long-to-int p1, p1

    monitor-exit p0

    return p1

    .line 82
    :cond_66
    :goto_66
    monitor-exit p0

    return v1

    :catchall_68
    move-exception p1

    .line 77
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 3

    monitor-enter p0

    .line 96
    :try_start_1
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->mergeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 97
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    .line 95
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 9

    monitor-enter p0

    .line 101
    :try_start_1
    new-instance p1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    iget-wide v0, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v4, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    const/4 p2, 0x0

    add-long/2addr v2, v4

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;-><init>(JJ)V

    .line 104
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    if-nez p2, :cond_21

    const-string p1, "CachedRegionTracker"

    const-string p2, "Removed a span we were not aware of"

    .line 106
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_6c

    .line 107
    monitor-exit p0

    return-void

    .line 111
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 114
    iget-wide v0, p2, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_4d

    .line 115
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    iget-wide v1, p2, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;-><init>(JJ)V

    .line 117
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-gez v1, :cond_46

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x2

    .line 118
    :cond_46
    iput v1, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 119
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_4d
    iget-wide v0, p2, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_6a

    .line 123
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iget-wide v3, p2, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;-><init>(JJ)V

    .line 124
    iget p1, p2, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    iput p1, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 125
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catchall {:try_start_21 .. :try_end_6a} :catchall_6c

    .line 127
    :cond_6a
    monitor-exit p0

    return-void

    :catchall_6c
    move-exception p1

    .line 100
    monitor-exit p0

    throw p1
.end method

.method public onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 4

    return-void
.end method

.method public release()V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;->cacheKey:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeListener(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.upstream.cache.CachedRegionTracker.Region (com.google.android.exoplayer2.upstream.cache.CachedRegionTracker$Region)
.class Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;
.super Ljava/lang/Object;
.source "CachedRegionTracker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Region"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;",
        ">;"
    }
.end annotation


# instance fields
.field public endOffset:J

.field public endOffsetIndex:I

.field public startOffset:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    .line 193
    iput-wide p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;)I
    .registers 7
    .param p1    # Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 198
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    const/4 p1, -0x1

    goto :goto_15

    :cond_a
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_14

    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    const/4 p1, 0x1

    :goto_15
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 174
    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;->compareTo(Lcom/google/android/exoplayer2/upstream/cache/CachedRegionTracker$Region;)I

    move-result p1

    return p1
.end method
