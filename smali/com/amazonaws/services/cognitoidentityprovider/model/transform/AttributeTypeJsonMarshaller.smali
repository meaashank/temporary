###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.AttributeTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.AttributeTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "AttributeTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;
    .registers 1

    .line 44
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;

    .line 46
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 27
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 28
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name"

    .line 30
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 31
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 34
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Value"

    .line 35
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 36
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 38
    :cond_27
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
