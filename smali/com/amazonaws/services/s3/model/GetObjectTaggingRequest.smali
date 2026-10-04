###### Class com.amazonaws.services.s3.model.GetObjectTaggingRequest (com.amazonaws.services.s3.model.GetObjectTaggingRequest)
.class public Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetObjectTaggingRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->b:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;
    .registers 2

    .line 75
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;
    .registers 2

    .line 102
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;
    .registers 2

    .line 129
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->c:Ljava/lang/String;

    return-object v0
.end method
