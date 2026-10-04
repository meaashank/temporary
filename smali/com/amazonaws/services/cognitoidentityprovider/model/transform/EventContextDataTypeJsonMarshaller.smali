###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.EventContextDataTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.EventContextDataTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventContextDataTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "EventContextDataTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventContextDataTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventContextDataTypeJsonMarshaller;
    .registers 1

    .line 60
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventContextDataTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventContextDataTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 61
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventContextDataTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventContextDataTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventContextDataTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventContextDataTypeJsonMarshaller;

    .line 62
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventContextDataTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EventContextDataTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpAddress"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceName"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 40
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timezone"

    .line 41
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 42
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 44
    :cond_39
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "City"

    .line 46
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 47
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 49
    :cond_4b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Country"

    .line 51
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 52
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 54
    :cond_5d
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
