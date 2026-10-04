###### Class com.amazonaws.services.cognitoidentity.model.RulesConfigurationType (com.amazonaws.services.cognitoidentity.model.RulesConfigurationType)
.class public Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;
.super Ljava/lang/Object;
.source "RulesConfigurationType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentity/model/MappingRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Lcom/amazonaws/services/cognitoidentity/model/MappingRule;)Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;
    .registers 6

    .line 106
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->a:Ljava/util/List;

    .line 109
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 110
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentity/model/MappingRule;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentity/model/MappingRule;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->a:Ljava/util/List;

    return-void

    .line 80
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->a:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentity/model/MappingRule;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 175
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;

    if-nez v2, :cond_d

    return v1

    .line 177
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;

    .line 179
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->a()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->a()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    xor-int/2addr v2, v3

    if-eqz v2, :cond_25

    return v1

    .line 181
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    return v1

    :cond_3a
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 164
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_10
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/RulesConfigurationType;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    const-string v1, "}"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
