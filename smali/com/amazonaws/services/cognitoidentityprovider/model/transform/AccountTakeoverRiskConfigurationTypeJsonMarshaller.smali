###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.AccountTakeoverRiskConfigurationTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.AccountTakeoverRiskConfigurationTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AccountTakeoverRiskConfigurationTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "AccountTakeoverRiskConfigurationTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AccountTakeoverRiskConfigurationTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AccountTakeoverRiskConfigurationTypeJsonMarshaller;
    .registers 1

    .line 47
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AccountTakeoverRiskConfigurationTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AccountTakeoverRiskConfigurationTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 48
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AccountTakeoverRiskConfigurationTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AccountTakeoverRiskConfigurationTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AccountTakeoverRiskConfigurationTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AccountTakeoverRiskConfigurationTypeJsonMarshaller;

    .line 49
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AccountTakeoverRiskConfigurationTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AccountTakeoverRiskConfigurationTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/NotifyConfigurationType;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/NotifyConfigurationType;

    move-result-object v0

    const-string v1, "NotifyConfiguration"

    .line 32
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NotifyConfigurationTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NotifyConfigurationTypeJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NotifyConfigurationTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/NotifyConfigurationType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 36
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverActionsType;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 37
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverRiskConfigurationType;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverActionsType;

    move-result-object p1

    const-string v0, "Actions"

    .line 38
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AccountTakeoverActionsTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AccountTakeoverActionsTypeJsonMarshaller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AccountTakeoverActionsTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AccountTakeoverActionsType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 41
    :cond_2f
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
