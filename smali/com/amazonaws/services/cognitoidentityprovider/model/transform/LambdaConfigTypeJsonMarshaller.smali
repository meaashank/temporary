###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.LambdaConfigTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.LambdaConfigTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LambdaConfigTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "LambdaConfigTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LambdaConfigTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LambdaConfigTypeJsonMarshaller;
    .registers 1

    .line 85
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LambdaConfigTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LambdaConfigTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 86
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LambdaConfigTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LambdaConfigTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LambdaConfigTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LambdaConfigTypeJsonMarshaller;

    .line 87
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LambdaConfigTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LambdaConfigTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreSignUp"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomMessage"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 40
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PostConfirmation"

    .line 41
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 42
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 44
    :cond_39
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreAuthentication"

    .line 46
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 47
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 49
    :cond_4b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PostAuthentication"

    .line 51
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 52
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 54
    :cond_5d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 55
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefineAuthChallenge"

    .line 56
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 57
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 59
    :cond_6f
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 60
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CreateAuthChallenge"

    .line 61
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 62
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 64
    :cond_81
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_93

    .line 65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VerifyAuthChallengeResponse"

    .line 66
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 67
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 69
    :cond_93
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a5

    .line 70
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreTokenGeneration"

    .line 71
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 72
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 74
    :cond_a5
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b7

    .line 75
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->j()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UserMigration"

    .line 76
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 77
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 79
    :cond_b7
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
