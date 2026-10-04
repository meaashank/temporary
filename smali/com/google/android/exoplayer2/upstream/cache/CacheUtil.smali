###### Class com.google.android.exoplayer2.upstream.cache.CacheUtil (com.google.android.exoplayer2.upstream.cache.CacheUtil)
.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE_BYTES:I = 0x20000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V
    .registers 12
    .param p3    # Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 121
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    const/high16 p2, 0x20000

    new-array v3, p2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Z)V

    return-void
.end method

.method public static cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Z)V
    .registers 32
    .param p6    # Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p6

    .line 158
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_13

    .line 163
    invoke-static {v10, v11, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V

    :goto_11
    move-object v12, v0

    goto :goto_19

    .line 166
    :cond_13
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    goto :goto_11

    .line 169
    :goto_19
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v13

    .line 170
    iget-wide v0, v10, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 171
    iget-wide v2, v10, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v14, -0x1

    cmp-long v4, v2, v14

    if-eqz v4, :cond_2a

    iget-wide v2, v10, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_2e

    :cond_2a
    invoke-interface {v11, v13}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v2

    :goto_2e
    move-wide/from16 v18, v0

    move-wide/from16 v16, v2

    :goto_32
    const-wide/16 v20, 0x0

    cmp-long v0, v16, v20

    if-eqz v0, :cond_89

    cmp-long v0, v16, v14

    if-eqz v0, :cond_3f

    move-wide/from16 v4, v16

    goto :goto_45

    :cond_3f
    const-wide v0, 0x7fffffffffffffffL

    move-wide v4, v0

    :goto_45
    move-object/from16 v0, p1

    move-object v1, v13

    move-wide/from16 v2, v18

    .line 174
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v0

    cmp-long v2, v0, v20

    if-lez v2, :cond_55

    move-wide/from16 v22, v0

    goto :goto_7b

    :cond_55
    neg-long v8, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide v3, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v22, v8

    move/from16 v8, p5

    move-object v9, v12

    .line 180
    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->readAndDiscard(Lcom/google/android/exoplayer2/upstream/DataSpec;JJLcom/google/android/exoplayer2/upstream/DataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)J

    move-result-wide v0

    cmp-long v2, v0, v22

    if-gez v2, :cond_7b

    if-eqz p7, :cond_89

    cmp-long v0, v16, v14

    if-nez v0, :cond_75

    goto :goto_89

    .line 185
    :cond_75
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_7b
    :goto_7b
    const/4 v1, 0x0

    add-long v18, v18, v22

    cmp-long v1, v16, v14

    if-nez v1, :cond_83

    goto :goto_85

    :cond_83
    move-wide/from16 v20, v22

    :goto_85
    const/4 v1, 0x0

    sub-long v16, v16, v20

    goto :goto_32

    :cond_89
    :goto_89
    return-void
.end method

.method public static generateKey(Landroid/net/Uri;)Ljava/lang/String;
    .registers 1

    .line 62
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 85
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v8

    .line 86
    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 87
    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v9, -0x1

    cmp-long v6, v4, v9

    if-eqz v6, :cond_17

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    move-object/from16 v0, p1

    goto :goto_1d

    :cond_17
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v4

    .line 88
    :goto_1d
    iput-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    const-wide/16 v11, 0x0

    .line 89
    iput-wide v11, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    .line 90
    iput-wide v11, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    move-wide v15, v2

    move-wide v13, v4

    :goto_27
    cmp-long v2, v13, v11

    if-eqz v2, :cond_5a

    const-wide v17, 0x7fffffffffffffffL

    cmp-long v2, v13, v9

    if-eqz v2, :cond_36

    move-wide v6, v13

    goto :goto_38

    :cond_36
    move-wide/from16 v6, v17

    :goto_38
    move-object/from16 v2, p1

    move-object v3, v8

    move-wide v4, v15

    .line 93
    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v2

    cmp-long v4, v2, v11

    if-lez v4, :cond_4a

    .line 95
    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    goto :goto_50

    :cond_4a
    neg-long v2, v2

    cmp-long v4, v2, v17

    if-nez v4, :cond_50

    return-void

    :cond_50
    :goto_50
    const/4 v4, 0x0

    add-long/2addr v15, v2

    cmp-long v4, v13, v9

    if-nez v4, :cond_57

    move-wide v2, v11

    :cond_57
    const/4 v4, 0x0

    sub-long/2addr v13, v2

    goto :goto_27

    :cond_5a
    return-void
.end method

.method public static getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    goto :goto_d

    :cond_7
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method private static readAndDiscard(Lcom/google/android/exoplayer2/upstream/DataSpec;JJLcom/google/android/exoplayer2/upstream/DataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)J
    .registers 27

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    move-object/from16 v4, p0

    :goto_8
    if-eqz p7, :cond_d

    .line 217
    invoke-virtual/range {p7 .. p8}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    .line 220
    :cond_d
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_8d

    .line 225
    new-instance v5, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v7, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v8, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    iget-wide v9, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    const/4 v6, 0x0

    add-long v9, v9, p1

    iget-wide v11, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    const/4 v6, 0x0

    sub-long v11, v9, v11

    const-wide/16 v13, -0x1

    iget-object v9, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v6, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    or-int/lit8 v16, v6, 0x2

    move-object v6, v5

    move-object v15, v9

    move-wide/from16 v9, p1

    invoke-direct/range {v6 .. v16}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    :try_end_32
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_d .. :try_end_32} :catch_98
    .catchall {:try_start_d .. :try_end_32} :catchall_93

    .line 229
    :try_start_32
    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v6

    .line 230
    iget-wide v8, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    const-wide/16 v10, -0x1

    cmp-long v4, v8, v10

    if-nez v4, :cond_48

    cmp-long v4, v6, v10

    if-eqz v4, :cond_48

    .line 231
    iget-wide v8, v5, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    const/4 v4, 0x0

    add-long/2addr v8, v6

    iput-wide v8, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    :cond_48
    const-wide/16 v6, 0x0

    :goto_4a
    cmp-long v4, v6, p3

    if-eqz v4, :cond_87

    .line 235
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_81

    const/4 v4, 0x0

    cmp-long v8, p3, v10

    if-eqz v8, :cond_63

    .line 238
    array-length v8, v2

    int-to-long v8, v8

    sub-long v12, p3, v6

    .line 239
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    goto :goto_64

    :cond_63
    array-length v8, v2

    .line 238
    :goto_64
    invoke-interface {v1, v2, v4, v8}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_78

    .line 242
    iget-wide v8, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    cmp-long v4, v8, v10

    if-nez v4, :cond_87

    .line 243
    iget-wide v8, v5, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    const/4 v4, 0x0

    add-long/2addr v8, v6

    iput-wide v8, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    goto :goto_87

    :cond_78
    int-to-long v8, v4

    add-long/2addr v6, v8

    .line 248
    iget-wide v12, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    const/4 v4, 0x0

    add-long/2addr v12, v8

    iput-wide v12, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    goto :goto_4a

    .line 236
    :cond_81
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4
    :try_end_87
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_32 .. :try_end_87} :catch_8b
    .catchall {:try_start_32 .. :try_end_87} :catchall_93

    .line 254
    :cond_87
    :goto_87
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-wide v6

    :catch_8b
    move-object v4, v5

    goto :goto_98

    .line 221
    :cond_8d
    :try_start_8d
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5
    :try_end_93
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_8d .. :try_end_93} :catch_98
    .catchall {:try_start_8d .. :try_end_93} :catchall_93

    :catchall_93
    move-exception v0

    .line 254
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw v0

    :catch_98
    :goto_98
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    goto/16 :goto_8
.end method

.method public static remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V
    .registers 3

    .line 261
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1

    .line 262
    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 264
    :try_start_14
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_17
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_14 .. :try_end_17} :catch_8

    goto :goto_8

    :cond_18
    return-void
.end method

###### Class com.google.android.exoplayer2.upstream.cache.CacheUtil.CachingCounters (com.google.android.exoplayer2.upstream.cache.CacheUtil$CachingCounters)
.class public Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachingCounters"
.end annotation


# instance fields
.field public volatile alreadyCachedBytes:J

.field public volatile contentLength:J

.field public volatile newlyCachedBytes:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    return-void
.end method


# virtual methods
.method public totalCachedBytes()J
    .registers 5

    .line 49
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    add-long/2addr v0, v2

    return-wide v0
.end method
