###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.SchemaAttributeTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.SchemaAttributeTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "SchemaAttributeTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonMarshaller;
    .registers 1

    .line 74
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 75
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonMarshaller;

    .line 76
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SchemaAttributeTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AttributeDataType"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->d()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 40
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->d()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "DeveloperOnlyAttribute"

    .line 41
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 44
    :cond_3d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->f()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->f()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Mutable"

    .line 46
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 49
    :cond_53
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->h()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->h()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Required"

    .line 51
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 54
    :cond_69
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 56
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;

    move-result-object v0

    const-string v1, "NumberAttributeConstraints"

    .line 57
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 58
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NumberAttributeConstraintsTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NumberAttributeConstraintsTypeJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NumberAttributeConstraintsTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/NumberAttributeConstraintsType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 61
    :cond_7f
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;

    move-result-object v0

    if-eqz v0, :cond_95

    .line 63
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;

    move-result-object p1

    const-string v0, "StringAttributeConstraints"

    .line 64
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 65
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StringAttributeConstraintsTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StringAttributeConstraintsTypeJsonMarshaller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/StringAttributeConstraintsTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/StringAttributeConstraintsType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 68
    :cond_95
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
