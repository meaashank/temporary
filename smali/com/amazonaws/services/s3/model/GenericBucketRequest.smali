###### Class com.amazonaws.services.s3.model.GenericBucketRequest (com.amazonaws.services.s3.model.GenericBucketRequest)
.class public Lcom/amazonaws/services/s3/model/GenericBucketRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GenericBucketRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GenericBucketRequest;
    .registers 2

    .line 71
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->a:Ljava/lang/String;

    return-object v0
.end method
