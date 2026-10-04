###### Class com.amazonaws.services.cognitoidentityprovider.model.AdminGetUserResult (com.amazonaws.services.cognitoidentityprovider.model.AdminGetUserResult)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;
.super Ljava/lang/Object;
.source "AdminGetUserResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Date;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/MFAOptionType;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;
    .registers 6

    .line 231
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->b:Ljava/util/List;

    .line 234
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 235
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public varargs a([Lcom/amazonaws/services/cognitoidentityprovider/model/MFAOptionType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;
    .registers 6

    .line 830
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->h()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 831
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->g:Ljava/util/List;

    .line 833
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 834
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;
    .registers 6

    .line 949
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->j()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 950
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->i:Ljava/util/List;

    .line 952
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 953
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;)V
    .registers 2

    .line 702
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 385
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->a:Ljava/lang/String;

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

    .line 209
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->b:Ljava/util/List;

    return-void

    .line 213
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->b:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->c:Ljava/util/Date;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;
    .registers 2

    .line 780
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserStatusType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->f:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;
    .registers 2

    .line 403
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;"
        }
    .end annotation

    .line 255
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;
    .registers 2

    .line 300
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->c:Ljava/util/Date;

    return-object p0
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/util/Date;
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->c:Ljava/util/Date;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 550
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->f:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/MFAOptionType;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 808
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->g:Ljava/util/List;

    return-void

    .line 812
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->g:Ljava/util/List;

    return-void
.end method

.method public c(Ljava/util/Date;)V
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->d:Ljava/util/Date;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;
    .registers 2

    .line 628
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/MFAOptionType;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;"
        }
    .end annotation

    .line 854
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->c(Ljava/util/Collection;)V

    return-object p0
.end method

.method public d(Ljava/util/Date;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;
    .registers 2

    .line 345
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->d:Ljava/util/Date;

    return-object p0
.end method

.method public d()Ljava/util/Date;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->d:Ljava/util/Date;

    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .registers 2

    .line 359
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 881
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->h:Ljava/lang/String;

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

    .line 927
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->i:Ljava/util/List;

    return-void

    .line 931
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->i:Ljava/util/List;

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

    .line 1039
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;

    if-nez v2, :cond_d

    return v1

    .line 1041
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;

    .line 1043
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->a()Ljava/lang/String;

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

    .line 1045
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 1047
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->b()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->b()Ljava/util/List;

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

    .line 1049
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 1050
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 1052
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->c()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->c()Ljava/util/Date;

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

    .line 1054
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->c()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 1055
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->c()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->c()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 1057
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->d()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->d()Ljava/util/Date;

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

    .line 1059
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->d()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 1060
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->d()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->d()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 1062
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->f()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->f()Ljava/lang/Boolean;

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

    .line 1064
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->f()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_e6

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->f()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->f()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    return v1

    .line 1066
    :cond_e6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->g()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    :goto_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->g()Ljava/lang/String;

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

    .line 1068
    :cond_fc
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 1069
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    return v1

    .line 1071
    :cond_111
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->h()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_119

    const/4 v2, 0x1

    goto :goto_11a

    :cond_119
    const/4 v2, 0x0

    :goto_11a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->h()Ljava/util/List;

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

    .line 1073
    :cond_127
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->h()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_13c

    .line 1074
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13c

    return v1

    .line 1076
    :cond_13c
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_144

    const/4 v2, 0x1

    goto :goto_145

    :cond_144
    const/4 v2, 0x0

    :goto_145
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->i()Ljava/lang/String;

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

    .line 1078
    :cond_152
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_167

    .line 1079
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_167

    return v1

    .line 1081
    :cond_167
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->j()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_16f

    const/4 v2, 0x1

    goto :goto_170

    :cond_16f
    const/4 v2, 0x0

    :goto_170
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->j()Ljava/util/List;

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

    .line 1083
    :cond_17d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->j()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_192

    .line 1084
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->j()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_192

    return v1

    :cond_192
    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;
    .registers 2

    .line 899
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;"
        }
    .end annotation

    .line 973
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->e(Ljava/util/Collection;)V

    return-object p0
.end method

.method public f()Ljava/lang/Boolean;
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 477
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/MFAOptionType;",
            ">;"
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->g:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 1015
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1017
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->b()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1019
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->c()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->c()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1021
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->d()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->d()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1022
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->f()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5f

    :cond_57
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->f()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_5f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1023
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->g()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6a

    const/4 v3, 0x0

    goto :goto_72

    :cond_6a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_72
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1024
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->h()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_7d

    const/4 v3, 0x0

    goto :goto_85

    :cond_7d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_85
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1026
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->i()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_90

    const/4 v3, 0x0

    goto :goto_98

    :cond_90
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_98
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1028
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->j()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_a2

    goto :goto_aa

    :cond_a2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_aa
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 868
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->h:Ljava/lang/String;

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

    .line 913
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->i:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserAttributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->c()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserCreateDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->c()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->d()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserLastModifiedDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->d()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->f()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->f()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    :cond_b9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_ff

    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MFAOptions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    :cond_ff
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_122

    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreferredMfaSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    :cond_122
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->j()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_140

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserMFASettingList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminGetUserResult;->j()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_140
    const-string v1, "}"

    .line 1006
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
