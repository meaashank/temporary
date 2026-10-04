###### Class com.amazonaws.services.s3.internal.MultiFileOutputStream (com.amazonaws.services.s3.internal.MultiFileOutputStream)
.class public Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;
.super Ljava/io/OutputStream;
.source "MultiFileOutputStream.java"

# interfaces
.implements Lcom/amazonaws/services/s3/OnFileDelete;


# static fields
.field private static final a:I = 0x14

.field private static final b:I = 0x5

.field private static final c:I = 0x500000


# instance fields
.field private final d:Ljava/io/File;

.field private final e:Ljava/lang/String;

.field private f:I

.field private g:J

.field private h:J

.field private i:Lcom/amazonaws/services/s3/UploadObjectObserver;

.field private j:I

.field private k:J

.field private l:Ljava/io/FileOutputStream;

.field private m:Z

.field private n:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/32 v0, 0x500000

    .line 44
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->g:J

    const-wide v0, 0x7fffffffffffffffL

    .line 45
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->h:J

    .line 68
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->d:Ljava/io/File;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    .line 80
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/32 v0, 0x500000

    .line 44
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->g:J

    const-wide v0, 0x7fffffffffffffffL

    .line 45
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->h:J

    if-eqz p1, :cond_36

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_36

    if-eqz p2, :cond_2e

    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->d:Ljava/io/File;

    .line 90
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->e:Ljava/lang/String;

    return-void

    .line 86
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please specify a non-empty name prefix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_36
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must be a writable directory"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static g()Ljava/lang/String;
    .registers 2

    .line 302
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMdd-hhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/io/FileOutputStream;
    .registers 6

    .line 176
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->m:Z

    if-nez v0, :cond_4b

    .line 179
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->l:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->j:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->g:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_48

    .line 180
    :cond_11
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->l:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 181
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->l:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 183
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->i:Lcom/amazonaws/services/s3/UploadObjectObserver;

    new-instance v2, Lcom/amazonaws/services/s3/internal/PartCreationEvent;

    iget v3, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->f:I

    .line 184
    invoke-virtual {p0, v3}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->a(I)Ljava/io/File;

    move-result-object v3

    iget v4, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->f:I

    invoke-direct {v2, v3, v4, v1, p0}, Lcom/amazonaws/services/s3/internal/PartCreationEvent;-><init>(Ljava/io/File;IZLcom/amazonaws/services/s3/OnFileDelete;)V

    .line 183
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/UploadObjectObserver;->a(Lcom/amazonaws/services/s3/internal/PartCreationEvent;)V

    .line 186
    :cond_2d
    iput v1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->j:I

    .line 187
    iget v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->f:I

    .line 188
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->k()V

    .line 189
    iget v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->f:I

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->a(I)Ljava/io/File;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 191
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->l:Ljava/io/FileOutputStream;

    .line 193
    :cond_48
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->l:Ljava/io/FileOutputStream;

    return-object v0

    .line 177
    :cond_4b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output stream is already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private k()V
    .registers 6

    .line 211
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->n:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_1d

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->h:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    goto :goto_1d

    .line 215
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->n:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    .line 219
    new-instance v1, Lcom/amazonaws/AbortedException;

    invoke-direct {v1, v0}, Lcom/amazonaws/AbortedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/UploadObjectObserver;JJ)Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;
    .registers 8

    if-eqz p1, :cond_3d

    .line 114
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->i:Lcom/amazonaws/services/s3/UploadObjectObserver;

    const/4 p1, 0x1

    shl-long v0, p2, p1

    cmp-long p1, p4, v0

    if-ltz p1, :cond_1e

    .line 120
    iput-wide p2, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->g:J

    .line 121
    iput-wide p4, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->h:J

    .line 122
    div-long/2addr p4, p2

    long-to-int p1, p4

    if-gez p1, :cond_15

    const/4 p1, 0x0

    goto :goto_1b

    .line 123
    :cond_15
    new-instance p2, Ljava/util/concurrent/Semaphore;

    invoke-direct {p2, p1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    move-object p1, p2

    :goto_1b
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->n:Ljava/util/concurrent/Semaphore;

    return-object p0

    .line 116
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum temporary disk space must be at least twice as large as the part size: partSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", diskSize="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Observer must be specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(I)Ljava/io/File;
    .registers 6

    .line 281
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->d:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()V
    .registers 6

    const/4 v0, 0x0

    .line 256
    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->b()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 257
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->a(I)Ljava/io/File;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 259
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_33

    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring failure to delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_36
    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/internal/FileDeletionEvent;)V
    .registers 2

    .line 198
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->n:Ljava/util/concurrent/Semaphore;

    if-eqz p1, :cond_9

    .line 199
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->n:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_9
    return-void
.end method

.method public b()I
    .registers 2

    .line 272
    iget v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->f:I

    return v0
.end method

.method public c()J
    .registers 3

    .line 285
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->g:J

    return-wide v0
.end method

.method public close()V
    .registers 8

    .line 232
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->m:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->m:Z

    .line 236
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->l:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_56

    .line 237
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->l:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 238
    iget v1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->f:I

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->a(I)Ljava/io/File;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_44

    .line 240
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_56

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring failure to delete empty file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    goto :goto_56

    .line 246
    :cond_44
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->i:Lcom/amazonaws/services/s3/UploadObjectObserver;

    new-instance v2, Lcom/amazonaws/services/s3/internal/PartCreationEvent;

    iget v3, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->f:I

    .line 247
    invoke-virtual {p0, v3}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->a(I)Ljava/io/File;

    move-result-object v3

    iget v4, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->f:I

    invoke-direct {v2, v3, v4, v0, p0}, Lcom/amazonaws/services/s3/internal/PartCreationEvent;-><init>(Ljava/io/File;IZLcom/amazonaws/services/s3/OnFileDelete;)V

    .line 246
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/UploadObjectObserver;->a(Lcom/amazonaws/services/s3/internal/PartCreationEvent;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public d()Ljava/io/File;
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->d:Ljava/io/File;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()J
    .registers 3

    .line 297
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->k:J

    return-wide v0
.end method

.method public flush()V
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->l:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_9

    .line 226
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->l:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    :cond_9
    return-void
.end method

.method public h()Z
    .registers 2

    .line 306
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->m:Z

    return v0
.end method

.method public i()J
    .registers 3

    .line 310
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->h:J

    return-wide v0
.end method

.method public write(I)V
    .registers 6

    .line 134
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->j()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 135
    iget p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->j:I

    .line 136
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->k:J

    return-void
.end method

.method public write([B)V
    .registers 6

    .line 146
    array-length v0, p1

    if-nez v0, :cond_4

    return-void

    .line 149
    :cond_4
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->j()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 150
    iget v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->j:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->j:I

    .line 151
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->k:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->k:J

    return-void
.end method

.method public write([BII)V
    .registers 6

    .line 161
    array-length v0, p1

    if-nez v0, :cond_4

    return-void

    .line 164
    :cond_4
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->j()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 165
    iget p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->j:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->j:I

    .line 166
    iget-wide p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->k:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->k:J

    return-void
.end method
