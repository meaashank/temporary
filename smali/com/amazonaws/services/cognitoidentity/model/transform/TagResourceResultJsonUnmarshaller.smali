###### Class com.amazonaws.services.cognitoidentity.model.transform.TagResourceResultJsonUnmarshaller (com.amazonaws.services.cognitoidentity.model.transform.TagResourceResultJsonUnmarshaller)
.class public Lcom/amazonaws/services/cognitoidentity/model/transform/TagResourceResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "TagResourceResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/cognitoidentity/model/TagResourceResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentity/model/transform/TagResourceResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentity/model/transform/TagResourceResultJsonUnmarshaller;
    .registers 1

    .line 38
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/TagResourceResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/TagResourceResultJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/transform/TagResourceResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/transform/TagResourceResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/TagResourceResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/TagResourceResultJsonUnmarshaller;

    .line 40
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/TagResourceResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/TagResourceResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/TagResourceResult;
    .registers 2

    .line 30
    new-instance p1, Lcom/amazonaws/services/cognitoidentity/model/TagResourceResult;

    invoke-direct {p1}, Lcom/amazonaws/services/cognitoidentity/model/TagResourceResult;-><init>()V

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/TagResourceResultJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/TagResourceResult;

    move-result-object p1

    return-object p1
.end method
