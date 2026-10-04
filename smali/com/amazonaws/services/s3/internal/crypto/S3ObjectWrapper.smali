###### Class com.amazonaws.services.s3.internal.crypto.S3ObjectWrapper (com.amazonaws.services.s3.internal.crypto.S3ObjectWrapper)
.class Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
.super Ljava/lang/Object;
.source "S3ObjectWrapper.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/amazonaws/services/s3/model/S3Object;

.field private final b:Lcom/amazonaws/services/s3/model/S3ObjectId;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/S3ObjectId;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    .line 48
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    .line 49
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->b:Lcom/amazonaws/services/s3/model/S3ObjectId;

    return-void

    .line 46
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 145
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 150
    :goto_16
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_28

    goto :goto_16

    .line 154
    :cond_20
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_28
    move-exception v0

    .line 154
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 155
    throw v0
.end method


# virtual methods
.method a(Ljava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;"
        }
    .end annotation

    if-eqz p1, :cond_f

    const-string v0, "x-amz-cek-alg"

    .line 178
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 179
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p1

    return-object p1

    .line 181
    :cond_f
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Object;->a()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->h()Ljava/util/Map;

    move-result-object p1

    const-string v0, "x-amz-cek-alg"

    .line 183
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 184
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/amazonaws/services/s3/model/S3ObjectId;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->b:Lcom/amazonaws/services/s3/model/S3ObjectId;

    return-object v0
.end method

.method a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-void
.end method

.method a(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->a(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    return-void
.end method

.method a(Ljava/io/InputStream;)V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->a(Ljava/lang/String;)V

    return-void
.end method

.method b()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->a()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->b(Ljava/lang/String;)V

    return-void
.end method

.method c()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->c(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->close()V

    return-void
.end method

.method d()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final g()Z
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->a()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->h()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "x-amz-crypto-instr-file"

    .line 112
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method final h()Z
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->a()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->h()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_26

    const-string v1, "x-amz-iv"

    .line 123
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "x-amz-key-v2"

    .line 124
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "x-amz-key"

    .line 125
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method i()Ljava/lang/String;
    .registers 5

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 137
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method j()Lcom/amazonaws/services/s3/model/S3Object;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
