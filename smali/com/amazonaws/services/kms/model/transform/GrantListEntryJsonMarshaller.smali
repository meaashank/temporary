###### Class com.amazonaws.services.kms.model.transform.GrantListEntryJsonMarshaller (com.amazonaws.services.kms.model.transform.GrantListEntryJsonMarshaller)
.class Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;
.super Ljava/lang/Object;
.source "GrantListEntryJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;
    .registers 1

    .line 85
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;->a:Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;

    if-nez v0, :cond_b

    .line 86
    new-instance v0, Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;->a:Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;

    .line 87
    :cond_b
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;->a:Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/kms/model/GrantListEntry;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 27
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 28
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyId"

    .line 30
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 31
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 34
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GrantId"

    .line 35
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 36
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 38
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name"

    .line 40
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 41
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 43
    :cond_39
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->d()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->d()Ljava/util/Date;

    move-result-object v0

    const-string v1, "CreationDate"

    .line 45
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 46
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 48
    :cond_4b
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 49
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GranteePrincipal"

    .line 50
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 51
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 53
    :cond_5d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 54
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RetiringPrincipal"

    .line 55
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 56
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 58
    :cond_6f
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 59
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IssuingAccount"

    .line 60
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 61
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 63
    :cond_81
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_ac

    .line 64
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->h()Ljava/util/List;

    move-result-object v0

    const-string v1, "Operations"

    .line 65
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 66
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_97
    :goto_97
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_97

    .line 69
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_97

    .line 72
    :cond_a9
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 74
    :cond_ac
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->i()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v0

    if-eqz v0, :cond_c2

    .line 75
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->i()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object p1

    const-string v0, "Constraints"

    .line 76
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 77
    invoke-static {}, Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonMarshaller;->a()Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonMarshaller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonMarshaller;->a(Lcom/amazonaws/services/kms/model/GrantConstraints;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 79
    :cond_c2
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
