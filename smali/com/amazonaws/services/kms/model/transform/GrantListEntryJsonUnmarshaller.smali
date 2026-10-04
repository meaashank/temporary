###### Class com.amazonaws.services.kms.model.transform.GrantListEntryJsonUnmarshaller (com.amazonaws.services.kms.model.transform.GrantListEntryJsonUnmarshaller)
.class Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonUnmarshaller;
.super Ljava/lang/Object;
.source "GrantListEntryJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/kms/model/GrantListEntry;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonUnmarshaller;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonUnmarshaller;
    .registers 1

    .line 79
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonUnmarshaller;

    if-nez v0, :cond_b

    .line 80
    new-instance v0, Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonUnmarshaller;

    .line 81
    :cond_b
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonUnmarshaller;->a:Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .registers 6

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->a()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->e()Z

    move-result v1

    if-nez v1, :cond_f

    .line 32
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_f
    new-instance v1, Lcom/amazonaws/services/kms/model/GrantListEntry;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/GrantListEntry;-><init>()V

    .line 36
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 37
    :goto_17
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->f()Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 38
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyId"

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 40
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 41
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/kms/model/GrantListEntry;->a(Ljava/lang/String;)V

    goto :goto_17

    :cond_35
    const-string v3, "GrantId"

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 43
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 44
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/kms/model/GrantListEntry;->c(Ljava/lang/String;)V

    goto :goto_17

    :cond_49
    const-string v3, "Name"

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 46
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 47
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/kms/model/GrantListEntry;->e(Ljava/lang/String;)V

    goto :goto_17

    :cond_5d
    const-string v3, "CreationDate"

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 49
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;

    move-result-object v2

    .line 50
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Date;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/kms/model/GrantListEntry;->a(Ljava/util/Date;)V

    goto :goto_17

    :cond_71
    const-string v3, "GranteePrincipal"

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 52
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 53
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/kms/model/GrantListEntry;->g(Ljava/lang/String;)V

    goto :goto_17

    :cond_85
    const-string v3, "RetiringPrincipal"

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 55
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 56
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/kms/model/GrantListEntry;->i(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_9a
    const-string v3, "IssuingAccount"

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 58
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 59
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/kms/model/GrantListEntry;->k(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_af
    const-string v3, "Operations"

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 61
    new-instance v2, Lcom/amazonaws/transform/ListUnmarshaller;

    .line 62
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/ListUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 64
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/ListUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/kms/model/GrantListEntry;->a(Ljava/util/Collection;)V

    goto/16 :goto_17

    :cond_c9
    const-string v3, "Constraints"

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 66
    invoke-static {}, Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonUnmarshaller;->a()Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonUnmarshaller;

    move-result-object v2

    .line 67
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/kms/model/transform/GrantConstraintsJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/kms/model/GrantListEntry;->a(Lcom/amazonaws/services/kms/model/GrantConstraints;)V

    goto/16 :goto_17

    .line 69
    :cond_de
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->j()V

    goto/16 :goto_17

    .line 72
    :cond_e3
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/transform/GrantListEntryJsonUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/GrantListEntry;

    move-result-object p1

    return-object p1
.end method
