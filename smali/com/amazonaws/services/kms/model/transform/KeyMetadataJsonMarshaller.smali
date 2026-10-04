###### Class com.amazonaws.services.kms.model.transform.KeyMetadataJsonMarshaller (com.amazonaws.services.kms.model.transform.KeyMetadataJsonMarshaller)
.class Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;
.super Ljava/lang/Object;
.source "KeyMetadataJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;
    .registers 1

    .line 109
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;->a:Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;

    if-nez v0, :cond_b

    .line 110
    new-instance v0, Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;->a:Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;

    .line 111
    :cond_b
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;->a:Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/kms/model/KeyMetadata;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 27
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 28
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AWSAccountId"

    .line 30
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 31
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 34
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyId"

    .line 35
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 36
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 38
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Arn"

    .line 40
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 41
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 43
    :cond_39
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->d()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->d()Ljava/util/Date;

    move-result-object v0

    const-string v1, "CreationDate"

    .line 45
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 46
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 48
    :cond_4b
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->f()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 49
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->f()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Enabled"

    .line 50
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 53
    :cond_61
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 54
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Description"

    .line 55
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 56
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 58
    :cond_73
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_85

    .line 59
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyUsage"

    .line 60
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 61
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 63
    :cond_85
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 64
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyState"

    .line 65
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 66
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 68
    :cond_97
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->j()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_a9

    .line 69
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->j()Ljava/util/Date;

    move-result-object v0

    const-string v1, "DeletionDate"

    .line 70
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 71
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 73
    :cond_a9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->k()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_bb

    .line 74
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->k()Ljava/util/Date;

    move-result-object v0

    const-string v1, "ValidTo"

    .line 75
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 76
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 78
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cd

    .line 79
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Origin"

    .line 80
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 81
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 83
    :cond_cd
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_df

    .line 84
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomKeyStoreId"

    .line 85
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 86
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 88
    :cond_df
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f1

    .line 89
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudHsmClusterId"

    .line 90
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 91
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 93
    :cond_f1
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_103

    .line 94
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExpirationModel"

    .line 95
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 96
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 98
    :cond_103
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_115

    .line 99
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyManager"

    .line 100
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 101
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 103
    :cond_115
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
