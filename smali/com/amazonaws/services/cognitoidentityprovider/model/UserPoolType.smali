###### Class com.amazonaws.services.cognitoidentityprovider.model.UserPoolType (com.amazonaws.services.cognitoidentityprovider.model.UserPoolType)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
.super Ljava/lang/Object;
.source "UserPoolType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private A:Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;

.field private B:Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;

.field private C:Ljava/lang/String;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;

.field private d:Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/util/Date;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;",
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

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;

.field private s:Ljava/lang/Integer;

.field private t:Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;

.field private u:Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 2

    .line 2065
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->z:Ljava/lang/String;

    return-object v0
.end method

.method public B()Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;
    .registers 2

    .line 2152
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->A:Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;

    return-object v0
.end method

.method public C()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;
    .registers 2

    .line 2197
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->B:Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .registers 2

    .line 2248
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->C:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 5

    .line 1851
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->v:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 1852
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->v:Ljava/util/Map;

    .line 1854
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1857
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->v:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 1855
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

.method public varargs a([Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 6

    .line 745
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->h()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->h:Ljava/util/List;

    .line 749
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 750
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 6

    .line 823
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->i()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 824
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->i:Ljava/util/List;

    .line 827
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 828
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;)V
    .registers 2

    .line 2165
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->A:Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;)V
    .registers 2

    .line 1616
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->r:Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;)V
    .registers 2

    .line 1706
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->t:Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;)V
    .registers 2

    .line 490
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->d:Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;)V
    .registers 2

    .line 1751
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->u:Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/StatusType;)V
    .registers 2

    .line 583
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/StatusType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;)V
    .registers 2

    .line 2210
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->B:Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolMfaType;)V
    .registers 2

    .line 1526
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolMfaType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->q:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;)V
    .registers 2

    .line 445
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;)V
    .registers 2

    .line 1211
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->o:Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 1661
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->s:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 339
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 723
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->h:Ljava/util/List;

    return-void

    .line 727
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->h:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 632
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->f:Ljava/util/Date;

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

    .line 1806
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->v:Ljava/util/Map;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 2183
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->A:Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 1634
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->r:Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 1724
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->t:Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 508
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->d:Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 1769
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->u:Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/StatusType;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 605
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/StatusType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 2228
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->B:Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolMfaType;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 1589
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolMfaType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->q:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 463
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 1230
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->o:Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;

    return-object p0
.end method

.method public b(Ljava/lang/Integer;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 1679
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->s:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 361
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;"
        }
    .end annotation

    .line 771
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->a(Ljava/util/Collection;)V

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 650
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->f:Ljava/util/Date;

    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;"
        }
    .end annotation

    .line 1829
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->v:Ljava/util/Map;

    return-object p0
.end method

.method public varargs b([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 6

    .line 900
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->j()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 901
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->j:Ljava/util/List;

    .line 903
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 904
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->c:Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;

    return-object v0
.end method

.method public varargs c([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 6

    .line 980
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->k()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->k:Ljava/util/List;

    .line 983
    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 984
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 396
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->b:Ljava/lang/String;

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

    .line 800
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->i:Ljava/util/List;

    return-void

    .line 804
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->i:Ljava/util/List;

    return-void
.end method

.method public c(Ljava/util/Date;)V
    .registers 2

    .line 677
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->g:Ljava/util/Date;

    return-void
.end method

.method public d()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;
    .registers 2

    .line 477
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->d:Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 418
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;"
        }
    .end annotation

    .line 850
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->c(Ljava/util/Collection;)V

    return-object p0
.end method

.method public d(Ljava/util/Date;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 695
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->g:Ljava/util/Date;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 526
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 543
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->e:Ljava/lang/String;

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

    .line 878
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->j:Ljava/util/List;

    return-void

    .line 882
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->j:Ljava/util/List;

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

    .line 2454
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;

    if-nez v2, :cond_d

    return v1

    .line 2456
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;

    .line 2458
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->a()Ljava/lang/String;

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

    .line 2460
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 2462
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->b()Ljava/lang/String;

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

    .line 2464
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 2466
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;

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

    .line 2468
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;

    move-result-object v2

    if-eqz v2, :cond_90

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 2470
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

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

    .line 2472
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 2473
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 2475
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->e()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->e()Ljava/lang/String;

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

    .line 2477
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e6

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    return v1

    .line 2479
    :cond_e6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->f()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    :goto_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->f()Ljava/util/Date;

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

    .line 2481
    :cond_fc
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->f()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 2482
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->f()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->f()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    return v1

    .line 2484
    :cond_111
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->g()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_119

    const/4 v2, 0x1

    goto :goto_11a

    :cond_119
    const/4 v2, 0x0

    :goto_11a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->g()Ljava/util/Date;

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

    .line 2486
    :cond_127
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->g()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_13c

    .line 2487
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->g()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->g()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13c

    return v1

    .line 2489
    :cond_13c
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->h()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_144

    const/4 v2, 0x1

    goto :goto_145

    :cond_144
    const/4 v2, 0x0

    :goto_145
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->h()Ljava/util/List;

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

    .line 2491
    :cond_152
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->h()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_167

    .line 2492
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_167

    return v1

    .line 2494
    :cond_167
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->i()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_16f

    const/4 v2, 0x1

    goto :goto_170

    :cond_16f
    const/4 v2, 0x0

    :goto_170
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->i()Ljava/util/List;

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

    .line 2496
    :cond_17d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->i()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_192

    .line 2497
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->i()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_192

    return v1

    .line 2499
    :cond_192
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->j()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_19a

    const/4 v2, 0x1

    goto :goto_19b

    :cond_19a
    const/4 v2, 0x0

    :goto_19b
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->j()Ljava/util/List;

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

    .line 2501
    :cond_1a8
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->j()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1bd

    .line 2502
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->j()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1bd

    return v1

    .line 2504
    :cond_1bd
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->k()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1c5

    const/4 v2, 0x1

    goto :goto_1c6

    :cond_1c5
    const/4 v2, 0x0

    :goto_1c6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->k()Ljava/util/List;

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

    .line 2506
    :cond_1d3
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->k()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1e8

    .line 2507
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->k()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e8

    return v1

    .line 2509
    :cond_1e8
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->l()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f0

    const/4 v2, 0x1

    goto :goto_1f1

    :cond_1f0
    const/4 v2, 0x0

    :goto_1f1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->l()Ljava/lang/String;

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

    .line 2511
    :cond_1fe
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_213

    .line 2512
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_213

    return v1

    .line 2514
    :cond_213
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->m()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_21b

    const/4 v2, 0x1

    goto :goto_21c

    :cond_21b
    const/4 v2, 0x0

    .line 2515
    :goto_21c
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->m()Ljava/lang/String;

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

    .line 2517
    :cond_229
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->m()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23e

    .line 2518
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23e

    return v1

    .line 2520
    :cond_23e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->n()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_246

    const/4 v2, 0x1

    goto :goto_247

    :cond_246
    const/4 v2, 0x0

    .line 2521
    :goto_247
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->n()Ljava/lang/String;

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

    .line 2523
    :cond_254
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->n()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_269

    .line 2524
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_269

    return v1

    .line 2526
    :cond_269
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;

    move-result-object v2

    if-nez v2, :cond_271

    const/4 v2, 0x1

    goto :goto_272

    :cond_271
    const/4 v2, 0x0

    .line 2527
    :goto_272
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;

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

    .line 2529
    :cond_27f
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;

    move-result-object v2

    if-eqz v2, :cond_294

    .line 2530
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;

    move-result-object v2

    .line 2531
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;

    move-result-object v3

    .line 2530
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_294

    return v1

    .line 2533
    :cond_294
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->p()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_29c

    const/4 v2, 0x1

    goto :goto_29d

    :cond_29c
    const/4 v2, 0x0

    .line 2534
    :goto_29d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->p()Ljava/lang/String;

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

    .line 2536
    :cond_2aa
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->p()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2bf

    .line 2537
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2bf

    return v1

    .line 2539
    :cond_2bf
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->q()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2c7

    const/4 v2, 0x1

    goto :goto_2c8

    :cond_2c7
    const/4 v2, 0x0

    :goto_2c8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->q()Ljava/lang/String;

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

    .line 2541
    :cond_2d5
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->q()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2ea

    .line 2542
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ea

    return v1

    .line 2544
    :cond_2ea
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;

    move-result-object v2

    if-nez v2, :cond_2f2

    const/4 v2, 0x1

    goto :goto_2f3

    :cond_2f2
    const/4 v2, 0x0

    :goto_2f3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;

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

    .line 2546
    :cond_300
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;

    move-result-object v2

    if-eqz v2, :cond_315

    .line 2547
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_315

    return v1

    .line 2549
    :cond_315
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->s()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_31d

    const/4 v2, 0x1

    goto :goto_31e

    :cond_31d
    const/4 v2, 0x0

    :goto_31e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->s()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_326

    const/4 v3, 0x1

    goto :goto_327

    :cond_326
    const/4 v3, 0x0

    :goto_327
    xor-int/2addr v2, v3

    if-eqz v2, :cond_32b

    return v1

    .line 2551
    :cond_32b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->s()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_340

    .line 2552
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->s()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->s()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_340

    return v1

    .line 2554
    :cond_340
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->t()Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;

    move-result-object v2

    if-nez v2, :cond_348

    const/4 v2, 0x1

    goto :goto_349

    :cond_348
    const/4 v2, 0x0

    :goto_349
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->t()Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;

    move-result-object v3

    if-nez v3, :cond_351

    const/4 v3, 0x1

    goto :goto_352

    :cond_351
    const/4 v3, 0x0

    :goto_352
    xor-int/2addr v2, v3

    if-eqz v2, :cond_356

    return v1

    .line 2556
    :cond_356
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->t()Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;

    move-result-object v2

    if-eqz v2, :cond_36b

    .line 2557
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->t()Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->t()Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36b

    return v1

    .line 2559
    :cond_36b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->u()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;

    move-result-object v2

    if-nez v2, :cond_373

    const/4 v2, 0x1

    goto :goto_374

    :cond_373
    const/4 v2, 0x0

    :goto_374
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->u()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;

    move-result-object v3

    if-nez v3, :cond_37c

    const/4 v3, 0x1

    goto :goto_37d

    :cond_37c
    const/4 v3, 0x0

    :goto_37d
    xor-int/2addr v2, v3

    if-eqz v2, :cond_381

    return v1

    .line 2561
    :cond_381
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->u()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;

    move-result-object v2

    if-eqz v2, :cond_396

    .line 2562
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->u()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->u()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_396

    return v1

    .line 2564
    :cond_396
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->v()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_39e

    const/4 v2, 0x1

    goto :goto_39f

    :cond_39e
    const/4 v2, 0x0

    :goto_39f
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->v()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_3a7

    const/4 v3, 0x1

    goto :goto_3a8

    :cond_3a7
    const/4 v3, 0x0

    :goto_3a8
    xor-int/2addr v2, v3

    if-eqz v2, :cond_3ac

    return v1

    .line 2566
    :cond_3ac
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->v()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3c1

    .line 2567
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->v()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->v()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c1

    return v1

    .line 2569
    :cond_3c1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->x()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3c9

    const/4 v2, 0x1

    goto :goto_3ca

    :cond_3c9
    const/4 v2, 0x0

    :goto_3ca
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->x()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3d2

    const/4 v3, 0x1

    goto :goto_3d3

    :cond_3d2
    const/4 v3, 0x0

    :goto_3d3
    xor-int/2addr v2, v3

    if-eqz v2, :cond_3d7

    return v1

    .line 2571
    :cond_3d7
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->x()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3ec

    .line 2572
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3ec

    return v1

    .line 2574
    :cond_3ec
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->y()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3f4

    const/4 v2, 0x1

    goto :goto_3f5

    :cond_3f4
    const/4 v2, 0x0

    .line 2575
    :goto_3f5
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->y()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3fd

    const/4 v3, 0x1

    goto :goto_3fe

    :cond_3fd
    const/4 v3, 0x0

    :goto_3fe
    xor-int/2addr v2, v3

    if-eqz v2, :cond_402

    return v1

    .line 2577
    :cond_402
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->y()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_417

    .line 2578
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_417

    return v1

    .line 2580
    :cond_417
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->z()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_41f

    const/4 v2, 0x1

    goto :goto_420

    :cond_41f
    const/4 v2, 0x0

    :goto_420
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->z()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_428

    const/4 v3, 0x1

    goto :goto_429

    :cond_428
    const/4 v3, 0x0

    :goto_429
    xor-int/2addr v2, v3

    if-eqz v2, :cond_42d

    return v1

    .line 2582
    :cond_42d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->z()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_442

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_442

    return v1

    .line 2584
    :cond_442
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->A()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_44a

    const/4 v2, 0x1

    goto :goto_44b

    :cond_44a
    const/4 v2, 0x0

    :goto_44b
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->A()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_453

    const/4 v3, 0x1

    goto :goto_454

    :cond_453
    const/4 v3, 0x0

    :goto_454
    xor-int/2addr v2, v3

    if-eqz v2, :cond_458

    return v1

    .line 2586
    :cond_458
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->A()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_46d

    .line 2587
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46d

    return v1

    .line 2589
    :cond_46d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->B()Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;

    move-result-object v2

    if-nez v2, :cond_475

    const/4 v2, 0x1

    goto :goto_476

    :cond_475
    const/4 v2, 0x0

    :goto_476
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->B()Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;

    move-result-object v3

    if-nez v3, :cond_47e

    const/4 v3, 0x1

    goto :goto_47f

    :cond_47e
    const/4 v3, 0x0

    :goto_47f
    xor-int/2addr v2, v3

    if-eqz v2, :cond_483

    return v1

    .line 2591
    :cond_483
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->B()Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;

    move-result-object v2

    if-eqz v2, :cond_498

    .line 2592
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->B()Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->B()Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_498

    return v1

    .line 2594
    :cond_498
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->C()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;

    move-result-object v2

    if-nez v2, :cond_4a0

    const/4 v2, 0x1

    goto :goto_4a1

    :cond_4a0
    const/4 v2, 0x0

    :goto_4a1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->C()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;

    move-result-object v3

    if-nez v3, :cond_4a9

    const/4 v3, 0x1

    goto :goto_4aa

    :cond_4a9
    const/4 v3, 0x0

    :goto_4aa
    xor-int/2addr v2, v3

    if-eqz v2, :cond_4ae

    return v1

    .line 2596
    :cond_4ae
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->C()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;

    move-result-object v2

    if-eqz v2, :cond_4c3

    .line 2597
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->C()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->C()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c3

    return v1

    .line 2599
    :cond_4c3
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->D()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4cb

    const/4 v2, 0x1

    goto :goto_4cc

    :cond_4cb
    const/4 v2, 0x0

    :goto_4cc
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->D()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4d4

    const/4 v3, 0x1

    goto :goto_4d5

    :cond_4d4
    const/4 v3, 0x0

    :goto_4d5
    xor-int/2addr v2, v3

    if-eqz v2, :cond_4d9

    return v1

    .line 2601
    :cond_4d9
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->D()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4ee

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->D()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4ee

    return v1

    :cond_4ee
    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 565
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->e:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;"
        }
    .end annotation

    .line 924
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->e(Ljava/util/Collection;)V

    return-object p0
.end method

.method public f()Ljava/util/Date;
    .registers 2

    .line 619
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->f:Ljava/util/Date;

    return-object v0
.end method

.method public g()Ljava/util/Date;
    .registers 2

    .line 664
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->g:Ljava/util/Date;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 1041
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->l:Ljava/lang/String;

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

    .line 956
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->k:Ljava/util/List;

    return-void

    .line 960
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->k:Ljava/util/List;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 1063
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->l:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;"
        }
    .end annotation

    .line 1006
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->g(Ljava/util/Collection;)V

    return-object p0
.end method

.method public h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/SchemaAttributeType;",
            ">;"
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->h:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 2373
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2374
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2375
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2377
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2378
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->e()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5f

    :cond_57
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2380
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->f()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_6a

    const/4 v3, 0x0

    goto :goto_72

    :cond_6a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->f()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_72
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2382
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->g()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_7d

    const/4 v3, 0x0

    goto :goto_85

    :cond_7d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->g()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_85
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2384
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->h()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_90

    const/4 v3, 0x0

    goto :goto_98

    :cond_90
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_98
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2387
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->i()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_a3

    const/4 v3, 0x0

    goto :goto_ab

    :cond_a3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->i()Ljava/util/List;

    move-result-object v3

    .line 2388
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_ab
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2390
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->j()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_b6

    const/4 v3, 0x0

    goto :goto_be

    :cond_b6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_be
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2392
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->k()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_c9

    const/4 v3, 0x0

    goto :goto_d1

    :cond_c9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->k()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_d1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2395
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->l()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_dc

    const/4 v3, 0x0

    goto :goto_e4

    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->l()Ljava/lang/String;

    move-result-object v3

    .line 2396
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_e4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2399
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->m()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_ef

    const/4 v3, 0x0

    goto :goto_f7

    :cond_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->m()Ljava/lang/String;

    move-result-object v3

    .line 2400
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_f7
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2403
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->n()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_102

    const/4 v3, 0x0

    goto :goto_10a

    :cond_102
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->n()Ljava/lang/String;

    move-result-object v3

    .line 2404
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_10a
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2407
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;

    move-result-object v3

    if-nez v3, :cond_115

    const/4 v3, 0x0

    goto :goto_11d

    .line 2408
    :cond_115
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;->hashCode()I

    move-result v3

    :goto_11d
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2411
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->p()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_128

    const/4 v3, 0x0

    goto :goto_130

    :cond_128
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->p()Ljava/lang/String;

    move-result-object v3

    .line 2412
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_130
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2414
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->q()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13b

    const/4 v3, 0x0

    goto :goto_143

    :cond_13b
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_143
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2416
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;

    move-result-object v3

    if-nez v3, :cond_14e

    const/4 v3, 0x0

    goto :goto_156

    :cond_14e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;->hashCode()I

    move-result v3

    :goto_156
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2419
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->s()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_161

    const/4 v3, 0x0

    goto :goto_169

    :cond_161
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->s()Ljava/lang/Integer;

    move-result-object v3

    .line 2420
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_169
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2422
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->t()Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;

    move-result-object v3

    if-nez v3, :cond_174

    const/4 v3, 0x0

    goto :goto_17c

    :cond_174
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->t()Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;->hashCode()I

    move-result v3

    :goto_17c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2424
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->u()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;

    move-result-object v3

    if-nez v3, :cond_187

    const/4 v3, 0x0

    goto :goto_18f

    :cond_187
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->u()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;->hashCode()I

    move-result v3

    :goto_18f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2426
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->v()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_19a

    const/4 v3, 0x0

    goto :goto_1a2

    :cond_19a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->v()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_1a2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2429
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->x()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1ad

    const/4 v3, 0x0

    goto :goto_1b5

    :cond_1ad
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->x()Ljava/lang/String;

    move-result-object v3

    .line 2430
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1b5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2433
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->y()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1c0

    const/4 v3, 0x0

    goto :goto_1c8

    :cond_1c0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->y()Ljava/lang/String;

    move-result-object v3

    .line 2434
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1c8
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2435
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->z()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1d3

    const/4 v3, 0x0

    goto :goto_1db

    :cond_1d3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1db
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2437
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->A()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e6

    const/4 v3, 0x0

    goto :goto_1ee

    :cond_1e6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1ee
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2440
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->B()Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;

    move-result-object v3

    if-nez v3, :cond_1f9

    const/4 v3, 0x0

    goto :goto_201

    :cond_1f9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->B()Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;->hashCode()I

    move-result v3

    :goto_201
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2442
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->C()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;

    move-result-object v3

    if-nez v3, :cond_20c

    const/4 v3, 0x0

    goto :goto_214

    :cond_20c
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->C()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;->hashCode()I

    move-result v3

    :goto_214
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2443
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->D()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_21e

    goto :goto_226

    :cond_21e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_226
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

    .line 785
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->i:Ljava/util/List;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 1102
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->m:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 1126
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->m:Ljava/lang/String;

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

    .line 864
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->j:Ljava/util/List;

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

    .line 940
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->k:Ljava/util/List;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 1161
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->n:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 1183
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->n:Ljava/lang/String;

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 1024
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->l:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 1083
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .registers 2

    .line 1265
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->p:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 1287
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->p:Ljava/lang/String;

    return-object p0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 1144
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->n:Ljava/lang/String;

    return-object v0
.end method

.method public o()Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;
    .registers 2

    .line 1197
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->o:Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .registers 2

    .line 1404
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->q:Ljava/lang/String;

    return-void
.end method

.method public p(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 1467
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->q:Ljava/lang/String;

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    .line 1248
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->p:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .line 1346
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->q:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .registers 2

    .line 1899
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->w:Ljava/lang/String;

    return-void
.end method

.method public r()Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;
    .registers 2

    .line 1603
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->r:Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;

    return-object v0
.end method

.method public r(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 1919
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->w:Ljava/lang/String;

    return-object p0
.end method

.method public s()Ljava/lang/Integer;
    .registers 2

    .line 1648
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->s:Ljava/lang/Integer;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .registers 2

    .line 1950
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->x:Ljava/lang/String;

    return-void
.end method

.method public t()Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;
    .registers 2

    .line 1693
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->t:Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;

    return-object v0
.end method

.method public t(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 1970
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->x:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 2304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 2305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2306
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 2307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2308
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 2309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2310
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 2311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Policies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->c()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolPolicyType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2312
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 2313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LambdaConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->d()Lcom/amazonaws/services/cognitoidentityprovider/model/LambdaConfigType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2314
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 2315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2316
    :cond_b9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->f()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 2317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastModifiedDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->f()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2318
    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->g()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_ff

    .line 2319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreationDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->g()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2320
    :cond_ff
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_122

    .line 2321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SchemaAttributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2322
    :cond_122
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->i()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_145

    .line 2323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoVerifiedAttributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->i()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2324
    :cond_145
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->j()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_168

    .line 2325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AliasAttributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->j()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2326
    :cond_168
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->k()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_18b

    .line 2327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsernameAttributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2328
    :cond_18b
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1ae

    .line 2329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsVerificationMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2330
    :cond_1ae
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d1

    .line 2331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmailVerificationMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2332
    :cond_1d1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f4

    .line 2333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmailVerificationSubject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2334
    :cond_1f4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;

    move-result-object v1

    if-eqz v1, :cond_217

    .line 2335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VerificationMessageTemplate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/VerificationMessageTemplateType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    :cond_217
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23a

    .line 2337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsAuthenticationMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2338
    :cond_23a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25d

    .line 2339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MfaConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2340
    :cond_25d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;

    move-result-object v1

    if-eqz v1, :cond_280

    .line 2341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceConfigurationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2342
    :cond_280
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->s()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2a3

    .line 2343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EstimatedNumberOfUsers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->s()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2344
    :cond_2a3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->t()Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;

    move-result-object v1

    if-eqz v1, :cond_2c6

    .line 2345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmailConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->t()Lcom/amazonaws/services/cognitoidentityprovider/model/EmailConfigurationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2346
    :cond_2c6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->u()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;

    move-result-object v1

    if-eqz v1, :cond_2e9

    .line 2347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->u()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2348
    :cond_2e9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->v()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_30c

    .line 2349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserPoolTags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->v()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2350
    :cond_30c
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->x()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32f

    .line 2351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsConfigurationFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2352
    :cond_32f
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->y()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_352

    .line 2353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmailConfigurationFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2354
    :cond_352
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->z()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_375

    .line 2355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Domain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2356
    :cond_375
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->A()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_398

    .line 2357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomDomain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2358
    :cond_398
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->B()Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;

    move-result-object v1

    if-eqz v1, :cond_3bb

    .line 2359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdminCreateUserConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->B()Lcom/amazonaws/services/cognitoidentityprovider/model/AdminCreateUserConfigType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2360
    :cond_3bb
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->C()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;

    move-result-object v1

    if-eqz v1, :cond_3de

    .line 2361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserPoolAddOns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->C()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolAddOnsType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2362
    :cond_3de
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3fc

    .line 2363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Arn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3fc
    const-string v1, "}"

    .line 2364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;
    .registers 2

    .line 1738
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->u:Lcom/amazonaws/services/cognitoidentityprovider/model/SmsConfigurationType;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .registers 2

    .line 2007
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->y:Ljava/lang/String;

    return-void
.end method

.method public v(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 2030
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->y:Ljava/lang/String;

    return-object p0
.end method

.method public v()Ljava/util/Map;
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

    .line 1788
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->v:Ljava/util/Map;

    return-object v0
.end method

.method public w()Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    const/4 v0, 0x0

    .line 1868
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->v:Ljava/util/Map;

    return-object p0
.end method

.method public w(Ljava/lang/String;)V
    .registers 2

    .line 2099
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->z:Ljava/lang/String;

    return-void
.end method

.method public x(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 2138
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->z:Ljava/lang/String;

    return-object p0
.end method

.method public x()Ljava/lang/String;
    .registers 2

    .line 1884
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->w:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .registers 2

    .line 1935
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->x:Ljava/lang/String;

    return-object v0
.end method

.method public y(Ljava/lang/String;)V
    .registers 2

    .line 2267
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->C:Ljava/lang/String;

    return-void
.end method

.method public z(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;
    .registers 2

    .line 2291
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->C:Ljava/lang/String;

    return-object p0
.end method

.method public z()Ljava/lang/String;
    .registers 2

    .line 1989
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserPoolType;->y:Ljava/lang/String;

    return-object v0
.end method
