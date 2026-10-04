###### Class com.bumptech.glide.load.engine.a.i (com.bumptech.glide.load.engine.a.i)
.class public Lcom/bumptech/glide/load/engine/a/i;
.super Lcom/bumptech/glide/h/g;
.source "LruResourceCache.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/h/g<",
        "Lcom/bumptech/glide/load/c;",
        "Lcom/bumptech/glide/load/engine/s<",
        "*>;>;",
        "Lcom/bumptech/glide/load/engine/a/j;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/engine/a/j$a;


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/h/g;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/engine/s;)I
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/engine/s;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/s<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 40
    invoke-super {p0, p1}, Lcom/bumptech/glide/h/g;->a(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 42
    :cond_8
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/s;->e()I

    move-result p1

    return p1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    check-cast p1, Lcom/bumptech/glide/load/engine/s;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/a/i;->a(Lcom/bumptech/glide/load/engine/s;)I

    move-result p1

    return p1
.end method

.method public synthetic a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/s;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 13
    invoke-super {p0, p1}, Lcom/bumptech/glide/h/g;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/s;

    return-object p1
.end method

.method public a(I)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x28

    if-lt p1, v0, :cond_8

    .line 52
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/i;->c()V

    goto :goto_1a

    :cond_8
    const/16 v0, 0x14

    if-ge p1, v0, :cond_10

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1a

    .line 58
    :cond_10
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/i;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/load/engine/a/i;->a(J)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method protected a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/s;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/s;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/s<",
            "*>;)V"
        }
    .end annotation

    .line 32
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/a/i;->a:Lcom/bumptech/glide/load/engine/a/j$a;

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 33
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/a/i;->a:Lcom/bumptech/glide/load/engine/a/j$a;

    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/engine/a/j$a;->b(Lcom/bumptech/glide/load/engine/s;)V

    :cond_b
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/j$a;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/engine/a/j$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/i;->a:Lcom/bumptech/glide/load/engine/a/j$a;

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    check-cast p1, Lcom/bumptech/glide/load/c;

    check-cast p2, Lcom/bumptech/glide/load/engine/s;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/engine/a/i;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/s;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/s;)Lcom/bumptech/glide/load/engine/s;
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

    .line 13
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/h/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/s;

    return-object p1
.end method
