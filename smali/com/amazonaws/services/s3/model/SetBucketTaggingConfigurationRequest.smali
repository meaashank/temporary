###### Class com.amazonaws.services.s3.model.SetBucketTaggingConfigurationRequest (com.amazonaws.services.s3.model.SetBucketTaggingConfigurationRequest)
.class public Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketTaggingConfigurationRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->a:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;
    .registers 2

    .line 125
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->a(Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;
    .registers 2

    .line 86
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

    return-object v0
.end method
