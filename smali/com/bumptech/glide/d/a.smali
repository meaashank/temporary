###### Class com.bumptech.glide.d.a (com.bumptech.glide.d.a)
.class Lcom/bumptech/glide/d/a;
.super Ljava/lang/Object;
.source "ActivityFragmentLifecycle.java"

# interfaces
.implements Lcom/bumptech/glide/d/h;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/d/i;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 15
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/a;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/bumptech/glide/d/a;->b:Z

    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/d/a;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/h/l;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/d/i;

    .line 51
    invoke-interface {v1}, Lcom/bumptech/glide/d/i;->g()V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public a(Lcom/bumptech/glide/d/i;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/d/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/d/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    iget-boolean v0, p0, Lcom/bumptech/glide/d/a;->c:Z

    if-eqz v0, :cond_d

    .line 35
    invoke-interface {p1}, Lcom/bumptech/glide/d/i;->i()V

    goto :goto_18

    .line 36
    :cond_d
    iget-boolean v0, p0, Lcom/bumptech/glide/d/a;->b:Z

    if-eqz v0, :cond_15

    .line 37
    invoke-interface {p1}, Lcom/bumptech/glide/d/i;->g()V

    goto :goto_18

    .line 39
    :cond_15
    invoke-interface {p1}, Lcom/bumptech/glide/d/i;->h()V

    :goto_18
    return-void
.end method

.method b()V
    .registers 3

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/bumptech/glide/d/a;->b:Z

    .line 57
    iget-object v0, p0, Lcom/bumptech/glide/d/a;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/h/l;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/d/i;

    .line 58
    invoke-interface {v1}, Lcom/bumptech/glide/d/i;->h()V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public b(Lcom/bumptech/glide/d/i;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/d/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/d/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method c()V
    .registers 3

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/bumptech/glide/d/a;->c:Z

    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/d/a;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/h/l;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/d/i;

    .line 65
    invoke-interface {v1}, Lcom/bumptech/glide/d/i;->i()V

    goto :goto_d

    :cond_1d
    return-void
.end method
