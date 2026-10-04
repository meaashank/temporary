###### Class com.google.android.exoplayer2.decoder.SimpleDecoder (com.google.android.exoplayer2.decoder.SimpleDecoder)
.class public abstract Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
.super Ljava/lang/Object;
.source "SimpleDecoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/decoder/Decoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
        "O:",
        "Lcom/google/android/exoplayer2/decoder/OutputBuffer;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/decoder/Decoder<",
        "TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field private availableInputBufferCount:I

.field private final availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field private availableOutputBufferCount:I

.field private final availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/OutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field private final decodeThread:Ljava/lang/Thread;

.field private dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private flushed:Z

.field private final lock:Ljava/lang/Object;

.field private final queuedInputBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final queuedOutputBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TO;>;"
        }
    .end annotation
.end field

.field private released:Z

.field private skippedOutputBufferCount:I


# direct methods
.method protected constructor <init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    .line 53
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 54
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 55
    :goto_1f
    iget v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    if-ge v0, v1, :cond_2e

    .line 56
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->createInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 58
    :cond_2e
    iput-object p2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    .line 59
    array-length p2, p2

    iput p2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    .line 60
    :goto_33
    iget p2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    if-ge p1, p2, :cond_42

    .line 61
    iget-object p2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->createOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_33

    .line 63
    :cond_42
    new-instance p1, Lcom/google/android/exoplayer2/decoder/SimpleDecoder$1;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder$1;-><init>(Lcom/google/android/exoplayer2/decoder/SimpleDecoder;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->decodeThread:Ljava/lang/Thread;

    .line 69
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->decodeThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/decoder/SimpleDecoder;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->run()V

    return-void
.end method

.method private canDecodeBuffer()Z
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private decode()Z
    .registers 7

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :goto_3
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->released:Z

    if-nez v1, :cond_13

    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->canDecodeBuffer()Z

    move-result v1

    if-nez v1, :cond_13

    .line 205
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 207
    :cond_13
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->released:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 208
    monitor-exit v0

    return v2

    .line 210
    :cond_1a
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 211
    iget-object v3, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    iget v4, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    aget-object v3, v3, v4

    .line 212
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->flushed:Z

    .line 213
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->flushed:Z

    .line 214
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_96

    .line 216
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x4

    .line 217
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;->addFlag(I)V

    goto :goto_69

    .line 219
    :cond_3c
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_47

    const/high16 v0, -0x80000000

    .line 220
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;->addFlag(I)V

    .line 223
    :cond_47
    :try_start_47
    invoke-virtual {p0, v1, v3, v4}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/OutputBuffer;Z)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->exception:Ljava/lang/Exception;
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_4d} :catch_56
    .catch Ljava/lang/OutOfMemoryError; {:try_start_47 .. :try_end_4d} :catch_4e

    goto :goto_5d

    :catch_4e
    move-exception v0

    .line 232
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->exception:Ljava/lang/Exception;

    goto :goto_5d

    :catch_56
    move-exception v0

    .line 227
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->exception:Ljava/lang/Exception;

    .line 234
    :goto_5d
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_69

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_64
    monitor-exit v0

    return v2

    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_66

    throw v1

    .line 241
    :cond_69
    :goto_69
    iget-object v4, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 242
    :try_start_6c
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->flushed:Z

    if-eqz v0, :cond_74

    .line 243
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->releaseOutputBufferInternal(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V

    goto :goto_8e

    .line 244
    :cond_74
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 245
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    .line 246
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->releaseOutputBufferInternal(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V

    goto :goto_8e

    .line 248
    :cond_83
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    iput v0, v3, Lcom/google/android/exoplayer2/decoder/OutputBuffer;->skippedOutputBufferCount:I

    .line 249
    iput v2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 253
    :goto_8e
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->releaseInputBufferInternal(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 254
    monitor-exit v4

    return v5

    :catchall_93
    move-exception v0

    monitor-exit v4
    :try_end_95
    .catchall {:try_start_6c .. :try_end_95} :catchall_93

    throw v0

    :catchall_96
    move-exception v1

    .line 214
    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v1
.end method

.method private maybeNotifyDecodeLoop()V
    .registers 2

    .line 181
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->canDecodeBuffer()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_b
    return-void
.end method

.method private maybeThrowException()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_5

    return-void

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->exception:Ljava/lang/Exception;

    throw v0
.end method

.method private releaseInputBufferInternal(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 264
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 265
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method private releaseOutputBufferInternal(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 269
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/OutputBuffer;->clear()V

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method private run()V
    .registers 3

    .line 188
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->decode()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_4} :catch_8

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    return-void

    :catch_8
    move-exception v0

    .line 193
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected abstract createInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method protected abstract createOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method protected abstract createUnexpectedDecodeException(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation
.end method

.method protected abstract decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/OutputBuffer;Z)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public final dequeueInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->maybeThrowException()V

    .line 91
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 92
    iget v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_20

    :cond_17
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget v3, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    aget-object v1, v1, v3

    :goto_20
    iput-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 94
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    monitor-exit v0

    return-object v1

    :catchall_26
    move-exception v1

    .line 95
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeueInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final dequeueOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->maybeThrowException()V

    .line 113
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    .line 114
    monitor-exit v0

    return-object v1

    .line 116
    :cond_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    monitor-exit v0

    return-object v1

    :catchall_1b
    move-exception v1

    .line 117
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final flush()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 135
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->flushed:Z

    const/4 v1, 0x0

    .line 136
    iput v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    .line 137
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-eqz v1, :cond_15

    .line 138
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->releaseInputBufferInternal(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    const/4 v1, 0x0

    .line 139
    iput-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 141
    :cond_15
    :goto_15
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 142
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->releaseInputBufferInternal(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    goto :goto_15

    .line 144
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 145
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->releaseOutputBufferInternal(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V

    goto :goto_29

    .line 147
    :cond_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public final queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->maybeThrowException()V

    .line 102
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-ne p1, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 103
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 104
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->maybeNotifyDecodeLoop()V

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 106
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .registers 2

    .line 25
    check-cast p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    return-void
.end method

.method public release()V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 153
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->released:Z

    .line 154
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 155
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1a

    .line 157
    :try_start_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->decodeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_19

    .line 159
    :catch_12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_19
    return-void

    :catchall_1a
    move-exception v1

    .line 155
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method protected releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->releaseOutputBufferInternal(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V

    .line 128
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->maybeNotifyDecodeLoop()V

    .line 129
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method protected final setInitialInputBufferSize(I)V
    .registers 6

    .line 81
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    array-length v1, v0

    :goto_11
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    .line 83
    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1b
    return-void
.end method

###### Class com.google.android.exoplayer2.decoder.SimpleDecoder.AnonymousClass1 (com.google.android.exoplayer2.decoder.SimpleDecoder$1)
.class Lcom/google/android/exoplayer2/decoder/SimpleDecoder$1;
.super Ljava/lang/Thread;
.source "SimpleDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/decoder/SimpleDecoder;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/decoder/SimpleDecoder;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder$1;->this$0:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder$1;->this$0:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->access$000(Lcom/google/android/exoplayer2/decoder/SimpleDecoder;)V

    return-void
.end method
