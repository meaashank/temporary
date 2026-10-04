###### Class com.amazonaws.services.s3.model.DeleteBucketRequest (com.amazonaws.services.s3.model.DeleteBucketRequest)
.class public Lcom/amazonaws/services/s3/model/DeleteBucketRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteBucketRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;->a:Ljava/lang/String;

    return-object v0
.end method
