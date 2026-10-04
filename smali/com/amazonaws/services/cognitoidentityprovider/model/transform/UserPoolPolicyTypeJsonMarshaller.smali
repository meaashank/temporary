###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.UserPoolPolicyTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.UserPoolPolicyTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolPolicyTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "UserPoolPolicyTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolPolicyTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolPolicyTypeJsonMarshaller;
    .registers 1

    .line 40
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolPolicyTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolPolicyTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolPolicyTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolPolicyTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolPolicyTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolPolicyTypeJsonMarshaller;

    .line 42
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolPolicyTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolPolicyTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 4

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;

    move-result-object p1

    const-string v0, "PasswordPolicy"

    .line 31
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordPolicyTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordPolicyTypeJsonMarshaller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordPolicyTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/PasswordPolicyType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 34
    :cond_19
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
