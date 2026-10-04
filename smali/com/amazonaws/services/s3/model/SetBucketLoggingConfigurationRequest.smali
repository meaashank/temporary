###### Class com.amazonaws.services.s3.model.SetBucketLoggingConfigurationRequest (com.amazonaws.services.s3.model.SetBucketLoggingConfigurationRequest)
.class public Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketLoggingConfigurationRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;->a:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;
    .registers 2

    .line 154
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;->a(Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;
    .registers 2

    .line 114
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;

    return-object v0
.end method
