###### Class com.amazonaws.services.s3.model.GetBucketAclRequest (com.amazonaws.services.s3.model.GetBucketAclRequest)
.class public Lcom/amazonaws/services/s3/model/GetBucketAclRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetBucketAclRequest.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketAclRequest;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public h()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetBucketAclRequest;->a:Ljava/lang/String;

    return-object v0
.end method
