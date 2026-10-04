###### Class com.amazonaws.services.s3.model.DeleteObjectTaggingRequest (com.amazonaws.services.s3.model.DeleteObjectTaggingRequest)
.class public Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteObjectTaggingRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;
    .registers 2

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;
    .registers 2

    .line 127
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->c:Ljava/lang/String;

    return-object v0
.end method
