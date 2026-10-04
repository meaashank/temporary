###### Class com.amazonaws.services.cognitoidentity.model.transform.LookupDeveloperIdentityResultJsonUnmarshaller (com.amazonaws.services.cognitoidentity.model.transform.LookupDeveloperIdentityResultJsonUnmarshaller)
.class public Lcom/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "LookupDeveloperIdentityResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityResultJsonUnmarshaller;
    .registers 1

    .line 61
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityResultJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 62
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityResultJsonUnmarshaller;

    .line 63
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;
    .registers 6

    .line 31
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->a()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v1

    .line 34
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 35
    :goto_c
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 36
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdentityId"

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 38
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 39
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->a(Ljava/lang/String;)V

    goto :goto_c

    :cond_2a
    const-string v3, "DeveloperUserIdentifierList"

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 41
    new-instance v2, Lcom/amazonaws/transform/ListUnmarshaller;

    .line 43
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/ListUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 45
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/ListUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->a(Ljava/util/Collection;)V

    goto :goto_c

    :cond_43
    const-string v3, "NextToken"

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 47
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 48
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;->c(Ljava/lang/String;)V

    goto :goto_c

    .line 50
    :cond_57
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    goto :goto_c

    .line 53
    :cond_5b
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityResultJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityResult;

    move-result-object p1

    return-object p1
.end method
