###### Class com.amazonaws.services.kms.model.transform.DisconnectCustomKeyStoreResultJsonUnmarshaller (com.amazonaws.services.kms.model.transform.DisconnectCustomKeyStoreResultJsonUnmarshaller)
.class public Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "DisconnectCustomKeyStoreResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/kms/model/DisconnectCustomKeyStoreResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;
    .registers 1

    .line 39
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;

    .line 41
    :cond_b
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/DisconnectCustomKeyStoreResult;
    .registers 2

    .line 31
    new-instance p1, Lcom/amazonaws/services/kms/model/DisconnectCustomKeyStoreResult;

    invoke-direct {p1}, Lcom/amazonaws/services/kms/model/DisconnectCustomKeyStoreResult;-><init>()V

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/DisconnectCustomKeyStoreResult;

    move-result-object p1

    return-object p1
.end method
