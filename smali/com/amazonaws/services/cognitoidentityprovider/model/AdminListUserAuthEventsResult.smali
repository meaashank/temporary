###### Class com.amazonaws.services.cognitoidentityprovider.model.AdminListUserAuthEventsResult (com.amazonaws.services.cognitoidentityprovider.model.AdminListUserAuthEventsResult)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;
.super Ljava/lang/Object;
.source "AdminListUserAuthEventsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;
    .registers 6

    .line 99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->a:Ljava/util/List;

    .line 102
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 103
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->a:Ljava/util/List;

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
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->a:Ljava/util/List;

    return-void

    .line 77
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->a:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->b:Ljava/lang/String;

    return-object v0
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

    .line 225
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;

    if-nez v2, :cond_d

    return v1

    .line 227
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;

    .line 229
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->a()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->a()Ljava/util/List;

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

    .line 231
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 232
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 234
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4b

    const/4 v3, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v3, 0x0

    :goto_4c
    xor-int/2addr v2, v3

    if-eqz v2, :cond_50

    return v1

    .line 236
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 237
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    return v1

    :cond_65
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 213
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 214
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1d

    goto :goto_25

    :cond_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_25
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthEvents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminListUserAuthEventsResult;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4b
    const-string v1, "}"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
