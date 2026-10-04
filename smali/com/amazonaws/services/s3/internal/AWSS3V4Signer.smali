###### Class com.amazonaws.services.s3.internal.AWSS3V4Signer (com.amazonaws.services.s3.internal.AWSS3V4Signer)
.class public Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;
.super Lcom/amazonaws/auth/AWS4Signer;
.source "AWSS3V4Signer.java"


# static fields
.field private static final i:Ljava/lang/String; = "STREAMING-AWS4-HMAC-SHA256-PAYLOAD"

.field private static final j:I = 0x1000


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/AWS4Signer;-><init>(Z)V

    return-void
.end method

.method static o(Lcom/amazonaws/Request;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)J"
        }
    .end annotation

    .line 136
    invoke-interface {p0}, Lcom/amazonaws/Request;->h()Ljava/io/InputStream;

    move-result-object p0

    .line 137
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_21

    const-wide/16 v0, 0x0

    const/16 v2, 0x1000

    .line 142
    new-array v2, v2, [B

    const/4 v3, -0x1

    .line 144
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 145
    :goto_14
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v3, :cond_1d

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_14

    .line 148
    :cond_1d
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-wide v0

    .line 138
    :cond_21
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Failed to get content length"

    invoke-direct {p0, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static p(Lcom/amazonaws/Request;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)Z"
        }
    .end annotation

    .line 123
    invoke-interface {p0}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    instance-of v0, v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    if-nez v0, :cond_13

    .line 124
    invoke-interface {p0}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p0

    instance-of p0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method


# virtual methods
.method protected a(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->p(Lcom/amazonaws/Request;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 52
    invoke-interface {p1}, Lcom/amazonaws/Request;->h()Ljava/io/InputStream;

    move-result-object v2

    .line 53
    invoke-virtual {p2}, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->a()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {p2}, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->b()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {p2}, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->c()[B

    move-result-object v3

    .line 57
    invoke-virtual {p2}, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->d()[B

    move-result-object p2

    .line 56
    invoke-static {p2}, Lcom/amazonaws/util/BinaryUtils;->a([B)Ljava/lang/String;

    move-result-object v6

    .line 58
    new-instance p2, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;

    move-object v1, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;-><init>(Ljava/io/InputStream;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWS4Signer;)V

    .line 60
    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    :cond_28
    return-void
.end method

.method protected e(Lcom/amazonaws/Request;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "x-amz-content-sha256"

    const-string v1, "required"

    .line 79
    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->p(Lcom/amazonaws/Request;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 82
    invoke-interface {p1}, Lcom/amazonaws/Request;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 85
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_24

    .line 97
    :cond_20
    :try_start_20
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->o(Lcom/amazonaws/Request;)J

    move-result-wide v0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_24} :catch_3d

    :goto_24
    const-string v2, "x-amz-decoded-content-length"

    .line 105
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Length"

    .line 111
    invoke-static {v0, v1}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->a(J)J

    move-result-wide v0

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-interface {p1, v2, v0}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "STREAMING-AWS4-HMAC-SHA256-PAYLOAD"

    return-object p1

    :catch_3d
    move-exception p1

    .line 99
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Cannot get the content-lenght of the request content."

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 114
    :cond_46
    invoke-super {p0, p1}, Lcom/amazonaws/auth/AWS4Signer;->e(Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected f(Lcom/amazonaws/Request;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p1, "UNSIGNED-PAYLOAD"

    return-object p1
.end method
