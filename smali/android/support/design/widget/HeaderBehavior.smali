###### Class android.support.design.widget.HeaderBehavior (android.support.design.widget.HeaderBehavior)
.class abstract Landroid/support/design/widget/HeaderBehavior;
.super Landroid/support/design/widget/ViewOffsetBehavior;
.source "HeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/HeaderBehavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/ViewOffsetBehavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private activePointerId:I

.field private flingRunnable:Ljava/lang/Runnable;

.field private isBeingDragged:Z

.field private lastMotionY:I

.field scroller:Landroid/widget/OverScroller;

.field private touchSlop:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->activePointerId:I

    .line 45
    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->touchSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Landroid/support/design/widget/HeaderBehavior;->activePointerId:I

    .line 45
    iput p1, p0, Landroid/support/design/widget/HeaderBehavior;->touchSlop:I

    return-void
.end method

.method private ensureVelocityTracker()V
    .registers 2

    .line 295
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 296
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method


# virtual methods
.method canDragView(Landroid/view/View;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method final fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    .line 243
    iget-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_e

    .line 244
    iget-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    .line 245
    iput-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    .line 248
    :cond_e
    iget-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    if-nez v2, :cond_1d

    .line 249
    new-instance v2, Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    .line 252
    :cond_1d
    iget-object v4, v0, Landroid/support/design/widget/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    const/4 v5, 0x0

    .line 254
    invoke-virtual {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v6

    const/4 v7, 0x0

    .line 256
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v11, p3

    move/from16 v12, p4

    .line 252
    invoke-virtual/range {v4 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 262
    iget-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 263
    new-instance v2, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;

    move-object v3, p1

    invoke-direct {v2, p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;-><init>(Landroid/support/design/widget/HeaderBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    .line 264
    iget-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    return v1

    :cond_49
    move-object v3, p1

    .line 267
    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    const/4 v1, 0x0

    return v1
.end method

.method getMaxDragOffset(Landroid/view/View;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method getScrollRangeForDragFling(Landroid/view/View;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .registers 2

    .line 224
    invoke-virtual {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    return-void
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

    .line 56
    iget v0, p0, Landroid/support/design/widget/HeaderBehavior;->touchSlop:I

    if-gez v0, :cond_12

    .line 57
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->touchSlop:I

    .line 60
    :cond_12
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1f

    .line 63
    iget-boolean v0, p0, Landroid/support/design/widget/HeaderBehavior;->isBeingDragged:Z

    if-eqz v0, :cond_1f

    return v2

    .line 67
    :cond_1f
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, -0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_8c

    goto :goto_7f

    .line 83
    :pswitch_29
    iget p1, p0, Landroid/support/design/widget/HeaderBehavior;->activePointerId:I

    if-ne p1, v1, :cond_2e

    goto :goto_7f

    .line 88
    :cond_2e
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-ne p1, v1, :cond_35

    goto :goto_7f

    .line 93
    :cond_35
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 94
    iget p2, p0, Landroid/support/design/widget/HeaderBehavior;->lastMotionY:I

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 95
    iget v0, p0, Landroid/support/design/widget/HeaderBehavior;->touchSlop:I

    if-le p2, v0, :cond_7f

    .line 96
    iput-boolean v2, p0, Landroid/support/design/widget/HeaderBehavior;->isBeingDragged:Z

    .line 97
    iput p1, p0, Landroid/support/design/widget/HeaderBehavior;->lastMotionY:I

    goto :goto_7f

    .line 105
    :pswitch_4b
    iput-boolean v3, p0, Landroid/support/design/widget/HeaderBehavior;->isBeingDragged:Z

    .line 106
    iput v1, p0, Landroid/support/design/widget/HeaderBehavior;->activePointerId:I

    .line 107
    iget-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7f

    .line 108
    iget-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_7f

    .line 70
    :pswitch_5c
    iput-boolean v3, p0, Landroid/support/design/widget/HeaderBehavior;->isBeingDragged:Z

    .line 71
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 72
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 73
    invoke-virtual {p0, p2}, Landroid/support/design/widget/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 74
    iput v1, p0, Landroid/support/design/widget/HeaderBehavior;->lastMotionY:I

    .line 75
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/HeaderBehavior;->activePointerId:I

    .line 76
    invoke-direct {p0}, Landroid/support/design/widget/HeaderBehavior;->ensureVelocityTracker()V

    .line 115
    :cond_7f
    :goto_7f
    iget-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_88

    .line 116
    iget-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 119
    :cond_88
    iget-boolean p1, p0, Landroid/support/design/widget/HeaderBehavior;->isBeingDragged:Z

    return p1

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_4b
        :pswitch_29
        :pswitch_4b
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 124
    iget v0, p0, Landroid/support/design/widget/HeaderBehavior;->touchSlop:I

    if-gez v0, :cond_12

    .line 125
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->touchSlop:I

    .line 128
    :cond_12
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_bc

    goto/16 :goto_b1

    .line 146
    :pswitch_1e
    iget v0, p0, Landroid/support/design/widget/HeaderBehavior;->activePointerId:I

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v2, :cond_27

    return v3

    .line 151
    :cond_27
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 152
    iget v2, p0, Landroid/support/design/widget/HeaderBehavior;->lastMotionY:I

    sub-int/2addr v2, v0

    .line 154
    iget-boolean v3, p0, Landroid/support/design/widget/HeaderBehavior;->isBeingDragged:Z

    if-nez v3, :cond_46

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/design/widget/HeaderBehavior;->touchSlop:I

    if-le v3, v4, :cond_46

    .line 155
    iput-boolean v1, p0, Landroid/support/design/widget/HeaderBehavior;->isBeingDragged:Z

    if-lez v2, :cond_43

    .line 157
    iget v3, p0, Landroid/support/design/widget/HeaderBehavior;->touchSlop:I

    sub-int/2addr v2, v3

    goto :goto_46

    .line 159
    :cond_43
    iget v3, p0, Landroid/support/design/widget/HeaderBehavior;->touchSlop:I

    add-int/2addr v2, v3

    :cond_46
    :goto_46
    move v6, v2

    .line 163
    iget-boolean v2, p0, Landroid/support/design/widget/HeaderBehavior;->isBeingDragged:Z

    if-eqz v2, :cond_b1

    .line 164
    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->lastMotionY:I

    .line 166
    invoke-virtual {p0, p2}, Landroid/support/design/widget/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Landroid/support/design/widget/HeaderBehavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto :goto_b1

    .line 172
    :pswitch_59
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7d

    .line 173
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 174
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 175
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/design/widget/HeaderBehavior;->activePointerId:I

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v10

    .line 176
    invoke-virtual {p0, p2}, Landroid/support/design/widget/HeaderBehavior;->getScrollRangeForDragFling(Landroid/view/View;)I

    move-result v0

    neg-int v8, v0

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v10}, Landroid/support/design/widget/HeaderBehavior;->fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    .line 181
    :cond_7d
    :pswitch_7d
    iput-boolean v3, p0, Landroid/support/design/widget/HeaderBehavior;->isBeingDragged:Z

    .line 182
    iput v2, p0, Landroid/support/design/widget/HeaderBehavior;->activePointerId:I

    .line 183
    iget-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_b1

    .line 184
    iget-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 185
    iput-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_b1

    .line 131
    :pswitch_8e
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 132
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 134
    invoke-virtual {p1, p2, v0, v2}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_b0

    invoke-virtual {p0, p2}, Landroid/support/design/widget/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 135
    iput v2, p0, Landroid/support/design/widget/HeaderBehavior;->lastMotionY:I

    .line 136
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/HeaderBehavior;->activePointerId:I

    .line 137
    invoke-direct {p0}, Landroid/support/design/widget/HeaderBehavior;->ensureVelocityTracker()V

    goto :goto_b1

    :cond_b0
    return v3

    .line 191
    :cond_b1
    :goto_b1
    iget-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_ba

    .line 192
    iget-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_ba
    return v1

    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_59
        :pswitch_1e
        :pswitch_7d
    .end packed-switch
.end method

.method final scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int v4, v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    .line 229
    invoke-virtual/range {v1 .. v6}, Landroid/support/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    return p1
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 199
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    return p1
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result p1

    if-eqz p4, :cond_15

    if-lt p1, p4, :cond_15

    if-gt p1, p5, :cond_15

    .line 211
    invoke-static {p3, p4, p5}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result p2

    if-eq p1, p2, :cond_15

    .line 214
    invoke-virtual {p0, p2}, Landroid/support/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    sub-int/2addr p1, p2

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

###### Class android.support.design.widget.HeaderBehavior.FlingRunnable (android.support.design.widget.HeaderBehavior$FlingRunnable)
.class Landroid/support/design/widget/HeaderBehavior$FlingRunnable;
.super Ljava/lang/Object;
.source "HeaderBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/HeaderBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private final layout:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final parent:Landroid/support/design/widget/CoordinatorLayout;

.field final synthetic this$0:Landroid/support/design/widget/HeaderBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/HeaderBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .line 304
    iput-object p1, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p2, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->parent:Landroid/support/design/widget/CoordinatorLayout;

    .line 306
    iput-object p3, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 311
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    iget-object v0, v0, Landroid/support/design/widget/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_34

    .line 312
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    iget-object v0, v0, Landroid/support/design/widget/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 313
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    iget-object v1, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->parent:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    iget-object v3, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    iget-object v3, v3, Landroid/support/design/widget/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 315
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_34

    .line 317
    :cond_2b
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    iget-object v1, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->parent:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/HeaderBehavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    :cond_34
    :goto_34
    return-void
.end method
