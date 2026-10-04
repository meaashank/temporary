###### Class com.amazonaws.services.cognitoidentityprovider.model.transform.UserImportJobTypeJsonMarshaller (com.amazonaws.services.cognitoidentityprovider.model.transform.UserImportJobTypeJsonMarshaller)
.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportJobTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "UserImportJobTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportJobTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportJobTypeJsonMarshaller;
    .registers 1

    .line 100
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportJobTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportJobTypeJsonMarshaller;

    if-nez v0, :cond_b

    .line 101
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportJobTypeJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportJobTypeJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportJobTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportJobTypeJsonMarshaller;

    .line 102
    :cond_b
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportJobTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportJobTypeJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobName"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobId"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 40
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserPoolId"

    .line 41
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 42
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 44
    :cond_39
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreSignedUrl"

    .line 46
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 47
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 49
    :cond_4b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->e()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->e()Ljava/util/Date;

    move-result-object v0

    const-string v1, "CreationDate"

    .line 51
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 52
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 54
    :cond_5d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->f()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 55
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->f()Ljava/util/Date;

    move-result-object v0

    const-string v1, "StartDate"

    .line 56
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 57
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 59
    :cond_6f
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->g()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 60
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->g()Ljava/util/Date;

    move-result-object v0

    const-string v1, "CompletionDate"

    .line 61
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 62
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 64
    :cond_81
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_93

    .line 65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Status"

    .line 66
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 67
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 69
    :cond_93
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a5

    .line 70
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudWatchLogsRoleArn"

    .line 71
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 72
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 74
    :cond_a5
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->j()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_b7

    .line 75
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->j()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "ImportedUsers"

    .line 76
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 77
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 79
    :cond_b7
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->k()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_c9

    .line 80
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->k()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "SkippedUsers"

    .line 81
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 82
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 84
    :cond_c9
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->l()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_db

    .line 85
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->l()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "FailedUsers"

    .line 86
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 87
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 89
    :cond_db
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ed

    .line 90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserImportJobType;->m()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CompletionMessage"

    .line 91
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 92
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 94
    :cond_ed
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
