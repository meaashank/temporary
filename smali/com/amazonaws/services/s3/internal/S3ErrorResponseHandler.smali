###### Class com.amazonaws.services.s3.internal.S3ErrorResponseHandler (com.amazonaws.services.s3.internal.S3ErrorResponseHandler)
.class public Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;
.super Ljava/lang/Object;
.source "S3ErrorResponseHandler.java"

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler<",
        "Lcom/amazonaws/AmazonServiceException;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;

.field private static final b:I = 0x1f4


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-class v0, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)Lcom/amazonaws/AmazonServiceException$ErrorType;
    .registers 3

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_7

    .line 126
    sget-object p1, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    goto :goto_9

    :cond_7
    sget-object p1, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    :goto_9
    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .registers 6

    .line 100
    new-instance v0, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->e()I

    move-result p1

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->c(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->a(I)V

    .line 104
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a(I)Lcom/amazonaws/AmazonServiceException$ErrorType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->a(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 105
    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->a()Ljava/util/Map;

    move-result-object p1

    const-string p2, "x-amz-request-id"

    .line 106
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->a(Ljava/lang/String;)V

    const-string p2, "x-amz-id-2"

    .line 107
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->e(Ljava/lang/String;)V

    const-string p2, "X-Amz-Cf-Id"

    .line 108
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->f(Ljava/lang/String;)V

    .line 109
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "x-amz-bucket-region"

    const-string v2, "x-amz-bucket-region"

    .line 111
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 110
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->a(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .registers 8

    .line 58
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->b()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_f

    .line 60
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object p1

    return-object p1

    .line 65
    :cond_f
    :try_start_f
    invoke-static {v0}, Lcom/amazonaws/util/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_7f

    .line 73
    :try_start_13
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->a(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    const-string v2, "Error/Message"

    .line 74
    invoke-static {v2, v1}, Lcom/amazonaws/util/XpathUtils;->b(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error/Code"

    .line 75
    invoke-static {v3, v1}, Lcom/amazonaws/util/XpathUtils;->b(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error/RequestId"

    .line 76
    invoke-static {v4, v1}, Lcom/amazonaws/util/XpathUtils;->b(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error/HostId"

    .line 77
    invoke-static {v5, v1}, Lcom/amazonaws/util/XpathUtils;->b(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 78
    new-instance v5, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v5, v2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->e()I

    move-result v2

    .line 80
    invoke-virtual {v5, v2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->a(I)V

    .line 81
    invoke-direct {p0, v2}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a(I)Lcom/amazonaws/AmazonServiceException$ErrorType;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->a(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 82
    invoke-virtual {v5, v3}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->c(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5, v4}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->a(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5, v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->e(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "X-Amz-Cf-Id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->f(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_5a} :catch_5b

    return-object v5

    :catch_5b
    move-exception v1

    .line 88
    sget-object v2, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v2}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 89
    sget-object v2, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a:Lcom/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed in parsing the response as XML: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 91
    :cond_7a
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object p1

    return-object p1

    :catch_7f
    move-exception v0

    .line 67
    sget-object v1, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 68
    sget-object v1, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a:Lcom/amazonaws/logging/Log;

    const-string v2, "Failed in reading the error response"

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 70
    :cond_8f
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic b(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object p1

    return-object p1
.end method
