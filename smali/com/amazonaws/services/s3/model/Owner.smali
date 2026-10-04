###### Class com.amazonaws.services.s3.model.Owner (com.amazonaws.services.s3.model.Owner)
.class public Lcom/amazonaws/services/s3/model/Owner;
.super Ljava/lang/Object;
.source "Owner.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7bbe980468bb7b1bL


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Owner;->b:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/Owner;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Owner;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Owner;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Owner;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Owner;->a:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 115
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/Owner;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 119
    :cond_6
    check-cast p1, Lcom/amazonaws/services/s3/model/Owner;

    .line 121
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/Owner;->a()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/Owner;->b()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/Owner;->a()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/Owner;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_1c

    const-string v0, ""

    :cond_1c
    if-nez p1, :cond_20

    const-string p1, ""

    :cond_20
    if-nez v2, :cond_24

    const-string v2, ""

    :cond_24
    if-nez v3, :cond_28

    const-string v3, ""

    .line 135
    :cond_28
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 v1, 0x1

    :cond_35
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Owner;->b:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 141
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Owner;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S3Owner [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/Owner;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/Owner;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
