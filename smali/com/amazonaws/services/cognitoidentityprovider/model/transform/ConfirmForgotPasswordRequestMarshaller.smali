###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.ConfirmForgotPasswordRequestMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.ConfirmForgotPasswordRequestMarshaller)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmForgotPasswordRequestMarshaller;
.super Ljava/lang/Object;
.source "ConfirmForgotPasswordRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller<",
        "Lcom/amazonaws/Request<",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;",
        ">;",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;)Lcom/amazonaws/Request;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_fe

    .line 50
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AmazonCognitoIdentityProvider"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "AWSCognitoIdentityProviderService.ConfirmForgotPassword"

    const-string v2, "X-Amz-Target"

    .line 53
    invoke-interface {v0, v2, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/http/HttpMethodName;)V

    const-string v1, "/"

    .line 57
    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;)V

    .line 59
    :try_start_1a
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 60
    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    .line 61
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 63
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->h()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 64
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->h()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ClientId"

    .line 65
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 66
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 68
    :cond_38
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 69
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecretHash"

    .line 70
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 71
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 73
    :cond_4a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->j()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 74
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->j()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Username"

    .line 75
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 76
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 78
    :cond_5c
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->k()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6e

    .line 79
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->k()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ConfirmationCode"

    .line 80
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 81
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 83
    :cond_6e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_80

    .line 84
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->l()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Password"

    .line 85
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 86
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 88
    :cond_80
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->m()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v3

    if-eqz v3, :cond_96

    .line 90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->m()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v3

    const-string v4, "AnalyticsMetadata"

    .line 91
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 92
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AnalyticsMetadataTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AnalyticsMetadataTypeJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AnalyticsMetadataTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 95
    :cond_96
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->n()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object v3

    if-eqz v3, :cond_ac

    .line 97
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;->n()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object p1

    const-string v3, "UserContextData"

    .line 98
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 99
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 103
    :cond_ac
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 104
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->g()V

    .line 105
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 107
    new-instance v2, Lcom/amazonaws/util/StringInputStream;

    invoke-direct {v2, p1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    const-string p1, "Content-Length"

    .line 108
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_ce} :catch_e2

    .line 113
    invoke-interface {v0}, Lcom/amazonaws/Request;->b()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e1

    const-string p1, "Content-Type"

    const-string v1, "application/x-amz-json-1.1"

    .line 114
    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e1
    return-object v0

    :catch_e2
    move-exception p1

    .line 110
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to marshall request to JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 46
    :cond_fe
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(ConfirmForgotPasswordRequest)"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 40
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmForgotPasswordRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmForgotPasswordRequest;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
