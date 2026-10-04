###### Class com.google.android.exoplayer2.offline.SegmentDownloader (com.google.android.exoplayer2.offline.SegmentDownloader)
.class public abstract Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/offline/Downloader;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x20000


# instance fields
.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

.field private volatile downloadedBytes:J

.field private volatile downloadedSegments:I

.field private keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private manifest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private final manifestUri:Landroid/net/Uri;

.field private final offlineDataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

.field private final priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private volatile totalSegments:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestUri:Landroid/net/Uri;

    .line 85
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    const/4 p1, 0x0

    .line 86
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->buildCacheDataSource(Z)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    const/4 p1, 0x1

    .line 87
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->buildCacheDataSource(Z)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->offlineDataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 88
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->getPriorityTaskManager()Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 89
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->resetCounters()V

    return-void
.end method

.method private getDataSource(Z)Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 2

    if-eqz p1, :cond_5

    .line 326
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->offlineDataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    goto :goto_7

    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    :goto_7
    return-object p1
.end method

.method private getManifestIfNeeded(Z)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TM;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifest:Ljava/lang/Object;

    if-nez v0, :cond_10

    .line 320
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getDataSource(Z)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestUri:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifest:Ljava/lang/Object;

    .line 322
    :cond_10
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifest:Ljava/lang/Object;

    return-object p1
.end method

.method private declared-synchronized initStatus(Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 296
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getDataSource(Z)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->keys:[Ljava/lang/Object;

    if-nez v1, :cond_f

    .line 298
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getAllRepresentationKeys()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->keys:[Ljava/lang/Object;

    .line 300
    :cond_f
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifest:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->keys:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Ljava/lang/Object;[Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object p1

    .line 301
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    .line 302
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->totalSegments:I

    const/4 v1, 0x0

    .line 303
    iput v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    const-wide/16 v1, 0x0

    .line 304
    iput-wide v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    .line 305
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2f
    if-ltz v1, :cond_5a

    .line 306
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    .line 307
    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V

    .line 308
    iget-wide v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    const/4 v6, 0x0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    .line 309
    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_57

    .line 311
    iget v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    .line 312
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_5c

    :cond_57
    add-int/lit8 v1, v1, -0x1

    goto :goto_2f

    .line 315
    :cond_5a
    monitor-exit p0

    return-object p1

    :catchall_5c
    move-exception p1

    .line 295
    monitor-exit p0

    throw p1
.end method

.method private notifyListener(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
    .registers 5

    if-eqz p1, :cond_b

    .line 284
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getDownloadPercentage()F

    move-result v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;->onDownloadProgress(Lcom/google/android/exoplayer2/offline/Downloader;FJ)V

    :cond_b
    return-void
.end method

.method private remove(Landroid/net/Uri;)V
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V

    return-void
.end method

.method private resetCounters()V
    .registers 3

    const/4 v0, -0x1

    .line 273
    iput v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->totalSegments:I

    .line 274
    iput v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    const-wide/16 v0, -0x1

    .line 275
    iput-wide v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized download(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
    .registers 15
    .param p1    # Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 157
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_5d

    const/4 v0, 0x0

    .line 159
    :try_start_9
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifestIfNeeded(Z)Ljava/lang/Object;

    .line 160
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->initStatus(Z)Ljava/util/List;

    move-result-object v2

    .line 161
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->notifyListener(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V

    .line 162
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/high16 v3, 0x20000

    .line 163
    new-array v3, v3, [B

    .line 164
    new-instance v12, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v12}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    .line 165
    :goto_1f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4f

    .line 166
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    iget-object v4, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v8, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 v9, -0x3e8

    const/4 v11, 0x1

    move-object v7, v3

    move-object v10, v12

    invoke-static/range {v4 .. v11}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Z)V

    .line 168
    iget-wide v4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    iget-wide v6, v12, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    const/4 v8, 0x0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    .line 169
    iget v4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    .line 170
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->notifyListener(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
    :try_end_4c
    .catchall {:try_start_9 .. :try_end_4c} :catchall_56

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 173
    :cond_4f
    :try_start_4f
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_5d

    .line 175
    monitor-exit p0

    return-void

    :catchall_56
    move-exception p1

    .line 173
    :try_start_57
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    throw p1
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception p1

    .line 156
    monitor-exit p0

    throw p1
.end method

.method public abstract getAllRepresentationKeys()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TK;"
        }
    .end annotation
.end method

.method public getDownloadPercentage()F
    .registers 4

    .line 211
    iget v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->totalSegments:I

    .line 212
    iget v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    if-ne v1, v2, :cond_a

    goto :goto_16

    :cond_a
    const/high16 v2, 0x42c80000    # 100.0f

    if-nez v0, :cond_f

    goto :goto_15

    :cond_f
    int-to-float v1, v1

    mul-float v1, v1, v2

    int-to-float v0, v0

    div-float v2, v1, v0

    :goto_15
    return v2

    :cond_16
    :goto_16
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public final getDownloadedBytes()J
    .registers 3

    .line 205
    iget-wide v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    return-wide v0
.end method

.method public final getDownloadedSegments()I
    .registers 2

    .line 194
    iget v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    return v0
.end method

.method public final getManifest()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifestIfNeeded(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Landroid/net/Uri;",
            ")TM;"
        }
    .end annotation
.end method

.method protected abstract getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Ljava/lang/Object;[Ljava/lang/Object;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "TM;[TK;Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation
.end method

.method public final getTotalSegments()I
    .registers 2

    .line 184
    iget v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->totalSegments:I

    return v0
.end method

.method public final init()V
    .registers 2

    const/4 v0, 0x1

    .line 132
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifestIfNeeded(Z)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_d

    .line 138
    :try_start_4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->initStatus(Z)Ljava/util/List;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    .line 140
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->resetCounters()V

    .line 141
    throw v0

    :catch_d
    return-void
.end method

.method public final remove()V
    .registers 6

    const/4 v0, 0x1

    .line 222
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifestIfNeeded(Z)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_4

    .line 227
    :catch_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->resetCounters()V

    .line 228
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifest:Ljava/lang/Object;

    if-eqz v1, :cond_35

    const/4 v1, 0x0

    .line 231
    :try_start_c
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->offlineDataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifest:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getAllRepresentationKeys()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Ljava/lang/Object;[Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_19

    goto :goto_1a

    :catch_19
    move-object v0, v1

    :goto_1a
    if-eqz v0, :cond_33

    const/4 v2, 0x0

    .line 236
    :goto_1d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 237
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    iget-object v3, v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v3, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->remove(Landroid/net/Uri;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 240
    :cond_33
    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifest:Ljava/lang/Object;

    .line 242
    :cond_35
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->remove(Landroid/net/Uri;)V

    return-void
.end method

.method public final selectRepresentations([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)V"
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 107
    array-length v0, p1

    if-lez v0, :cond_c

    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->keys:[Ljava/lang/Object;

    .line 108
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->resetCounters()V

    return-void
.end method

###### Class com.google.android.exoplayer2.offline.SegmentDownloader.Segment (com.google.android.exoplayer2.offline.SegmentDownloader$Segment)
.class public Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
        ">;"
    }
.end annotation


# instance fields
.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    .line 55
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;)I
    .registers 6
    .param p1    # Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    iget-wide v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_d

    const/4 p1, 0x0

    goto :goto_14

    :cond_d
    cmp-long p1, v0, v2

    if-gez p1, :cond_13

    const/4 p1, -0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    check-cast p1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->compareTo(Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;)I

    move-result p1

    return p1
.end method
