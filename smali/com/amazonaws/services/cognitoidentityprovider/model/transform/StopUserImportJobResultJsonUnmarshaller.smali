###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.StopUserImportJobResultJsonUnmarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.StopUserImportJobResultJsonUnmarshaller)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StopUserImportJobResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "StopUserImportJobResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StopUserImportJobResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StopUserImportJobResultJsonUnmarshaller;
    .registers 1

    .line 52
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StopUserImportJobResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StopUserImportJobResultJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 53
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StopUserImportJobResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StopUserImportJobResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StopUserImportJobResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StopUserImportJobResultJsonUnmarshaller;

    .line 54
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StopUserImportJobResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StopUserImportJobResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;
    .registers 6

    .line 30
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;-><init>()V

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

    const-string v3, "UserImportJob"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 38
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportJobTypeJsonUnmarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportJobTypeJsonUnmarshaller;

    move-result-object v2

    .line 39
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportJobTypeJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;)V

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

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StopUserImportJobResultJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/StopUserImportJobResult;

    move-result-object p1

    return-object p1
.end method
