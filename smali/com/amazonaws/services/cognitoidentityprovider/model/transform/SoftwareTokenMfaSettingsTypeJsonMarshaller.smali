###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.SoftwareTokenMfaSettingsTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.SoftwareTokenMfaSettingsTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaSettingsTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "SoftwareTokenMfaSettingsTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaSettingsTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaSettingsTypeJsonMarshaller;
    .registers 1

    .line 45
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaSettingsTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaSettingsTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 46
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaSettingsTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaSettingsTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaSettingsTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaSettingsTypeJsonMarshaller;

    .line 47
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaSettingsTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaSettingsTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;->b()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;->b()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Enabled"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;->d()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaSettingsType;->d()Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "PreferredMfa"

    .line 36
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_2f
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
