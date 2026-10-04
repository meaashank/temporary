###### Class com.amazonaws.services.cognitoidentityprovider.model.AdminInitiateAuthRequest (com.amazonaws.services.cognitoidentityprovider.model.AdminInitiateAuthRequest)
.class public Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "AdminInitiateAuthRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

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

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

.field private g:Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;
    .registers 5

    .line 1313
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->d:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 1314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->d:Ljava/util/Map;

    .line 1316
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1319
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 1317
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

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V
    .registers 2

    .line 1460
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->f:Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthFlowType;)V
    .registers 2

    .line 866
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthFlowType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;)V
    .registers 2

    .line 1515
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->g:Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->a:Ljava/lang/String;

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

    .line 1174
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->d:Ljava/util/Map;

    return-void
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;
    .registers 2

    .line 1480
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->f:Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthFlowType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;
    .registers 2

    .line 1011
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthFlowType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;
    .registers 2

    .line 1537
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->g:Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;
    .registers 2

    .line 243
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;
    .registers 5

    .line 1412
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->e:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 1413
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->e:Ljava/util/Map;

    .line 1415
    :cond_b
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1418
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 1416
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

.method public b(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;"
        }
    .end annotation

    .line 1260
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->d:Ljava/util/Map;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->b:Ljava/lang/String;

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

    .line 1367
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->e:Ljava/util/Map;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;
    .registers 2

    .line 300
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;"
        }
    .end annotation

    .line 1390
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->e:Ljava/util/Map;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 580
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->c:Ljava/lang/String;

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

    .line 1596
    :cond_8
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;

    if-nez v2, :cond_d

    return v1

    .line 1598
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;

    .line 1600
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->h()Ljava/lang/String;

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

    .line 1602
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 1603
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 1605
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->i()Ljava/lang/String;

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

    .line 1607
    :cond_50
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    return v1

    .line 1609
    :cond_65
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->j()Ljava/lang/String;

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

    .line 1611
    :cond_7b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    return v1

    .line 1613
    :cond_90
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->k()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->k()Ljava/util/Map;

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

    .line 1615
    :cond_a6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->k()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 1616
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->k()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->k()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    return v1

    .line 1618
    :cond_bb
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->m()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_c3

    const/4 v2, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v2, 0x0

    :goto_c4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->m()Ljava/util/Map;

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

    .line 1620
    :cond_d1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->m()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 1621
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->m()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->m()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    return v1

    .line 1623
    :cond_e6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v2

    if-nez v2, :cond_ee

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    :goto_ef
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

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

    .line 1625
    :cond_fc
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 1626
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    return v1

    .line 1628
    :cond_111
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->p()Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;

    move-result-object v2

    if-nez v2, :cond_119

    const/4 v2, 0x1

    goto :goto_11a

    :cond_119
    const/4 v2, 0x0

    :goto_11a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->p()Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;

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

    .line 1630
    :cond_127
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->p()Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;

    move-result-object v2

    if-eqz v2, :cond_13c

    .line 1631
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->p()Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->p()Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13c

    return v1

    :cond_13c
    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;
    .registers 2

    .line 725
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 1575
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1576
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->i()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1577
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->j()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_39

    :cond_31
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_39
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1579
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->k()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_44

    const/4 v3, 0x0

    goto :goto_4c

    :cond_44
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->k()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_4c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1581
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->m()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5f

    :cond_57
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->m()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_5f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1583
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v3

    if-nez v3, :cond_6a

    const/4 v3, 0x0

    goto :goto_72

    :cond_6a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->hashCode()I

    move-result v3

    :goto_72
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1585
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->p()Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;

    move-result-object v2

    if-nez v2, :cond_7c

    goto :goto_84

    :cond_7c
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->p()Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;->hashCode()I

    move-result v1

    :goto_84
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 440
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->c:Ljava/lang/String;

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

    .line 1093
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->d:Ljava/util/Map;

    return-object v0
.end method

.method public l()Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;
    .registers 2

    const/4 v0, 0x0

    .line 1330
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->d:Ljava/util/Map;

    return-object p0
.end method

.method public m()Ljava/util/Map;
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

    .line 1349
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->e:Ljava/util/Map;

    return-object v0
.end method

.method public n()Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;
    .registers 2

    const/4 v0, 0x0

    .line 1429
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->e:Ljava/util/Map;

    return-object p0
.end method

.method public o()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;
    .registers 2

    .line 1445
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->f:Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    return-object v0
.end method

.method public p()Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;
    .registers 2

    .line 1498
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->g:Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 1551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 1553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserPoolId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    :cond_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 1555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    :cond_50
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 1557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthFlow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    :cond_73
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->k()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 1559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->k()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    :cond_96
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->m()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 1561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientMetadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->m()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    :cond_b9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 1563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticsMetadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->o()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    :cond_dc
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->p()Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;

    move-result-object v1

    if-eqz v1, :cond_fa

    .line 1565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContextData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AdminInitiateAuthRequest;->p()Lcom/amazonaws/services/cognitoidentityprovider/model/ContextDataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_fa
    const-string v1, "}"

    .line 1566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
