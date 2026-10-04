###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.DeviceConfigurationTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.DeviceConfigurationTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceConfigurationTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "DeviceConfigurationTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceConfigurationTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceConfigurationTypeJsonMarshaller;
    .registers 1

    .line 47
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceConfigurationTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceConfigurationTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 48
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceConfigurationTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceConfigurationTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceConfigurationTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceConfigurationTypeJsonMarshaller;

    .line 49
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceConfigurationTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceConfigurationTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->b()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->b()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ChallengeRequiredOnNewDevice"

    .line 32
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 35
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->d()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 37
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->d()Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "DeviceOnlyRememberedOnUserPrompt"

    .line 38
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 41
    :cond_2f
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
