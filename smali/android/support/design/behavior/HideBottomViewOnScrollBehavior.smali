###### Class android.support.design.behavior.HideBottomViewOnScrollBehavior (android.support.design.behavior.HideBottomViewOnScrollBehavior)
.class public Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "HideBottomViewOnScrollBehavior.java"


# annotations
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
.field protected static final ENTER_ANIMATION_DURATION:I = 0xe1

.field protected static final EXIT_ANIMATION_DURATION:I = 0xaf

.field private static final STATE_SCROLLED_DOWN:I = 0x1

.field private static final STATE_SCROLLED_UP:I = 0x2


# instance fields
.field private currentAnimator:Landroid/view/ViewPropertyAnimator;

.field private currentState:I

.field private height:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->height:I

    const/4 v0, 0x2

    .line 44
    iput v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->height:I

    const/4 p1, 0x2

    .line 44
    iput p1, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    return-void
.end method

.method static synthetic access$002(Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .registers 2

    .line 35
    iput-object p1, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method private animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IJ",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float p2, p2

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 117
    invoke-virtual {p1, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 118
    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior$1;

    invoke-direct {p2, p0}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior$1;-><init>(Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;)V

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->height:I

    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIII)V"
        }
    .end annotation

    .line 85
    iget p1, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_b

    if-lez p5, :cond_b

    .line 86
    invoke-virtual {p0, p2}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->slideDown(Landroid/view/View;)V

    goto :goto_15

    .line 87
    :cond_b
    iget p1, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_15

    if-gez p5, :cond_15

    .line 88
    invoke-virtual {p0, p2}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->slideUp(Landroid/view/View;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    const/4 p1, 0x2

    if-ne p5, p1, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    return p1
.end method

.method protected slideDown(Landroid/view/View;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_c

    .line 104
    iget-object v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_c
    const/4 v0, 0x1

    .line 107
    iput v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 108
    iget v3, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->height:I

    const-wide/16 v4, 0xaf

    sget-object v6, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected slideUp(Landroid/view/View;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_c

    .line 94
    iget-object v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_c
    const/4 v0, 0x2

    .line 97
    iput v0, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 v3, 0x0

    const-wide/16 v4, 0xe1

    .line 98
    sget-object v6, Landroid/support/design/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    return-void
.end method

###### Class android.support.design.behavior.HideBottomViewOnScrollBehavior.AnonymousClass1 (android.support.design.behavior.HideBottomViewOnScrollBehavior$1)
.class Landroid/support/design/behavior/HideBottomViewOnScrollBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HideBottomViewOnScrollBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;)V
    .registers 2

    .line 120
    iput-object p1, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior$1;->this$0:Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 123
    iget-object p1, p0, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior$1;->this$0:Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->access$002(Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
