###### Class com.gaia.ngallery.h.c (com.gaia.ngallery.h.c)
.class public Lcom/gaia/ngallery/h/c;
.super Lcom/prism/hider/module/a/e;
.source "GalleryModule2.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/prism/hider/module/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "hider_gallery"

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    .line 25
    invoke-static {p1}, Lcom/gaia/ngallery/b;->c(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
