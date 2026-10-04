###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.UserPoolDescriptionTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.UserPoolDescriptionTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolDescriptionTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "UserPoolDescriptionTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolDescriptionTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolDescriptionTypeJsonMarshaller;
    .registers 1

    .line 65
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolDescriptionTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolDescriptionTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 66
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolDescriptionTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolDescriptionTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolDescriptionTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolDescriptionTypeJsonMarshaller;

    .line 67
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolDescriptionTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolDescriptionTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Id"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 40
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v0

    const-string v1, "LambdaConfig"

    .line 41
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 42
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LambdaConfigTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LambdaConfigTypeJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LambdaConfigTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 44
    :cond_3d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Status"

    .line 46
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 47
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 49
    :cond_4f
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->e()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->e()Ljava/util/Date;

    move-result-object v0

    const-string v1, "LastModifiedDate"

    .line 51
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 52
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 54
    :cond_61
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->f()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 55
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolDescriptionType;->f()Ljava/util/Date;

    move-result-object p1

    const-string v0, "CreationDate"

    .line 56
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 57
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 59
    :cond_73
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
