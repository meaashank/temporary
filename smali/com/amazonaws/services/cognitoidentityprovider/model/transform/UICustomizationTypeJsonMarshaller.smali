###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.UICustomizationTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.UICustomizationTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UICustomizationTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "UICustomizationTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UICustomizationTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UICustomizationTypeJsonMarshaller;
    .registers 1

    .line 70
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UICustomizationTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UICustomizationTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 71
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UICustomizationTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UICustomizationTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UICustomizationTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UICustomizationTypeJsonMarshaller;

    .line 72
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UICustomizationTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UICustomizationTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UICustomizationType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UICustomizationType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UICustomizationType;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserPoolId"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UICustomizationType;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UICustomizationType;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientId"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UICustomizationType;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 40
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UICustomizationType;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageUrl"

    .line 41
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 42
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 44
    :cond_39
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UICustomizationType;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UICustomizationType;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSS"

    .line 46
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 47
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 49
    :cond_4b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UICustomizationType;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UICustomizationType;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSSVersion"

    .line 51
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 52
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 54
    :cond_5d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UICustomizationType;->f()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 55
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UICustomizationType;->f()Ljava/util/Date;

    move-result-object v0

    const-string v1, "LastModifiedDate"

    .line 56
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 57
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 59
    :cond_6f
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UICustomizationType;->g()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 60
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UICustomizationType;->g()Ljava/util/Date;

    move-result-object p1

    const-string v0, "CreationDate"

    .line 61
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 62
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 64
    :cond_81
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
