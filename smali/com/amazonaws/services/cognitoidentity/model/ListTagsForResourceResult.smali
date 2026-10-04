###### Class com.amazonaws.services.cognitoidentity.model.ListTagsForResourceResult (com.amazonaws.services.cognitoidentity.model.ListTagsForResourceResult)
.class public Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;
.super Ljava/lang/Object;
.source "ListTagsForResourceResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;->a:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;->a:Ljava/util/Map;

    .line 90
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 93
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 91
    :cond_19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicated keys ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") are provided."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;->a:Ljava/util/Map;

    return-void
.end method

.method public b()Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;
    .registers 2

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;->a:Ljava/util/Map;

    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;->a:Ljava/util/Map;

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

    .line 141
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;

    if-nez v2, :cond_d

    return v1

    .line 143
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;

    .line 145
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;->a()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;->a()Ljava/util/Map;

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

    .line 147
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;->a()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;->a()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    return v1

    :cond_3a
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 130
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;->a()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_10
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    const-string v1, "}"

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
