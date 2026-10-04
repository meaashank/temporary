###### Class com.amazonaws.services.s3.model.Tag (com.amazonaws.services.s3.model.Tag)
.class public Lcom/amazonaws/services/s3/model/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Tag;->a:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/Tag;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Tag;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Tag;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Tag;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/Tag;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Tag;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Tag;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Tag;
    .registers 2

    .line 87
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/Tag;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3c

    .line 100
    :cond_12
    check-cast p1, Lcom/amazonaws/services/s3/model/Tag;

    .line 102
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/Tag;->a:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/Tag;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/services/s3/model/Tag;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_27

    :cond_23
    iget-object v2, p1, Lcom/amazonaws/services/s3/model/Tag;->a:Ljava/lang/String;

    if-eqz v2, :cond_28

    :goto_27
    return v1

    .line 105
    :cond_28
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/Tag;->b:Ljava/lang/String;

    if-eqz v2, :cond_35

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Tag;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazonaws/services/s3/model/Tag;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3b

    :cond_35
    iget-object p1, p1, Lcom/amazonaws/services/s3/model/Tag;->b:Ljava/lang/String;

    if-nez p1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    return v0

    :cond_3c
    :goto_3c
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Tag;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Tag;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/Tag;->b:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/Tag;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_19
    add-int/2addr v0, v1

    return v0
.end method
