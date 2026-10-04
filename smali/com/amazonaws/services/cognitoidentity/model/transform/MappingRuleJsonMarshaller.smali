###### Class com.amazonaws.services.cognitoidentity.model.transform.MappingRuleJsonMarshaller (com.amazonaws.services.cognitoidentity.model.transform.MappingRuleJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentity/model/transform/MappingRuleJsonMarshaller;
.super Ljava/lang/Object;
.source "MappingRuleJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentity/model/transform/MappingRuleJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentity/model/transform/MappingRuleJsonMarshaller;
    .registers 1

    .line 54
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/MappingRuleJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/MappingRuleJsonMarshaller;

    if-nez v0, :cond_b

    .line 55
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/transform/MappingRuleJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/transform/MappingRuleJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/MappingRuleJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/MappingRuleJsonMarshaller;

    .line 56
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/MappingRuleJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentity/model/transform/MappingRuleJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentity/model/MappingRule;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 27
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 28
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/MappingRule;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/MappingRule;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Claim"

    .line 30
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 31
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/MappingRule;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 34
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/MappingRule;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MatchType"

    .line 35
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 36
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 38
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/MappingRule;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/MappingRule;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Value"

    .line 40
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 41
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 43
    :cond_39
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/MappingRule;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/MappingRule;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RoleARN"

    .line 45
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 46
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 48
    :cond_4b
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
