###### Class com.amazonaws.services.cognitoidentity.model.UpdateIdentityPoolResult (com.amazonaws.services.cognitoidentity.model.UpdateIdentityPoolResult)
.class public Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
.super Ljava/lang/Object;
.source "UpdateIdentityPoolResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .registers 5

    .line 343
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->d:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->d:Ljava/util/Map;

    .line 346
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 349
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 347
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

.method public varargs a([Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .registers 6

    .line 550
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->g:Ljava/util/List;

    .line 554
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 555
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .registers 6

    .line 468
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->h()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->f:Ljava/util/List;

    .line 472
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 473
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 445
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->f:Ljava/util/List;

    return-void

    .line 449
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->f:Ljava/util/List;

    return-void
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

    .line 303
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->d:Ljava/util/Map;

    return-void
.end method

.method public b(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .registers 5

    .line 747
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 748
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i:Ljava/util/Map;

    .line 750
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 753
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 751
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

.method public b(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;"
        }
    .end annotation

    .line 494
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;"
        }
    .end annotation

    .line 323
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->d:Ljava/util/Map;

    return-object p0
.end method

.method public varargs b([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .registers 6

    .line 633
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->j()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->h:Ljava/util/List;

    .line 636
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 637
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 525
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->g:Ljava/util/List;

    return-void

    .line 529
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->g:Ljava/util/List;

    return-void
.end method

.method public c(Ljava/util/Map;)V
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

    .line 699
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i:Ljava/util/Map;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;"
        }
    .end annotation

    .line 577
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->c(Ljava/util/Collection;)V

    return-object p0
.end method

.method public d(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;"
        }
    .end annotation

    .line 724
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i:Ljava/util/Map;

    return-object p0
.end method

.method public d()Ljava/lang/Boolean;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public e()Ljava/util/Map;
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

    .line 289
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->d:Ljava/util/Map;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 395
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->e:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 609
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->h:Ljava/util/List;

    return-void

    .line 613
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->h:Ljava/util/List;

    return-void
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

    .line 844
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;

    if-nez v2, :cond_d

    return v1

    .line 846
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;

    .line 848
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->a()Ljava/lang/String;

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

    .line 850
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 851
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 853
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->b()Ljava/lang/String;

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

    .line 855
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 856
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 858
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->d()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    .line 859
    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->d()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_76

    const/4 v3, 0x1

    goto :goto_77

    :cond_76
    const/4 v3, 0x0

    :goto_77
    xor-int/2addr v2, v3

    if-eqz v2, :cond_7b

    return v1

    .line 861
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->d()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 862
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->d()Ljava/lang/Boolean;

    move-result-object v2

    .line 863
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->d()Ljava/lang/Boolean;

    move-result-object v3

    .line 862
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 865
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->e()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->e()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_a1

    const/4 v3, 0x1

    goto :goto_a2

    :cond_a1
    const/4 v3, 0x0

    :goto_a2
    xor-int/2addr v2, v3

    if-eqz v2, :cond_a6

    return v1

    .line 867
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->e()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 868
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->e()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->e()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 870
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->g()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->g()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_cc

    const/4 v3, 0x1

    goto :goto_cd

    :cond_cc
    const/4 v3, 0x0

    :goto_cd
    xor-int/2addr v2, v3

    if-eqz v2, :cond_d1

    return v1

    .line 872
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 873
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    return v1

    .line 875
    :cond_e6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->h()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    .line 876
    :goto_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->h()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_f7

    const/4 v3, 0x1

    goto :goto_f8

    :cond_f7
    const/4 v3, 0x0

    :goto_f8
    xor-int/2addr v2, v3

    if-eqz v2, :cond_fc

    return v1

    .line 878
    :cond_fc
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->h()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 879
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    return v1

    .line 881
    :cond_111
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_119

    const/4 v2, 0x1

    goto :goto_11a

    :cond_119
    const/4 v2, 0x0

    .line 882
    :goto_11a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_122

    const/4 v3, 0x1

    goto :goto_123

    :cond_122
    const/4 v3, 0x0

    :goto_123
    xor-int/2addr v2, v3

    if-eqz v2, :cond_127

    return v1

    .line 884
    :cond_127
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_13c

    .line 885
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13c

    return v1

    .line 887
    :cond_13c
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->j()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_144

    const/4 v2, 0x1

    goto :goto_145

    :cond_144
    const/4 v2, 0x0

    :goto_145
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->j()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_14d

    const/4 v3, 0x1

    goto :goto_14e

    :cond_14d
    const/4 v3, 0x0

    :goto_14e
    xor-int/2addr v2, v3

    if-eqz v2, :cond_152

    return v1

    .line 889
    :cond_152
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->j()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_167

    .line 890
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->j()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_167

    return v1

    .line 892
    :cond_167
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->k()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_16f

    const/4 v2, 0x1

    goto :goto_170

    :cond_16f
    const/4 v2, 0x0

    :goto_170
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->k()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_178

    const/4 v3, 0x1

    goto :goto_179

    :cond_178
    const/4 v3, 0x0

    :goto_179
    xor-int/2addr v2, v3

    if-eqz v2, :cond_17d

    return v1

    .line 894
    :cond_17d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->k()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_192

    .line 895
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->k()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->k()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_192

    return v1

    :cond_192
    return v0
.end method

.method public f()Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .registers 2

    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->d:Ljava/util/Map;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .registers 2

    .line 417
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->e:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;"
        }
    .end annotation

    .line 660
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->e(Ljava/util/Collection;)V

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->f:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 808
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 810
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 813
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->d()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    .line 814
    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->d()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 817
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->e()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->e()Ljava/util/Map;

    move-result-object v3

    .line 818
    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 821
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->g()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5f

    :cond_57
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 824
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->h()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_6a

    const/4 v3, 0x0

    goto :goto_72

    :cond_6a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->h()Ljava/util/List;

    move-result-object v3

    .line 825
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_72
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 828
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_7d

    const/4 v3, 0x0

    goto :goto_85

    :cond_7d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i()Ljava/util/List;

    move-result-object v3

    .line 829
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_85
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 831
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->j()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_90

    const/4 v3, 0x0

    goto :goto_98

    :cond_90
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_98
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 833
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->k()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_a2

    goto :goto_aa

    :cond_a2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->k()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_aa
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;",
            ">;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->g:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->h:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/util/Map;
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

    .line 680
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i:Ljava/util/Map;

    return-object v0
.end method

.method public l()Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .registers 2

    const/4 v0, 0x0

    .line 764
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i:Ljava/util/Map;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 778
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdentityPoolId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdentityPoolName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->d()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllowUnauthenticatedIdentities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->d()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->e()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SupportedLoginProviders: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->e()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeveloperProviderName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    :cond_b9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenIdConnectProviderARNs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_ff

    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CognitoIdentityProviders: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->i()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    :cond_ff
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->j()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_122

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SamlProviderARNs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->j()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    :cond_122
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->k()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_140

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdentityPoolTags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult;->k()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_140
    const-string v1, "}"

    .line 798
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
