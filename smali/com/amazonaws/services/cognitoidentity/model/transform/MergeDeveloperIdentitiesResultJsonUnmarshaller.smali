###### Class com.amazonaws.services.cognitoidentity.model.transform.MergeDeveloperIdentitiesResultJsonUnmarshaller (com.amazonaws.services.cognitoidentity.model.transform.MergeDeveloperIdentitiesResultJsonUnmarshaller)
.class public Lcom/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "MergeDeveloperIdentitiesResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/cognitoidentity/model/MergeDeveloperIdentitiesResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesResultJsonUnmarshaller;
    .registers 1

    .line 52
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesResultJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 53
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesResultJsonUnmarshaller;

    .line 54
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/MergeDeveloperIdentitiesResult;
    .registers 6

    .line 31
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/MergeDeveloperIdentitiesResult;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/MergeDeveloperIdentitiesResult;-><init>()V

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

    const-string v3, "IdentityId"

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 38
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 39
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/MergeDeveloperIdentitiesResult;->a(Ljava/lang/String;)V

    goto :goto_c

    .line 41
    :cond_2a
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    goto :goto_c

    .line 44
    :cond_2e
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesResultJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/MergeDeveloperIdentitiesResult;

    move-result-object p1

    return-object p1
.end method
