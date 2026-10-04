###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.AdminSetUserMFAPreferenceResultJsonUnmarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.AdminSetUserMFAPreferenceResultJsonUnmarshaller)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserMFAPreferenceResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "AdminSetUserMFAPreferenceResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserMFAPreferenceResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserMFAPreferenceResultJsonUnmarshaller;
    .registers 1

    .line 39
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserMFAPreferenceResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserMFAPreferenceResultJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserMFAPreferenceResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserMFAPreferenceResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserMFAPreferenceResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserMFAPreferenceResultJsonUnmarshaller;

    .line 41
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserMFAPreferenceResultJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserMFAPreferenceResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceResult;
    .registers 2

    .line 31
    new-instance p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceResult;

    invoke-direct {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceResult;-><init>()V

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminSetUserMFAPreferenceResultJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminSetUserMFAPreferenceResult;

    move-result-object p1

    return-object p1
.end method
