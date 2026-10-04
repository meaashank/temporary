###### Class com.amazonaws.services.cognitoidentity.model.transform.RoleMappingJsonMarshaller (com.amazonaws.services.cognitoidentity.model.transform.RoleMappingJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;
.super Ljava/lang/Object;
.source "RoleMappingJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;
    .registers 1

    .line 50
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;

    if-nez v0, :cond_b

    .line 51
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;

    .line 52
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 27
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 28
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Type"

    .line 30
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 31
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 34
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbiguousRoleResolution"

    .line 35
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 36
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 38
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->c()Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RoleMapping;->c()Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;

    move-result-object p1

    const-string v0, "RulesConfiguration"

    .line 40
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 41
    invoke-static {}, Lcom/amazonaws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonMarshaller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/cognitoidentity/model/transform/RulesConfigurationTypeJsonMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 44
    :cond_3d
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
