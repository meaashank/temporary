###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.SchemaAttributeTypeJsonUnmarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.SchemaAttributeTypeJsonUnmarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonUnmarshaller;
.super Ljava/lang/Object;
.source "SchemaAttributeTypeJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonUnmarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonUnmarshaller;
    .registers 1

    .line 75
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 76
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonUnmarshaller;

    .line 77
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;
    .registers 6

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->a()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->e()Z

    move-result v1

    if-nez v1, :cond_f

    .line 32
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_f
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;

    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;-><init>()V

    .line 36
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 37
    :goto_17
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 38
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Name"

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 40
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 41
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a(Ljava/lang/String;)V

    goto :goto_17

    :cond_35
    const-string v3, "AttributeDataType"

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 43
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 44
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->c(Ljava/lang/String;)V

    goto :goto_17

    :cond_49
    const-string v3, "DeveloperOnlyAttribute"

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 46
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    move-result-object v2

    .line 47
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a(Ljava/lang/Boolean;)V

    goto :goto_17

    :cond_5d
    const-string v3, "Mutable"

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 49
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    move-result-object v2

    .line 50
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->c(Ljava/lang/Boolean;)V

    goto :goto_17

    :cond_71
    const-string v3, "Required"

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 52
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    move-result-object v2

    .line 53
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->e(Ljava/lang/Boolean;)V

    goto :goto_17

    :cond_85
    const-string v3, "NumberAttributeConstraints"

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 57
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NumberAttributeConstraintsTypeJsonUnmarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NumberAttributeConstraintsTypeJsonUnmarshaller;

    move-result-object v2

    .line 58
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NumberAttributeConstraintsTypeJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;

    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;)V

    goto/16 :goto_17

    :cond_9a
    const-string v3, "StringAttributeConstraints"

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 62
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StringAttributeConstraintsTypeJsonUnmarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StringAttributeConstraintsTypeJsonUnmarshaller;

    move-result-object v2

    .line 63
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StringAttributeConstraintsTypeJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;

    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;)V

    goto/16 :goto_17

    .line 65
    :cond_af
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    goto/16 :goto_17

    .line 68
    :cond_b4
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;

    move-result-object p1

    return-object p1
.end method
