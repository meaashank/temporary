###### Class com.amazonaws.services.s3.model.PutObjectRequest (com.amazonaws.services.s3.model.PutObjectRequest)
.class public Lcom/amazonaws/services/s3/model/PutObjectRequest;
.super Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
.source "PutObjectRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .registers 5

    .line 164
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    .line 311
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a:Z

    return-void
.end method

.method public synthetic b(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/AmazonWebServiceRequest;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/amazonaws/services/s3/model/ObjectTagging;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Lcom/amazonaws/services/s3/model/ObjectTagging;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/io/File;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Ljava/io/File;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->c(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->i(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2

    .line 335
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a(Z)V

    return-object p0
.end method

.method public c(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2

    .line 271
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public c(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2

    .line 225
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public c(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2

    .line 218
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public c(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2

    .line 212
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public c(Lcom/amazonaws/services/s3/model/ObjectTagging;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2

    .line 248
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Lcom/amazonaws/services/s3/model/ObjectTagging;)V

    return-object p0
.end method

.method public c(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public c(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2

    .line 264
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public c(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2

    .line 243
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public c(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2

    .line 200
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public c(Ljava/io/File;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2

    .line 206
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b(Ljava/io/File;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public c(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2

    .line 231
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 88
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->w()Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->j(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->k(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic g()Lcom/amazonaws/AmazonWebServiceRequest;
    .registers 2

    .line 88
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->w()Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->l(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2

    .line 181
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2

    .line 187
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public k(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2

    .line 194
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public l(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2

    .line 237
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1
.end method

.method public synthetic u()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2

    .line 88
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->w()Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .registers 2

    .line 174
    invoke-super {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->u()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 175
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object v0
.end method

.method public x()Z
    .registers 2

    .line 291
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a:Z

    return v0
.end method
