###### Class com.gaia.ngallery.h.b (com.gaia.ngallery.h.b)
.class public Lcom/gaia/ngallery/h/b;
.super Lcom/prism/hider/module/a/h;
.source "GalleryModule.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lcom/prism/hider/module/a/h;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .line 23
    sget v0, Lcom/gaia/ngallery/i$n;->module_name_gallery:I

    return v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    .line 18
    invoke-static {p1}, Lcom/gaia/ngallery/b;->c(Landroid/content/Context;)V

    return-void
.end method

.method protected b()I
    .registers 2

    .line 28
    sget v0, Lcom/gaia/ngallery/i$g;->ic_module_gallery:I

    return v0
.end method
