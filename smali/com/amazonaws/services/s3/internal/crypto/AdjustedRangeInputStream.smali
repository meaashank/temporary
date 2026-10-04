###### Class com.amazonaws.services.s3.internal.crypto.AdjustedRangeInputStream (com.amazonaws.services.s3.internal.crypto.AdjustedRangeInputStream)
.class public Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;
.super Lcom/amazonaws/internal/SdkInputStream;
.source "AdjustedRangeInputStream.java"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .registers 6

    .line 40
    invoke-direct {p0}, Lcom/amazonaws/internal/SdkInputStream;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->a:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->c:Z

    .line 43
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->a(JJ)V

    return-void
.end method

.method private a(JJ)V
    .registers 8

    const-wide/16 v0, 0x10

    cmp-long v2, p1, v0

    if-gez v2, :cond_8

    long-to-int v0, p1

    goto :goto_d

    .line 59
    :cond_8
    rem-long v0, p1, v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x10

    :goto_d
    if-eqz v0, :cond_19

    :goto_f
    if-lez v0, :cond_19

    .line 68
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_19
    const/4 v0, 0x0

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x1

    add-long/2addr p3, p1

    .line 75
    iput-wide p3, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    return-void
.end method


# virtual methods
.method protected a()Ljava/io/InputStream;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public available()I
    .registers 7

    .line 150
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->e()V

    .line 151
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v1, v0

    .line 152
    iget-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_11

    return v0

    .line 157
    :cond_11
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .registers 2

    .line 168
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->c:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->c:Z

    .line 170
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 172
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->e()V

    return-void
.end method

.method public read()I
    .registers 7

    .line 84
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->e()V

    .line 88
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_e

    const/4 v0, -0x1

    goto :goto_14

    .line 92
    :cond_e
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_14
    if-eq v0, v2, :cond_1e

    .line 98
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    goto :goto_23

    .line 101
    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->close()V

    .line 102
    iput-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    :goto_23
    return v0
.end method

.method public read([BII)I
    .registers 12

    .line 113
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->e()V

    .line 116
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_e

    const/4 p1, -0x1

    goto :goto_2b

    :cond_e
    int-to-long v0, p3

    .line 122
    iget-wide v5, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    cmp-long v7, v0, v5

    if-lez v7, :cond_25

    .line 126
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    const-wide/32 v5, 0x7fffffff

    cmp-long p3, v0, v5

    if-gez p3, :cond_22

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    long-to-int p3, v0

    goto :goto_25

    :cond_22
    const p3, 0x7fffffff

    .line 130
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    :goto_2b
    if-eq p1, v2, :cond_34

    .line 135
    iget-wide p2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    goto :goto_39

    .line 138
    :cond_34
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->close()V

    .line 139
    iput-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->b:J

    :goto_39
    return p1
.end method
