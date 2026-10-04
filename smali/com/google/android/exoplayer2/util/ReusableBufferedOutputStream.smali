###### Class com.google.android.exoplayer2.util.ReusableBufferedOutputStream (com.google.android.exoplayer2.util.ReusableBufferedOutputStream)
.class public final Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "ReusableBufferedOutputStream.java"


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;->closed:Z

    .line 44
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_8

    const/4 v0, 0x0

    goto :goto_9

    :catch_8
    move-exception v0

    .line 49
    :goto_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v1

    if-nez v0, :cond_13

    move-object v0, v1

    :cond_13
    :goto_13
    if-eqz v0, :cond_18

    .line 56
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    :cond_18
    return-void
.end method

.method public reset(Ljava/io/OutputStream;)V
    .registers 3

    .line 68
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;->closed:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 69
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;->out:Ljava/io/OutputStream;

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;->count:I

    .line 71
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;->closed:Z

    return-void
.end method
