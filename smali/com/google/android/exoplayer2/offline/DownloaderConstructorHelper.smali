###### Class com.google.android.exoplayer2.offline.DownloaderConstructorHelper (com.google.android.exoplayer2.offline.DownloaderConstructorHelper)
.class public final Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;
.super Ljava/lang/Object;
.source "DownloaderConstructorHelper.java"


# instance fields
.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

.field private final priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final upstreamDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .registers 6
    .param p3    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/upstream/DataSink$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 65
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->upstreamDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 66
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 67
    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

    .line 68
    iput-object p5, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-void
.end method


# virtual methods
.method public buildCacheDataSource(Z)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .registers 10

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 89
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    :goto_a
    move-object v4, v0

    goto :goto_12

    :cond_c
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    goto :goto_a

    :goto_12
    if-eqz p1, :cond_22

    .line 91
    new-instance p1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    sget-object v3, Lcom/google/android/exoplayer2/upstream/DummyDataSource;->INSTANCE:Lcom/google/android/exoplayer2/upstream/DummyDataSource;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    return-object p1

    .line 94
    :cond_22
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

    .line 95
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/DataSink$Factory;->createDataSink()Lcom/google/android/exoplayer2/upstream/DataSink;

    move-result-object p1

    :goto_2c
    move-object v5, p1

    goto :goto_39

    :cond_2e
    new-instance p1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    const-wide/32 v1, 0x200000

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    goto :goto_2c

    .line 97
    :goto_39
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->upstreamDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-nez v0, :cond_45

    move-object v3, p1

    goto :goto_4f

    :cond_45
    new-instance v0, Lcom/google/android/exoplayer2/upstream/PriorityDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 v2, -0x3e8

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/upstream/PriorityDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/util/PriorityTaskManager;I)V

    move-object v3, v0

    .line 100
    :goto_4f
    new-instance p1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    return-object p1
.end method

.method public getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-object v0
.end method

.method public getPriorityTaskManager()Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    goto :goto_c

    :cond_7
    new-instance v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;-><init>()V

    :goto_c
    return-object v0
.end method
