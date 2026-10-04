###### Class com.amazonaws.services.s3.model.SetBucketCrossOriginConfigurationRequest (com.amazonaws.services.s3.model.SetBucketCrossOriginConfigurationRequest)
.class public Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketCrossOriginConfigurationRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->a:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->a(Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;

    return-object v0
.end method
