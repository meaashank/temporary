###### Class com.amazonaws.services.s3.model.EmailAddressGrantee (com.amazonaws.services.s3.model.EmailAddressGrantee)
.class public Lcom/amazonaws/services/s3/model/EmailAddressGrantee;
.super Ljava/lang/Object;
.source "EmailAddressGrantee.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/Grantee;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->a:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->setIdentifier(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 109
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 111
    :cond_13
    check-cast p1, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;

    .line 112
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->a:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 113
    iget-object p1, p1, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->a:Ljava/lang/String;

    if-eqz p1, :cond_29

    return v1

    .line 115
    :cond_1e
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    return v1

    :cond_29
    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "emailAddress"

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->a:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->a:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->a:Ljava/lang/String;

    return-object v0
.end method
