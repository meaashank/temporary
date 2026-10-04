###### Class com.amazonaws.services.kms.model.transform.CreateKeyResultJsonUnmarshaller (com.amazonaws.services.kms.model.transform.CreateKeyResultJsonUnmarshaller)
.class public Lcom/amazonaws/services/kms/model/transform/CreateKeyResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "CreateKeyResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/kms/model/CreateKeyResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/kms/model/transform/CreateKeyResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/kms/model/transform/CreateKeyResultJsonUnmarshaller;
    .registers 1

    .line 51
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/CreateKeyResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/CreateKeyResultJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 52
    new-instance v0, Lcom/amazonaws/services/kms/model/transform/CreateKeyResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/transform/CreateKeyResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/transform/CreateKeyResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/CreateKeyResultJsonUnmarshaller;

    .line 53
    :cond_b
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/CreateKeyResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/CreateKeyResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/CreateKeyResult;
    .registers 6

    .line 30
    new-instance v0, Lcom/amazonaws/services/kms/model/CreateKeyResult;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/CreateKeyResult;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->a()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v1

    .line 33
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 34
    :goto_c
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 35
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyMetadata"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 37
    invoke-static {}, Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonUnmarshaller;->a()Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonUnmarshaller;

    move-result-object v2

    .line 38
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/KeyMetadata;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/kms/model/CreateKeyResult;->a(Lcom/amazonaws/services/kms/model/KeyMetadata;)V

    goto :goto_c

    .line 40
    :cond_2a
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    goto :goto_c

    .line 43
    :cond_2e
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/transform/CreateKeyResultJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/CreateKeyResult;

    move-result-object p1

    return-object p1
.end method
