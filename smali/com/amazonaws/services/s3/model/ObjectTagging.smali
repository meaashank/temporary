###### Class com.amazonaws.services.s3.model.ObjectTagging (com.amazonaws.services.s3.model.ObjectTagging)
.class public Lcom/amazonaws/services/s3/model/ObjectTagging;
.super Ljava/lang/Object;
.source "ObjectTagging.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Tag;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectTagging;->a:Ljava/util/List;

    return-void
.end method

.method private b(Ljava/util/List;)Lcom/amazonaws/services/s3/model/ObjectTagging;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/ObjectTagging;"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectTagging;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Tag;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectTagging;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Tag;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectTagging;->a:Ljava/util/List;

    return-void
.end method
