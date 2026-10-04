###### Class com.amazonaws.services.s3.internal.S3QueryStringSigner (com.amazonaws.services.s3.internal.S3QueryStringSigner)
.class public Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;
.super Lcom/amazonaws/auth/AbstractAWSSigner;
.source "S3QueryStringSigner.java"


# static fields
.field private static final a:Ljava/lang/Long;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x3e8

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->a:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .registers 4

    .line 61
    invoke-direct {p0}, Lcom/amazonaws/auth/AbstractAWSSigner;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->b:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->c:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->d:Ljava/util/Date;

    if-eqz p2, :cond_c

    return-void

    .line 67
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter resourcePath is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/auth/AWSCredentials;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->a(Lcom/amazonaws/auth/AWSCredentials;)Lcom/amazonaws/auth/AWSCredentials;

    move-result-object p2

    .line 74
    instance-of v0, p2, Lcom/amazonaws/auth/AWSSessionCredentials;

    if-eqz v0, :cond_e

    .line 75
    move-object v0, p2

    check-cast v0, Lcom/amazonaws/auth/AWSSessionCredentials;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->a(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSSessionCredentials;)V

    .line 78
    :cond_e
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->c:Ljava/lang/String;

    invoke-static {v1, v2, p1, v0}, Lcom/amazonaws/services/s3/internal/RestUtils;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-interface {p2}, Lcom/amazonaws/auth/AWSCredentials;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/auth/SigningAlgorithm;->HmacSHA1:Lcom/amazonaws/auth/SigningAlgorithm;

    .line 83
    invoke-super {p0, v1, v2, v3}, Lcom/amazonaws/auth/AbstractAWSSigner;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/SigningAlgorithm;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AWSAccessKeyId"

    .line 86
    invoke-interface {p2}, Lcom/amazonaws/auth/AWSCredentials;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Expires"

    .line 87
    invoke-interface {p1, p2, v0}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Signature"

    .line 88
    invoke-interface {p1, p2, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSSessionCredentials;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/auth/AWSSessionCredentials;",
            ")V"
        }
    .end annotation

    const-string v0, "x-amz-security-token"

    .line 93
    invoke-interface {p2}, Lcom/amazonaws/auth/AWSSessionCredentials;->d()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
