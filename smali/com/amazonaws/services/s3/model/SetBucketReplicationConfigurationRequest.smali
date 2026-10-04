###### Class com.amazonaws.services.s3.model.SetBucketReplicationConfigurationRequest (com.amazonaws.services.s3.model.SetBucketReplicationConfigurationRequest)
.class public Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketReplicationConfigurationRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;->a:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;
    .registers 2

    .line 116
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;->a(Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;->b:Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    return-object v0
.end method
