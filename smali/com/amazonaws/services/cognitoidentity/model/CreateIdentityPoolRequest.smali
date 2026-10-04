###### Class com.amazonaws.services.cognitoidentity.model.CreateIdentityPoolRequest (com.amazonaws.services.cognitoidentity.model.CreateIdentityPoolRequest)
.class public Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateIdentityPoolRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
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

    .line 60
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .registers 5

    .line 317
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->c:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->c:Ljava/util/Map;

    .line 320
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 323
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 321
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

.method public varargs a([Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .registers 6

    .line 572
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->o()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->f:Ljava/util/List;

    .line 576
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 577
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .registers 6

    .line 493
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->n()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->e:Ljava/util/List;

    .line 497
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 498
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->a:Ljava/lang/String;

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

    .line 470
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->e:Ljava/util/List;

    return-void

    .line 474
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->e:Ljava/util/List;

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

    .line 277
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->c:Ljava/util/Map;

    return-void
.end method

.method public b(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .registers 5

    .line 764
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->h:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 765
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->h:Ljava/util/Map;

    .line 767
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 770
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 768
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

.method public b(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;"
        }
    .end annotation

    .line 519
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->c:Ljava/util/Map;

    return-object p0
.end method

.method public varargs b([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .registers 6

    .line 654
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->p()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->g:Ljava/util/List;

    .line 657
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 658
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 403
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->d:Ljava/lang/String;

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

    .line 548
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->f:Ljava/util/List;

    return-void

    .line 552
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->f:Ljava/util/List;

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

    .line 718
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->h:Ljava/util/Map;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .registers 2

    .line 442
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;"
        }
    .end annotation

    .line 598
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->c(Ljava/util/Collection;)V

    return-object p0
.end method

.method public d(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;"
        }
    .end annotation

    .line 742
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->h:Ljava/util/Map;

    return-object p0
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

    .line 630
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->g:Ljava/util/List;

    return-void

    .line 634
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->g:Ljava/util/List;

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

    .line 857
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;

    if-nez v2, :cond_d

    return v1

    .line 859
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;

    .line 861
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->h()Ljava/lang/String;

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

    .line 863
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 864
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 866
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->j()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    .line 867
    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->j()Ljava/lang/Boolean;

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

    .line 869
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->j()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 870
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->j()Ljava/lang/Boolean;

    move-result-object v2

    .line 871
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->j()Ljava/lang/Boolean;

    move-result-object v3

    .line 870
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 873
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->k()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->k()Ljava/util/Map;

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

    .line 875
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->k()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 876
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->k()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->k()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 878
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->m()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->m()Ljava/lang/String;

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

    .line 880
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->m()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 881
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 883
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->n()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    .line 884
    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->n()Ljava/util/List;

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

    .line 886
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->n()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 887
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->n()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->n()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    return v1

    .line 889
    :cond_e6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->o()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    .line 890
    :goto_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->o()Ljava/util/List;

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

    .line 892
    :cond_fc
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->o()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 893
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->o()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->o()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    return v1

    .line 895
    :cond_111
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->p()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_119

    const/4 v2, 0x1

    goto :goto_11a

    :cond_119
    const/4 v2, 0x0

    :goto_11a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->p()Ljava/util/List;

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

    .line 897
    :cond_127
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->p()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_13c

    .line 898
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->p()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->p()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13c

    return v1

    .line 900
    :cond_13c
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->q()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_144

    const/4 v2, 0x1

    goto :goto_145

    :cond_144
    const/4 v2, 0x0

    :goto_145
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->q()Ljava/util/Map;

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

    .line 902
    :cond_152
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->q()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_167

    .line 903
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->q()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->q()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_167

    return v1

    :cond_167
    return v0
.end method

.method public f(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;"
        }
    .end annotation

    .line 681
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->e(Ljava/util/Collection;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 823
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 826
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->j()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    .line 827
    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->j()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 830
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->k()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->k()Ljava/util/Map;

    move-result-object v3

    .line 831
    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 834
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->m()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 837
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->n()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5f

    :cond_57
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->n()Ljava/util/List;

    move-result-object v3

    .line 838
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_5f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 841
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->o()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_6a

    const/4 v3, 0x0

    goto :goto_72

    :cond_6a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->o()Ljava/util/List;

    move-result-object v3

    .line 842
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_72
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 844
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->p()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_7d

    const/4 v3, 0x0

    goto :goto_85

    :cond_7d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->p()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_85
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 846
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->q()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_8f

    goto :goto_97

    :cond_8f
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->q()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_97
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/Boolean;
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public j()Ljava/lang/Boolean;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->b:Ljava/lang/Boolean;

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

    .line 263
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->c:Ljava/util/Map;

    return-object v0
.end method

.method public l()Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .registers 2

    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->c:Ljava/util/Map;

    return-object p0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->e:Ljava/util/List;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;",
            ">;"
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->f:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->g:Ljava/util/List;

    return-object v0
.end method

.method public q()Ljava/util/Map;
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

    .line 700
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->h:Ljava/util/Map;

    return-object v0
.end method

.method public r()Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .registers 2

    const/4 v0, 0x0

    .line 781
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->h:Ljava/util/Map;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 795
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdentityPoolName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->j()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllowUnauthenticatedIdentities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->j()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->k()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SupportedLoginProviders: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->k()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeveloperProviderName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->n()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenIdConnectProviderARNs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->n()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    :cond_b9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->o()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CognitoIdentityProviders: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->o()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->p()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_ff

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SamlProviderARNs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->p()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    :cond_ff
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->q()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_11d

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdentityPoolTags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->q()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11d
    const-string v1, "}"

    .line 813
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
