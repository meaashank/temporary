###### Class com.amazonaws.services.s3.model.SetBucketWebsiteConfigurationRequest (com.amazonaws.services.s3.model.SetBucketWebsiteConfigurationRequest)
.class public Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketWebsiteConfigurationRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->a:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;
    .registers 2

    .line 134
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->a(Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;
    .registers 2

    .line 99
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    return-object v0
.end method
