###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.RiskExceptionConfigurationTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.RiskExceptionConfigurationTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskExceptionConfigurationTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "RiskExceptionConfigurationTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskExceptionConfigurationTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskExceptionConfigurationTypeJsonMarshaller;
    .registers 1

    .line 59
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskExceptionConfigurationTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskExceptionConfigurationTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 60
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskExceptionConfigurationTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskExceptionConfigurationTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskExceptionConfigurationTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskExceptionConfigurationTypeJsonMarshaller;

    .line 61
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskExceptionConfigurationTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RiskExceptionConfigurationTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "BlockedIPRangeList"

    .line 32
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_19

    .line 39
    :cond_2b
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 41
    :cond_2e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RiskExceptionConfigurationType;->b()Ljava/util/List;

    move-result-object p1

    const-string v0, "SkippedIPRangeList"

    .line 44
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 45
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_44
    :goto_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_44

    .line 48
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_44

    .line 51
    :cond_56
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 53
    :cond_59
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
