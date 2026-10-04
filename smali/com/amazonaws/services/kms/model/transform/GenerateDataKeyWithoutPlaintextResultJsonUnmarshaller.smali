###### Class com.amazonaws.services.kms.model.transform.GenerateDataKeyWithoutPlaintextResultJsonUnmarshaller (com.amazonaws.services.kms.model.transform.GenerateDataKeyWithoutPlaintextResultJsonUnmarshaller)
.class public Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyWithoutPlaintextResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "GenerateDataKeyWithoutPlaintextResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyWithoutPlaintextResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyWithoutPlaintextResultJsonUnmarshaller;
    .registers 1

    .line 56
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyWithoutPlaintextResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyWithoutPlaintextResultJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 57
    new-instance v0, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyWithoutPlaintextResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyWithoutPlaintextResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyWithoutPlaintextResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyWithoutPlaintextResultJsonUnmarshaller;

    .line 58
    :cond_b
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyWithoutPlaintextResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyWithoutPlaintextResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextResult;
    .registers 6

    .line 31
    new-instance v0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextResult;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextResult;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->a()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v1

    .line 34
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 35
    :goto_c
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 36
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CiphertextBlob"

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 39
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;

    move-result-object v2

    .line 40
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextResult;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_c

    :cond_2a
    const-string v3, "KeyId"

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 42
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 43
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextResult;->a(Ljava/lang/String;)V

    goto :goto_c

    .line 45
    :cond_3e
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    goto :goto_c

    .line 48
    :cond_42
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyWithoutPlaintextResultJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextResult;

    move-result-object p1

    return-object p1
.end method
