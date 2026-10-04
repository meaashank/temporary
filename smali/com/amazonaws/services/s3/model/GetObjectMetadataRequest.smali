###### Class com.amazonaws.services.s3.model.GetObjectMetadataRequest (com.amazonaws.services.s3.model.GetObjectMetadataRequest)
.class public Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetObjectMetadataRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/SSECustomerKeyProvider;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 97
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->a(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->c(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->e:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 409
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->f:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 308
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->d:Z

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;
    .registers 2

    .line 369
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->a(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public b(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;
    .registers 2

    .line 437
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->a(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;
    .registers 2

    .line 169
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;
    .registers 2

    .line 332
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->a(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;
    .registers 2

    .line 213
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;
    .registers 2

    .line 266
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .registers 2

    .line 288
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->d:Z

    return v0
.end method

.method public l()Ljava/lang/Integer;
    .registers 2

    .line 384
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public q()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->e:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method
