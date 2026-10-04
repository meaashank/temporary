###### Class com.amazonaws.services.s3.model.MultiObjectDeleteException (com.amazonaws.services.s3.model.MultiObjectDeleteException)
.class public Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;
.super Lcom/amazonaws/services/s3/model/AmazonS3Exception;
.source "MultiObjectDeleteException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1bd0659b6702d912L


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;)V"
        }
    .end annotation

    const-string v0, "One or more objects could not be deleted"

    .line 38
    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->a:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->b:Ljava/util/List;

    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    .line 51
    invoke-super {p0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->b:Ljava/util/List;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;->a:Ljava/util/List;

    return-object v0
.end method

###### Class com.amazonaws.services.s3.model.MultiObjectDeleteException.DeleteError (com.amazonaws.services.s3.model.MultiObjectDeleteException$DeleteError)
.class public Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;
.super Ljava/lang/Object;
.source "MultiObjectDeleteException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteError"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->d:Ljava/lang/String;

    return-void
.end method
