###### Class com.bumptech.glide.load.engine.r (com.bumptech.glide.load.engine.r)
.class final Lcom/bumptech/glide/load/engine/r;
.super Ljava/lang/Object;
.source "LockedResource.java"

# interfaces
.implements Lcom/bumptech/glide/h/a/a$c;
.implements Lcom/bumptech/glide/load/engine/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/h/a/a$c;",
        "Lcom/bumptech/glide/load/engine/s<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/r<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/bumptech/glide/h/a/c;

.field private c:Lcom/bumptech/glide/load/engine/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/s<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/bumptech/glide/load/engine/r$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/r$1;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/a/a;->b(ILcom/bumptech/glide/h/a/a$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/engine/r;->a:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/bumptech/glide/h/a/c;->a()Lcom/bumptech/glide/h/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/r;->b:Lcom/bumptech/glide/h/a/c;

    return-void
.end method

.method static a(Lcom/bumptech/glide/load/engine/s;)Lcom/bumptech/glide/load/engine/r;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/s<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/engine/r<",
            "TZ;>;"
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/bumptech/glide/load/engine/r;->a:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/r;

    invoke-static {v0}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/r;

    .line 35
    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/r;->b(Lcom/bumptech/glide/load/engine/s;)V

    return-object v0
.end method

.method private b()V
    .registers 2

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/r;->c:Lcom/bumptech/glide/load/engine/s;

    .line 51
    sget-object v0, Lcom/bumptech/glide/load/engine/r;->a:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/engine/s;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/s<",
            "TZ;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/r;->e:Z

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/r;->d:Z

    .line 46
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/r;->c:Lcom/bumptech/glide/load/engine/s;

    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .registers 3

    monitor-enter p0

    .line 55
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/r;->b:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/a/c;->b()V

    .line 57
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/r;->d:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/r;->d:Z

    .line 61
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/r;->e:Z

    if-eqz v0, :cond_14

    .line 62
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/r;->f()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1e

    .line 64
    :cond_14
    monitor-exit p0

    return-void

    .line 58
    :cond_16
    :try_start_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    .line 54
    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/r;->c:Lcom/bumptech/glide/load/engine/s;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/s;->c()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/r;->c:Lcom/bumptech/glide/load/engine/s;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/s;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/r;->c:Lcom/bumptech/glide/load/engine/s;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/s;->e()I

    move-result v0

    return v0
.end method

.method public declared-synchronized f()V
    .registers 2

    monitor-enter p0

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/r;->b:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/a/c;->b()V

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/r;->e:Z

    .line 88
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/r;->d:Z

    if-nez v0, :cond_15

    .line 89
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/r;->c:Lcom/bumptech/glide/load/engine/s;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/s;->f()V

    .line 90
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/r;->b()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 92
    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    .line 84
    monitor-exit p0

    throw v0
.end method

.method public n_()Lcom/bumptech/glide/h/a/c;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/r;->b:Lcom/bumptech/glide/h/a/c;

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.r.AnonymousClass1 (com.bumptech.glide.load.engine.r$1)
.class Lcom/bumptech/glide/load/engine/r$1;
.super Ljava/lang/Object;
.source "LockedResource.java"

# interfaces
.implements Lcom/bumptech/glide/h/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/h/a/a$a<",
        "Lcom/bumptech/glide/load/engine/r<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/r;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/r<",
            "*>;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/bumptech/glide/load/engine/r;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/r;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/r$1;->a()Lcom/bumptech/glide/load/engine/r;

    move-result-object v0

    return-object v0
.end method
