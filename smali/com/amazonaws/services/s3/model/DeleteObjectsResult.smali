###### Class com.amazonaws.services.s3.model.DeleteObjectsResult (com.amazonaws.services.s3.model.DeleteObjectsResult)
.class public Lcom/amazonaws/services/s3/model/DeleteObjectsResult;
.super Ljava/lang/Object;
.source "DeleteObjectsResult.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;Z)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;->a:Ljava/util/List;

    .line 47
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;->a(Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Z)V
    .registers 2

    .line 67
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;->b:Z

    return-void
.end method

.method public c()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;->b:Z

    return v0
.end method

###### Class com.amazonaws.services.s3.model.DeleteObjectsResult.DeletedObject (com.amazonaws.services.s3.model.DeleteObjectsResult$DeletedObject)
.class public Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;
.super Ljava/lang/Object;
.source "DeleteObjectsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/DeleteObjectsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeletedObject"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

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
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 110
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->c:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .registers 2

    .line 106
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->c:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->d:Ljava/lang/String;

    return-object v0
.end method
