###### Class com.amazonaws.services.s3.model.HeadBucketResult (com.amazonaws.services.s3.model.HeadBucketResult)
.class public Lcom/amazonaws/services/s3/model/HeadBucketResult;
.super Ljava/lang/Object;
.source "HeadBucketResult.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/HeadBucketResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/HeadBucketResult;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/HeadBucketResult;
    .registers 2

    .line 37
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/HeadBucketResult;->a(Ljava/lang/String;)V

    return-object p0
.end method
