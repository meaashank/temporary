###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.CustomDomainConfigTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.CustomDomainConfigTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CustomDomainConfigTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "CustomDomainConfigTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CustomDomainConfigTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CustomDomainConfigTypeJsonMarshaller;
    .registers 1

    .line 40
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CustomDomainConfigTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CustomDomainConfigTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CustomDomainConfigTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CustomDomainConfigTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CustomDomainConfigTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CustomDomainConfigTypeJsonMarshaller;

    .line 42
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CustomDomainConfigTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CustomDomainConfigTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/CustomDomainConfigType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 4

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/CustomDomainConfigType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/CustomDomainConfigType;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CertificateArn"

    .line 31
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_15
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
