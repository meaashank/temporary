###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.IdentityProviderTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.IdentityProviderTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/IdentityProviderTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "IdentityProviderTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/IdentityProviderTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/IdentityProviderTypeJsonMarshaller;
    .registers 1

    .line 101
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/IdentityProviderTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/IdentityProviderTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 102
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/IdentityProviderTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/IdentityProviderTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/IdentityProviderTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/IdentityProviderTypeJsonMarshaller;

    .line 103
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/IdentityProviderTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/IdentityProviderTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/IdentityProviderType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 6

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/IdentityProviderType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/IdentityProviderType;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserPoolId"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/IdentityProviderType;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/IdentityProviderType;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProviderName"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/IdentityProviderType;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 40
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/IdentityProviderType;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProviderType"

    .line 41
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 42
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 44
    :cond_39
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/IdentityProviderType;->d()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 46
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/IdentityProviderType;->d()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ProviderDetails"

    .line 47
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 48
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 50
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_53
    :goto_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_53

    .line 53
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 54
    invoke-interface {p2, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_53

    .line 57
    :cond_74
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 59
    :cond_77
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/IdentityProviderType;->f()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b5

    .line 61
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/IdentityProviderType;->f()Ljava/util/Map;

    move-result-object v0

    const-string v1, "AttributeMapping"

    .line 62
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 63
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 65
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_91
    :goto_91
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_91

    .line 68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 69
    invoke-interface {p2, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_91

    .line 72
    :cond_b2
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 74
    :cond_b5
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/IdentityProviderType;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e0

    .line 75
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/IdentityProviderType;->h()Ljava/util/List;

    move-result-object v0

    const-string v1, "IdpIdentifiers"

    .line 76
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 77
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_cb
    :goto_cb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_dd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_cb

    .line 80
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_cb

    .line 83
    :cond_dd
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 85
    :cond_e0
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/IdentityProviderType;->i()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_f2

    .line 86
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/IdentityProviderType;->i()Ljava/util/Date;

    move-result-object v0

    const-string v1, "LastModifiedDate"

    .line 87
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 88
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 90
    :cond_f2
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/IdentityProviderType;->j()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_104

    .line 91
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/IdentityProviderType;->j()Ljava/util/Date;

    move-result-object p1

    const-string v0, "CreationDate"

    .line 92
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 93
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 95
    :cond_104
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
