###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.SoftwareTokenMfaConfigTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.SoftwareTokenMfaConfigTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaConfigTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "SoftwareTokenMfaConfigTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaConfigTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaConfigTypeJsonMarshaller;
    .registers 1

    .line 40
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaConfigTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaConfigTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaConfigTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaConfigTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaConfigTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaConfigTypeJsonMarshaller;

    .line 42
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaConfigTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMfaConfigTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 4

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;->b()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SoftwareTokenMfaConfigType;->b()Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "Enabled"

    .line 31
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_19
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
