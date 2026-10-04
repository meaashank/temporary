###### Class com.amazonaws.services.s3.internal.crypto.EncryptionUtils (com.amazonaws.services.s3.internal.crypto.EncryptionUtils)
.class public Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;
.super Ljava/lang/Object;
.source "EncryptionUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final a:Ljava/lang/String; = ".instruction"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(J)J
    .registers 6

    const-wide/16 v0, 0x10

    .line 1022
    rem-long v2, p0, v0

    sub-long/2addr p0, v2

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_d

    return-wide v0

    :cond_d
    return-wide p0
.end method

.method private static a(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J
    .registers 3

    .line 954
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->k()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 955
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->k()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0

    .line 956
    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->o()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_22

    const-string p0, "Content-Length"

    .line 957
    invoke-virtual {p1, p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 958
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->k()J

    move-result-wide p0

    return-wide p0

    :cond_22
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private static a(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J
    .registers 7

    .line 908
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_d

    const-wide/16 p0, -0x1

    return-wide p0

    .line 914
    :cond_d
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p0

    int-to-long v0, p0

    .line 915
    rem-long v2, p1, v0

    sub-long/2addr v0, v2

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public static a(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/model/UploadPartRequest;)J
    .registers 7

    .line 928
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->k()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 929
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->p()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_15

    .line 930
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->p()J

    move-result-wide v0

    goto :goto_28

    .line 932
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->k()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_28

    .line 933
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->o()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 934
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->p()J

    move-result-wide v0

    .line 938
    :goto_28
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p0

    int-to-long p0, p0

    .line 939
    rem-long v2, v0, p0

    sub-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0

    :cond_32
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static a(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;
    .registers 11

    .line 751
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->o()Ljava/io/InputStream;

    move-result-object v0

    .line 752
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->k()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 753
    new-instance v0, Lcom/amazonaws/services/s3/internal/InputSubstream;

    new-instance v3, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    .line 754
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->k()Ljava/io/File;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    .line 755
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->s()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->p()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->u()Z

    move-result v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V

    .line 758
    :cond_25
    new-instance v2, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;

    invoke-direct {v2, v0, p1}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    .line 761
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->u()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 764
    new-instance v0, Lcom/amazonaws/services/s3/internal/InputSubstream;

    const-wide/16 v3, 0x0

    .line 765
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->p()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V

    move-object v1, v0

    goto :goto_40

    :cond_3f
    move-object v1, v2

    .line 768
    :goto_40
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->p()J

    move-result-wide v4

    .line 769
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->a()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p0

    .line 770
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;

    int-to-long v2, p0

    sub-long v2, v4, v2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;-><init>(Ljava/io/InputStream;JJ)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_56

    return-object p1

    :catch_56
    move-exception p0

    .line 773
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create cipher input stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .registers 2

    .line 159
    invoke-interface {p0}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->a()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->b(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/util/Map;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/security/Provider;",
            ")",
            "Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;"
        }
    .end annotation

    .line 174
    invoke-interface {p0, p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->a(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->b(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .registers 9

    .line 230
    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->c(Lcom/amazonaws/services/s3/model/S3Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-amz-key"

    .line 232
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "x-amz-iv"

    .line 233
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "x-amz-matdesc"

    .line 234
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 238
    invoke-static {v1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 239
    invoke-static {v2}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_5e

    if-eqz v2, :cond_5e

    .line 250
    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 265
    invoke-static {v1, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a([BLcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 267
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    invoke-direct {p1, p0, v5, v2, p2}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;-><init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V

    .line 270
    new-instance p2, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    invoke-direct {p2, v0, v1, p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;-><init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    return-object p2

    .line 256
    :cond_44
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-array p2, v5, [Ljava/lang/Object;

    .line 261
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->d()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v3

    const-string p0, "Unable to retrieve the encryption materials that originally encrypted object corresponding to instruction file \'%s\' in bucket \'%s\'."

    .line 257
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 244
    :cond_5e
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-array p2, v5, [Ljava/lang/Object;

    .line 247
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->d()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v3

    const-string p0, "Necessary encryption info not found in the instruction file \'%s\' in bucket \'%s\'"

    .line 245
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
    .registers 4

    .line 500
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->i()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".instruction"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;",
            ")",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterials;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 896
    :cond_4
    invoke-interface {p1, p0}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->a(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .registers 5

    .line 487
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".instruction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 488
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->m()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;[BLjavax/crypto/Cipher;Ljava/util/Map;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;",
            "[B",
            "Ljavax/crypto/Cipher;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;"
        }
    .end annotation

    .line 879
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->o()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p0

    if-nez p0, :cond_b

    .line 881
    new-instance p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 883
    :cond_b
    invoke-static {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;[BLjavax/crypto/Cipher;Ljava/util/Map;)V

    return-object p0
.end method

.method public static a(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 11

    .line 366
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->l()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    if-nez v0, :cond_b

    .line 368
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 372
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    const-string v1, "x-amz-unencrypted-content-md5"

    .line 373
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    const/4 v1, 0x0

    .line 377
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->j(Ljava/lang/String;)V

    .line 381
    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_31

    const-string v6, "x-amz-unencrypted-content-length"

    .line 384
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 383
    invoke-virtual {v0, v6, v7}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_31
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->d()Ljavax/crypto/Cipher;

    move-result-object v6

    invoke-static {v6, p0, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-ltz v8, :cond_40

    .line 391
    invoke-virtual {v0, v6, v7}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(J)V

    .line 394
    :cond_40
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 397
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->a()Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    move-result-object p1

    invoke-static {p0, p1, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;J)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a(Ljava/io/InputStream;)V

    .line 402
    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a(Ljava/io/File;)V

    return-object p0
.end method

.method public static a(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object p1

    .line 99
    invoke-static {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p2

    .line 103
    invoke-static {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->c(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)V

    return-object p2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 7

    .line 467
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Ljava/util/Map;

    move-result-object p2

    .line 468
    invoke-static {p2}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 469
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 471
    new-instance v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 472
    array-length p2, p2

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(J)V

    const-string p2, "x-amz-crypto-instr-file"

    const-string v2, ""

    .line 473
    invoke-virtual {v1, p2, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance p2, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".instruction"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object p2
.end method

.method public static a(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/S3Object;
    .registers 4

    .line 419
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    .line 421
    new-instance v1, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;

    .line 422
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->a()Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    .line 423
    new-instance p1, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 424
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->a()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 423
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->a(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    return-object p0
.end method

.method public static a(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/model/S3Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    invoke-static {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->c(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object p1

    .line 130
    invoke-static {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazonaws/services/s3/model/S3Object;[J)Lcom/amazonaws/services/s3/model/S3Object;
    .registers 15

    if-eqz p1, :cond_45

    const/4 v0, 0x0

    .line 579
    aget-wide v1, p1, v0

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    cmp-long v6, v1, v4

    if-lez v6, :cond_d

    goto :goto_45

    .line 584
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v1

    .line 585
    new-instance v2, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;

    aget-wide v9, p1, v0

    aget-wide v11, p1, v3

    move-object v7, v2

    move-object v8, v1

    invoke-direct/range {v7 .. v12}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 587
    new-instance p1, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 588
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->a()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 587
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->a(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_28} :catch_29

    return-object p0

    :catch_29
    move-exception p0

    .line 591
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error adjusting output to desired byte range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    :goto_45
    return-object p0
.end method

.method private static a(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;J)Ljava/io/InputStream;
    .registers 7

    .line 723
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->o()Ljava/io/InputStream;

    move-result-object v0

    .line 724
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->k()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 727
    new-instance v0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->k()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    :cond_13
    const-wide/16 v1, -0x1

    cmp-long p0, p2, v1

    if-lez p0, :cond_20

    .line 732
    new-instance p0, Lcom/amazonaws/util/LengthCheckInputStream;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    goto :goto_21

    :cond_20
    move-object p0, v0

    .line 735
    :goto_21
    new-instance p2, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;

    invoke-direct {p2, p0, p1}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    return-object p2

    :catch_27
    move-exception p0

    .line 737
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to create cipher input stream: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 1000
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1003
    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1005
    :goto_16
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 1006
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_28

    goto :goto_16

    .line 1009
    :cond_20
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1011
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_28
    move-exception v0

    .line 1009
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1010
    throw v0
.end method

.method private static a(Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 969
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 970
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-amz-matdesc"

    .line 971
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-amz-key"

    .line 973
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->c()[B

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v2

    .line 972
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->d()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p0

    const-string v1, "x-amz-iv"

    .line 975
    invoke-static {p0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 815
    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0
    :try_end_8
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 817
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse encryption materials description from metadata :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {p0}, Lcom/amazonaws/AmazonClientException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljavax/crypto/SecretKey;ILjava/security/Provider;[B)Ljavax/crypto/Cipher;
    .registers 5

    if-eqz p2, :cond_b

    :try_start_2
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 630
    invoke-static {v0, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p2

    goto :goto_11

    :catch_9
    move-exception p0

    goto :goto_20

    :cond_b
    const-string p2, "AES/CBC/PKCS5Padding"

    .line 633
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    :goto_11
    if-eqz p3, :cond_1c

    .line 636
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p2, p1, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_1f

    .line 638
    :cond_1c
    invoke-virtual {p2, p1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_9

    :goto_1f
    return-object p2

    .line 642
    :goto_20
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to build cipher: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\nMake sure you have the JCE unlimited strength policy files installed and configured for your JVM: http://www.ngs.ac.uk/tools/jcepolicyfiles"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a()Ljavax/crypto/SecretKey;
    .registers 4

    :try_start_0
    const-string v0, "AES"

    .line 605
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x100

    .line 606
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 607
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    .line 609
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to generate envelope symmetric key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a([BLcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;
    .registers 4

    .line 691
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->a()Ljava/security/KeyPair;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 693
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->a()Ljava/security/KeyPair;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    goto :goto_13

    .line 696
    :cond_f
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->b()Ljavax/crypto/SecretKey;

    move-result-object p1

    :goto_13
    if-eqz p2, :cond_20

    .line 701
    :try_start_15
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p2

    goto :goto_28

    :catch_1e
    move-exception p0

    goto :goto_38

    .line 703
    :cond_20
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    :goto_28
    const/4 v0, 0x2

    .line 705
    invoke-virtual {p2, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 706
    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 707
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string p2, "AES"

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_37} :catch_1e

    return-object p1

    .line 710
    :goto_38
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to decrypt symmetric key from object metadata : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static a(Lcom/amazonaws/services/s3/model/ObjectMetadata;[BLjavax/crypto/Cipher;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
            "[B",
            "Ljavax/crypto/Cipher;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    const-string v0, "x-amz-key"

    .line 856
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p1

    .line 855
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string p1, "x-amz-iv"

    .line 861
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p2

    .line 860
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-static {p3}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-amz-matdesc"

    .line 865
    invoke-virtual {p0, p2, p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/amazonaws/services/s3/model/S3Object;)Z
    .registers 2

    .line 513
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->a()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->h()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1c

    const-string v0, "x-amz-iv"

    .line 515
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "x-amz-key"

    .line 516
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private static a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)[B
    .registers 3

    .line 785
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->h()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 786
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_18

    .line 790
    :cond_d
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)[B
    .registers 4

    .line 659
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->a()Ljava/security/KeyPair;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 661
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->a()Ljava/security/KeyPair;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    goto :goto_13

    .line 664
    :cond_f
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->b()Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 668
    :goto_13
    :try_start_13
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    if-eqz p2, :cond_22

    .line 670
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p2

    goto :goto_2a

    .line 672
    :cond_22
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    :goto_2a
    const/4 v0, 0x1

    .line 677
    invoke-virtual {p2, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 678
    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    move-exception p0

    .line 680
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to encrypt symmetric key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a([J)[J
    .registers 8

    if-eqz p0, :cond_21

    const/4 v0, 0x0

    .line 554
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    cmp-long v6, v1, v4

    if-lez v6, :cond_d

    goto :goto_21

    :cond_d
    const/4 v1, 0x2

    .line 557
    new-array v1, v1, [J

    .line 558
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(J)J

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 559
    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->b(J)J

    move-result-wide v4

    aput-wide v4, v1, v3

    return-object v1

    :cond_21
    :goto_21
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(J)J
    .registers 6

    const-wide/16 v0, 0x10

    .line 1037
    rem-long v2, p0, v0

    sub-long v2, v0, v2

    add-long/2addr p0, v2

    add-long/2addr p0, v0

    return-wide p0
.end method

.method private static b(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .registers 6

    .line 182
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 183
    new-instance v1, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;-><init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V

    .line 187
    invoke-static {v0, p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)[B

    move-result-object p1

    .line 191
    new-instance v2, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->c()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;-><init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    return-object v2
.end method

.method public static b(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-static {p0, v0, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .registers 9

    .line 313
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->a()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    const-string v1, "x-amz-key"

    .line 316
    invoke-static {v1, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)[B

    move-result-object v1

    const-string v2, "x-amz-iv"

    .line 317
    invoke-static {v2, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)[B

    move-result-object v2

    const-string v3, "x-amz-matdesc"

    .line 318
    invoke-static {v3, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->b(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_50

    if-eqz v2, :cond_50

    .line 331
    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 344
    invoke-static {v1, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a([BLcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 346
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    invoke-direct {p1, p0, v5, v2, p2}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;-><init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V

    .line 349
    new-instance p2, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    invoke-direct {p2, v0, v1, p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;-><init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    return-object p2

    .line 337
    :cond_36
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-array p2, v5, [Ljava/lang/Object;

    .line 340
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->d()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v3

    const-string p0, "Unable to retrieve the encryption materials that originally encrypted file \'%s\' in bucket \'%s\'."

    .line 338
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 325
    :cond_50
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-array p2, v5, [Ljava/lang/Object;

    .line 328
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->d()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v3

    const-string p0, "Necessary encryption info not found in the headers of file \'%s\' in bucket \'%s\'"

    .line 326
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 6

    .line 438
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Ljava/util/Map;

    move-result-object p1

    .line 439
    invoke-static {p1}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 440
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 442
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->l()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    .line 445
    array-length p1, p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(J)V

    const-string p1, "x-amz-crypto-instr-file"

    const-string v2, ""

    .line 448
    invoke-virtual {v1, p1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".instruction"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 453
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a(Ljava/io/InputStream;)V

    return-object p0
.end method

.method private static b(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Ljava/lang/String;
    .registers 3

    .line 799
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->h()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 800
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_14

    .line 803
    :cond_d
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lcom/amazonaws/services/s3/model/S3Object;)Z
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 532
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->a()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->h()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_f

    return v0

    :cond_f
    const-string v0, "x-amz-crypto-instr-file"

    .line 536
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-static {p0, v0, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->b(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/amazonaws/services/s3/model/S3Object;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/S3Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 985
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->b()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 986
    invoke-static {p0}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 988
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing JSON instruction file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)V
    .registers 7

    .line 833
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->c()[B

    move-result-object v0

    .line 834
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->d()Ljavax/crypto/Cipher;

    move-result-object v1

    .line 835
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->b()Ljava/util/Map;

    move-result-object p1

    .line 837
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->l()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    if-nez v2, :cond_17

    .line 839
    new-instance v2, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 841
    :cond_17
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->k()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 842
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->a()Lcom/amazonaws/services/s3/util/Mimetypes;

    move-result-object v3

    .line 843
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->k()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/util/Mimetypes;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->f(Ljava/lang/String;)V

    .line 846
    :cond_2c
    invoke-static {v2, v0, v1, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;[BLjavax/crypto/Cipher;Ljava/util/Map;)V

    .line 847
    invoke-virtual {p0, v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-void
.end method
