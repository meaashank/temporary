###### Class com.amazonaws.services.kms.model.transform.CreateCustomKeyStoreResultJsonUnmarshaller (com.amazonaws.services.kms.model.transform.CreateCustomKeyStoreResultJsonUnmarshaller)
.class public Lcom/amazonaws/services/kms/model/transform/CreateCustomKeyStoreResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "CreateCustomKeyStoreResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/kms/model/transform/CreateCustomKeyStoreResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/kms/model/transform/CreateCustomKeyStoreResultJsonUnmarshaller;
    .registers 1

    .line 51
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/CreateCustomKeyStoreResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/CreateCustomKeyStoreResultJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 52
    new-instance v0, Lcom/amazonaws/services/kms/model/transform/CreateCustomKeyStoreResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/transform/CreateCustomKeyStoreResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/transform/CreateCustomKeyStoreResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/CreateCustomKeyStoreResultJsonUnmarshaller;

    .line 53
    :cond_b
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/CreateCustomKeyStoreResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/CreateCustomKeyStoreResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreResult;
    .registers 6

    .line 30
    new-instance v0, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreResult;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreResult;-><init>()V

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

    const-string v3, "CustomKeyStoreId"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 37
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 38
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreResult;->a(Ljava/lang/String;)V

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

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/transform/CreateCustomKeyStoreResultJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreResult;

    move-result-object p1

    return-object p1
.end method
