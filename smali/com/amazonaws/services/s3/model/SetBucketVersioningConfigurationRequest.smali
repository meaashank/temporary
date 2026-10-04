###### Class com.amazonaws.services.s3.model.SetBucketVersioningConfigurationRequest (com.amazonaws.services.s3.model.SetBucketVersioningConfigurationRequest)
.class public Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketVersioningConfigurationRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

.field private c:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;)V
    .registers 3

    .line 103
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->a:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V
    .registers 4

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;)V

    .line 127
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->c:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V
    .registers 2

    .line 251
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->c:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;
    .registers 2

    .line 206
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->a(Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;
    .registers 2

    .line 275
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->a(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;
    .registers 2

    .line 164
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    return-object v0
.end method

.method public j()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->c:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    return-object v0
.end method
