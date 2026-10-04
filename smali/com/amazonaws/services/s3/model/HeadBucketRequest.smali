###### Class com.amazonaws.services.s3.model.HeadBucketRequest (com.amazonaws.services.s3.model.HeadBucketRequest)
.class public Lcom/amazonaws/services/s3/model/HeadBucketRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "HeadBucketRequest.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/HeadBucketRequest;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/HeadBucketRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/HeadBucketRequest;->a:Ljava/lang/String;

    return-object v0
.end method
