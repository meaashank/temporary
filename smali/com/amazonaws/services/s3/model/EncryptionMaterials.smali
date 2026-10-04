###### Class com.amazonaws.services.s3.model.EncryptionMaterials (com.amazonaws.services.s3.model.EncryptionMaterials)
.class public Lcom/amazonaws/services/s3/model/EncryptionMaterials;
.super Ljava/lang/Object;
.source "EncryptionMaterials.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/security/KeyPair;

.field private final b:Ljavax/crypto/SecretKey;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/security/KeyPair;)V
    .registers 3

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;-><init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method protected constructor <init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->c:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->a:Ljava/security/KeyPair;

    .line 66
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->b:Ljavax/crypto/SecretKey;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .registers 3

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;-><init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterials;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a()Ljava/security/KeyPair;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->a:Ljava/security/KeyPair;

    return-object v0
.end method

.method public b()Ljavax/crypto/SecretKey;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->b:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public d()Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
