###### Class com.amazonaws.services.s3.model.GetObjectAclRequest (com.amazonaws.services.s3.model.GetObjectAclRequest)
.class public Lcom/amazonaws/services/s3/model/GetObjectAclRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetObjectAclRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 56
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 44
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 57
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->a(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->c(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 271
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->b:Z

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectAclRequest;
    .registers 2

    .line 99
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/GetObjectAclRequest;
    .registers 2

    .line 295
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->a(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->b(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectAclRequest;
    .registers 2

    .line 142
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->c(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectAclRequest;
    .registers 2

    .line 230
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->a:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .registers 2

    .line 251
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->b:Z

    return v0
.end method
