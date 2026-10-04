###### Class com.amazonaws.services.kms.model.transform.CreateKeyRequestMarshaller (com.amazonaws.services.kms.model.transform.CreateKeyRequestMarshaller)
.class public Lcom/amazonaws/services/kms/model/transform/CreateKeyRequestMarshaller;
.super Ljava/lang/Object;
.source "CreateKeyRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller<",
        "Lcom/amazonaws/Request<",
        "Lcom/amazonaws/services/kms/model/CreateKeyRequest;",
        ">;",
        "Lcom/amazonaws/services/kms/model/CreateKeyRequest;",
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
.method public a(Lcom/amazonaws/services/kms/model/CreateKeyRequest;)Lcom/amazonaws/Request;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/kms/model/CreateKeyRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/kms/model/CreateKeyRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_117

    .line 48
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AWSKMS"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "TrentService.CreateKey"

    const-string v2, "X-Amz-Target"

    .line 51
    invoke-interface {v0, v2, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/http/HttpMethodName;)V

    const-string v1, "/"

    .line 55
    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;)V

    .line 57
    :try_start_1a
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 58
    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    .line 59
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 61
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->h()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 62
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->h()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Policy"

    .line 63
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 64
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 66
    :cond_38
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 67
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Description"

    .line 68
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 69
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 71
    :cond_4a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->j()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 72
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->j()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyUsage"

    .line 73
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 74
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 76
    :cond_5c
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->k()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6e

    .line 77
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->k()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Origin"

    .line 78
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 79
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 81
    :cond_6e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_80

    .line 82
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->l()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CustomKeyStoreId"

    .line 83
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 84
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 86
    :cond_80
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->n()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_96

    .line 88
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->n()Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "BypassPolicyLockoutSafetyCheck"

    .line 89
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 90
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 92
    :cond_96
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->o()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c5

    .line 93
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->o()Ljava/util/List;

    move-result-object p1

    const-string v3, "Tags"

    .line 94
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 95
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_ac
    :goto_ac
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/Tag;

    if-eqz v3, :cond_ac

    .line 98
    invoke-static {}, Lcom/amazonaws/services/kms/model/transform/TagJsonMarshaller;->a()Lcom/amazonaws/services/kms/model/transform/TagJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/amazonaws/services/kms/model/transform/TagJsonMarshaller;->a(Lcom/amazonaws/services/kms/model/Tag;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_ac

    .line 101
    :cond_c2
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 104
    :cond_c5
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 105
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->g()V

    .line 106
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 108
    new-instance v2, Lcom/amazonaws/util/StringInputStream;

    invoke-direct {v2, p1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    const-string p1, "Content-Length"

    .line 109
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_e7} :catch_fb

    .line 114
    invoke-interface {v0}, Lcom/amazonaws/Request;->b()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fa

    const-string p1, "Content-Type"

    const-string v1, "application/x-amz-json-1.1"

    .line 115
    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fa
    return-object v0

    :catch_fb
    move-exception p1

    .line 111
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to marshall request to JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 45
    :cond_117
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(CreateKeyRequest)"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 40
    check-cast p1, Lcom/amazonaws/services/kms/model/CreateKeyRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/transform/CreateKeyRequestMarshaller;->a(Lcom/amazonaws/services/kms/model/CreateKeyRequest;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
