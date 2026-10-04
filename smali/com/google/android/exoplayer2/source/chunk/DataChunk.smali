###### Class com.google.android.exoplayer2.source.chunk.DataChunk (com.google.android.exoplayer2.source.chunk.DataChunk)
.class public abstract Lcom/google/android/exoplayer2/source/chunk/DataChunk;
.super Lcom/google/android/exoplayer2/source/chunk/Chunk;
.source "DataChunk.java"


# static fields
.field private static final READ_GRANULARITY:I = 0x4000


# instance fields
.field private data:[B

.field private limit:I

.field private volatile loadCanceled:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;[B)V
    .registers 19

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 50
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/chunk/Chunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p7

    .line 52
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->data:[B

    return-void
.end method

.method private maybeExpandData()V
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->data:[B

    const/16 v1, 0x4000

    if-nez v0, :cond_b

    .line 116
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->data:[B

    goto :goto_1f

    .line 117
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->data:[B

    array-length v0, v0

    iget v2, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->limit:I

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_1f

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->data:[B

    array-length v2, v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->data:[B

    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .registers 3

    .line 68
    iget v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->limit:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .registers 2

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    return-void
.end method

.method protected abstract consume([BI)V
.end method

.method public getDataHolder()[B
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->data:[B

    return-object v0
.end method

.method public final isLoadCanceled()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    return v0
.end method

.method public final load()V
    .registers 6

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->limit:I

    :cond_a
    :goto_a
    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    .line 89
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v0, :cond_28

    .line 90
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->maybeExpandData()V

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->data:[B

    iget v3, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->limit:I

    const/16 v4, 0x4000

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    if-eq v0, v1, :cond_a

    .line 93
    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->limit:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->limit:I

    goto :goto_a

    .line 96
    :cond_28
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v0, :cond_33

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->limit:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->consume([BI)V
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_39

    .line 100
    :cond_33
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-void

    :catchall_39
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw v0
.end method
