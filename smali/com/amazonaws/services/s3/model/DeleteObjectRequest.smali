###### Class com.amazonaws.services.s3.model.DeleteObjectRequest (com.amazonaws.services.s3.model.DeleteObjectRequest)
.class public Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteObjectRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 67
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->a(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 191
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->c:Z

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
    .registers 2

    .line 215
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->a(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
    .registers 2

    .line 150
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .registers 2

    .line 171
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->c:Z

    return v0
.end method
