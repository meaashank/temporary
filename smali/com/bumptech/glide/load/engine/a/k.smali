###### Class com.bumptech.glide.load.engine.a.k (com.bumptech.glide.load.engine.a.k)
.class public Lcom/bumptech/glide/load/engine/a/k;
.super Ljava/lang/Object;
.source "MemoryCacheAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/j;


# instance fields
.field private a:Lcom/bumptech/glide/load/engine/a/j$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/s;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/bumptech/glide/load/engine/s<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(F)V
    .registers 2

    return-void
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/j$a;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/engine/a/j$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/k;->a:Lcom/bumptech/glide/load/engine/a/j$a;

    return-void
.end method

.method public b()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/s;)Lcom/bumptech/glide/load/engine/s;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/s;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/s<",
            "*>;)",
            "Lcom/bumptech/glide/load/engine/s<",
            "*>;"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 40
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/a/k;->a:Lcom/bumptech/glide/load/engine/a/j$a;

    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/engine/a/j$a;->b(Lcom/bumptech/glide/load/engine/s;)V

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .registers 1

    return-void
.end method
