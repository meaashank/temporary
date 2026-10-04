###### Class com.amazonaws.mobileconnectors.s3.transferutility.TransferThreadPool (com.amazonaws.mobileconnectors.s3.transferutility.TransferThreadPool)
.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;
.super Ljava/lang/Object;
.source "TransferThreadPool.java"


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;

.field private static b:Ljava/util/concurrent/ExecutorService; = null

.field private static c:Ljava/util/concurrent/ExecutorService; = null

.field private static final d:I = 0xfa


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->a:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 49
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->d()I

    move-result v0

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->a(I)V

    .line 50
    instance-of v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;

    if-eqz v0, :cond_12

    .line 51
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    .line 53
    :cond_12
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .registers 2

    .line 58
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 59
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 60
    sput-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->c:Ljava/util/concurrent/ExecutorService;

    .line 62
    :cond_c
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_17

    .line 63
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 64
    sput-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->b:Ljava/util/concurrent/ExecutorService;

    :cond_17
    return-void
.end method

.method static declared-synchronized a(I)V
    .registers 6

    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;

    monitor-enter v0

    .line 36
    :try_start_3
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->a:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing the thread pool of size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_40

    int-to-double v1, p0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 38
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    :try_start_20
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    const/4 v1, 0x1

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 40
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_34

    .line 41
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->b(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->b:Ljava/util/concurrent/ExecutorService;

    .line 43
    :cond_34
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_3e

    .line 44
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->b(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sput-object p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->c:Ljava/util/concurrent/ExecutorService;
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_40

    .line 46
    :cond_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    .line 35
    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 75
    :cond_3
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide/16 v0, 0xfa

    .line 78
    :try_start_8
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 80
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_1e

    .line 83
    :catch_14
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private static b(I)Ljava/util/concurrent/ExecutorService;
    .registers 9

    .line 93
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0xa

    move-object v0, v7

    move v1, p0

    move v2, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 100
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-virtual {v7, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 p0, 0x1

    .line 101
    invoke-virtual {v7, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v7
.end method
