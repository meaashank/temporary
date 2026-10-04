###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.AdminCreateUserConfigTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.AdminCreateUserConfigTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserConfigTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "AdminCreateUserConfigTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserConfigTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserConfigTypeJsonMarshaller;
    .registers 1

    .line 54
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserConfigTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserConfigTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 55
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserConfigTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserConfigTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserConfigTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserConfigTypeJsonMarshaller;

    .line 56
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserConfigTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AdminCreateUserConfigTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->b()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->b()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "AllowAdminCreateUserOnly"

    .line 32
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 35
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 37
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->c()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "UnusedAccountValidityDays"

    .line 38
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 41
    :cond_2b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;

    move-result-object p1

    const-string v0, "InviteMessageTemplate"

    .line 44
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 45
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/MessageTemplateTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/MessageTemplateTypeJsonMarshaller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/MessageTemplateTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/MessageTemplateType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 48
    :cond_41
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
