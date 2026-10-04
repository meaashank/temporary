###### Class com.gaia.ngallery.ui.widget.photoview.c (com.gaia.ngallery.ui.widget.photoview.c)
.class public Lcom/gaia/ngallery/ui/widget/photoview/c;
.super Ljava/lang/Object;
.source "DefaultOnDoubleTapListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/gaia/ngallery/ui/widget/photoview/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/gaia/ngallery/ui/widget/photoview/c;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/widget/photoview/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/gaia/ngallery/ui/widget/photoview/e;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/c;->a(Lcom/gaia/ngallery/ui/widget/photoview/e;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/gaia/ngallery/ui/widget/photoview/e;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    const/4 v0, 0x1

    .line 98
    :try_start_7
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->f()F

    move-result v1

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 102
    iget-object v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v3}, Lcom/gaia/ngallery/ui/widget/photoview/e;->d()F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2b

    .line 103
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    iget-object v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v3}, Lcom/gaia/ngallery/ui/widget/photoview/e;->d()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->a(FFFZ)V

    goto :goto_56

    .line 104
    :cond_2b
    iget-object v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v3}, Lcom/gaia/ngallery/ui/widget/photoview/e;->d()F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_4b

    iget-object v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v3}, Lcom/gaia/ngallery/ui/widget/photoview/e;->e()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4b

    .line 105
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    iget-object v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v3}, Lcom/gaia/ngallery/ui/widget/photoview/e;->e()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->a(FFFZ)V

    goto :goto_56

    .line 107
    :cond_4b
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    iget-object v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v3}, Lcom/gaia/ngallery/ui/widget/photoview/e;->c()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->a(FFFZ)V
    :try_end_56
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_56} :catch_56

    :catch_56
    :goto_56
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 57
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 61
    :cond_6
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->k()Landroid/widget/ImageView;

    move-result-object v0

    .line 63
    iget-object v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v2}, Lcom/gaia/ngallery/ui/widget/photoview/e;->l()Lcom/gaia/ngallery/ui/widget/photoview/e$d;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 64
    iget-object v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v2}, Lcom/gaia/ngallery/ui/widget/photoview/e;->b()Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 70
    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 72
    iget p1, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, p1

    .line 73
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v3, p1

    .line 74
    iget p1, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, p1

    .line 75
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v4, p1

    .line 77
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->l()Lcom/gaia/ngallery/ui/widget/photoview/e$d;

    move-result-object p1

    invoke-interface {p1, v0, v3, v4}, Lcom/gaia/ngallery/ui/widget/photoview/e$d;->a(Landroid/view/View;FF)V

    const/4 p1, 0x1

    return p1

    .line 80
    :cond_45
    iget-object v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v2}, Lcom/gaia/ngallery/ui/widget/photoview/e;->l()Lcom/gaia/ngallery/ui/widget/photoview/e$d;

    move-result-object v2

    invoke-interface {v2}, Lcom/gaia/ngallery/ui/widget/photoview/e$d;->a()V

    .line 84
    :cond_4e
    iget-object v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v2}, Lcom/gaia/ngallery/ui/widget/photoview/e;->m()Lcom/gaia/ngallery/ui/widget/photoview/e$g;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 86
    iget-object v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/c;->b:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v2}, Lcom/gaia/ngallery/ui/widget/photoview/e;->m()Lcom/gaia/ngallery/ui/widget/photoview/e$g;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v2, v0, v3, p1}, Lcom/gaia/ngallery/ui/widget/photoview/e$g;->a(Landroid/view/View;FF)V

    :cond_67
    return v1
.end method
