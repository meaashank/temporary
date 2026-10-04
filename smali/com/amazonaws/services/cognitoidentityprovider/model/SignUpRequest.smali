###### Class com.amazonaws.services.cognitoidentityprovider.model.SignUpRequest (com.amazonaws.services.cognitoidentityprovider.model.SignUpRequest)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SignUpRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

.field private h:Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .registers 6

    .line 420
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->l()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->e:Ljava/util/List;

    .line 423
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 424
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V
    .registers 2

    .line 557
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->g:Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V
    .registers 2

    .line 612
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->h:Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 390
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->e:Ljava/util/List;

    return-void

    .line 394
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->e:Ljava/util/List;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .registers 2

    .line 577
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->g:Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .registers 2

    .line 634
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->h:Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;"
        }
    .end annotation

    .line 452
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs b([Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .registers 6

    .line 502
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->m()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->f:Ljava/util/List;

    .line 505
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 506
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 480
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->f:Ljava/util/List;

    return-void

    .line 484
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->f:Ljava/util/List;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;"
        }
    .end annotation

    .line 526
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->c(Ljava/util/Collection;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->c:Ljava/lang/String;

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

    .line 696
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    if-nez v2, :cond_d

    return v1

    .line 698
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    .line 700
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->h()Ljava/lang/String;

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

    .line 702
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 704
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->i()Ljava/lang/String;

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

    .line 706
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 707
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 709
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->j()Ljava/lang/String;

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

    .line 711
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 713
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->k()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->k()Ljava/lang/String;

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

    .line 715
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bb

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 717
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->l()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->l()Ljava/util/List;

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

    .line 719
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->l()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 720
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->l()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->l()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    return v1

    .line 722
    :cond_e6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->m()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    :goto_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->m()Ljava/util/List;

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

    .line 724
    :cond_fc
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->m()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 725
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    return v1

    .line 727
    :cond_111
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->n()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v2

    if-nez v2, :cond_119

    const/4 v2, 0x1

    goto :goto_11a

    :cond_119
    const/4 v2, 0x0

    :goto_11a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->n()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

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

    .line 729
    :cond_127
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->n()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v2

    if-eqz v2, :cond_13c

    .line 730
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->n()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->n()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13c

    return v1

    .line 732
    :cond_13c
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object v2

    if-nez v2, :cond_144

    const/4 v2, 0x1

    goto :goto_145

    :cond_144
    const/4 v2, 0x0

    :goto_145
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

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

    .line 734
    :cond_152
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object v2

    if-eqz v2, :cond_167

    .line 735
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_167

    return v1

    :cond_167
    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .registers 2

    .line 289
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 324
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .registers 2

    .line 346
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 674
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 675
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->i()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 676
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->j()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 677
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->k()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 679
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->l()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5f

    :cond_57
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->l()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_5f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 681
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->m()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_6a

    const/4 v3, 0x0

    goto :goto_72

    :cond_6a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_72
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 683
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->n()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v3

    if-nez v3, :cond_7d

    const/4 v3, 0x0

    goto :goto_85

    :cond_7d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->n()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->hashCode()I

    move-result v3

    :goto_85
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 685
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object v2

    if-nez v2, :cond_8f

    goto :goto_97

    :cond_8f
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;->hashCode()I

    move-result v1

    :goto_97
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->e:Ljava/util/List;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->f:Ljava/util/List;

    return-object v0
.end method

.method public n()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;
    .registers 2

    .line 542
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->g:Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    return-object v0
.end method

.method public o()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;
    .registers 2

    .line 595
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->h:Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 648
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecretHash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->l()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserAttributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->l()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    :cond_b9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->m()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ValidationData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->n()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v1

    if-eqz v1, :cond_ff

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticsMetadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->n()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    :cond_ff
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object v1

    if-eqz v1, :cond_11d

    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserContextData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11d
    const-string v1, "}"

    .line 665
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
