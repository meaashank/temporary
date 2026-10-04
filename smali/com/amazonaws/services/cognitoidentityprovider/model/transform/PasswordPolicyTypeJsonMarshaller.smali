###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.PasswordPolicyTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.PasswordPolicyTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordPolicyTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "PasswordPolicyTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordPolicyTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordPolicyTypeJsonMarshaller;
    .registers 1

    .line 60
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordPolicyTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordPolicyTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 61
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordPolicyTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordPolicyTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordPolicyTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordPolicyTypeJsonMarshaller;

    .line 62
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordPolicyTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordPolicyTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->a()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->a()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MinimumLength"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->c()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->c()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "RequireUppercase"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_2b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->e()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 40
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->e()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "RequireLowercase"

    .line 41
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 44
    :cond_41
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->g()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->g()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "RequireNumbers"

    .line 46
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 49
    :cond_57
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->i()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;->i()Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "RequireSymbols"

    .line 51
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 54
    :cond_6d
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
