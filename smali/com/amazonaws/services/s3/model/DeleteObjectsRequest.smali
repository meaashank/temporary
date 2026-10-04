###### Class com.amazonaws.services.s3.model.DeleteObjectsRequest (com.amazonaws.services.s3.model.DeleteObjectsRequest)
.class public Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteObjectsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->d:Ljava/util/List;

    .line 76
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .registers 7

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_17

    aget-object v3, p1, v2

    .line 250
    new-instance v4, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;

    invoke-direct {v4, v3}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 252
    :cond_17
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public a(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->c:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;",
            ">;)V"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 190
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->b:Z

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .registers 2

    .line 181
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->a(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;"
        }
    .end annotation

    .line 231
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .registers 2

    .line 208
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->a(Z)V

    return-object p0
.end method

.method public c(Z)V
    .registers 2

    .line 293
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->e:Z

    return-void
.end method

.method public d(Z)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .registers 2

    .line 317
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->c(Z)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->c:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    return-object v0
.end method

.method public j()Z
    .registers 2

    .line 198
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->b:Z

    return v0
.end method

.method public k()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->d:Ljava/util/List;

    return-object v0
.end method

.method public l()Z
    .registers 2

    .line 273
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->e:Z

    return v0
.end method

###### Class com.amazonaws.services.s3.model.DeleteObjectsRequest.KeyVersion (com.amazonaws.services.s3.model.DeleteObjectsRequest$KeyVersion)
.class public Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;
.super Ljava/lang/Object;
.source "DeleteObjectsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyVersion"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 333
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->a:Ljava/lang/String;

    .line 341
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 349
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->b:Ljava/lang/String;

    return-object v0
.end method
