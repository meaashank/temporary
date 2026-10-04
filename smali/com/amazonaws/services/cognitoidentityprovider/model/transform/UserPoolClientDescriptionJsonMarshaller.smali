###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.UserPoolClientDescriptionJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.UserPoolClientDescriptionJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolClientDescriptionJsonMarshaller;
.super Ljava/lang/Object;
.source "UserPoolClientDescriptionJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolClientDescriptionJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolClientDescriptionJsonMarshaller;
    .registers 1

    .line 50
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolClientDescriptionJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolClientDescriptionJsonMarshaller;

    if-nez v0, :cond_b

    .line 51
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolClientDescriptionJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolClientDescriptionJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolClientDescriptionJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolClientDescriptionJsonMarshaller;

    .line 52
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolClientDescriptionJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolClientDescriptionJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientDescription;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientDescription;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientDescription;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientId"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientDescription;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientDescription;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserPoolId"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientDescription;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 40
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientDescription;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClientName"

    .line 41
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 42
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 44
    :cond_39
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
