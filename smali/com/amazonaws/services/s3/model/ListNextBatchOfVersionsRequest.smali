###### Class com.amazonaws.services.s3.model.ListNextBatchOfVersionsRequest (com.amazonaws.services.s3.model.ListNextBatchOfVersionsRequest)
.class public Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListNextBatchOfVersionsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/amazonaws/services/s3/model/VersionListing;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/VersionListing;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;->a(Lcom/amazonaws/services/s3/model/VersionListing;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/VersionListing;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;->a:Lcom/amazonaws/services/s3/model/VersionListing;

    return-void

    .line 52
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The parameter previousVersionListing must be specified."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/amazonaws/services/s3/model/VersionListing;)Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;
    .registers 2

    .line 66
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;->a(Lcom/amazonaws/services/s3/model/VersionListing;)V

    return-object p0
.end method

.method public h()Lcom/amazonaws/services/s3/model/VersionListing;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;->a:Lcom/amazonaws/services/s3/model/VersionListing;

    return-object v0
.end method

.method public i()Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .registers 9

    .line 75
    new-instance v7, Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;->a:Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;->a:Lcom/amazonaws/services/s3/model/VersionListing;

    .line 76
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;->a:Lcom/amazonaws/services/s3/model/VersionListing;

    .line 77
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;->a:Lcom/amazonaws/services/s3/model/VersionListing;

    .line 78
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;->a:Lcom/amazonaws/services/s3/model/VersionListing;

    .line 79
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->h()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;->a:Lcom/amazonaws/services/s3/model/VersionListing;

    .line 80
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;->a:Lcom/amazonaws/services/s3/model/VersionListing;

    .line 81
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/VersionListing;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->l(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object v0

    return-object v0
.end method
