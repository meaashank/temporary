###### Class com.gaia.ngallery.ui.widget.photoview.a.a (com.gaia.ngallery.ui.widget.photoview.a.a)
.class public Lcom/gaia/ngallery/ui/widget/photoview/a/a;
.super Ljava/lang/Object;
.source "CupcakeGestureDetector.java"

# interfaces
.implements Lcom/gaia/ngallery/ui/widget/photoview/a/d;


# instance fields
.field protected a:Lcom/gaia/ngallery/ui/widget/photoview/a/e;

.field b:F

.field c:F

.field private final d:F

.field private final e:F

.field private f:Landroid/view/VelocityTracker;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->e:F

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->d:F

    return-void
.end method


# virtual methods
.method a(Landroid/view/MotionEvent;)F
    .registers 2

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method public a(Lcom/gaia/ngallery/ui/widget/photoview/a/e;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->a:Lcom/gaia/ngallery/ui/widget/photoview/a/e;

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method b(Landroid/view/MotionEvent;)F
    .registers 2

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method public b()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->g:Z

    return v0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .registers 13

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_cc

    goto/16 :goto_ca

    .line 103
    :pswitch_c
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->f:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_ca

    .line 104
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->f:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 105
    iput-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->f:Landroid/view/VelocityTracker;

    goto/16 :goto_ca

    .line 79
    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->a(Landroid/view/MotionEvent;)F

    move-result v0

    .line 80
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->b(Landroid/view/MotionEvent;)F

    move-result v1

    .line 81
    iget v4, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->b:F

    sub-float v4, v0, v4

    iget v5, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->c:F

    sub-float v5, v1, v5

    .line 83
    iget-boolean v6, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->g:Z

    if-nez v6, :cond_41

    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    .line 86
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget v8, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->d:F

    float-to-double v8, v8

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_3f

    const/4 v2, 0x1

    :cond_3f
    iput-boolean v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->g:Z

    .line 89
    :cond_41
    iget-boolean v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->g:Z

    if-eqz v2, :cond_ca

    .line 90
    iget-object v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->a:Lcom/gaia/ngallery/ui/widget/photoview/a/e;

    invoke-interface {v2, v4, v5}, Lcom/gaia/ngallery/ui/widget/photoview/a/e;->a(FF)V

    .line 91
    iput v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->b:F

    .line 92
    iput v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->c:F

    .line 94
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_ca

    .line 95
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_ca

    .line 111
    :pswitch_58
    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->g:Z

    if-eqz v0, :cond_a1

    .line 112
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a1

    .line 113
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->a(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->b:F

    .line 114
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->b(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->c:F

    .line 117
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 118
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->f:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 120
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->f:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->f:Landroid/view/VelocityTracker;

    .line 121
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 125
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v4, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->e:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_a1

    .line 126
    iget-object v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->a:Lcom/gaia/ngallery/ui/widget/photoview/a/e;

    iget v4, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->b:F

    iget v5, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->c:F

    neg-float p1, p1

    neg-float v0, v0

    invoke-interface {v2, v4, v5, p1, v0}, Lcom/gaia/ngallery/ui/widget/photoview/a/e;->a(FFFF)V

    .line 133
    :cond_a1
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->f:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_ca

    .line 134
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->f:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 135
    iput-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->f:Landroid/view/VelocityTracker;

    goto :goto_ca

    .line 67
    :pswitch_ad
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->f:Landroid/view/VelocityTracker;

    .line 68
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_bc

    .line 69
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 72
    :cond_bc
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->a(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->b:F

    .line 73
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->b(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->c:F

    .line 74
    iput-boolean v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/a/a;->g:Z

    :cond_ca
    :goto_ca
    return v3

    nop

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_ad
        :pswitch_58
        :pswitch_19
        :pswitch_c
    .end packed-switch
.end method
