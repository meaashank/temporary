###### Class com.amazonaws.services.s3.internal.crypto.CryptoModuleDispatcher (com.amazonaws.services.s3.internal.crypto.CryptoModuleDispatcher)
.class public Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;
.super Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;
.source "CryptoModuleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule<",
        "Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/amazonaws/services/s3/model/CryptoMode;

.field private final b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

.field private final c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .registers 14

    .line 75
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;-><init>()V

    .line 76
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->g()Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object p5

    .line 77
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object v0

    if-nez v0, :cond_12

    .line 79
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    .line 80
    invoke-virtual {p5, v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a(Lcom/amazonaws/services/s3/model/CryptoMode;)V

    .line 82
    :cond_12
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->f()Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object p5

    .line 83
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->c()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    .line 84
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher$1;->a:[I

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_78

    .line 113
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 98
    :pswitch_30
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 101
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->g()Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object p5

    .line 103
    :try_start_41
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->AuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-virtual {p5, v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->a(Lcom/amazonaws/services/s3/model/CryptoMode;)V
    :try_end_46
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_41 .. :try_end_46} :catch_46

    .line 108
    :catch_46
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 110
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->f()Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object v6

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    goto :goto_76

    .line 92
    :pswitch_57
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 95
    iput-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    goto :goto_76

    .line 86
    :pswitch_67
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAEStrict;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAEStrict;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 89
    iput-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    :goto_76
    return-void

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_67
        :pswitch_57
        :pswitch_30
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 141
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 142
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    :goto_13
    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 182
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->a(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;

    move-result-object p1

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 183
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;

    move-result-object p1

    :goto_13
    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 158
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 159
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    :goto_13
    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 4

    .line 134
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 190
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->a(Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 191
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    :goto_13
    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 120
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 121
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    :goto_13
    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 175
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object p1

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 176
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object p1

    :goto_13
    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_c

    .line 148
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    goto :goto_11

    .line 150
    :cond_c
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    :goto_11
    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/UploadObjectRequest;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->a:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_c

    .line 198
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->b:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->a(Lcom/amazonaws/services/s3/model/UploadObjectRequest;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_11

    .line 200
    :cond_c
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/UploadObjectRequest;Ljava/lang/String;Ljava/io/OutputStream;)V

    :goto_11
    return-void
.end method

###### Class com.amazonaws.services.s3.internal.crypto.CryptoModuleDispatcher.AnonymousClass1 (com.amazonaws.services.s3.internal.crypto.CryptoModuleDispatcher$1)
.class synthetic Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher$1;
.super Ljava/lang/Object;
.source "CryptoModuleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 84
    invoke-static {}, Lcom/amazonaws/services/s3/model/CryptoMode;->values()[Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher$1;->a:[I

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->StrictAuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher$1;->a:[I

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->AuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher$1;->a:[I

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
