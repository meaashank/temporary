###### Class com.bumptech.glide.load.resource.d.f (com.bumptech.glide.load.resource.d.f)
.class public Lcom/bumptech/glide/load/resource/d/f;
.super Ljava/lang/Object;
.source "GifDrawableTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/i<",
        "Lcom/bumptech/glide/load/resource/d/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/bumptech/glide/load/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/i;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/i;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/f;->c:Lcom/bumptech/glide/load/i;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/load/engine/s;II)Lcom/bumptech/glide/load/engine/s;
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/s;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/s<",
            "Lcom/bumptech/glide/load/resource/d/c;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/s<",
            "Lcom/bumptech/glide/load/resource/d/c;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/s;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/d/c;

    .line 38
    invoke-static {p1}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/f;->b()Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    move-result-object v1

    .line 39
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/c;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 40
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/f;

    invoke-direct {v3, v2, v1}, Lcom/bumptech/glide/load/resource/bitmap/f;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V

    .line 41
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/f;->c:Lcom/bumptech/glide/load/i;

    invoke-interface {v1, p1, v3, p3, p4}, Lcom/bumptech/glide/load/i;->a(Landroid/content/Context;Lcom/bumptech/glide/load/engine/s;II)Lcom/bumptech/glide/load/engine/s;

    move-result-object p1

    .line 42
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_26

    .line 43
    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/s;->f()V

    .line 45
    :cond_26
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/s;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 47
    iget-object p3, p0, Lcom/bumptech/glide/load/resource/d/f;->c:Lcom/bumptech/glide/load/i;

    invoke-virtual {v0, p3, p1}, Lcom/bumptech/glide/load/resource/d/c;->a(Lcom/bumptech/glide/load/i;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public a(Ljava/security/MessageDigest;)V
    .registers 3
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->c:Lcom/bumptech/glide/load/i;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/i;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 53
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/d/f;

    if-eqz v0, :cond_f

    .line 54
    check-cast p1, Lcom/bumptech/glide/load/resource/d/f;

    .line 55
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->c:Lcom/bumptech/glide/load/i;

    iget-object p1, p1, Lcom/bumptech/glide/load/resource/d/f;->c:Lcom/bumptech/glide/load/i;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->c:Lcom/bumptech/glide/load/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
