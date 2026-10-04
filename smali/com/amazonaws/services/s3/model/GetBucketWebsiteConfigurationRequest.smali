###### Class com.amazonaws.services.s3.model.GetBucketWebsiteConfigurationRequest (com.amazonaws.services.s3.model.GetBucketWebsiteConfigurationRequest)
.class public Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetBucketWebsiteConfigurationRequest.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 60
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;->a:Ljava/lang/String;

    return-object v0
.end method
