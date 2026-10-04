###### Class com.amazonaws.services.s3.model.PartETag (com.amazonaws.services.s3.model.PartETag)
.class public Lcom/amazonaws/services/s3/model/PartETag;
.super Ljava/lang/Object;
.source "PartETag.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/amazonaws/services/s3/model/PartETag;->a:I

    .line 39
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/PartETag;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/amazonaws/services/s3/model/PartETag;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .line 57
    iput p1, p0, Lcom/amazonaws/services/s3/model/PartETag;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartETag;->b:Ljava/lang/String;

    return-void
.end method

.method public b(I)Lcom/amazonaws/services/s3/model/PartETag;
    .registers 2

    .line 68
    iput p1, p0, Lcom/amazonaws/services/s3/model/PartETag;->a:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PartETag;
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartETag;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartETag;->b:Ljava/lang/String;

    return-object v0
.end method
