###### Class com.gaia.ngallery.ui.widget.photoview.a.c (com.gaia.ngallery.ui.widget.photoview.a.c)
.class public Lcom/gaia/ngallery/ui/widget/photoview/a/c;
.super Lcom/gaia/ngallery/ui/widget/photoview/a/b;
.source "FroyoGestureDetector.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# instance fields
.field protected final d:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 29
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/a/b;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/gaia/ngallery/ui/widget/photoview/a/c$1;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/widget/photoview/a/c$1;-><init>(Lcom/gaia/ngallery/ui/widget/photoview/a/c;)V

    .line 54
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/c;->d:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/c;->d:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/c;->d:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 66
    invoke-super {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/a/b;->c(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return p1

    :catch_a
    const/4 p1, 0x1

    return p1
.end method

###### Class com.gaia.ngallery.ui.widget.photoview.a.c.AnonymousClass1 (com.gaia.ngallery.ui.widget.photoview.a.c$1)
.class Lcom/gaia/ngallery/ui/widget/photoview/a/c$1;
.super Ljava/lang/Object;
.source "FroyoGestureDetector.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/widget/photoview/a/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/widget/photoview/a/c;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/widget/photoview/a/c;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/c$1;->a:Lcom/gaia/ngallery/ui/widget/photoview/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 5

    .line 34
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 36
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_22

    .line 39
    :cond_11
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/c$1;->a:Lcom/gaia/ngallery/ui/widget/photoview/a/c;

    iget-object v1, v1, Lcom/gaia/ngallery/ui/widget/photoview/a/c;->a:Lcom/gaia/ngallery/ui/widget/photoview/a/e;

    .line 40
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 39
    invoke-interface {v1, v0, v2, p1}, Lcom/gaia/ngallery/ui/widget/photoview/a/e;->b(FFF)V

    const/4 p1, 0x1

    return p1

    :cond_22
    :goto_22
    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    return-void
.end method
