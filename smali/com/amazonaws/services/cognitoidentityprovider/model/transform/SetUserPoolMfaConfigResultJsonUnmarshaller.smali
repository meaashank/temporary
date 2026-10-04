###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.SetUserPoolMfaConfigResultJsonUnmarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.SetUserPoolMfaConfigResultJsonUnmarshaller)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserPoolMfaConfigResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "SetUserPoolMfaConfigResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserPoolMfaConfigResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserPoolMfaConfigResultJsonUnmarshaller;
    .registers 1

    .line 60
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserPoolMfaConfigResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserPoolMfaConfigResultJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 61
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserPoolMfaConfigResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserPoolMfaConfigResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserPoolMfaConfigResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserPoolMfaConfigResultJsonUnmarshaller;

    .line 62
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserPoolMfaConfigResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserPoolMfaConfigResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigResult;
    .registers 6

    .line 30
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigResult;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigResult;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->a()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v1

    .line 33
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 34
    :goto_c
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 35
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmsMfaConfiguration"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 38
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsMfaConfigTypeJsonUnmarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsMfaConfigTypeJsonUnmarshaller;

    move-result-object v2

    .line 39
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsMfaConfigTypeJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigResult;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;)V

    goto :goto_c

    :cond_2a
    const-string v3, "SoftwareTokenMfaConfiguration"

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 43
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaConfigTypeJsonUnmarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaConfigTypeJsonUnmarshaller;

    move-result-object v2

    .line 44
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaConfigTypeJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigResult;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;)V

    goto :goto_c

    :cond_3e
    const-string v3, "MfaConfiguration"

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 46
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 47
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigResult;->a(Ljava/lang/String;)V

    goto :goto_c

    .line 49
    :cond_52
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    goto :goto_c

    .line 52
    :cond_56
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SetUserPoolMfaConfigResultJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/SetUserPoolMfaConfigResult;

    move-result-object p1

    return-object p1
.end method
