###### Class com.gaia.ngallery.h.d (com.gaia.ngallery.h.d)
.class public Lcom/gaia/ngallery/h/d;
.super Lcom/prism/hider/module/a/h;
.source "VideoCameraModule.java"


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
    sget v0, Lcom/gaia/ngallery/i$n;->module_name_camera_video:I

    return v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    .line 27
    invoke-static {p1}, Lcom/gaia/ngallery/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method protected b()I
    .registers 2

    .line 22
    sget v0, Lcom/gaia/ngallery/i$g;->ic_module_video_camera:I

    return v0
.end method
