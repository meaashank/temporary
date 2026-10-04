###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.ResourceServerTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.ResourceServerTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceServerTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "ResourceServerTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceServerTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceServerTypeJsonMarshaller;
    .registers 1

    .line 62
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceServerTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceServerTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 63
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceServerTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceServerTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceServerTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceServerTypeJsonMarshaller;

    .line 64
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceServerTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceServerTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceServerType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceServerType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceServerType;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserPoolId"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceServerType;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceServerType;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Identifier"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceServerType;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 40
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceServerType;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name"

    .line 41
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 42
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 44
    :cond_39
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceServerType;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceServerType;->d()Ljava/util/List;

    move-result-object p1

    const-string v0, "Scopes"

    .line 46
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 47
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4f
    :goto_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceServerScopeType;

    if-eqz v0, :cond_4f

    .line 50
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceServerScopeTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceServerScopeTypeJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceServerScopeTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceServerScopeType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_4f

    .line 54
    :cond_65
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 56
    :cond_68
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
