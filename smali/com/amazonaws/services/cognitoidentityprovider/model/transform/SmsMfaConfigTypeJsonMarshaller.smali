###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.SmsMfaConfigTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.SmsMfaConfigTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsMfaConfigTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "SmsMfaConfigTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsMfaConfigTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsMfaConfigTypeJsonMarshaller;
    .registers 1

    .line 45
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsMfaConfigTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsMfaConfigTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 46
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsMfaConfigTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsMfaConfigTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsMfaConfigTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsMfaConfigTypeJsonMarshaller;

    .line 47
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsMfaConfigTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsMfaConfigTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsAuthenticationMessage"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SmsMfaConfigType;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;

    move-result-object p1

    const-string v0, "SmsConfiguration"

    .line 36
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsConfigurationTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsConfigurationTypeJsonMarshaller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsConfigurationTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 39
    :cond_2b
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
