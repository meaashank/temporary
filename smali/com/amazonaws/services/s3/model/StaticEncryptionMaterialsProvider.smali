###### Class com.amazonaws.services.s3.model.StaticEncryptionMaterialsProvider (com.amazonaws.services.s3.model.StaticEncryptionMaterialsProvider)
.class public Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;
.super Ljava/lang/Object;
.source "StaticEncryptionMaterialsProvider.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;


# instance fields
.field private final a:Lcom/amazonaws/services/s3/model/EncryptionMaterials;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->a:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->a:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    return-object v0
.end method

.method public a(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .registers 5
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

    .line 44
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->a:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    .line 45
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_11

    .line 47
    invoke-interface {p1, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 48
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->a:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    return-object p1

    .line 50
    :cond_11
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->a:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->d()Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 53
    invoke-interface {v1, p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->a(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v1

    if-eqz v1, :cond_20

    return-object v1

    :cond_20
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2d

    .line 65
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p1, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 p1, 0x1

    :goto_2e
    if-eqz v0, :cond_36

    .line 66
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_37

    :cond_36
    const/4 v1, 0x1

    :cond_37
    if-eqz p1, :cond_3e

    if-eqz v1, :cond_3e

    .line 67
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->a:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    goto :goto_3f

    :cond_3e
    const/4 p1, 0x0

    :goto_3f
    return-object p1
.end method

.method public b()V
    .registers 1

    return-void
.end method
