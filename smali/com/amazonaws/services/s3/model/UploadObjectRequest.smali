###### Class com.amazonaws.services.s3.model.UploadObjectRequest (com.amazonaws.services.s3.model.UploadObjectRequest)
.class public Lcom/amazonaws/services/s3/model/UploadObjectRequest;
.super Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
.source "UploadObjectRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;
.implements Ljava/io/Serializable;


# static fields
.field static final a:I = 0x500000

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private b:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private transient e:Ljava/util/concurrent/ExecutorService;

.field private transient f:Lcom/amazonaws/services/s3/UploadObjectObserver;

.field private transient g:Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;

.field private h:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    const-wide/32 p1, 0x500000

    .line 54
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->d:J

    const-wide p1, 0x7fffffffffffffffL

    .line 74
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->h:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .registers 5

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    const-wide/32 p1, 0x500000

    .line 54
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->d:J

    const-wide p1, 0x7fffffffffffffffL

    .line 74
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->h:J

    return-void
.end method


# virtual methods
.method public A()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->b:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public B()Lcom/amazonaws/services/s3/model/UploadObjectRequest;
    .registers 7

    .line 249
    invoke-super {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->u()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 250
    invoke-super {p0, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 251
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->j_()Ljava/util/Map;

    move-result-object v1

    .line 252
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->A()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v1, :cond_16

    move-object v4, v3

    goto :goto_1b

    .line 253
    :cond_16
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 254
    :goto_1b
    invoke-virtual {v0, v4}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->b(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    move-result-object v0

    .line 257
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->w()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->b(J)Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->x()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->a(Ljava/util/concurrent/ExecutorService;)Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    move-result-object v0

    .line 259
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->v()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->a(J)Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    move-result-object v0

    .line 260
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->z()Lcom/amazonaws/services/s3/UploadObjectObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->a(Lcom/amazonaws/services/s3/UploadObjectObserver;)Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    move-result-object v0

    if-nez v2, :cond_42

    goto :goto_46

    .line 262
    :cond_42
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->x()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v3

    .line 261
    :goto_46
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->d(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/amazonaws/services/s3/model/UploadObjectRequest;
    .registers 6

    const-wide/32 v0, 0x500000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_a

    .line 106
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->d:J

    return-object p0

    .line 103
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "partSize must be at least 5242880"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazonaws/services/s3/UploadObjectObserver;)Lcom/amazonaws/services/s3/model/UploadObjectRequest;
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->f:Lcom/amazonaws/services/s3/UploadObjectObserver;

    return-object p0
.end method

.method public a(Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;)Lcom/amazonaws/services/s3/model/UploadObjectRequest;
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->g:Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;

    return-object p0
.end method

.method public a(Ljava/util/concurrent/ExecutorService;)Lcom/amazonaws/services/s3/model/UploadObjectRequest;
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->e:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_d

    .line 202
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 204
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_d
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->c:Ljava/util/Map;

    return-void
.end method

.method public b(J)Lcom/amazonaws/services/s3/model/UploadObjectRequest;
    .registers 3

    .line 127
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->h:J

    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/UploadObjectRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/UploadObjectRequest;"
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->a(Ljava/util/Map;)V

    return-object p0
.end method

.method public c(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->b:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->B()Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/UploadObjectRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/UploadObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
            ")TT;"
        }
    .end annotation

    .line 236
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->c(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object p0
.end method

.method public synthetic g()Lcom/amazonaws/AmazonWebServiceRequest;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->B()Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public j_()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->c:Ljava/util/Map;

    return-object v0
.end method

.method public synthetic u()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->B()Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public v()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->d:J

    return-wide v0
.end method

.method public w()J
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->h:J

    return-wide v0
.end method

.method public x()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->e:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public y()Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->g:Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;

    return-object v0
.end method

.method public z()Lcom/amazonaws/services/s3/UploadObjectObserver;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->f:Lcom/amazonaws/services/s3/UploadObjectObserver;

    return-object v0
.end method
