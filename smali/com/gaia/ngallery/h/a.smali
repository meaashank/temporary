###### Class com.gaia.ngallery.h.a (com.gaia.ngallery.h.a)
.class public Lcom/gaia/ngallery/h/a;
.super Lcom/prism/hider/module/a/h;
.source "CameraModule.java"


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

    .line 17
    sget v0, Lcom/gaia/ngallery/i$n;->module_name_camera:I

    return v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    .line 27
    invoke-static {p1}, Lcom/gaia/ngallery/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected b()I
    .registers 2

    .line 22
    sget v0, Lcom/gaia/ngallery/i$g;->ic_module_camera:I

    return v0
.end method
