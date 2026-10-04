###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.AdminCreateUserRequestMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.AdminCreateUserRequestMarshaller)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserRequestMarshaller;
.super Ljava/lang/Object;
.source "AdminCreateUserRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller<",
        "Lcom/amazonaws/Request<",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;",
        ">;",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;",
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
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;)Lcom/amazonaws/Request;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_15f

    .line 49
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AmazonCognitoIdentityProvider"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "AWSCognitoIdentityProviderService.AdminCreateUser"

    const-string v2, "X-Amz-Target"

    .line 52
    invoke-interface {v0, v2, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/http/HttpMethodName;)V

    const-string v1, "/"

    .line 56
    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;)V

    .line 58
    :try_start_1a
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 59
    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    .line 60
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 62
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;->h()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 63
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;->h()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserPoolId"

    .line 64
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 65
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 67
    :cond_38
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 68
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Username"

    .line 69
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 70
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 72
    :cond_4a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;->j()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_79

    .line 74
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;->j()Ljava/util/List;

    move-result-object v3

    const-string v4, "UserAttributes"

    .line 75
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 76
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 77
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_60
    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;

    if-eqz v4, :cond_60

    .line 79
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_60

    .line 83
    :cond_76
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 85
    :cond_79
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;->k()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a8

    .line 87
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;->k()Ljava/util/List;

    move-result-object v3

    const-string v4, "ValidationData"

    .line 88
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 89
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 90
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8f
    :goto_8f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;

    if-eqz v4, :cond_8f

    .line 92
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_8f

    .line 96
    :cond_a5
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 98
    :cond_a8
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ba

    .line 99
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;->l()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TemporaryPassword"

    .line 100
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 101
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 103
    :cond_ba
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;->n()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_d0

    .line 104
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;->n()Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "ForceAliasCreation"

    .line 105
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 106
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 108
    :cond_d0
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;->o()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e2

    .line 109
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;->o()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MessageAction"

    .line 110
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 111
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 113
    :cond_e2
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;->p()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_10d

    .line 115
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;->p()Ljava/util/List;

    move-result-object p1

    const-string v3, "DesiredDeliveryMediums"

    .line 116
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 117
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f8
    :goto_f8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_f8

    .line 120
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_f8

    .line 123
    :cond_10a
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 126
    :cond_10d
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 127
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->g()V

    .line 128
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 130
    new-instance v2, Lcom/amazonaws/util/StringInputStream;

    invoke-direct {v2, p1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    const-string p1, "Content-Length"

    .line 131
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12f
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_12f} :catch_143

    .line 136
    invoke-interface {v0}, Lcom/amazonaws/Request;->b()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_142

    const-string p1, "Content-Type"

    const-string v1, "application/x-amz-json-1.1"

    .line 137
    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_142
    return-object v0

    :catch_143
    move-exception p1

    .line 133
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to marshall request to JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 45
    :cond_15f
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(AdminCreateUserRequest)"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 40
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserRequest;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
