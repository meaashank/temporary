###### Class com.amazonaws.services.kms.model.transform.GrantConstraintsJsonMarshaller (com.amazonaws.services.kms.model.transform.GrantConstraintsJsonMarshaller)
.class Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonMarshaller;
.super Ljava/lang/Object;
.source "GrantConstraintsJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonMarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonMarshaller;
    .registers 1

    .line 65
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonMarshaller;->a:Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonMarshaller;

    if-nez v0, :cond_b

    .line 66
    new-instance v0, Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonMarshaller;->a:Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonMarshaller;

    .line 67
    :cond_b
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonMarshaller;->a:Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/kms/model/GrantConstraints;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .registers 6

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantConstraints;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantConstraints;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "EncryptionContextSubset"

    .line 32
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 35
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1d

    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    invoke-interface {p2, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_1d

    .line 42
    :cond_3e
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 44
    :cond_41
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantConstraints;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 46
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantConstraints;->c()Ljava/util/Map;

    move-result-object p1

    const-string v0, "EncryptionContextEquals"

    .line 47
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 48
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 50
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5b
    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5b

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->a(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 54
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->b(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_5b

    .line 57
    :cond_7c
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 59
    :cond_7f
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
