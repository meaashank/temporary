###### Class com.bumptech.glide.load.engine.bitmap_recycle.f (com.bumptech.glide.load.engine.bitmap_recycle.f)
.class public Lcom/bumptech/glide/load/engine/bitmap_recycle/f;
.super Ljava/lang/Object;
.source "BitmapPoolAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/e;


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

.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 30
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

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

.method public a(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/f;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 1

    return-void
.end method
