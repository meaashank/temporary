###### Class com.gaia.ngallery.ui.widget.photoview.a.f (com.gaia.ngallery.ui.widget.photoview.a.f)
.class public final Lcom/gaia/ngallery/ui/widget/photoview/a/f;
.super Ljava/lang/Object;
.source "VersionedGestureDetector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/gaia/ngallery/ui/widget/photoview/a/e;)Lcom/gaia/ngallery/ui/widget/photoview/a/d;
    .registers 4

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_b

    .line 29
    new-instance v0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/widget/photoview/a/a;-><init>(Landroid/content/Context;)V

    goto :goto_1a

    :cond_b
    const/16 v1, 0x8

    if-ge v0, v1, :cond_15

    .line 31
    new-instance v0, Lcom/gaia/ngallery/ui/widget/photoview/a/b;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/widget/photoview/a/b;-><init>(Landroid/content/Context;)V

    goto :goto_1a

    .line 33
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/ui/widget/photoview/a/c;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/widget/photoview/a/c;-><init>(Landroid/content/Context;)V

    .line 36
    :goto_1a
    invoke-interface {v0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/a/d;->a(Lcom/gaia/ngallery/ui/widget/photoview/a/e;)V

    return-object v0
.end method
