###### Class com.bumptech.glide.request.a.i (com.bumptech.glide.request.a.i)
.class public abstract Lcom/bumptech/glide/request/a/i;
.super Lcom/bumptech/glide/request/a/q;
.source "ImageViewTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/b/f$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/a/q<",
        "Landroid/widget/ImageView;",
        "TZ;>;",
        "Lcom/bumptech/glide/request/b/f$a;"
    }
.end annotation


# instance fields
.field private b:Landroid/graphics/drawable/Animatable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a/q;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/request/a/q;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    .line 127
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/a/i;->a(Ljava/lang/Object;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a/i;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    .line 132
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_e

    .line 133
    check-cast p1, Landroid/graphics/drawable/Animatable;

    iput-object p1, p0, Lcom/bumptech/glide/request/a/i;->b:Landroid/graphics/drawable/Animatable;

    .line 134
    iget-object p1, p0, Lcom/bumptech/glide/request/a/i;->b:Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_11

    :cond_e
    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Lcom/bumptech/glide/request/a/i;->b:Landroid/graphics/drawable/Animatable;

    :goto_11
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a/q;->a(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcom/bumptech/glide/request/a/i;->b:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_c

    .line 95
    iget-object v0, p0, Lcom/bumptech/glide/request/a/i;->b:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_c
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/a/i;->b(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/a/i;->e(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;Lcom/bumptech/glide/request/b/f;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/b/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/request/b/f<",
            "-TZ;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_d

    .line 103
    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/request/b/f;->a(Ljava/lang/Object;Lcom/bumptech/glide/request/b/f$a;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_d

    .line 106
    :cond_9
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a/i;->c(Ljava/lang/Object;)V

    goto :goto_10

    .line 104
    :cond_d
    :goto_d
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a/i;->b(Ljava/lang/Object;)V

    :goto_10
    return-void
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/request/a/i;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a/q;->b(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/a/i;->b(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/a/i;->e(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a/q;->c(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/a/i;->b(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/a/i;->e(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/request/a/i;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public g()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/request/a/i;->b:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_9

    .line 113
    iget-object v0, p0, Lcom/bumptech/glide/request/a/i;->b:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_9
    return-void
.end method

.method public h()V
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/request/a/i;->b:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_9

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/request/a/i;->b:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_9
    return-void
.end method
