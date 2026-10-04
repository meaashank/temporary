###### Class com.amazonaws.services.kms.model.transform.CustomKeyStoresListEntryJsonMarshaller (com.amazonaws.services.kms.model.transform.CustomKeyStoresListEntryJsonMarshaller)
.class Lcom/amazonaws/services/kms/model/transform/CustomKeyStoresListEntryJsonMarshaller;
.super Ljava/lang/Object;
.source "CustomKeyStoresListEntryJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/kms/model/transform/CustomKeyStoresListEntryJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/kms/model/transform/CustomKeyStoresListEntryJsonMarshaller;
    .registers 1

    .line 70
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoresListEntryJsonMarshaller;->a:Lcom/amazonaws/services/kms/model/transform/CustomKeyStoresListEntryJsonMarshaller;

    if-nez v0, :cond_b

    .line 71
    new-instance v0, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoresListEntryJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoresListEntryJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoresListEntryJsonMarshaller;->a:Lcom/amazonaws/services/kms/model/transform/CustomKeyStoresListEntryJsonMarshaller;

    .line 72
    :cond_b
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoresListEntryJsonMarshaller;->a:Lcom/amazonaws/services/kms/model/transform/CustomKeyStoresListEntryJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/kms/model/CustomKeyStoresListEntry;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 5

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomKeyStoresListEntry;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomKeyStoresListEntry;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomKeyStoreId"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomKeyStoresListEntry;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomKeyStoresListEntry;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomKeyStoreName"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_27
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomKeyStoresListEntry;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 40
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomKeyStoresListEntry;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudHsmClusterId"

    .line 41
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 42
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 44
    :cond_39
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomKeyStoresListEntry;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomKeyStoresListEntry;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustAnchorCertificate"

    .line 46
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 47
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 49
    :cond_4b
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomKeyStoresListEntry;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 50
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomKeyStoresListEntry;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionState"

    .line 51
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 52
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 54
    :cond_5d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomKeyStoresListEntry;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 55
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomKeyStoresListEntry;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionErrorCode"

    .line 56
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 57
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 59
    :cond_6f
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomKeyStoresListEntry;->g()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 60
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomKeyStoresListEntry;->g()Ljava/util/Date;

    move-result-object p1

    const-string v0, "CreationDate"

    .line 61
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 62
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 64
    :cond_81
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
