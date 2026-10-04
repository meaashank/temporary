###### Class com.amazonaws.services.s3.model.DeleteVersionRequest (com.amazonaws.services.s3.model.DeleteVersionRequest)
.class public Lcom/amazonaws/services/s3/model/DeleteVersionRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteVersionRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 87
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->a:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->b:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V
    .registers 5

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->d:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->d:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)Lcom/amazonaws/services/s3/model/DeleteVersionRequest;
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->a(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteVersionRequest;
    .registers 2

    .line 154
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteVersionRequest;
    .registers 2

    .line 192
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteVersionRequest;
    .registers 2

    .line 235
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->d:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    return-object v0
.end method
