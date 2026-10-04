###### Class com.bumptech.glide.d.n (com.bumptech.glide.d.n)
.class public Lcom/bumptech/glide/d/n;
.super Ljava/lang/Object;
.source "RequestTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "RequestTracker"


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/request/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 30
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/n;->b:Ljava/util/Set;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d/n;->c:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/bumptech/glide/request/c;Z)Z
    .registers 6
    .param p1    # Lcom/bumptech/glide/request/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 75
    :cond_4
    iget-object v1, p0, Lcom/bumptech/glide/d/n;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 77
    iget-object v2, p0, Lcom/bumptech/glide/d/n;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    if-eqz v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :cond_16
    :goto_16
    if-eqz v0, :cond_20

    .line 79
    invoke-interface {p1}, Lcom/bumptech/glide/request/c;->b()V

    if-eqz p2, :cond_20

    .line 81
    invoke-interface {p1}, Lcom/bumptech/glide/request/c;->h()V

    :cond_20
    return v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/request/c;)V
    .registers 4
    .param p1    # Lcom/bumptech/glide/request/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    iget-boolean v0, p0, Lcom/bumptech/glide/d/n;->d:Z

    if-nez v0, :cond_d

    .line 44
    invoke-interface {p1}, Lcom/bumptech/glide/request/c;->a()V

    goto :goto_25

    .line 46
    :cond_d
    invoke-interface {p1}, Lcom/bumptech/glide/request/c;->b()V

    const-string v0, "RequestTracker"

    const/4 v1, 0x2

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "RequestTracker"

    const-string v1, "Paused, delaying request"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_20
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_25
    return-void
.end method

.method public a()Z
    .registers 2

    .line 91
    iget-boolean v0, p0, Lcom/bumptech/glide/d/n;->d:Z

    return v0
.end method

.method public b()V
    .registers 4

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/bumptech/glide/d/n;->d:Z

    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->b:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/h/l;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/c;

    .line 100
    invoke-interface {v1}, Lcom/bumptech/glide/request/c;->c()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 101
    invoke-interface {v1}, Lcom/bumptech/glide/request/c;->b()V

    .line 102
    iget-object v2, p0, Lcom/bumptech/glide/d/n;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_28
    return-void
.end method

.method b(Lcom/bumptech/glide/request/c;)V
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .registers 4

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/bumptech/glide/d/n;->d:Z

    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->b:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/h/l;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/c;

    .line 111
    invoke-interface {v1}, Lcom/bumptech/glide/request/c;->c()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-interface {v1}, Lcom/bumptech/glide/request/c;->d()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 112
    :cond_25
    invoke-interface {v1}, Lcom/bumptech/glide/request/c;->b()V

    .line 113
    iget-object v2, p0, Lcom/bumptech/glide/d/n;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2e
    return-void
.end method

.method public c(Lcom/bumptech/glide/request/c;)Z
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/d/n;->a(Lcom/bumptech/glide/request/c;Z)Z

    move-result p1

    return p1
.end method

.method public d()V
    .registers 4

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/bumptech/glide/d/n;->d:Z

    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->b:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/h/l;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/c;

    .line 127
    invoke-interface {v1}, Lcom/bumptech/glide/request/c;->d()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v1}, Lcom/bumptech/glide/request/c;->c()Z

    move-result v2

    if-nez v2, :cond_d

    .line 128
    invoke-interface {v1}, Lcom/bumptech/glide/request/c;->a()V

    goto :goto_d

    .line 131
    :cond_29
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public e()V
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->b:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/h/l;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/c;

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0, v1, v2}, Lcom/bumptech/glide/d/n;->a(Lcom/bumptech/glide/request/c;Z)Z

    goto :goto_a

    .line 145
    :cond_1b
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public f()V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->b:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/h/l;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/c;

    .line 153
    invoke-interface {v1}, Lcom/bumptech/glide/request/c;->d()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {v1}, Lcom/bumptech/glide/request/c;->f()Z

    move-result v2

    if-nez v2, :cond_a

    .line 154
    invoke-interface {v1}, Lcom/bumptech/glide/request/c;->b()V

    .line 155
    iget-boolean v2, p0, Lcom/bumptech/glide/d/n;->d:Z

    if-nez v2, :cond_2d

    .line 156
    invoke-interface {v1}, Lcom/bumptech/glide/request/c;->a()V

    goto :goto_a

    .line 159
    :cond_2d
    iget-object v2, p0, Lcom/bumptech/glide/d/n;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{numRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/d/n;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bumptech/glide/d/n;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
