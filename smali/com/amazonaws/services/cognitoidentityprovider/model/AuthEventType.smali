###### Class com.amazonaws.services.cognitoidentityprovider.model.AuthEventType (com.amazonaws.services.cognitoidentityprovider.model.AuthEventType)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;
.super Ljava/lang/Object;
.source "AuthEventType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Date;

.field private d:Ljava/lang/String;

.field private e:Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeResponseType;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;

.field private h:Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeResponseType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;
    .registers 6

    .line 466
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->f()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->f:Ljava/util/List;

    .line 470
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 471
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;)V
    .registers 2

    .line 527
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->g:Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;)V
    .registers 2

    .line 580
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->h:Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/EventResponseType;)V
    .registers 2

    .line 349
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventResponseType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;)V
    .registers 2

    .line 398
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->e:Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/EventType;)V
    .registers 2

    .line 207
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeResponseType;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 444
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->f:Ljava/util/List;

    return-void

    .line 448
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->f:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 256
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->c:Ljava/util/Date;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;
    .registers 2

    .line 549
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->g:Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;
    .registers 2

    .line 600
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->h:Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/EventResponseType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;
    .registers 2

    .line 371
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventResponseType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;
    .registers 2

    .line 416
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->e:Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/EventType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;
    .registers 2

    .line 229
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeResponseType;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;"
        }
    .end annotation

    .line 492
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->c:Ljava/util/Date;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Date;
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->c:Ljava/util/Date;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;
    .registers 2

    .line 385
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->e:Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->d:Ljava/lang/String;

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

    .line 663
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;

    if-nez v2, :cond_d

    return v1

    .line 665
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;

    .line 667
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->a()Ljava/lang/String;

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

    .line 669
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 671
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->b()Ljava/lang/String;

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

    .line 673
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 674
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 676
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->c()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->c()Ljava/util/Date;

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

    .line 678
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->c()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 679
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->c()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->c()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 681
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->d()Ljava/lang/String;

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

    .line 683
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 684
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 686
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;

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

    .line 688
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 689
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    return v1

    .line 691
    :cond_e6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->f()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    :goto_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->f()Ljava/util/List;

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

    .line 693
    :cond_fc
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->f()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 694
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->f()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    return v1

    .line 696
    :cond_111
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->g()Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;

    move-result-object v2

    if-nez v2, :cond_119

    const/4 v2, 0x1

    goto :goto_11a

    :cond_119
    const/4 v2, 0x0

    :goto_11a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->g()Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;

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

    .line 698
    :cond_127
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->g()Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;

    move-result-object v2

    if-eqz v2, :cond_13c

    .line 699
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->g()Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->g()Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13c

    return v1

    .line 701
    :cond_13c
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;

    move-result-object v2

    if-nez v2, :cond_144

    const/4 v2, 0x1

    goto :goto_145

    :cond_144
    const/4 v2, 0x0

    :goto_145
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;

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

    .line 703
    :cond_152
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;

    move-result-object v2

    if-eqz v2, :cond_167

    .line 704
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_167

    return v1

    :cond_167
    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->d:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/ChallengeResponseType;",
            ">;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;
    .registers 2

    .line 510
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->g:Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;

    return-object v0
.end method

.method public h()Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;
    .registers 2

    .line 565
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->h:Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 640
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 641
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 643
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->c()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->c()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 645
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->d()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 646
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5f

    :cond_57
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;->hashCode()I

    move-result v3

    :goto_5f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 648
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->f()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_6a

    const/4 v3, 0x0

    goto :goto_72

    :cond_6a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_72
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 650
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->g()Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;

    move-result-object v3

    if-nez v3, :cond_7d

    const/4 v3, 0x0

    goto :goto_85

    :cond_7d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->g()Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;->hashCode()I

    move-result v3

    :goto_85
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 652
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;

    move-result-object v2

    if-nez v2, :cond_8f

    goto :goto_97

    :cond_8f
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;->hashCode()I

    move-result v1

    :goto_97
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 614
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->c()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreationDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->c()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventRisk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->e()Lcom/amazonaws/services/cognitoidentityprovider/model/EventRiskType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    :cond_b9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->f()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChallengeResponses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->f()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->g()Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;

    move-result-object v1

    if-eqz v1, :cond_ff

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventContextData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->g()Lcom/amazonaws/services/cognitoidentityprovider/model/EventContextDataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_ff
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;

    move-result-object v1

    if-eqz v1, :cond_11d

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventFeedback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthEventType;->h()Lcom/amazonaws/services/cognitoidentityprovider/model/EventFeedbackType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11d
    const-string v1, "}"

    .line 631
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
