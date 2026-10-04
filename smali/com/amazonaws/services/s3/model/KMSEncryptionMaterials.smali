###### Class com.amazonaws.services.s3.model.KMSEncryptionMaterials (com.amazonaws.services.s3.model.KMSEncryptionMaterials)
.class public Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;
.super Lcom/amazonaws/services/s3/model/EncryptionMaterials;
.source "KMSEncryptionMaterials.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "kms_cmk_id"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0, v0}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;-><init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)V

    if-eqz p1, :cond_12

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "kms_cmk_id"

    .line 48
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    return-void

    .line 46
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The default customer master key id must be specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Ljava/security/KeyPair;
    .registers 2

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b()Ljavax/crypto/SecretKey;
    .registers 2

    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const-string v0, "kms_cmk_id"

    .line 85
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 90
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
