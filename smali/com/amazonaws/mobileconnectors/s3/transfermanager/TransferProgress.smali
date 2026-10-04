###### Class com.amazonaws.mobileconnectors.s3.transfermanager.TransferProgress (com.amazonaws.mobileconnectors.s3.transfermanager.TransferProgress)
.class public final Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
.super Ljava/lang/Object;
.source "TransferProgress.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final c:Lcom/amazonaws/logging/Log;


# instance fields
.field protected volatile a:J

.field protected volatile b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->c:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->a:J

    const-wide/16 v0, -0x1

    .line 32
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->b:J

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized a(J)V
    .registers 8

    monitor-enter p0

    .line 87
    :try_start_1
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->a:J

    const/4 v2, 0x0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->a:J

    .line 88
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_47

    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->a:J

    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->b:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_47

    .line 90
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->b:J

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->a:J

    .line 91
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->c:Lcom/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 92
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->c:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of bytes transfered is more than the actual total bytes to transfer. Total number of bytes to Transfer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Bytes Transferred : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->a:J

    const/4 v4, 0x0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_49

    .line 98
    :cond_47
    monitor-exit p0

    return-void

    :catchall_49
    move-exception p1

    .line 86
    monitor-exit p0

    throw p1
.end method

.method public b()J
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->a:J

    return-wide v0
.end method

.method public b(J)V
    .registers 3

    .line 101
    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->b:J

    return-void
.end method

.method public c()J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->b:J

    return-wide v0
.end method

.method public declared-synchronized d()D
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_1
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->e()D

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-wide v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()D
    .registers 6

    monitor-enter p0

    .line 78
    :try_start_1
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->b()J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2b

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_f

    const-wide/16 v0, 0x0

    .line 79
    monitor-exit p0

    return-wide v0

    .line 81
    :cond_f
    :try_start_f
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_18

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_29

    :cond_18
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->a:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->b:J
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_2b

    long-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    :goto_29
    monitor-exit p0

    return-wide v0

    :catchall_2b
    move-exception v0

    .line 77
    monitor-exit p0

    throw v0
.end method
