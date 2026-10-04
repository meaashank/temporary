###### Class com.bumptech.glide.f.a (com.bumptech.glide.f.a)
.class public Lcom/bumptech/glide/f/a;
.super Ljava/lang/Object;
.source "EncoderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/f/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/f/a$a<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Class;)Lcom/bumptech/glide/load/a;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/load/a<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/f/a$a;

    .line 21
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/f/a$a;->a(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 22
    iget-object p1, v1, Lcom/bumptech/glide/f/a$a;->a:Lcom/bumptech/glide/load/a;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_20

    monitor-exit p0

    return-object p1

    :cond_1d
    const/4 p1, 0x0

    .line 25
    monitor-exit p0

    return-object p1

    :catchall_20
    move-exception p1

    .line 19
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)V
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/a<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 29
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->a:Ljava/util/List;

    new-instance v1, Lcom/bumptech/glide/f/a$a;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/f/a$a;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 30
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    .line 28
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)V
    .registers 6
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/a<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 33
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->a:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lcom/bumptech/glide/f/a$a;

    invoke-direct {v2, p1, p2}, Lcom/bumptech/glide/f/a$a;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 34
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    .line 32
    monitor-exit p0

    throw p1
.end method

###### Class com.bumptech.glide.f.a.C0030a (com.bumptech.glide.f.a$a)
.class final Lcom/bumptech/glide/f/a$a;
.super Ljava/lang/Object;
.source "EncoderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)V
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/bumptech/glide/f/a$a;->b:Ljava/lang/Class;

    .line 42
    iput-object p2, p0, Lcom/bumptech/glide/f/a$a;->a:Lcom/bumptech/glide/load/a;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Class;)Z
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/f/a$a;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
