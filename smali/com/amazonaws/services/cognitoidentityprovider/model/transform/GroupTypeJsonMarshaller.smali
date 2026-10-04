###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.GroupTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.GroupTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GroupTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "GroupTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GroupTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GroupTypeJsonMarshaller;
    .registers 1

    .line 69
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GroupTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GroupTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 70
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GroupTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GroupTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GroupTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GroupTypeJsonMarshaller;

    .line 71
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GroupTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GroupTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 27
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 28
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupName"

    .line 30
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 31
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 34
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserPoolId"

    .line 35
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 36
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 38
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Description"

    .line 40
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 41
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 43
    :cond_39
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RoleArn"

    .line 45
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 46
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 48
    :cond_4b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;->e()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 49
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;->e()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Precedence"

    .line 50
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 51
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 53
    :cond_5d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;->f()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 54
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;->f()Ljava/util/Date;

    move-result-object v0

    const-string v1, "LastModifiedDate"

    .line 55
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 56
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 58
    :cond_6f
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;->g()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 59
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/GroupType;->g()Ljava/util/Date;

    move-result-object p1

    const-string v0, "CreationDate"

    .line 60
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 61
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 63
    :cond_81
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
