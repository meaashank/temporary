###### Class com.amazonaws.services.s3.model.SetBucketAccelerateConfigurationRequest (com.amazonaws.services.s3.model.SetBucketAccelerateConfigurationRequest)
.class public Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketAccelerateConfigurationRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->a:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->a(Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    return-object v0
.end method
