###### Class com.google.android.exoplayer2.util.AtomicFile (com.google.android.exoplayer2.util.AtomicFile)
.class public final Lcom/google/android/exoplayer2/util/AtomicFile;
.super Ljava/lang/Object;
.source "AtomicFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AtomicFile"


# instance fields
.field private final backupName:Ljava/io/File;

.field private final baseName:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    .line 53
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bak"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    return-void
.end method

.method private restoreBackup()V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_14
    return-void
.end method


# virtual methods
.method public delete()V
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public endWrite(Ljava/io/OutputStream;)V
    .registers 2

    .line 128
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 130
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public openRead()Ljava/io/InputStream;
    .registers 3

    .line 142
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/AtomicFile;->restoreBackup()V

    .line 143
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public startWrite()Ljava/io/OutputStream;
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "AtomicFile"

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t rename file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to backup file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 98
    :cond_3d
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 103
    :cond_42
    :goto_42
    :try_start_42
    new-instance v0, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_49} :catch_4a

    goto :goto_5e

    :catch_4a
    move-exception v0

    .line 105
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 110
    :try_start_57
    new-instance v0, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_5e} :catch_5f

    :goto_5e
    return-object v0

    :catch_5f
    move-exception v0

    .line 112
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 107
    :cond_79
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t create directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class com.google.android.exoplayer2.util.AtomicFile.AtomicFileOutputStream (com.google.android.exoplayer2.util.AtomicFile$AtomicFileOutputStream)
.class final Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;
.super Ljava/io/OutputStream;
.source "AtomicFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/AtomicFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AtomicFileOutputStream"
.end annotation


# instance fields
.field private closed:Z

.field private final fileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 158
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->closed:Z

    .line 159
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 164
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->closed:Z

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->flush()V

    .line 170
    :try_start_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    const-string v1, "AtomicFile"

    const-string v2, "Failed to sync file descriptor:"

    .line 172
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    :goto_1d
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 3
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    return-void
.end method
