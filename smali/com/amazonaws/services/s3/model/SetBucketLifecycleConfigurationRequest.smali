###### Class com.amazonaws.services.s3.model.SetBucketLifecycleConfigurationRequest (com.amazonaws.services.s3.model.SetBucketLifecycleConfigurationRequest)
.class public Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketLifecycleConfigurationRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;->a:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;
    .registers 2

    .line 126
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;->a(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;
    .registers 2

    .line 87
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    return-object v0
.end method
