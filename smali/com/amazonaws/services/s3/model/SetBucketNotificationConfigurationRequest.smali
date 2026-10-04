###### Class com.amazonaws.services.s3.model.SetBucketNotificationConfigurationRequest (com.amazonaws.services.s3.model.SetBucketNotificationConfigurationRequest)
.class public Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketNotificationConfigurationRequest.java"


# instance fields
.field private a:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->a:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    .line 41
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->b:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->a:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->a:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->a:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;
    .registers 2

    .line 114
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->b(Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;
    .registers 2

    .line 171
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->a:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    return-object v0
.end method

.method public i()Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->a:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->b:Ljava/lang/String;

    return-object v0
.end method
