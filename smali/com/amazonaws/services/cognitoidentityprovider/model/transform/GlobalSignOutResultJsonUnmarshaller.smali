###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.GlobalSignOutResultJsonUnmarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.GlobalSignOutResultJsonUnmarshaller)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GlobalSignOutResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "GlobalSignOutResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GlobalSignOutResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GlobalSignOutResultJsonUnmarshaller;
    .registers 1

    .line 38
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GlobalSignOutResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GlobalSignOutResultJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GlobalSignOutResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GlobalSignOutResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GlobalSignOutResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GlobalSignOutResultJsonUnmarshaller;

    .line 40
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GlobalSignOutResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GlobalSignOutResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutResult;
    .registers 2

    .line 30
    new-instance p1, Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutResult;

    invoke-direct {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutResult;-><init>()V

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GlobalSignOutResultJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/GlobalSignOutResult;

    move-result-object p1

    return-object p1
.end method
