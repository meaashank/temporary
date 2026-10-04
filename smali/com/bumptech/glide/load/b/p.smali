###### Class com.bumptech.glide.load.b.p (com.bumptech.glide.load.b.p)
.class public Lcom/bumptech/glide/load/b/p;
.super Ljava/lang/Object;
.source "ModelLoaderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/p$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/r;

.field private final b:Lcom/bumptech/glide/load/b/p$a;


# direct methods
.method public constructor <init>(Landroid/support/v4/util/Pools$Pool;)V
    .registers 3
    .param p1    # Landroid/support/v4/util/Pools$Pool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/bumptech/glide/load/b/r;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/b/r;-><init>(Landroid/support/v4/util/Pools$Pool;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/p;-><init>(Lcom/bumptech/glide/load/b/r;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/b/r;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/b/r;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/bumptech/glide/load/b/p$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/p$a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/p;->b:Lcom/bumptech/glide/load/b/p$a;

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/load/b/p;->a:Lcom/bumptech/glide/load/b/r;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/b/o<",
            "+TModel;+TData;>;>;)V"
        }
    .end annotation

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/o;

    .line 65
    invoke-interface {v0}, Lcom/bumptech/glide/load/b/o;->a()V

    goto :goto_4

    :cond_14
    return-void
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Ljava/lang/Class<",
            "TA;>;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized b(Ljava/lang/Class;)Ljava/util/List;
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/b/n<",
            "TA;*>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/p;->b:Lcom/bumptech/glide/load/b/p$a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/p$a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_18

    .line 107
    iget-object v0, p0, Lcom/bumptech/glide/load/b/p;->a:Lcom/bumptech/glide/load/b/r;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/r;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/bumptech/glide/load/b/p;->b:Lcom/bumptech/glide/load/b/p$a;

    invoke-virtual {v1, p1, v0}, Lcom/bumptech/glide/load/b/p$a;->a(Ljava/lang/Class;Ljava/util/List;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 110
    :cond_18
    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception p1

    .line 104
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/p;->a:Lcom/bumptech/glide/load/b/r;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/r;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/List;
    .registers 10
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/b/n<",
            "TA;*>;>;"
        }
    .end annotation

    .line 74
    invoke-static {p1}, Lcom/bumptech/glide/load/b/p;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/p;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x1

    :goto_15
    if-ge v2, v1, :cond_33

    .line 80
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/load/b/n;

    .line 81
    invoke-interface {v6, p1}, Lcom/bumptech/glide/load/b/n;->a(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    if-eqz v5, :cond_2d

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    sub-int v5, v1, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    .line 86
    :cond_2d
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_33
    return-object v4
.end method

.method public declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 50
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/p;->a:Lcom/bumptech/glide/load/b/r;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/b/r;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/p;->a(Ljava/util/List;)V

    .line 51
    iget-object p1, p0, Lcom/bumptech/glide/load/b/p;->b:Lcom/bumptech/glide/load/b/p$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/p$a;->a()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 52
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    .line 49
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)V
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/b/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/b/o<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/p;->a:Lcom/bumptech/glide/load/b/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/b/r;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)V

    .line 37
    iget-object p1, p0, Lcom/bumptech/glide/load/b/p;->b:Lcom/bumptech/glide/load/b/p$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/p$a;->a()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 38
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    .line 35
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/n;
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lcom/bumptech/glide/load/b/n<",
            "TModel;TData;>;"
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/p;->a:Lcom/bumptech/glide/load/b/r;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/b/r;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/n;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)V
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/b/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/b/o<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/p;->a:Lcom/bumptech/glide/load/b/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/b/r;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)V

    .line 45
    iget-object p1, p0, Lcom/bumptech/glide/load/b/p;->b:Lcom/bumptech/glide/load/b/p$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/p$a;->a()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 46
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    .line 43
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)V
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/b/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/b/o<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/p;->a:Lcom/bumptech/glide/load/b/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/b/r;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/p;->a(Ljava/util/List;)V

    .line 59
    iget-object p1, p0, Lcom/bumptech/glide/load/b/p;->b:Lcom/bumptech/glide/load/b/p$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/p$a;->a()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 60
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    .line 57
    monitor-exit p0

    throw p1
.end method

###### Class com.bumptech.glide.load.b.p.a (com.bumptech.glide.load.b.p$a)
.class Lcom/bumptech/glide/load/b/p$a;
.super Ljava/lang/Object;
.source "ModelLoaderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/p$a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/b/p$a$a<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/p$a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/b/n<",
            "TModel;*>;>;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/bumptech/glide/load/b/p$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/p$a$a;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_e

    .line 140
    :cond_c
    iget-object p1, p1, Lcom/bumptech/glide/load/b/p$a$a;->a:Ljava/util/List;

    :goto_e
    return-object p1
.end method

.method public a()V
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/load/b/p$a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/b/n<",
            "TModel;*>;>;)V"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/bumptech/glide/load/b/p$a;->a:Ljava/util/Map;

    new-instance v1, Lcom/bumptech/glide/load/b/p$a$a;

    invoke-direct {v1, p2}, Lcom/bumptech/glide/load/b/p$a$a;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/load/b/p$a$a;

    if-nez p2, :cond_10

    return-void

    .line 132
    :cond_10
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already cached loaders for model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

###### Class com.bumptech.glide.load.b.p.a.C0036a (com.bumptech.glide.load.b.p$a$a)
.class Lcom/bumptech/glide/load/b/p$a$a;
.super Ljava/lang/Object;
.source "ModelLoaderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/p$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/b/n<",
            "TModel;*>;>;"
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
            "Lcom/bumptech/glide/load/b/n<",
            "TModel;*>;>;)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/bumptech/glide/load/b/p$a$a;->a:Ljava/util/List;

    return-void
.end method
