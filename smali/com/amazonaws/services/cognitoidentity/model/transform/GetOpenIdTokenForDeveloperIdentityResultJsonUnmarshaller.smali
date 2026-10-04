###### Class com.amazonaws.services.cognitoidentity.model.transform.GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller (com.amazonaws.services.cognitoidentity.model.transform.GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller)
.class public Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller;
    .registers 1

    .line 57
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller;

    .line 59
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityResult;
    .registers 6

    .line 31
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityResult;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityResult;-><init>()V

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

    const-string v3, "IdentityId"

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 39
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 40
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityResult;->a(Ljava/lang/String;)V

    goto :goto_c

    :cond_2a
    const-string v3, "Token"

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 43
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 44
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityResult;->c(Ljava/lang/String;)V

    goto :goto_c

    .line 46
    :cond_3e
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    goto :goto_c

    .line 49
    :cond_42
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityResult;

    move-result-object p1

    return-object p1
.end method
