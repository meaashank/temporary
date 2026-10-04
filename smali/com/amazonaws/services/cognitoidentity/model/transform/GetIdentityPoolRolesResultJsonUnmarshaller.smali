###### Class com.amazonaws.services.cognitoidentity.model.transform.GetIdentityPoolRolesResultJsonUnmarshaller (com.amazonaws.services.cognitoidentity.model.transform.GetIdentityPoolRolesResultJsonUnmarshaller)
.class public Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "GetIdentityPoolRolesResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;
    .registers 1

    .line 61
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 62
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;

    .line 63
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;
    .registers 6

    .line 30
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->a()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v1

    .line 33
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 34
    :goto_c
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 35
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdentityPoolId"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 37
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 38
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->a(Ljava/lang/String;)V

    goto :goto_c

    :cond_2a
    const-string v3, "Roles"

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 40
    new-instance v2, Lcom/amazonaws/transform/MapUnmarshaller;

    .line 41
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/MapUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 43
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/MapUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Map;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->a(Ljava/util/Map;)V

    goto :goto_c

    :cond_43
    const-string v3, "RoleMappings"

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 45
    new-instance v2, Lcom/amazonaws/transform/MapUnmarshaller;

    .line 46
    invoke-static {}, Lcom/amazonaws/services/cognitoidentity/model/transform/RoleMappingJsonUnmarshaller;->a()Lcom/amazonaws/services/cognitoidentity/model/transform/RoleMappingJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/MapUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 48
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/MapUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Map;

    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;->c(Ljava/util/Map;)V

    goto :goto_c

    .line 50
    :cond_5c
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    goto :goto_c

    .line 53
    :cond_60
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/GetIdentityPoolRolesResult;

    move-result-object p1

    return-object p1
.end method
