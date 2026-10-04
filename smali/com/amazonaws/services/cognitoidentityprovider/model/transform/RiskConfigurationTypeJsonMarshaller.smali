###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.RiskConfigurationTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.RiskConfigurationTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskConfigurationTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "RiskConfigurationTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskConfigurationTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskConfigurationTypeJsonMarshaller;
    .registers 1

    .line 71
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskConfigurationTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskConfigurationTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 72
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskConfigurationTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskConfigurationTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskConfigurationTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskConfigurationTypeJsonMarshaller;

    .line 73
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskConfigurationTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskConfigurationTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserPoolId"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientId"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 41
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;

    move-result-object v0

    const-string v1, "CompromisedCredentialsRiskConfiguration"

    .line 42
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 43
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CompromisedCredentialsRiskConfigurationTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CompromisedCredentialsRiskConfigurationTypeJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CompromisedCredentialsRiskConfigurationTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsRiskConfigurationType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 46
    :cond_3d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 48
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;

    move-result-object v0

    const-string v1, "AccountTakeoverRiskConfiguration"

    .line 49
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 50
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AccountTakeoverRiskConfigurationTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AccountTakeoverRiskConfigurationTypeJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AccountTakeoverRiskConfigurationTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 53
    :cond_53
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 55
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;

    move-result-object v0

    const-string v1, "RiskExceptionConfiguration"

    .line 56
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 57
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskExceptionConfigurationTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskExceptionConfigurationTypeJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskExceptionConfigurationTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 60
    :cond_69
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->f()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 61
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskConfigurationType;->f()Ljava/util/Date;

    move-result-object p1

    const-string v0, "LastModifiedDate"

    .line 62
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 63
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 65
    :cond_7b
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
