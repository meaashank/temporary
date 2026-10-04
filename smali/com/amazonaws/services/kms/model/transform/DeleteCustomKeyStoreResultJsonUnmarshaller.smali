###### Class com.amazonaws.services.kms.model.transform.DeleteCustomKeyStoreResultJsonUnmarshaller (com.amazonaws.services.kms.model.transform.DeleteCustomKeyStoreResultJsonUnmarshaller)
.class public Lcom/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "DeleteCustomKeyStoreResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/kms/model/DeleteCustomKeyStoreResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreResultJsonUnmarshaller;
    .registers 1

    .line 38
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreResultJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreResultJsonUnmarshaller;

    .line 40
    :cond_b
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/DeleteCustomKeyStoreResult;
    .registers 2

    .line 30
    new-instance p1, Lcom/amazonaws/services/kms/model/DeleteCustomKeyStoreResult;

    invoke-direct {p1}, Lcom/amazonaws/services/kms/model/DeleteCustomKeyStoreResult;-><init>()V

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreResultJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/DeleteCustomKeyStoreResult;

    move-result-object p1

    return-object p1
.end method
