###### Class com.amazonaws.services.s3.model.DeleteBucketPolicyRequest (com.amazonaws.services.s3.model.DeleteBucketPolicyRequest)
.class public Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteBucketPolicyRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;->a:Ljava/lang/String;

    return-object v0
.end method
