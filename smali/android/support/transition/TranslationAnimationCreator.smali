###### Class android.support.transition.TranslationAnimationCreator (android.support.transition.TranslationAnimationCreator)
.class Landroid/support/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroid/support/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 53
    iget-object v8, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    sget v9, Landroid/support/transition/R$id;->transition_position:I

    invoke-virtual {v8, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_27

    .line 55
    aget v11, v8, v10

    sub-int v11, v11, p2

    int-to-float v11, v11

    add-float/2addr v11, v6

    .line 56
    aget v8, v8, v9

    sub-int v8, v8, p3

    int-to-float v8, v8

    add-float/2addr v8, v7

    goto :goto_2b

    :cond_27
    move/from16 v11, p4

    move/from16 v8, p5

    :goto_2b
    sub-float v12, v11, v6

    .line 59
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int v2, p2, v12

    sub-float v12, v8, v7

    .line 60
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int v3, p3, v12

    .line 62
    invoke-virtual {v0, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 63
    invoke-virtual {v0, v8}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float v12, v11, p6

    if-nez v12, :cond_4b

    cmpl-float v12, v8, p7

    if-nez v12, :cond_4b

    const/4 v0, 0x0

    return-object v0

    :cond_4b
    const/4 v12, 0x2

    .line 67
    new-array v13, v12, [Landroid/animation/PropertyValuesHolder;

    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v15, v12, [F

    aput v11, v15, v10

    aput p6, v15, v9

    .line 68
    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v13, v10

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v11, v12, [F

    aput v8, v11, v10

    aput p7, v11, v9

    .line 69
    invoke-static {v4, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v13, v9

    .line 67
    invoke-static {v0, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 71
    new-instance v5, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v1, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 p1, v5

    move-object/from16 p2, p0

    move-object/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move/from16 p6, v6

    move/from16 p7, v7

    invoke-direct/range {p1 .. p7}, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    .line 73
    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    invoke-static {v4, v5}, Landroid/support/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    move-object/from16 v0, p8

    .line 75
    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v4
.end method

###### Class android.support.transition.TranslationAnimationCreator.TransitionPositionListener (android.support.transition.TranslationAnimationCreator$TransitionPositionListener)
.class Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TranslationAnimationCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionPositionListener"
.end annotation


# instance fields
.field private final mMovingView:Landroid/view/View;

.field private mPausedX:F

.field private mPausedY:F

.field private final mStartX:I

.field private final mStartY:I

.field private final mTerminalX:F

.field private final mTerminalY:F

.field private mTransitionPosition:[I

.field private final mViewInHierarchy:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .registers 7

    .line 92
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 94
    iput-object p2, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    .line 95
    iget-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p3, p1

    iput p3, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    .line 96
    iget-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p4, p1

    iput p4, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    .line 97
    iput p5, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    .line 98
    iput p6, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    .line 99
    iget-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget p2, Landroid/support/transition/R$id;->transition_position:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 100
    iget-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-eqz p1, :cond_3d

    .line 101
    iget-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget p2, Landroid/support/transition/R$id;->transition_position:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3d
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5

    .line 107
    iget-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-nez p1, :cond_9

    const/4 p1, 0x2

    .line 108
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 110
    :cond_9
    iget-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p1, v0

    .line 111
    iget-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p1, v0

    .line 112
    iget-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget v0, Landroid/support/transition/R$id;->transition_position:I

    iget-object v1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 117
    iget-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 118
    iget-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .registers 3

    .line 123
    iget-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    .line 124
    iget-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    .line 125
    iget-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 126
    iget-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .registers 3

    .line 131
    iget-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 132
    iget-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
