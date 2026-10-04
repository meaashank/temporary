###### Class com.amazonaws.mobileconnectors.s3.transferutility.TransferObserver (com.amazonaws.mobileconnectors.s3.transferutility.TransferObserver)
.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
.super Ljava/lang/Object;
.source "TransferObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field private h:Ljava/lang/String;

.field private i:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

.field private j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;


# direct methods
.method constructor <init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V
    .registers 3

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    .line 110
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    return-void
.end method

.method constructor <init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 6

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    .line 76
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 77
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->c:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->d:Ljava/lang/String;

    .line 79
    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->h:Ljava/lang/String;

    .line 80
    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->e:J

    .line 81
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->g:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-void
.end method

.method constructor <init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V
    .registers 7

    .line 97
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;-><init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 98
    invoke-virtual {p0, p6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;J)J
    .registers 3

    .line 49
    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->g:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-object p1
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;J)J
    .registers 3

    .line 49
    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->e:J

    return-wide p1
.end method


# virtual methods
.method public a()V
    .registers 5

    const/4 v0, 0x0

    .line 120
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a(I)Landroid/database/Cursor;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1d

    .line 121
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 122
    invoke-virtual {p0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a(Landroid/database/Cursor;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    :cond_12
    if-eqz v1, :cond_17

    .line 126
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_17
    return-void

    :catchall_18
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1e

    :catchall_1d
    move-exception v1

    :goto_1e
    if-eqz v0, :cond_23

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_23
    throw v1
.end method

.method protected a(Landroid/database/Cursor;)V
    .registers 4

    const-string v0, "bucket_name"

    .line 137
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->c:Ljava/lang/String;

    const-string v0, "key"

    .line 138
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->d:Ljava/lang/String;

    const-string v0, "bytes_total"

    .line 139
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->e:J

    const-string v0, "bytes_current"

    .line 141
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 140
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->f:J

    const-string v0, "state"

    .line 143
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 142
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->getState(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->g:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const-string v0, "file"

    .line 144
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V
    .registers 4

    if-eqz p1, :cond_23

    .line 158
    monitor-enter p0

    .line 160
    :try_start_3
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->i()V

    .line 164
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$1;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    .line 165
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->a(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    .line 166
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->i:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    .line 167
    iget p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->i:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    invoke-static {p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->a(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    .line 168
    monitor-exit p0

    goto :goto_23

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1

    :cond_23
    :goto_23
    return-void
.end method

.method public b()I
    .registers 2

    .line 178
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .registers 3

    .line 205
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->e:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()J
    .registers 3

    .line 223
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->f:J

    return-wide v0
.end method

.method public h()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->g:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-object v0
.end method

.method public i()V
    .registers 4

    .line 239
    monitor-enter p0

    .line 240
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->i:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 241
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->i:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    invoke-static {v0, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->b(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    .line 242
    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->i:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    .line 244
    :cond_f
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    if-eqz v0, :cond_1c

    .line 245
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    invoke-static {v0, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->b(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    .line 246
    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    .line 248
    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransferObserver{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bucket=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", key=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bytesTotal="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", bytesTransferred="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", transferState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->g:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", filePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.mobileconnectors.s3.transferutility.TransferObserver.AnonymousClass1 (com.amazonaws.mobileconnectors.s3.transferutility.TransferObserver$1)
.class synthetic Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$1;
.super Ljava/lang/Object;
.source "TransferObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.amazonaws.mobileconnectors.s3.transferutility.TransferObserver.TransferStatusListener (com.amazonaws.mobileconnectors.s3.transferutility.TransferObserver$TransferStatusListener)
.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;
.super Ljava/lang/Object;
.source "TransferObserver.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferStatusListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;


# direct methods
.method private constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$1;)V
    .registers 3

    .line 254
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;)V

    return-void
.end method


# virtual methods
.method public a(IJJ)V
    .registers 6

    .line 265
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    invoke-static {p1, p2, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;J)J

    .line 266
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    invoke-static {p1, p4, p5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;J)J

    return-void
.end method

.method public a(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V
    .registers 3

    .line 259
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    invoke-static {p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-void
.end method

.method public a(ILjava/lang/Exception;)V
    .registers 3

    return-void
.end method
