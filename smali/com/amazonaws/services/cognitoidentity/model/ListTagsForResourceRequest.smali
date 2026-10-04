###### Class com.amazonaws.services.cognitoidentity.model.ListTagsForResourceRequest (com.amazonaws.services.cognitoidentity.model.ListTagsForResourceRequest)
.class public Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListTagsForResourceRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;->a:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;

    if-nez v2, :cond_d

    return v1

    .line 143
    :cond_d
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;

    .line 145
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;->h()Ljava/lang/String;

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
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 148
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    return v1

    :cond_3a
    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 130
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResourceArn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    const-string v1, "}"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
