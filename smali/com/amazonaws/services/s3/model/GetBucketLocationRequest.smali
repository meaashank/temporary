###### Class com.amazonaws.services.s3.model.GetBucketLocationRequest (com.amazonaws.services.s3.model.GetBucketLocationRequest)
.class public Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetBucketLocationRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;->a:Ljava/lang/String;

    return-object v0
.end method
