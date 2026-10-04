###### Class com.amazonaws.services.s3.internal.ServiceUtils (com.amazonaws.services.s3.internal.ServiceUtils)
.class public Lcom/amazonaws/services/s3/internal/ServiceUtils;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;
    }
.end annotation


# static fields
.field public static final a:Z = true

.field public static final b:Z = false

.field protected static final c:Lcom/amazonaws/util/DateUtils;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final d:Lcom/amazonaws/logging/Log;

.field private static final e:I = 0x2800


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    const-class v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->d:Lcom/amazonaws/logging/Log;

    .line 70
    new-instance v0, Lcom/amazonaws/util/DateUtils;

    invoke-direct {v0}, Lcom/amazonaws/util/DateUtils;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->c:Lcom/amazonaws/util/DateUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;Z)Lcom/amazonaws/services/s3/model/S3Object;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 364
    :cond_2
    invoke-interface {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;->a()Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const/4 v3, 0x1

    .line 371
    :try_start_b
    invoke-interface {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;->b()Z

    move-result v4

    .line 370
    invoke-static {v2, p0, v4, p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Lcom/amazonaws/services/s3/model/S3Object;Ljava/io/File;ZZ)V
    :try_end_12
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_b .. :try_end_12} :catch_1d
    .catchall {:try_start_b .. :try_end_12} :catchall_1b

    .line 401
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->g()V

    const/4 v3, 0x0

    goto :goto_69

    :catchall_1b
    move-exception p0

    goto :goto_6f

    :catch_1d
    move-exception v4

    .line 374
    :try_start_1e
    invoke-virtual {v4}, Lcom/amazonaws/AmazonClientException;->a()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 387
    invoke-virtual {v4}, Lcom/amazonaws/AmazonClientException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/net/SocketException;

    if-nez v5, :cond_6d

    .line 388
    invoke-virtual {v4}, Lcom/amazonaws/AmazonClientException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljavax/net/ssl/SSLProtocolException;

    if-nez v5, :cond_6d

    if-nez v1, :cond_6c

    .line 395
    sget-object v1, Lcom/amazonaws/services/s3/internal/ServiceUtils;->d:Lcom/amazonaws/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retry the download of object "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (bucket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 395
    invoke-interface {v1, v5, v4}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_61
    .catchall {:try_start_1e .. :try_end_61} :catchall_1b

    .line 401
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->g()V

    const/4 v1, 0x1

    :goto_69
    if-nez v3, :cond_2

    return-object v2

    .line 393
    :cond_6c
    :try_start_6c
    throw v4

    .line 389
    :cond_6d
    throw v4

    .line 375
    :cond_6e
    throw v4
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_1b

    .line 401
    :goto_6f
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->g()V

    .line 402
    throw p0
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .registers 1

    .line 87
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    .line 238
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_26

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_7

    :cond_37
    return-object v0
.end method

.method public static a(Lcom/amazonaws/Request;)Ljava/net/URL;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 169
    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Lcom/amazonaws/Request;Z)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazonaws/Request;Z)Ljava/net/URL;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;Z)",
            "Ljava/net/URL;"
        }
    .end annotation

    .line 187
    invoke-interface {p0}, Lcom/amazonaws/Request;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_17

    const-string p1, "/"

    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(?<=/)/"

    const-string v2, "%2F"

    .line 201
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazonaws/Request;->f()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-interface {p0}, Lcom/amazonaws/Request;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_71

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    goto :goto_82

    .line 210
    :cond_71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 213
    :goto_82
    invoke-interface {p0}, Lcom/amazonaws/Request;->d()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v3}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4f

    .line 218
    :cond_a8
    :try_start_a8
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/net/MalformedURLException; {:try_start_a8 .. :try_end_ad} :catch_ae

    return-object p0

    :catch_ae
    move-exception p0

    .line 220
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to convert request to well formed URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .registers 1

    .line 78
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazonaws/services/s3/model/S3Object;Ljava/io/File;ZZ)V
    .registers 8

    .line 267
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_f
    const/4 v0, 0x0

    .line 274
    :try_start_10
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_c3
    .catchall {:try_start_10 .. :try_end_1a} :catchall_c1

    const/16 p3, 0x2800

    .line 276
    :try_start_1c
    new-array p3, p3, [B

    .line 278
    :goto_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2e

    const/4 v3, 0x0

    .line 279
    invoke-virtual {v1, p3, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2d} :catch_be
    .catchall {:try_start_1c .. :try_end_2d} :catchall_bb

    goto :goto_1e

    .line 287
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_39

    .line 289
    :catch_32
    sget-object p3, Lcom/amazonaws/services/s3/internal/ServiceUtils;->d:Lcom/amazonaws/logging/Log;

    const-string v1, "Caught exception. Ignoring."

    invoke-interface {p3, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 292
    :goto_39
    :try_start_39
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_40} :catch_41

    goto :goto_48

    .line 294
    :catch_41
    sget-object p3, Lcom/amazonaws/services/s3/internal/ServiceUtils;->d:Lcom/amazonaws/logging/Log;

    const-string v1, "Caught exception. Ignoring."

    invoke-interface {p3, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 303
    :goto_48
    :try_start_48
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->a()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->s()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->c(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_6f

    .line 304
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p3}, Lcom/amazonaws/util/Md5Utils;->a(Ljava/io/InputStream;)[B

    move-result-object p3
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5f} :catch_71

    .line 305
    :try_start_5f
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->a()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->s()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/util/BinaryUtils;->a(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6b} :catch_6d

    move-object v0, p0

    goto :goto_8d

    :catch_6d
    move-exception p0

    goto :goto_73

    :cond_6f
    move-object p3, v0

    goto :goto_8d

    :catch_71
    move-exception p0

    move-object p3, v0

    .line 308
    :goto_73
    sget-object v1, Lcom/amazonaws/services/s3/internal/ServiceUtils;->d:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to calculate MD5 hash to validate download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_8d
    if-eqz p2, :cond_ba

    if-eqz p3, :cond_ba

    if-eqz v0, :cond_ba

    .line 312
    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_9a

    goto :goto_ba

    .line 313
    :cond_9a
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to verify integrity of data download.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  The data stored in \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' may be corrupt."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ba
    :goto_ba
    return-void

    :catchall_bb
    move-exception p1

    move-object v0, v1

    goto :goto_e6

    :catch_be
    move-exception p1

    move-object v0, v1

    goto :goto_c4

    :catchall_c1
    move-exception p1

    goto :goto_e6

    :catch_c3
    move-exception p1

    .line 282
    :goto_c4
    :try_start_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->g()V

    .line 283
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to store object contents to disk: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_e6
    .catchall {:try_start_c4 .. :try_end_e6} :catchall_c1

    .line 287
    :goto_e6
    :try_start_e6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e9} :catch_ea

    goto :goto_f1

    .line 289
    :catch_ea
    sget-object p2, Lcom/amazonaws/services/s3/internal/ServiceUtils;->d:Lcom/amazonaws/logging/Log;

    const-string p3, "Caught exception. Ignoring."

    invoke-interface {p2, p3}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 292
    :goto_f1
    :try_start_f1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f8} :catch_f9

    goto :goto_100

    .line 294
    :catch_f9
    sget-object p0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->d:Lcom/amazonaws/logging/Log;

    const-string p2, "Caught exception. Ignoring."

    invoke-interface {p0, p2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 296
    :goto_100
    throw p1
.end method

.method public static a(Lcom/amazonaws/AmazonWebServiceRequest;)Z
    .registers 4

    const-string v0, "com.amazonaws.services.s3.disableGetObjectMD5Validation"

    .line 439
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 443
    :cond_a
    instance-of v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    .line 444
    check-cast p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .line 446
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->n()[J

    move-result-object v0

    if-eqz v0, :cond_18

    return v1

    .line 449
    :cond_18
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->q()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p0

    if-eqz p0, :cond_4a

    return v1

    .line 452
    :cond_1f
    instance-of v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    if-eqz v0, :cond_3b

    .line 453
    check-cast p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 454
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->l()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 455
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->k_()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    return v1

    .line 458
    :cond_32
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->q()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p0

    if-eqz p0, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    return v1

    .line 459
    :cond_3b
    instance-of v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    if-eqz v0, :cond_4a

    .line 460
    check-cast p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 461
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->q()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p0

    if-eqz p0, :cond_48

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    :goto_49
    return v1

    :cond_4a
    return v2
.end method

.method public static a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 425
    :cond_4
    sget-object v1, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->KMS:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->k_()Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 427
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->f()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1a

    if-eqz v1, :cond_1b

    :cond_1a
    const/4 v0, 0x1

    :cond_1b
    return v0
.end method

.method public static b(Ljava/util/Date;)Ljava/lang/String;
    .registers 1

    .line 105
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/Date;
    .registers 1

    .line 96
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "-"

    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)[B
    .registers 2

    .line 130
    sget-object v0, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 146
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 148
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_15
    const-string v0, "\""

    .line 150
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_27
    return-object p0
.end method

###### Class com.amazonaws.services.s3.internal.ServiceUtils.RetryableS3DownloadTask (com.amazonaws.services.s3.internal.ServiceUtils$RetryableS3DownloadTask)
.class public interface abstract Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/internal/ServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RetryableS3DownloadTask"
.end annotation


# virtual methods
.method public abstract a()Lcom/amazonaws/services/s3/model/S3Object;
.end method

.method public abstract b()Z
.end method
