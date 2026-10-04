###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.DeviceTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.DeviceTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "DeviceTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceTypeJsonMarshaller;
    .registers 1

    .line 67
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 68
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceTypeJsonMarshaller;

    .line 69
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 6

    .line 27
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 28
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceKey"

    .line 30
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 31
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 34
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->b()Ljava/util/List;

    move-result-object v0

    const-string v1, "DeviceAttributes"

    .line 35
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 36
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;

    if-eqz v1, :cond_2b

    .line 39
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_2b

    .line 43
    :cond_41
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 45
    :cond_44
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->c()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 46
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->c()Ljava/util/Date;

    move-result-object v0

    const-string v1, "DeviceCreateDate"

    .line 47
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 48
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 50
    :cond_56
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->d()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 51
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->d()Ljava/util/Date;

    move-result-object v0

    const-string v1, "DeviceLastModifiedDate"

    .line 52
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 53
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 55
    :cond_68
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->e()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 57
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceType;->e()Ljava/util/Date;

    move-result-object p1

    const-string v0, "DeviceLastAuthenticatedDate"

    .line 58
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 59
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 61
    :cond_7a
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
