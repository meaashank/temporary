###### Class com.amazonaws.services.s3.model.GetObjectTaggingResult (com.amazonaws.services.s3.model.GetObjectTaggingResult)
.class public Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;
.super Ljava/lang/Object;
.source "GetObjectTaggingResult.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;->a:Ljava/lang/String;

    return-void
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

    .line 76
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;->b:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Tag;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;->b:Ljava/util/List;

    return-object v0
.end method
