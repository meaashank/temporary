###### Class com.amazonaws.services.s3.internal.crypto.S3CryptoModuleAE (com.amazonaws.services.s3.internal.crypto.S3CryptoModuleAE)
.class Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;
.super Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;
.source "S3CryptoModuleAE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<",
        "Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final j:I = 0x8

.field private static final k:I = 0x2800


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 66
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->b()V

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .registers 6

    .line 75
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    .line 77
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object p1

    .line 78
    sget-object p2, Lcom/amazonaws/services/s3/model/CryptoMode;->StrictAuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-eq p1, p2, :cond_16

    sget-object p2, Lcom/amazonaws/services/s3/model/CryptoMode;->AuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne p1, p2, :cond_10

    goto :goto_16

    .line 80
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_16
    :goto_16
    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .registers 11

    .line 99
    new-instance v3, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v3}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .registers 10

    .line 90
    new-instance v3, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v3}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;[J)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    .registers 7

    .line 420
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->c()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p3

    .line 421
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    new-instance v1, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    .line 423
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->d()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p2

    const/16 v2, 0x800

    invoke-direct {v1, p3, p2, v2}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V

    .line 425
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->a()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 421
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    return-object p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/model/S3Object;
    .registers 14

    .line 258
    sget-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->a:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    .line 259
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a()Z

    move-result v1

    .line 260
    instance-of v2, p1, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    if-eqz v2, :cond_16

    .line 261
    check-cast p1, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    .line 262
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->h()Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    move-result-object v0

    if-nez v1, :cond_16

    .line 264
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->j()Z

    move-result v1

    :cond_16
    move-object v6, v0

    move v7, v1

    .line 268
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->b()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->b:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 270
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->b()Ljava/security/Provider;

    move-result-object v4

    iget-object v8, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->i:Lcom/amazonaws/services/kms/AWSKMSClient;

    move-object v5, p3

    .line 268
    invoke-static/range {v2 .. v8}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    .line 277
    invoke-virtual {p0, p1, p4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)V

    .line 278
    invoke-direct {p0, p4, p1, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;[J)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object p1

    const/4 p3, 0x0

    .line 280
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;[JLjava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->j()Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/model/S3Object;
    .registers 15

    .line 224
    sget-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->a:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    .line 225
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a()Z

    move-result v1

    .line 226
    instance-of v2, p1, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    if-eqz v2, :cond_16

    .line 227
    check-cast p1, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    .line 228
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->h()Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    move-result-object v0

    if-nez v1, :cond_16

    .line 230
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->j()Z

    move-result v1

    :cond_16
    move-object v6, v0

    move v7, v1

    .line 233
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->i()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-static {p1}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 237
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->b:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object p5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 241
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->b()Ljava/security/Provider;

    move-result-object v4

    iget-object v8, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->i:Lcom/amazonaws/services/kms/AWSKMSClient;

    move-object v2, p1

    move-object v5, p3

    .line 238
    invoke-static/range {v2 .. v8}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p5

    .line 247
    invoke-virtual {p0, p5, p4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)V

    .line 248
    invoke-direct {p0, p4, p5, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;[J)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object p3

    .line 250
    invoke-virtual {p0, p3, p2, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;[JLjava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->j()Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/S3Object;
    .registers 12

    .line 155
    new-instance v4, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->x()Lcom/amazonaws/services/s3/model/S3ObjectId;

    move-result-object v0

    invoke-direct {v4, p4, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;-><init>(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    .line 157
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->h()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 158
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    return-object p1

    .line 161
    :cond_14
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->x()Lcom/amazonaws/services/s3/model/S3ObjectId;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object v6

    if-eqz v6, :cond_41

    .line 164
    :try_start_1f
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->g()Z

    move-result v0

    if-eqz v0, :cond_34

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v6

    .line 165
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_3a

    .line 169
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->c:Lcom/amazonaws/logging/Log;

    invoke-static {v6, p2}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    return-object p1

    :cond_34
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->c:Lcom/amazonaws/logging/Log;

    invoke-static {v6, p1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    goto :goto_41

    :catchall_3a
    move-exception p1

    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->c:Lcom/amazonaws/logging/Log;

    invoke-static {v6, p2}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 170
    throw p1

    .line 173
    :cond_41
    :goto_41
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a()Z

    move-result p1

    if-nez p1, :cond_74

    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->f:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->d()Z

    move-result p1

    if-eqz p1, :cond_74

    .line 181
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->c:Lcom/amazonaws/logging/Log;

    const-string p3, "Unable to detect encryption information for object \'%s\' in bucket \'%s\'. Returning object without decryption."

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 184
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/S3Object;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    .line 185
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/S3Object;->d()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v0, v2

    .line 181
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 187
    invoke-virtual {p0, v4, p2, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;[JLjava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->j()Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    return-object p1

    .line 174
    :cond_74
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->c:Lcom/amazonaws/logging/Log;

    invoke-static {v4, p1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 175
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instruction file not found for S3 object with bucket name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/S3Object;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", key: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/S3Object;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/model/S3Object;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3Object;
    .registers 14

    .line 200
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->x()Lcom/amazonaws/services/s3/model/S3ObjectId;

    move-result-object v0

    .line 202
    invoke-virtual {p0, v0, p5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object v7

    if-eqz v7, :cond_4a

    .line 208
    :try_start_a
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->g()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 209
    new-instance v5, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    invoke-direct {v5, p4, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;-><init>(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_43

    .line 217
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->c:Lcom/amazonaws/logging/Log;

    invoke-static {v7, p2}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    return-object p1

    .line 212
    :cond_24
    :try_start_24
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid Instruction file with suffix "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " detected for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_43
    .catchall {:try_start_24 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception p1

    .line 217
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->c:Lcom/amazonaws/logging/Log;

    invoke-static {v7, p2}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 218
    throw p1

    .line 204
    :cond_4a
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instruction file with suffix "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not found for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    .line 441
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected final a(J)J
    .registers 5

    .line 448
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->e:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->g()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method final a(Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;J)Lcom/amazonaws/internal/SdkFilterInputStream;
    .registers 4

    return-object p1
.end method

.method final a(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .registers 2

    .line 387
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->b()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p1

    return-object p1
.end method

.method final a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
    .registers 5

    .line 379
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    .line 380
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->k()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)V

    return-object v0
.end method

.method protected final a(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;[JLjava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;",
            "[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;"
        }
    .end annotation

    if-nez p2, :cond_3

    return-object p1

    .line 310
    :cond_3
    invoke-virtual {p1, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a(Ljava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p3

    .line 312
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->b()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->l()J

    move-result-wide v0

    .line 313
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->g()I

    move-result p3

    div-int/lit8 p3, p3, 0x8

    int-to-long v2, p3

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const/4 p3, 0x1

    .line 314
    aget-wide v2, p2, p3

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-lez v5, :cond_40

    .line 315
    aput-wide v0, p2, p3

    .line 316
    aget-wide v0, p2, v4

    aget-wide v2, p2, p3

    cmp-long v5, v0, v2

    if-lez v5, :cond_40

    .line 320
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->c()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p2

    iget-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->c:Lcom/amazonaws/logging/Log;

    invoke-static {p2, p3}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 321
    new-instance p2, Ljava/io/ByteArrayInputStream;

    new-array p3, v4, [B

    invoke-direct {p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a(Ljava/io/InputStream;)V

    return-object p1

    .line 325
    :cond_40
    aget-wide v0, p2, v4

    aget-wide v2, p2, p3

    cmp-long v5, v0, v2

    if-lez v5, :cond_49

    return-object p1

    .line 330
    :cond_49
    :try_start_49
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->c()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    .line 331
    new-instance v1, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;

    aget-wide v8, p2, v4

    aget-wide v10, p2, p3

    move-object v6, v1

    move-object v7, v0

    invoke-direct/range {v6 .. v11}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 332
    new-instance p2, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->a()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object p3

    invoke-direct {p2, v1, p3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_64} :catch_65

    return-object p1

    :catch_65
    move-exception p1

    .line 335
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error adjusting output to desired byte range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 7

    const-string v0, "The destination file parameter must be specified when downloading an object directly to a file"

    .line 342
    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_d

    return-object v0

    .line 353
    :cond_d
    :try_start_d
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_46
    .catchall {:try_start_d .. :try_end_17} :catchall_44

    const/16 p2, 0x2800

    .line 354
    :try_start_19
    new-array p2, p2, [B

    .line 356
    :goto_1b
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_2b

    const/4 v2, 0x0

    .line 357
    invoke-virtual {v1, p2, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2a} :catch_41
    .catchall {:try_start_19 .. :try_end_2a} :catchall_3e

    goto :goto_1b

    .line 363
    :cond_2b
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->c:Lcom/amazonaws/logging/Log;

    invoke-static {v1, p2}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 364
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p2

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->c:Lcom/amazonaws/logging/Log;

    invoke-static {p2, v0}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 373
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Object;->a()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    return-object p1

    :catchall_3e
    move-exception p2

    move-object v0, v1

    goto :goto_62

    :catch_41
    move-exception p2

    move-object v0, v1

    goto :goto_47

    :catchall_44
    move-exception p2

    goto :goto_62

    :catch_46
    move-exception p2

    .line 360
    :goto_47
    :try_start_47
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to store object contents to disk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_62
    .catchall {:try_start_47 .. :try_end_62} :catchall_44

    .line 363
    :goto_62
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->c:Lcom/amazonaws/logging/Log;

    invoke-static {v0, v1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 364
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p1

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->c:Lcom/amazonaws/logging/Log;

    invoke-static {p1, v0}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 365
    throw p2
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .registers 9

    .line 113
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->j:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 116
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->n()[J

    move-result-object v3

    .line 117
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    if-nez v3, :cond_18

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->w()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_20

    .line 118
    :cond_18
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Range get and getting a part are not allowed in strict crypto mode"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_20
    :goto_20
    invoke-static {v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a([J)[J

    move-result-object v4

    if-eqz v4, :cond_2f

    const/4 v0, 0x0

    .line 122
    aget-wide v0, v4, v0

    const/4 v2, 0x1

    aget-wide v5, v4, v2

    invoke-virtual {p1, v0, v1, v5, v6}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->a(JJ)V

    .line 125
    :cond_2f
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->h:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_39

    return-object v1

    .line 132
    :cond_39
    instance-of v2, p1, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    if-eqz v2, :cond_44

    .line 133
    move-object v1, p1

    check-cast v1, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    .line 134
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->i()Ljava/lang/String;

    move-result-object v1

    :cond_44
    move-object v6, v1

    if-eqz v6, :cond_5e

    .line 137
    :try_start_47
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_52

    goto :goto_5e

    :cond_52
    move-object v1, p0

    move-object v2, p1

    move-object v5, v0

    .line 139
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/model/S3Object;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    goto :goto_62

    :catch_5a
    move-exception p1

    goto :goto_63

    :catch_5c
    move-exception p1

    goto :goto_69

    .line 138
    :cond_5e
    :goto_5e
    invoke-direct {p0, p1, v3, v4, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_62} :catch_5c
    .catch Ljava/lang/Error; {:try_start_47 .. :try_end_62} :catch_5a

    :goto_62
    return-object p1

    .line 147
    :goto_63
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->c:Lcom/amazonaws/logging/Log;

    invoke-static {v0, v1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 148
    throw p1

    .line 144
    :goto_69
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->c:Lcom/amazonaws/logging/Log;

    invoke-static {v0, v1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 145
    throw p1
.end method

.method final a(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;Lcom/amazonaws/internal/SdkFilterInputStream;)V
    .registers 3

    return-void
.end method

.method protected a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final b(Lcom/amazonaws/services/s3/model/UploadPartRequest;)J
    .registers 6

    .line 396
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->p()J

    move-result-wide v0

    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->e:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 397
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->g()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method
