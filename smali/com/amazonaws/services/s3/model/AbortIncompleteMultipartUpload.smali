###### Class com.amazonaws.services.s3.model.AbortIncompleteMultipartUpload (com.amazonaws.services.s3.model.AbortIncompleteMultipartUpload)
.class public Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;
.super Ljava/lang/Object;
.source "AbortIncompleteMultipartUpload.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .line 36
    iput p1, p0, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->a:I

    return-void
.end method

.method protected b()Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;
    .registers 4

    .line 66
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Got a CloneNotSupportedException from Object.clone() even though we\'re Cloneable!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(I)Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->a(I)V

    return-object p0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 23
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->b()Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1d

    .line 53
    :cond_12
    check-cast p1, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    .line 55
    iget v2, p0, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->a:I

    iget p1, p1, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->a:I

    if-ne v2, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->a:I

    return v0
.end method
