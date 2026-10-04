###### Class com.amazonaws.services.kms.model.transform.DescribeCustomKeyStoresResultJsonUnmarshaller (com.amazonaws.services.kms.model.transform.DescribeCustomKeyStoresResultJsonUnmarshaller)
.class public Lcom/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "DescribeCustomKeyStoresResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresResultJsonUnmarshaller;
    .registers 1

    .line 61
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresResultJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 62
    new-instance v0, Lcom/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresResultJsonUnmarshaller;

    .line 63
    :cond_b
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresResultJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresResult;
    .registers 6

    .line 31
    new-instance v0, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresResult;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresResult;-><init>()V

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

    const-string v3, "CustomKeyStores"

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 38
    new-instance v2, Lcom/amazonaws/transform/ListUnmarshaller;

    .line 40
    invoke-static {}, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoresListEntryJsonUnmarshaller;->a()Lcom/amazonaws/services/kms/model/transform/CustomKeyStoresListEntryJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/ListUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 42
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/ListUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresResult;->a(Ljava/util/Collection;)V

    goto :goto_c

    :cond_2f
    const-string v3, "NextMarker"

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 44
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 45
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresResult;->a(Ljava/lang/String;)V

    goto :goto_c

    :cond_43
    const-string v3, "Truncated"

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 47
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    move-result-object v2

    .line 48
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresResult;->a(Ljava/lang/Boolean;)V

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

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresResultJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresResult;

    move-result-object p1

    return-object p1
.end method
