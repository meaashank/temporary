###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferManagerUtils (com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferManagerUtils)
.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;
.super Ljava/lang/Object;
.source "TransferManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/amazonaws/services/s3/model/CopyObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;J)J
    .registers 6

    long-to-double p2, p2

    const-wide v0, 0x40c3880000000000L    # 10000.0

    .line 159
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v0

    .line 162
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    .line 164
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->c()J

    move-result-wide p0

    long-to-double p0, p0

    .line 163
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J
    .registers 6

    .line 88
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->b(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 92
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->o()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 93
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->l()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_28

    .line 94
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->l()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->k()J

    move-result-wide v0

    return-wide v0

    :cond_28
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static a(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;)J
    .registers 6

    .line 113
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x40c3880000000000L    # 10000.0

    .line 114
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 116
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 117
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->a()J

    move-result-wide p0

    long-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;
    .registers 2

    if-eqz p1, :cond_10

    .line 174
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Waiting:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne p0, p1, :cond_9

    .line 175
    sget-object p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->CANCELLED_BEFORE_START:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    return-object p0

    .line 176
    :cond_9
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->InProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne p0, p1, :cond_10

    .line 177
    sget-object p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->CANCELLED:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    return-object p0

    .line 180
    :cond_10
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Waiting:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne p0, p1, :cond_17

    .line 181
    sget-object p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->NOT_STARTED:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    return-object p0

    .line 183
    :cond_17
    sget-object p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->NO_EFFECT:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    return-object p0
.end method

.method public static a()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 2

    .line 42
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils$1;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils$1;-><init>()V

    const/16 v1, 0xa

    .line 52
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static a(Lcom/amazonaws/services/s3/model/PutObjectRequest;Z)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    return v0

    .line 76
    :cond_4
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->b(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public static b(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;
    .registers 2

    .line 141
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->k()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 142
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->k()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;)Z
    .registers 5

    .line 133
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J

    move-result-wide v0

    .line 134
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->b()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferManagerUtils.AnonymousClass1 (com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferManagerUtils$1)
.class final Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils$1;
.super Ljava/lang/Object;
.source "TransferManagerUtils.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->a()Ljava/util/concurrent/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private a:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils$1;->a:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    .line 47
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s3-transfer-manager-worker-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils$1;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils$1;->a:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
