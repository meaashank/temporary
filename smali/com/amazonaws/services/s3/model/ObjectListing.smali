###### Class com.amazonaws.services.s3.model.ObjectListing (com.amazonaws.services.s3.model.ObjectListing)
.class public Lcom/amazonaws/services/s3/model/ObjectListing;
.super Ljava/lang/Object;
.source "ObjectListing.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->a:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 279
    iput p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->h:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->b:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 334
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->e:Z

    return-void
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->b:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->f:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->g:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->i:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->j:Ljava/lang/String;

    return-void
.end method

.method public g()I
    .registers 2

    .line 265
    iget v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->h:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .line 321
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->e:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 349
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->j:Ljava/lang/String;

    return-object v0
.end method
