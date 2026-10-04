###### Class com.amazonaws.services.s3.model.SetObjectTaggingRequest (com.amazonaws.services.s3.model.SetObjectTaggingRequest)
.class public Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetObjectTaggingRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/amazonaws/services/s3/model/ObjectTagging;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectTagging;)V
    .registers 5

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectTagging;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectTagging;)V
    .registers 5

    .line 56
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->a:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->b:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->c:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->d:Lcom/amazonaws/services/s3/model/ObjectTagging;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/ObjectTagging;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->d:Lcom/amazonaws/services/s3/model/ObjectTagging;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/ObjectTagging;)Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;
    .registers 2

    .line 171
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->a(Lcom/amazonaws/services/s3/model/ObjectTagging;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;
    .registers 2

    .line 87
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;
    .registers 2

    .line 143
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/amazonaws/services/s3/model/ObjectTagging;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;->d:Lcom/amazonaws/services/s3/model/ObjectTagging;

    return-object v0
.end method
