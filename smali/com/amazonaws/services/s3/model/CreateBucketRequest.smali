###### Class com.amazonaws.services.s3.model.CreateBucketRequest (com.amazonaws.services.s3.model.CreateBucketRequest)
.class public Lcom/amazonaws/services/s3/model/CreateBucketRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateBucketRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private d:Lcom/amazonaws/services/s3/model/AccessControlList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 56
    sget-object v0, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/Region;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/Region;)V
    .registers 3

    .line 69
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/Region;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 81
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->a(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->d:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->c:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/CreateBucketRequest;
    .registers 2

    .line 187
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->a(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/CreateBucketRequest;
    .registers 2

    .line 157
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->a(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->c:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public k()Lcom/amazonaws/services/s3/model/AccessControlList;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->d:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method
