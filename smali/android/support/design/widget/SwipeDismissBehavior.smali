###### Class android.support.design.widget.SwipeDismissBehavior (android.support.design.widget.SwipeDismissBehavior)
.class public Landroid/support/design/widget/SwipeDismissBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;,
        Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA_END_DISTANCE:F = 0.5f

.field private static final DEFAULT_ALPHA_START_DISTANCE:F = 0.0f

.field private static final DEFAULT_DRAG_DISMISS_THRESHOLD:F = 0.5f

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field public static final SWIPE_DIRECTION_ANY:I = 0x2

.field public static final SWIPE_DIRECTION_END_TO_START:I = 0x1

.field public static final SWIPE_DIRECTION_START_TO_END:I


# instance fields
.field alphaEndSwipeDistance:F

.field alphaStartSwipeDistance:F

.field private final dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field dragDismissThreshold:F

.field private interceptingEvents:Z

.field listener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

.field private sensitivity:F

.field private sensitivitySet:Z

.field swipeDirection:I

.field viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->sensitivity:F

    const/4 v1, 0x2

    .line 87
    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->swipeDirection:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 88
    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->dragDismissThreshold:F

    .line 89
    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    .line 90
    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    .line 207
    new-instance v0, Landroid/support/design/widget/SwipeDismissBehavior$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/SwipeDismissBehavior$1;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    return-void
.end method

.method static clamp(FFF)F
    .registers 3

    .line 384
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static clamp(III)I
    .registers 3

    .line 388
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private ensureViewDragHelper(Landroid/view/ViewGroup;)V
    .registers 4

    .line 354
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v0, :cond_19

    .line 355
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->sensitivitySet:Z

    if-eqz v0, :cond_11

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->sensitivity:F

    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 357
    invoke-static {p1, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p1

    goto :goto_17

    :cond_11
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 358
    invoke-static {p1, v0}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p1

    :goto_17
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    :cond_19
    return-void
.end method

.method static fraction(FFF)F
    .registers 3

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .registers 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

.method public getDragState()I
    .registers 2

    .line 398
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 166
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->interceptingEvents:Z

    .line 168
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_21

    packed-switch v1, :pswitch_data_30

    goto :goto_23

    .line 171
    :pswitch_e
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->interceptingEvents:Z

    .line 172
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->interceptingEvents:Z

    goto :goto_23

    .line 177
    :cond_21
    :pswitch_21
    iput-boolean v3, p0, Landroid/support/design/widget/SwipeDismissBehavior;->interceptingEvents:Z

    :goto_23
    if-eqz v0, :cond_2f

    .line 182
    invoke-direct {p0, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->ensureViewDragHelper(Landroid/view/ViewGroup;)V

    .line 183
    iget-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1, p3}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2f
    return v3

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_e
        :pswitch_21
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 190
    iget-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz p1, :cond_b

    .line 191
    iget-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1, p3}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public setDragDismissDistance(F)V
    .registers 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 131
    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result p1

    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->dragDismissThreshold:F

    return-void
.end method

.method public setEndAlphaSwipeDistance(F)V
    .registers 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 149
    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result p1

    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    return-void
.end method

.method public setListener(Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;)V
    .registers 2

    .line 112
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->listener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    return-void
.end method

.method public setSensitivity(F)V
    .registers 2

    .line 160
    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->sensitivity:F

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->sensitivitySet:Z

    return-void
.end method

.method public setStartAlphaSwipeDistance(F)V
    .registers 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 140
    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result p1

    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    return-void
.end method

.method public setSwipeDirection(I)V
    .registers 2

    .line 122
    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->swipeDirection:I

    return-void
.end method

###### Class android.support.design.widget.SwipeDismissBehavior.AnonymousClass1 (android.support.design.widget.SwipeDismissBehavior$1)
.class Landroid/support/design/widget/SwipeDismissBehavior$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private activePointerId:I

.field private originalCapturedViewLeft:I

.field final synthetic this$0:Landroid/support/design/widget/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;)V
    .registers 2

    .line 208
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    const/4 p1, -0x1

    .line 212
    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->activePointerId:I

    return-void
.end method

.method private shouldDismiss(Landroid/view/View;F)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpl-float v3, p2, v0

    if-eqz v3, :cond_41

    .line 270
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v2, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    .line 272
    :goto_10
    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v3, v3, Landroid/support/design/widget/SwipeDismissBehavior;->swipeDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_18

    return v2

    .line 275
    :cond_18
    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v3, v3, Landroid/support/design/widget/SwipeDismissBehavior;->swipeDirection:I

    if-nez v3, :cond_2c

    if-eqz p1, :cond_26

    cmpg-float p1, p2, v0

    if-gez p1, :cond_2b

    :goto_24
    const/4 v1, 0x1

    goto :goto_2b

    :cond_26
    cmpl-float p1, p2, v0

    if-lez p1, :cond_2b

    goto :goto_24

    :cond_2b
    :goto_2b
    return v1

    .line 279
    :cond_2c
    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v3, v3, Landroid/support/design/widget/SwipeDismissBehavior;->swipeDirection:I

    if-ne v3, v2, :cond_40

    if-eqz p1, :cond_3a

    cmpl-float p1, p2, v0

    if-lez p1, :cond_3f

    :goto_38
    const/4 v1, 0x1

    goto :goto_3f

    :cond_3a
    cmpg-float p1, p2, v0

    if-gez p1, :cond_3f

    goto :goto_38

    :cond_3f
    :goto_3f
    return v1

    :cond_40
    return v1

    .line 285
    :cond_41
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    sub-int/2addr p2, v0

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->dragDismissThreshold:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 287
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lt p2, p1, :cond_5e

    const/4 v1, 0x1

    :cond_5e
    return v1
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 6

    .line 301
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_9

    const/4 p3, 0x1

    goto :goto_a

    :cond_9
    const/4 p3, 0x0

    .line 305
    :goto_a
    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v1, v1, Landroid/support/design/widget/SwipeDismissBehavior;->swipeDirection:I

    if-nez v1, :cond_26

    if-eqz p3, :cond_1c

    .line 307
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    .line 308
    iget p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    goto :goto_50

    .line 310
    :cond_1c
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 311
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    goto :goto_50

    .line 313
    :cond_26
    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v1, v1, Landroid/support/design/widget/SwipeDismissBehavior;->swipeDirection:I

    if-ne v1, v0, :cond_42

    if-eqz p3, :cond_38

    .line 315
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 316
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    goto :goto_50

    .line 318
    :cond_38
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    .line 319
    iget p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    goto :goto_50

    .line 322
    :cond_42
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p3, v0

    .line 323
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    .line 326
    :goto_50
    invoke-static {p3, p2, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(III)I

    move-result p1

    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 4

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 2

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 3

    .line 222
    iput p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->activePointerId:I

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_12

    const/4 p2, 0x1

    .line 229
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_12
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 3

    .line 235
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->listener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    if-eqz v0, :cond_d

    .line 236
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->listener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;->onDragStateChanged(I)V

    :cond_d
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 8

    .line 336
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    int-to-float p3, p3

    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget-object p5, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget p5, p5, Landroid/support/design/widget/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    mul-float p4, p4, p5

    add-float/2addr p3, p4

    .line 338
    iget p4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    int-to-float p4, p4

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    mul-float p5, p5, v0

    add-float/2addr p4, p5

    int-to-float p2, p2

    const/high16 p5, 0x3f800000    # 1.0f

    cmpg-float v0, p2, p3

    if-gtz v0, :cond_29

    .line 342
    invoke-virtual {p1, p5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3f

    :cond_29
    const/4 v0, 0x0

    cmpl-float v1, p2, p4

    if-ltz v1, :cond_32

    .line 344
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3f

    .line 347
    :cond_32
    invoke-static {p3, p4, p2}, Landroid/support/design/widget/SwipeDismissBehavior;->fraction(FFF)F

    move-result p2

    sub-float p2, p5, p2

    .line 348
    invoke-static {v0, p2, p5}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_3f
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 6

    const/4 p3, -0x1

    .line 243
    iput p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->activePointerId:I

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    .line 249
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/SwipeDismissBehavior$1;->shouldDismiss(Landroid/view/View;F)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    if-ge p2, v0, :cond_19

    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    sub-int/2addr p2, p3

    goto :goto_1c

    :cond_19
    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    add-int/2addr p2, p3

    :goto_1c
    const/4 p3, 0x1

    goto :goto_21

    .line 257
    :cond_1e
    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    const/4 p3, 0x0

    .line 260
    :goto_21
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 261
    new-instance p2, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p2, v0, p1, p3}, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_49

    :cond_3a
    if-eqz p3, :cond_49

    .line 262
    iget-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object p2, p2, Landroid/support/design/widget/SwipeDismissBehavior;->listener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    if-eqz p2, :cond_49

    .line 263
    iget-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object p2, p2, Landroid/support/design/widget/SwipeDismissBehavior;->listener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    invoke-interface {p2, p1}, Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    :cond_49
    :goto_49
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 4

    .line 217
    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->activePointerId:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    iget-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-virtual {p2, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

###### Class android.support.design.widget.SwipeDismissBehavior.OnDismissListener (android.support.design.widget.SwipeDismissBehavior$OnDismissListener)
.class public interface abstract Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;
.super Ljava/lang/Object;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDismissListener"
.end annotation


# virtual methods
.method public abstract onDismiss(Landroid/view/View;)V
.end method

.method public abstract onDragStateChanged(I)V
.end method

###### Class android.support.design.widget.SwipeDismissBehavior.SettleRunnable (android.support.design.widget.SwipeDismissBehavior$SettleRunnable)
.class Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "SwipeDismissBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final dismiss:Z

.field final synthetic this$0:Landroid/support/design/widget/SwipeDismissBehavior;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V
    .registers 4

    .line 366
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->view:Landroid/view/View;

    .line 368
    iput-boolean p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->dismiss:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 373
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 374
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->view:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2a

    .line 376
    :cond_17
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->dismiss:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->listener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    if-eqz v0, :cond_2a

    .line 377
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->listener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    :cond_2a
    :goto_2a
    return-void
.end method
