###### Class com.gaia.ngallery.ui.layout.FloatingRoundDockLayout (com.gaia.ngallery.ui.layout.FloatingRoundDockLayout)
.class public Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;
.super Landroid/widget/RelativeLayout;
.source "FloatingRoundDockLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/graphics/Path;

.field private c:Landroid/graphics/RectF;

.field private d:F

.field private e:F

.field private f:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->c:Landroid/graphics/RectF;

    .line 116
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout$a;-><init>(Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->f:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v3, v0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->c:Landroid/graphics/RectF;

    .line 116
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout$a;-><init>(Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->f:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->c:Landroid/graphics/RectF;

    .line 116
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout$a;-><init>(Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->f:Landroid/view/GestureDetector;

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(I)Landroid/graphics/Path;
    .registers 5

    .line 94
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->c:Landroid/graphics/RectF;

    int-to-float p1, p1

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p1, p1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 71
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gaia/ngallery/ui/layout/a;->a(Landroid/content/Context;)Landroid/graphics/PointF;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore to X:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " Y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " viewWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->setX(F)V

    .line 74
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->setY(F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->b:Landroid/graphics/Path;

    if-nez v0, :cond_10

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 86
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->a(I)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->b:Landroid/graphics/Path;

    .line 88
    :cond_10
    iget-object v0, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 89
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 103
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->c:Landroid/graphics/RectF;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 129
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b3

    .line 130
    iget-object v0, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->f:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 132
    sget-object v0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->a:Ljava/lang/String;

    const-string v2, "onTouch single tap"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->performClick()Z

    .line 136
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_b4

    goto/16 :goto_b1

    .line 175
    :pswitch_22
    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->setPressed(Z)V

    goto/16 :goto_b1

    .line 144
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->d:F

    add-float/2addr v0, v1

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->e:F

    add-float/2addr p1, v1

    .line 149
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 151
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_b1

    .line 156
    :pswitch_4b
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    int-to-float v0, v0

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->e:F

    add-float/2addr v2, v3

    .line 158
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/prism/commons/f/d;->a(Landroid/content/Context;)I

    move-result v3

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v4, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->d:F

    add-float/2addr p1, v4

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr p1, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float p1, p1, v4

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_7b

    add-float/2addr v0, v3

    .line 166
    :cond_7b
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 168
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0xc8

    .line 169
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 171
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v2}, Lcom/gaia/ngallery/ui/layout/a;->a(Landroid/content/Context;FF)V

    .line 172
    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->setPressed(Z)V

    goto :goto_b1

    .line 140
    :pswitch_9b
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->d:F

    .line 141
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;->e:F

    :goto_b1
    const/4 p1, 0x1

    return p1

    :cond_b3
    return v1

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_4b
        :pswitch_27
        :pswitch_22
    .end packed-switch
.end method

###### Class com.gaia.ngallery.ui.layout.FloatingRoundDockLayout.AnonymousClass1 (com.gaia.ngallery.ui.layout.FloatingRoundDockLayout$1)
.class synthetic Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout$1;
.super Ljava/lang/Object;
.source "FloatingRoundDockLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.gaia.ngallery.ui.layout.FloatingRoundDockLayout.a (com.gaia.ngallery.ui.layout.FloatingRoundDockLayout$a)
.class Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FloatingRoundDockLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout$1;)V
    .registers 2

    .line 118
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/layout/FloatingRoundDockLayout$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
