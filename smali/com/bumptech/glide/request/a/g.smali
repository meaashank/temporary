###### Class com.bumptech.glide.request.a.g (com.bumptech.glide.request.a.g)
.class public Lcom/bumptech/glide/request/a/g;
.super Lcom/bumptech/glide/request/a/p;
.source "DrawableThumbnailImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/a/p<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a/p;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/request/a/p;-><init>(Landroid/widget/ImageView;Z)V

    return-void
.end method


# virtual methods
.method protected synthetic b(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 10
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/a/g;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    return-object p1
.end method
