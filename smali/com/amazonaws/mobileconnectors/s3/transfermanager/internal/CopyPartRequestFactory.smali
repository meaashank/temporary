###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.CopyPartRequestFactory (com.amazonaws.mobileconnectors.s3.transfermanager.internal.CopyPartRequestFactory)
.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;
.super Ljava/lang/Object;
.source "CopyPartRequestFactory.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

.field private d:I

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/CopyObjectRequest;Ljava/lang/String;JJ)V
    .registers 9

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->d:I

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->e:J

    .line 47
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 48
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->a:Ljava/lang/String;

    .line 49
    iput-wide p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->b:J

    .line 50
    iput-wide p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->f:J

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/model/CopyPartRequest;)V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->q()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 88
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 89
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->q()Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->a(Ljava/util/List;)V

    .line 90
    :cond_11
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->u()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 91
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 92
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->u()Ljava/util/Date;

    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->c(Ljava/util/Date;)V

    .line 93
    :cond_22
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->r()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 94
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 95
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->r()Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->c(Ljava/util/List;)V

    .line 96
    :cond_33
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 97
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->g(Ljava/lang/String;)V

    .line 98
    :cond_44
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->s()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 99
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 100
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->s()Ljava/util/Date;

    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->a(Ljava/util/Date;)V

    :cond_55
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Z
    .registers 6

    monitor-enter p0

    .line 54
    :try_start_1
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->f:J
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

.method public declared-synchronized b()Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .registers 9

    monitor-enter p0

    .line 63
    :try_start_1
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->b:J

    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->f:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 65
    new-instance v2, Lcom/amazonaws/services/s3/model/CopyPartRequest;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/CopyPartRequest;-><init>()V

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 66
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 67
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->a:Ljava/lang/String;

    .line 68
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    iget v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->d:I

    .line 69
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->b(I)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 71
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->k()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->j(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 72
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->l(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 73
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/Long;

    iget-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->e:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 74
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->b(Ljava/lang/Long;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/Long;

    iget-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->e:J

    const/4 v6, 0x0

    add-long/2addr v4, v0

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 75
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->d(Ljava/lang/Long;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 76
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->w()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->b(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->c:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 77
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->x()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->d(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    .line 79
    invoke-direct {p0, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->a(Lcom/amazonaws/services/s3/model/CopyPartRequest;)V

    .line 80
    iget-wide v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->e:J

    const/4 v5, 0x0

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->e:J

    .line 81
    iget-wide v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->f:J

    const/4 v5, 0x0

    sub-long/2addr v3, v0

    iput-wide v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->f:J
    :try_end_8e
    .catchall {:try_start_1 .. :try_end_8e} :catchall_90

    .line 83
    monitor-exit p0

    return-object v2

    :catchall_90
    move-exception v0

    .line 62
    monitor-exit p0

    throw v0
.end method
