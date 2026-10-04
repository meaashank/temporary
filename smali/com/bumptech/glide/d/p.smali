###### Class com.bumptech.glide.d.p (com.bumptech.glide.d.p)
.class public final Lcom/bumptech/glide/d/p;
.super Ljava/lang/Object;
.source "TargetTracker.java"

# interfaces
.implements Lcom/bumptech/glide/d/i;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/request/a/o<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 17
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/p;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/a/o<",
            "*>;>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/d/p;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/h/l;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/request/a/o;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/a/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/o<",
            "*>;)V"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/d/p;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/bumptech/glide/d/p;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public b(Lcom/bumptech/glide/request/a/o;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/a/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/o<",
            "*>;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/bumptech/glide/d/p;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public g()V
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/d/p;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/h/l;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/a/o;

    .line 30
    invoke-interface {v1}, Lcom/bumptech/glide/request/a/o;->g()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public h()V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/d/p;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/h/l;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/a/o;

    .line 37
    invoke-interface {v1}, Lcom/bumptech/glide/request/a/o;->h()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public i()V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/d/p;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/h/l;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/a/o;

    .line 44
    invoke-interface {v1}, Lcom/bumptech/glide/request/a/o;->i()V

    goto :goto_a

    :cond_1a
    return-void
.end method
