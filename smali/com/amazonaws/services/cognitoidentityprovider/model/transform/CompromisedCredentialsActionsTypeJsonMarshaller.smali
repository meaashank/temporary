###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.CompromisedCredentialsActionsTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.CompromisedCredentialsActionsTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CompromisedCredentialsActionsTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "CompromisedCredentialsActionsTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CompromisedCredentialsActionsTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CompromisedCredentialsActionsTypeJsonMarshaller;
    .registers 1

    .line 40
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CompromisedCredentialsActionsTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CompromisedCredentialsActionsTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CompromisedCredentialsActionsTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CompromisedCredentialsActionsTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CompromisedCredentialsActionsTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CompromisedCredentialsActionsTypeJsonMarshaller;

    .line 42
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CompromisedCredentialsActionsTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CompromisedCredentialsActionsTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsActionsType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 4

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsActionsType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/CompromisedCredentialsActionsType;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EventAction"

    .line 31
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_15
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
