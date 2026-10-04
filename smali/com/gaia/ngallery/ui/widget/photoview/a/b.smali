###### Class com.gaia.ngallery.ui.widget.photoview.a.b (com.gaia.ngallery.ui.widget.photoview.a.b)
.class public Lcom/gaia/ngallery/ui/widget/photoview/a/b;
.super Lcom/gaia/ngallery/ui/widget/photoview/a/a;
.source "EclairGestureDetector.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# static fields
.field private static final d:I = -0x1


# instance fields
.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/a/a;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/b;->e:I

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/b;->f:I

    return-void
.end method


# virtual methods
.method a(Landroid/view/MotionEvent;)F
    .registers 3

    .line 39
    :try_start_0
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/b;->f:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 41
    :catch_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method b(Landroid/view/MotionEvent;)F
    .registers 3

    .line 48
    :try_start_0
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/b;->f:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 50
    :catch_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_42

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1a

    packed-switch v0, :pswitch_data_56

    goto :goto_44

    .line 59
    :pswitch_13
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/b;->e:I

    goto :goto_44

    .line 69
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Lcom/gaia/ngallery/ui/widget/photoview/a;->a(I)I

    move-result v0

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 71
    iget v5, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/b;->e:I

    if-ne v1, v5, :cond_44

    if-nez v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 75
    :goto_2f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/b;->e:I

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/b;->b:F

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/b;->c:F

    goto :goto_44

    .line 63
    :cond_42
    :pswitch_42
    iput v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/b;->e:I

    .line 82
    :cond_44
    :goto_44
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/b;->e:I

    if-eq v0, v3, :cond_4a

    iget v4, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/b;->e:I

    .line 83
    :cond_4a
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/b;->f:I

    .line 86
    :try_start_50
    invoke-super {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->c(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_54} :catch_55

    return p1

    :catch_55
    return v2

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_13
        :pswitch_42
    .end packed-switch
.end method
