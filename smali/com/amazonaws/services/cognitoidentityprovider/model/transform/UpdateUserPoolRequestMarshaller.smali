###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.UpdateUserPoolRequestMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.UpdateUserPoolRequestMarshaller)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserPoolRequestMarshaller;
.super Ljava/lang/Object;
.source "UpdateUserPoolRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller<",
        "Lcom/amazonaws/Request<",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;",
        ">;",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;",
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
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;)Lcom/amazonaws/Request;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1fd

    .line 49
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AmazonCognitoIdentityProvider"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "AWSCognitoIdentityProviderService.UpdateUserPool"

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
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->h()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 63
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->h()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserPoolId"

    .line 64
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 65
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 67
    :cond_38
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;

    move-result-object v3

    if-eqz v3, :cond_4e

    .line 68
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->i()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;

    move-result-object v3

    const-string v4, "Policies"

    .line 69
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 70
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolPolicyTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolPolicyTypeJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolPolicyTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 72
    :cond_4e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v3

    if-eqz v3, :cond_64

    .line 73
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->j()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v3

    const-string v4, "LambdaConfig"

    .line 74
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 75
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LambdaConfigTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LambdaConfigTypeJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LambdaConfigTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 77
    :cond_64
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->k()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8f

    .line 79
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->k()Ljava/util/List;

    move-result-object v3

    const-string v4, "AutoVerifiedAttributes"

    .line 80
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 81
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 82
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7a
    :goto_7a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_7a

    .line 84
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_7a

    .line 87
    :cond_8c
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 89
    :cond_8f
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a1

    .line 90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->l()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SmsVerificationMessage"

    .line 91
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 92
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 94
    :cond_a1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->m()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b3

    .line 96
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->m()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EmailVerificationMessage"

    .line 97
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 98
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 100
    :cond_b3
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->n()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c5

    .line 102
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->n()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EmailVerificationSubject"

    .line 103
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 104
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 106
    :cond_c5
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;

    move-result-object v3

    if-eqz v3, :cond_db

    .line 108
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;

    move-result-object v3

    const-string v4, "VerificationMessageTemplate"

    .line 109
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 110
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerificationMessageTemplateTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerificationMessageTemplateTypeJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/VerificationMessageTemplateTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 113
    :cond_db
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->p()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ed

    .line 115
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->p()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SmsAuthenticationMessage"

    .line 116
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 117
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 119
    :cond_ed
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->q()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ff

    .line 120
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->q()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MfaConfiguration"

    .line 121
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 122
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 124
    :cond_ff
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;

    move-result-object v3

    if-eqz v3, :cond_115

    .line 126
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;

    move-result-object v3

    const-string v4, "DeviceConfiguration"

    .line 127
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 128
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceConfigurationTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceConfigurationTypeJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceConfigurationTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 131
    :cond_115
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->s()Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;

    move-result-object v3

    if-eqz v3, :cond_12b

    .line 133
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->s()Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;

    move-result-object v3

    const-string v4, "EmailConfiguration"

    .line 134
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 135
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EmailConfigurationTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EmailConfigurationTypeJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EmailConfigurationTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 138
    :cond_12b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->t()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;

    move-result-object v3

    if-eqz v3, :cond_141

    .line 139
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->t()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;

    move-result-object v3

    const-string v4, "SmsConfiguration"

    .line 140
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 141
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsConfigurationTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsConfigurationTypeJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SmsConfigurationTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 144
    :cond_141
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->u()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_17f

    .line 146
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->u()Ljava/util/Map;

    move-result-object v3

    const-string v4, "UserPoolTags"

    .line 147
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 148
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 150
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 149
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15b
    :goto_15b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 151
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_15b

    .line 153
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 154
    invoke-interface {v2, v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_15b

    .line 157
    :cond_17c
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 159
    :cond_17f
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->w()Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;

    move-result-object v3

    if-eqz v3, :cond_195

    .line 161
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->w()Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;

    move-result-object v3

    const-string v4, "AdminCreateUserConfig"

    .line 162
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 163
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserConfigTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserConfigTypeJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserConfigTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 166
    :cond_195
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->x()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;

    move-result-object v3

    if-eqz v3, :cond_1ab

    .line 167
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;->x()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;

    move-result-object p1

    const-string v3, "UserPoolAddOns"

    .line 168
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 169
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolAddOnsTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolAddOnsTypeJsonMarshaller;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolAddOnsTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 172
    :cond_1ab
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 173
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->g()V

    .line 174
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 176
    new-instance v2, Lcom/amazonaws/util/StringInputStream;

    invoke-direct {v2, p1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    const-string p1, "Content-Length"

    .line 177
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1cd
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1cd} :catch_1e1

    .line 182
    invoke-interface {v0}, Lcom/amazonaws/Request;->b()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e0

    const-string p1, "Content-Type"

    const-string v1, "application/x-amz-json-1.1"

    .line 183
    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e0
    return-object v0

    :catch_1e1
    move-exception p1

    .line 179
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to marshall request to JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 45
    :cond_1fd
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(UpdateUserPoolRequest)"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 40
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UpdateUserPoolRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/UpdateUserPoolRequest;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
