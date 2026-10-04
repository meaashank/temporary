###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.AuthenticationResultTypeJsonUnmarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.AuthenticationResultTypeJsonUnmarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthenticationResultTypeJsonUnmarshaller;
.super Ljava/lang/Object;
.source "AuthenticationResultTypeJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthenticationResultTypeJsonUnmarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthenticationResultTypeJsonUnmarshaller;
    .registers 1

    .line 69
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthenticationResultTypeJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthenticationResultTypeJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 70
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthenticationResultTypeJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthenticationResultTypeJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthenticationResultTypeJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthenticationResultTypeJsonUnmarshaller;

    .line 71
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthenticationResultTypeJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthenticationResultTypeJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;
    .registers 6

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->a()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->e()Z

    move-result v1

    if-nez v1, :cond_f

    .line 32
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_f
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;-><init>()V

    .line 36
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 37
    :goto_17
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 38
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessToken"

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 40
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 41
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->a(Ljava/lang/String;)V

    goto :goto_17

    :cond_35
    const-string v3, "ExpiresIn"

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 43
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;

    move-result-object v2

    .line 44
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Integer;

    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->a(Ljava/lang/Integer;)V

    goto :goto_17

    :cond_49
    const-string v3, "TokenType"

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 46
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 47
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->c(Ljava/lang/String;)V

    goto :goto_17

    :cond_5d
    const-string v3, "RefreshToken"

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 49
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 50
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->e(Ljava/lang/String;)V

    goto :goto_17

    :cond_71
    const-string v3, "IdToken"

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 52
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 53
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->g(Ljava/lang/String;)V

    goto :goto_17

    :cond_85
    const-string v3, "NewDeviceMetadata"

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 56
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NewDeviceMetadataTypeJsonUnmarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NewDeviceMetadataTypeJsonUnmarshaller;

    move-result-object v2

    .line 57
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NewDeviceMetadataTypeJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;)V

    goto/16 :goto_17

    .line 59
    :cond_9a
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    goto/16 :goto_17

    .line 62
    :cond_9f
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthenticationResultTypeJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    move-result-object p1

    return-object p1
.end method
