###### Class com.amazonaws.services.s3.model.SetBucketPolicyRequest (com.amazonaws.services.s3.model.SetBucketPolicyRequest)
.class public Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketPolicyRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->a:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;
    .registers 2

    .line 119
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->b:Ljava/lang/String;

    return-object v0
.end method
