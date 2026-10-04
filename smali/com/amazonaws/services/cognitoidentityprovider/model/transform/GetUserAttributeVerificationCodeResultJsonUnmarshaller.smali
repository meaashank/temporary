###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.GetUserAttributeVerificationCodeResultJsonUnmarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.GetUserAttributeVerificationCodeResultJsonUnmarshaller)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserAttributeVerificationCodeResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "GetUserAttributeVerificationCodeResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserAttributeVerificationCodeResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserAttributeVerificationCodeResultJsonUnmarshaller;
    .registers 1

    .line 54
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserAttributeVerificationCodeResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserAttributeVerificationCodeResultJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 55
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserAttributeVerificationCodeResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserAttributeVerificationCodeResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserAttributeVerificationCodeResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserAttributeVerificationCodeResultJsonUnmarshaller;

    .line 56
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserAttributeVerificationCodeResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserAttributeVerificationCodeResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;
    .registers 6

    .line 31
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->a()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v1

    .line 34
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 35
    :goto_c
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 36
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CodeDeliveryDetails"

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 40
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CodeDeliveryDetailsTypeJsonUnmarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CodeDeliveryDetailsTypeJsonUnmarshaller;

    move-result-object v2

    .line 41
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CodeDeliveryDetailsTypeJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V

    goto :goto_c

    .line 43
    :cond_2a
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    goto :goto_c

    .line 46
    :cond_2e
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GetUserAttributeVerificationCodeResultJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/GetUserAttributeVerificationCodeResult;

    move-result-object p1

    return-object p1
.end method
