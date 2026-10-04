###### Class com.google.android.exoplayer2.upstream.cache.CachedContent (com.google.android.exoplayer2.upstream.cache.CachedContent)
.class final Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
.super Ljava/lang/Object;
.source "CachedContent.java"


# instance fields
.field private final cachedSpans:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field public final id:I

.field public final key:Ljava/lang/String;

.field private length:J

.field private locked:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .registers 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    .line 61
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    .line 62
    iput-wide p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->length:J

    .line 63
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .registers 6

    .line 49
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;-><init>(ILjava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public addSpan(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCachedBytesLength(JJ)J
    .registers 15

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getSpan(J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->isHoleSpan()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 136
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->isOpenEnded()Z

    move-result p1

    if-eqz p1, :cond_16

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_18

    :cond_16
    iget-wide p1, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    :goto_18
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    neg-long p1, p1

    return-wide p1

    :cond_1e
    const/4 v1, 0x0

    add-long v1, p1, p3

    .line 139
    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-gez v5, :cond_55

    .line 141
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 142
    iget-wide v6, v5, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    cmp-long v8, v6, v3

    if-lez v8, :cond_48

    goto :goto_55

    .line 148
    :cond_48
    iget-wide v6, v5, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v8, v5, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v6, v8

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-ltz v5, :cond_35

    :cond_55
    :goto_55
    const/4 v0, 0x0

    sub-long/2addr v3, p1

    .line 155
    invoke-static {v3, v4, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLength()J
    .registers 3

    .line 80
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->length:J

    return-wide v0
.end method

.method public getSpan(J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .registers 9

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createLookup(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    if-eqz v1, :cond_1a

    .line 115
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v2, v4

    cmp-long v4, v2, p1

    if-lez v4, :cond_1a

    return-object v1

    .line 118
    :cond_1a
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    if-nez v0, :cond_2b

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createOpenHole(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object p1

    goto :goto_34

    :cond_2b
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    sub-long/2addr v2, p1

    .line 120
    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createClosedHole(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object p1

    :goto_34
    return-object p1
.end method

.method public getSpans()Ljava/util/TreeSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    return-object v0
.end method

.method public headerHashCode()I
    .registers 7

    .line 197
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    mul-int/lit8 v0, v0, 0x1f

    .line 198
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 199
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->length:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->length:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->locked:Z

    return v0
.end method

.method public removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)Z
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 189
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public setLength(J)V
    .registers 3

    .line 85
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->length:J

    return-void
.end method

.method public setLocked(Z)V
    .registers 2

    .line 95
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->locked:Z

    return-void
.end method

.method public touch(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .registers 6

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 170
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->copyWithUpdatedLastAccessTime(I)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    .line 172
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 177
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 173
    :cond_1f
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Renaming of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .registers 4

    .line 73
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 75
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->length:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-void
.end method
