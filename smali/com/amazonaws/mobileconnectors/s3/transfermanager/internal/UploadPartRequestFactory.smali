###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadPartRequestFactory (com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadPartRequestFactory)
.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;
.super Ljava/lang/Object;
.source "UploadPartRequestFactory.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:Ljava/io/File;

.field private final f:Lcom/amazonaws/services/s3/model/PutObjectRequest;

.field private g:I

.field private h:J

.field private i:J

.field private j:Lcom/amazonaws/services/s3/model/SSECustomerKey;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/PutObjectRequest;Ljava/lang/String;J)V
    .registers 7

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->g:I

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->h:J

    .line 48
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->f:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 49
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->c:Ljava/lang/String;

    .line 50
    iput-wide p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->d:J

    .line 51
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->h()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->i()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->b:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->b(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->e:Ljava/io/File;

    .line 54
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->i:J

    .line 55
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->q()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->j:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Z
    .registers 6

    monitor-enter p0

    .line 59
    :try_start_1
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->i:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .registers 13

    monitor-enter p0

    .line 63
    :try_start_1
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->d:J

    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->i:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 64
    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->i:J

    const/4 v4, 0x0

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    .line 67
    :goto_16
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->f:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->o()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 68
    new-instance v3, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;-><init>()V

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->a:Ljava/lang/String;

    .line 69
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->b:Ljava/lang/String;

    .line 70
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->c:Ljava/lang/String;

    .line 71
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    new-instance v11, Lcom/amazonaws/services/s3/internal/InputSubstream;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->f:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 73
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->o()Ljava/io/InputStream;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-object v4, v11

    move-wide v8, v0

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V

    .line 72
    invoke-virtual {v3, v11}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    iget v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->g:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->g:I

    .line 75
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->f(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    .line 76
    invoke-virtual {v3, v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    goto :goto_89

    .line 78
    :cond_58
    new-instance v3, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;-><init>()V

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->a:Ljava/lang/String;

    .line 79
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->b:Ljava/lang/String;

    .line 80
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->c:Ljava/lang/String;

    .line 81
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->e:Ljava/io/File;

    .line 82
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b(Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    iget-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->h:J

    .line 83
    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->d(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    iget v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->g:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->g:I

    .line 84
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->f(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    .line 85
    invoke-virtual {v3, v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->b(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    .line 88
    :goto_89
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->j:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    if-eqz v4, :cond_92

    .line 89
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->j:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 91
    :cond_92
    iget-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->h:J

    const/4 v6, 0x0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->h:J

    .line 92
    iget-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->i:J

    const/4 v6, 0x0

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->i:J

    .line 94
    invoke-virtual {v3, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->a(Z)V

    .line 95
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->f:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->d()Lcom/amazonaws/event/ProgressListener;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->a(Lcom/amazonaws/event/ProgressListener;)V
    :try_end_aa
    .catchall {:try_start_1 .. :try_end_aa} :catchall_ac

    .line 97
    monitor-exit p0

    return-object v3

    :catchall_ac
    move-exception v0

    .line 62
    monitor-exit p0

    throw v0
.end method
