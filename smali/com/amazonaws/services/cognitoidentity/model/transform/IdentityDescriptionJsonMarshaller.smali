###### Class com.amazonaws.services.cognitoidentity.model.transform.IdentityDescriptionJsonMarshaller (com.amazonaws.services.cognitoidentity.model.transform.IdentityDescriptionJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;
.super Ljava/lang/Object;
.source "IdentityDescriptionJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;
    .registers 1

    .line 61
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;

    if-nez v0, :cond_b

    .line 62
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;

    .line 63
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/IdentityDescriptionJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IdentityId"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;->b()Ljava/util/List;

    move-result-object v0

    const-string v1, "Logins"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 40
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_2b

    .line 43
    :cond_3d
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 45
    :cond_40
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;->c()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 46
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;->c()Ljava/util/Date;

    move-result-object v0

    const-string v1, "CreationDate"

    .line 47
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 48
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 50
    :cond_52
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;->d()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 51
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/IdentityDescription;->d()Ljava/util/Date;

    move-result-object p1

    const-string v0, "LastModifiedDate"

    .line 52
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 53
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 55
    :cond_64
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
