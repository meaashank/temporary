###### Class com.amazonaws.services.cognitoidentityprovider.model.UserPoolClientType (com.amazonaws.services.cognitoidentityprovider.model.UserPoolClientType)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
.super Ljava/lang/Object;
.source "UserPoolClientType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Date;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/Boolean;

.field private r:Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 6

    .line 674
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->h()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 675
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->h:Ljava/util/List;

    .line 677
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 678
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;)V
    .registers 2

    .line 1900
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->r:Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 1850
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->q:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 601
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->g:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 279
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->a:Ljava/lang/String;

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

    .line 652
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->h:Ljava/util/List;

    return-void

    .line 656
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->h:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 501
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->e:Ljava/util/Date;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2

    .line 1920
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->r:Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;

    return-object p0
.end method

.method public b(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2

    .line 1871
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->q:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b(Ljava/lang/Integer;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2

    .line 624
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;"
        }
    .end annotation

    .line 698
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2

    .line 519
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->e:Ljava/util/Date;

    return-object p0
.end method

.method public varargs b([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 6

    .line 748
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->i()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->i:Ljava/util/List;

    .line 751
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 752
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public varargs c([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 6

    .line 822
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->j()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 823
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->j:Ljava/util/List;

    .line 825
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 826
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 336
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Collection;)V
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

    .line 726
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->i:Ljava/util/List;

    return-void

    .line 730
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->i:Ljava/util/List;

    return-void
.end method

.method public c(Ljava/util/Date;)V
    .registers 2

    .line 546
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->f:Ljava/util/Date;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;"
        }
    .end annotation

    .line 772
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->c(Ljava/util/Collection;)V

    return-object p0
.end method

.method public d(Ljava/util/Date;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2

    .line 564
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->f:Ljava/util/Date;

    return-object p0
.end method

.method public varargs d([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 6

    .line 904
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->k()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 905
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->k:Ljava/util/List;

    .line 908
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 909
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 433
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->d:Ljava/lang/String;

    return-object v0
.end method

.method public varargs e([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 6

    .line 1174
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->l()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1175
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->l:Ljava/util/List;

    .line 1177
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 1178
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public e()Ljava/util/Date;
    .registers 2

    .line 488
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->e:Ljava/util/Date;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 393
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->c:Ljava/lang/String;

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

    .line 800
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->j:Ljava/util/List;

    return-void

    .line 804
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->j:Ljava/util/List;

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

    .line 2029
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;

    if-nez v2, :cond_d

    return v1

    .line 2031
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;

    .line 2033
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->a()Ljava/lang/String;

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

    .line 2035
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 2036
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 2038
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->b()Ljava/lang/String;

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

    .line 2040
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 2041
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 2043
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->c()Ljava/lang/String;

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

    .line 2045
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 2047
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->d()Ljava/lang/String;

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

    .line 2049
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 2050
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 2052
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->e()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->e()Ljava/util/Date;

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

    .line 2054
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->e()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 2055
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->e()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->e()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    return v1

    .line 2057
    :cond_e6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->f()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    :goto_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->f()Ljava/util/Date;

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

    .line 2059
    :cond_fc
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->f()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 2060
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->f()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->f()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    return v1

    .line 2062
    :cond_111
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->g()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_119

    const/4 v2, 0x1

    goto :goto_11a

    :cond_119
    const/4 v2, 0x0

    :goto_11a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->g()Ljava/lang/Integer;

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

    .line 2064
    :cond_127
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->g()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_13c

    .line 2065
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->g()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->g()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13c

    return v1

    .line 2067
    :cond_13c
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->h()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_144

    const/4 v2, 0x1

    goto :goto_145

    :cond_144
    const/4 v2, 0x0

    :goto_145
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->h()Ljava/util/List;

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

    .line 2069
    :cond_152
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->h()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_167

    .line 2070
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_167

    return v1

    .line 2072
    :cond_167
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->i()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_16f

    const/4 v2, 0x1

    goto :goto_170

    :cond_16f
    const/4 v2, 0x0

    :goto_170
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->i()Ljava/util/List;

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

    .line 2074
    :cond_17d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->i()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_192

    .line 2075
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->i()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_192

    return v1

    .line 2077
    :cond_192
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->j()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_19a

    const/4 v2, 0x1

    goto :goto_19b

    :cond_19a
    const/4 v2, 0x0

    :goto_19b
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->j()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1a3

    const/4 v3, 0x1

    goto :goto_1a4

    :cond_1a3
    const/4 v3, 0x0

    :goto_1a4
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1a8

    return v1

    .line 2079
    :cond_1a8
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->j()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1bd

    .line 2080
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->j()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1bd

    return v1

    .line 2082
    :cond_1bd
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->k()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1c5

    const/4 v2, 0x1

    goto :goto_1c6

    :cond_1c5
    const/4 v2, 0x0

    .line 2083
    :goto_1c6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->k()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1ce

    const/4 v3, 0x1

    goto :goto_1cf

    :cond_1ce
    const/4 v3, 0x0

    :goto_1cf
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1d3

    return v1

    .line 2085
    :cond_1d3
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->k()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1e8

    .line 2086
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->k()Ljava/util/List;

    move-result-object v2

    .line 2087
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->k()Ljava/util/List;

    move-result-object v3

    .line 2086
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e8

    return v1

    .line 2089
    :cond_1e8
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->l()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1f0

    const/4 v2, 0x1

    goto :goto_1f1

    :cond_1f0
    const/4 v2, 0x0

    :goto_1f1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->l()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1f9

    const/4 v3, 0x1

    goto :goto_1fa

    :cond_1f9
    const/4 v3, 0x0

    :goto_1fa
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1fe

    return v1

    .line 2091
    :cond_1fe
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->l()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_213

    .line 2092
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->l()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->l()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_213

    return v1

    .line 2094
    :cond_213
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->m()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_21b

    const/4 v2, 0x1

    goto :goto_21c

    :cond_21b
    const/4 v2, 0x0

    :goto_21c
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->m()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_224

    const/4 v3, 0x1

    goto :goto_225

    :cond_224
    const/4 v3, 0x0

    :goto_225
    xor-int/2addr v2, v3

    if-eqz v2, :cond_229

    return v1

    .line 2096
    :cond_229
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->m()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_23e

    .line 2097
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23e

    return v1

    .line 2099
    :cond_23e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->n()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_246

    const/4 v2, 0x1

    goto :goto_247

    :cond_246
    const/4 v2, 0x0

    :goto_247
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->n()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_24f

    const/4 v3, 0x1

    goto :goto_250

    :cond_24f
    const/4 v3, 0x0

    :goto_250
    xor-int/2addr v2, v3

    if-eqz v2, :cond_254

    return v1

    .line 2101
    :cond_254
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->n()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_269

    .line 2102
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_269

    return v1

    .line 2104
    :cond_269
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->o()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_271

    const/4 v2, 0x1

    goto :goto_272

    :cond_271
    const/4 v2, 0x0

    :goto_272
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->o()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_27a

    const/4 v3, 0x1

    goto :goto_27b

    :cond_27a
    const/4 v3, 0x0

    :goto_27b
    xor-int/2addr v2, v3

    if-eqz v2, :cond_27f

    return v1

    .line 2106
    :cond_27f
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->o()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_294

    .line 2107
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->o()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->o()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_294

    return v1

    .line 2109
    :cond_294
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->p()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_29c

    const/4 v2, 0x1

    goto :goto_29d

    :cond_29c
    const/4 v2, 0x0

    :goto_29d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->p()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2a5

    const/4 v3, 0x1

    goto :goto_2a6

    :cond_2a5
    const/4 v3, 0x0

    :goto_2a6
    xor-int/2addr v2, v3

    if-eqz v2, :cond_2aa

    return v1

    .line 2111
    :cond_2aa
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->p()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2bf

    .line 2112
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->p()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->p()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2bf

    return v1

    .line 2114
    :cond_2bf
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->r()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2c7

    const/4 v2, 0x1

    goto :goto_2c8

    :cond_2c7
    const/4 v2, 0x0

    .line 2115
    :goto_2c8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->r()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_2d0

    const/4 v3, 0x1

    goto :goto_2d1

    :cond_2d0
    const/4 v3, 0x0

    :goto_2d1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_2d5

    return v1

    .line 2117
    :cond_2d5
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->r()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2ea

    .line 2118
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->r()Ljava/lang/Boolean;

    move-result-object v2

    .line 2119
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->r()Ljava/lang/Boolean;

    move-result-object v3

    .line 2118
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ea

    return v1

    .line 2121
    :cond_2ea
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->s()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;

    move-result-object v2

    if-nez v2, :cond_2f2

    const/4 v2, 0x1

    goto :goto_2f3

    :cond_2f2
    const/4 v2, 0x0

    :goto_2f3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->s()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;

    move-result-object v3

    if-nez v3, :cond_2fb

    const/4 v3, 0x1

    goto :goto_2fc

    :cond_2fb
    const/4 v3, 0x0

    :goto_2fc
    xor-int/2addr v2, v3

    if-eqz v2, :cond_300

    return v1

    .line 2123
    :cond_300
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->s()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;

    move-result-object v2

    if-eqz v2, :cond_315

    .line 2124
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->s()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->s()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_315

    return v1

    :cond_315
    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2

    .line 415
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;"
        }
    .end annotation

    .line 846
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->e(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs f([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 6

    .line 1312
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->m()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1313
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->m:Ljava/util/List;

    .line 1315
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 1316
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public f()Ljava/util/Date;
    .registers 2

    .line 533
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->f:Ljava/util/Date;

    return-object v0
.end method

.method public varargs g([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 6

    .line 1674
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->o()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1675
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->o:Ljava/util/List;

    .line 1677
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 1678
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public g()Ljava/lang/Integer;
    .registers 2

    .line 583
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 451
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->d:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/util/Collection;)V
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

    .line 879
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->k:Ljava/util/List;

    return-void

    .line 883
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->k:Ljava/util/List;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2

    .line 474
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;"
        }
    .end annotation

    .line 932
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->g(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs h([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 6

    .line 1775
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->p()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1776
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->p:Ljava/util/List;

    .line 1778
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 1779
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->p:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
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

    .line 638
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->h:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 1981
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1982
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1983
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1985
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->d()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1987
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->e()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5f

    :cond_57
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->e()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_5f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1989
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->f()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_6a

    const/4 v3, 0x0

    goto :goto_72

    :cond_6a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->f()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_72
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1991
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->g()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_7d

    const/4 v3, 0x0

    goto :goto_85

    :cond_7d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->g()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_85
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1993
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->h()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_90

    const/4 v3, 0x0

    goto :goto_98

    :cond_90
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_98
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1995
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->i()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_a3

    const/4 v3, 0x0

    goto :goto_ab

    :cond_a3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_ab
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1997
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->j()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_b6

    const/4 v3, 0x0

    goto :goto_be

    :cond_b6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_be
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2000
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->k()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_c9

    const/4 v3, 0x0

    goto :goto_d1

    :cond_c9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->k()Ljava/util/List;

    move-result-object v3

    .line 2001
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_d1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2003
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->l()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_dc

    const/4 v3, 0x0

    goto :goto_e4

    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->l()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_e4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2004
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->m()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_ef

    const/4 v3, 0x0

    goto :goto_f7

    :cond_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_f7
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2006
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->n()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_102

    const/4 v3, 0x0

    goto :goto_10a

    :cond_102
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_10a
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2008
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->o()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_115

    const/4 v3, 0x0

    goto :goto_11d

    :cond_115
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->o()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_11d
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2010
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->p()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_128

    const/4 v3, 0x0

    goto :goto_130

    :cond_128
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->p()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_130
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2013
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->r()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_13b

    const/4 v3, 0x0

    goto :goto_143

    .line 2014
    :cond_13b
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->r()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_143
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2017
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->s()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;

    move-result-object v2

    if-nez v2, :cond_14d

    goto :goto_155

    :cond_14d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->s()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;

    move-result-object v1

    .line 2018
    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;->hashCode()I

    move-result v1

    :goto_155
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->i:Ljava/util/List;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 1499
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->n:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/util/Collection;)V
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

    .line 1088
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->l:Ljava/util/List;

    return-void

    .line 1092
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->l:Ljava/util/List;

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2

    .line 1585
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->n:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;"
        }
    .end annotation

    .line 1262
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->i(Ljava/util/Collection;)V

    return-object p0
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

    .line 786
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->j:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 862
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->k:Ljava/util/List;

    return-object v0
.end method

.method public k(Ljava/util/Collection;)V
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

    .line 1290
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->m:Ljava/util/List;

    return-void

    .line 1294
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->m:Ljava/util/List;

    return-void
.end method

.method public l(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;"
        }
    .end annotation

    .line 1336
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->k(Ljava/util/Collection;)V

    return-object p0
.end method

.method public l()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->l:Ljava/util/List;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1276
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->m:Ljava/util/List;

    return-object v0
.end method

.method public m(Ljava/util/Collection;)V
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

    .line 1639
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->o:Ljava/util/List;

    return-void

    .line 1643
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->o:Ljava/util/List;

    return-void
.end method

.method public n(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;"
        }
    .end annotation

    .line 1711
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->m(Ljava/util/Collection;)V

    return-object p0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 1418
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->n:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1612
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->o:Ljava/util/List;

    return-object v0
.end method

.method public o(Ljava/util/Collection;)V
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

    .line 1748
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->p:Ljava/util/List;

    return-void

    .line 1752
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->p:Ljava/util/List;

    return-void
.end method

.method public p(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;"
        }
    .end annotation

    .line 1804
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->o(Ljava/util/Collection;)V

    return-object p0
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

    .line 1729
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->p:Ljava/util/List;

    return-object v0
.end method

.method public q()Ljava/lang/Boolean;
    .registers 2

    .line 1820
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->q:Ljava/lang/Boolean;

    return-object v0
.end method

.method public r()Ljava/lang/Boolean;
    .registers 2

    .line 1835
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->q:Ljava/lang/Boolean;

    return-object v0
.end method

.method public s()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;
    .registers 2

    .line 1886
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->r:Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 1934
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 1936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserPoolId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 1938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 1940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1941
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 1942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientSecret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->e()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 1944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastModifiedDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->e()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    :cond_b9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->f()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 1946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreationDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->f()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->g()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_ff

    .line 1948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RefreshTokenValidity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->g()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    :cond_ff
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_122

    .line 1950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadAttributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1951
    :cond_122
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->i()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_145

    .line 1952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WriteAttributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->i()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    :cond_145
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->j()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_168

    .line 1954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExplicitAuthFlows: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->j()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    :cond_168
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->k()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_18b

    .line 1956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SupportedIdentityProviders: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    :cond_18b
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->l()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1ae

    .line 1958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallbackURLs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->l()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    :cond_1ae
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->m()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1d1

    .line 1960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogoutURLs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    :cond_1d1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f4

    .line 1962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultRedirectURI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1963
    :cond_1f4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->o()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_217

    .line 1964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllowedOAuthFlows: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->o()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1965
    :cond_217
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->p()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_23a

    .line 1966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllowedOAuthScopes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->p()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1967
    :cond_23a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->r()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_25d

    .line 1968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllowedOAuthFlowsUserPoolClient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->r()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1970
    :cond_25d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->s()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;

    move-result-object v1

    if-eqz v1, :cond_27b

    .line 1971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticsConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolClientType;->s()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsConfigurationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27b
    const-string v1, "}"

    .line 1972
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1973
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
