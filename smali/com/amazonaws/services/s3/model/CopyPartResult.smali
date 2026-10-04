###### Class com.amazonaws.services.s3.model.CopyPartResult (com.amazonaws.services.s3.model.CopyPartResult)
.class public Lcom/amazonaws/services/s3/model/CopyPartResult;
.super Lcom/amazonaws/services/s3/internal/SSEResultBase;
.source "CopyPartResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Date;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/SSEResultBase;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->d:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .line 59
    iput p1, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->d:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->b:Ljava/util/Date;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/amazonaws/services/s3/model/PartETag;
    .registers 4

    .line 93
    new-instance v0, Lcom/amazonaws/services/s3/model/PartETag;

    iget v1, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->d:I

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/PartETag;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public d()Ljava/util/Date;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->b:Ljava/util/Date;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->c:Ljava/lang/String;

    return-object v0
.end method
