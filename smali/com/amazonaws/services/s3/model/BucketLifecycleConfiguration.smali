###### Class com.amazonaws.services.s3.model.BucketLifecycleConfiguration (com.amazonaws.services.s3.model.BucketLifecycleConfiguration)
.class public Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
.super Ljava/lang/Object;
.source "BucketLifecycleConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;,
        Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;,
        Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "Enabled"

.field public static final b:Ljava/lang/String; = "Disabled"


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs a([Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    .registers 2

    .line 75
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->c:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->c:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/util/List;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->a(Ljava/util/List;)V

    return-object p0
.end method

###### Class com.amazonaws.services.s3.model.BucketLifecycleConfiguration.NoncurrentVersionTransition (com.amazonaws.services.s3.model.BucketLifecycleConfiguration$NoncurrentVersionTransition)
.class public Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;
.super Ljava/lang/Object;
.source "BucketLifecycleConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoncurrentVersionTransition"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 722
    iput v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 739
    iget v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .line 731
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->a:I

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .registers 2

    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 757
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->a(Ljava/lang/String;)V

    goto :goto_10

    .line 759
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->a(Ljava/lang/String;)V

    :goto_10
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 767
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->b:Ljava/lang/String;

    return-void
.end method

.method public b(I)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;
    .registers 2

    .line 748
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->a:I

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;
    .registers 2

    .line 797
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->a(Lcom/amazonaws/services/s3/model/StorageClass;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;
    .registers 2

    .line 806
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Lcom/amazonaws/services/s3/model/StorageClass;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 779
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazonaws/services/s3/model/StorageClass;->fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 789
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->b:Ljava/lang/String;

    return-object v0
.end method

###### Class com.amazonaws.services.s3.model.BucketLifecycleConfiguration.Rule (com.amazonaws.services.s3.model.BucketLifecycleConfiguration$Rule)
.class public Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
.super Ljava/lang/Object;
.source "BucketLifecycleConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rule"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

.field private e:I

.field private f:Z

.field private g:I

.field private h:Ljava/util/Date;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 105
    iput v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->e:I

    const/4 v1, 0x0

    .line 107
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->f:Z

    .line 113
    iput v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->g:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 162
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->e:I

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;)V
    .registers 2

    .line 493
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->k:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 365
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 366
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 365
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->c(Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 321
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;)V
    .registers 2

    .line 563
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->d:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->h:Ljava/util/Date;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->i:Ljava/util/List;

    :cond_9
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 532
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->f:Z

    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .registers 2

    .line 498
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->a(Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 396
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 397
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 396
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->c(Ljava/util/List;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 349
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .registers 2

    .line 575
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->a(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;)V

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .registers 2

    .line 308
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->h:Ljava/util/Date;

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;"
        }
    .end annotation

    .line 423
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .registers 2

    .line 543
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->f:Z

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .line 170
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->g:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->b:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .registers 2

    .line 222
    iget v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->e:I

    return v0
.end method

.method public c(I)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .registers 2

    .line 233
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->e:I

    return-object p0
.end method

.method public c(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .registers 3

    if-eqz p1, :cond_13

    .line 480
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->j:Ljava/util/List;

    if-nez v0, :cond_d

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->j:Ljava/util/List;

    .line 483
    :cond_d
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 476
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "NoncurrentVersionTransition cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .registers 3

    if-eqz p1, :cond_13

    .line 435
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->i:Ljava/util/List;

    if-nez v0, :cond_d

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->i:Ljava/util/List;

    .line 438
    :cond_d
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 432
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transition cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;",
            ">;)V"
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->j:Ljava/util/List;

    return-void
.end method

.method public d()I
    .registers 2

    .line 243
    iget v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->g:I

    return v0
.end method

.method public d(I)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .registers 2

    .line 252
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->b(I)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/List;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;"
        }
    .end annotation

    .line 466
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->c(Ljava/util/List;)V

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .registers 2

    .line 285
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public f()Ljava/util/Date;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->h:Ljava/util/Date;

    return-object v0
.end method

.method public g()Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 333
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 334
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 335
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0
.end method

.method public h()Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 379
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 380
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0
.end method

.method public i()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;",
            ">;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->i:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;",
            ">;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->j:Ljava/util/List;

    return-object v0
.end method

.method public k()Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;
    .registers 2

    .line 488
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->k:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    return-object v0
.end method

.method public l()Z
    .registers 2

    .line 520
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->f:Z

    return v0
.end method

.method public m()Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;
    .registers 2

    .line 552
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->d:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    return-object v0
.end method

###### Class com.amazonaws.services.s3.model.BucketLifecycleConfiguration.Transition (com.amazonaws.services.s3.model.BucketLifecycleConfiguration$Transition)
.class public Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
.super Ljava/lang/Object;
.source "BucketLifecycleConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transition"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/Date;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 591
    iput v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 613
    iget v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .line 606
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->a:I

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .registers 2

    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 633
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->a(Ljava/lang/String;)V

    goto :goto_10

    .line 635
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->a(Ljava/lang/String;)V

    :goto_10
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 643
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    .line 690
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->b:Ljava/util/Date;

    return-void
.end method

.method public b(I)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
    .registers 2

    .line 624
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->a:I

    return-object p0
.end method

.method public b(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
    .registers 2

    .line 673
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->a(Lcom/amazonaws/services/s3/model/StorageClass;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
    .registers 2

    .line 682
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
    .registers 2

    .line 705
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->b:Ljava/util/Date;

    return-object p0
.end method

.method public b()Lcom/amazonaws/services/s3/model/StorageClass;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazonaws/services/s3/model/StorageClass;->fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 665
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/Date;
    .registers 2

    .line 697
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->b:Ljava/util/Date;

    return-object v0
.end method
