###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.ContextDataTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.ContextDataTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ContextDataTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "ContextDataTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ContextDataTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ContextDataTypeJsonMarshaller;
    .registers 1

    .line 66
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ContextDataTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ContextDataTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 67
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ContextDataTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ContextDataTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ContextDataTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ContextDataTypeJsonMarshaller;

    .line 68
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ContextDataTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ContextDataTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 6

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpAddress"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServerName"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 40
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServerPath"

    .line 41
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 42
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 44
    :cond_39
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;->d()Ljava/util/List;

    move-result-object v0

    const-string v1, "HttpHeaders"

    .line 46
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 47
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4f
    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/cognitoidentityprovider/model/HttpHeader;

    if-eqz v1, :cond_4f

    .line 50
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/HttpHeaderJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/HttpHeaderJsonMarshaller;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/HttpHeaderJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/HttpHeader;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_4f

    .line 53
    :cond_65
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 55
    :cond_68
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 56
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EncodedData"

    .line 57
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 58
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 60
    :cond_7a
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
