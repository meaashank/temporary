###### Class android.support.design.transformation.FabTransformationScrimBehavior (android.support.design.transformation.FabTransformationScrimBehavior)
.class public Landroid/support/design/transformation/FabTransformationScrimBehavior;
.super Landroid/support/design/transformation/ExpandableTransformationBehavior;
.source "FabTransformationScrimBehavior.java"


# static fields
.field public static final COLLAPSE_DELAY:J = 0x0L

.field public static final COLLAPSE_DURATION:J = 0x96L

.field public static final EXPAND_DELAY:J = 0x4bL

.field public static final EXPAND_DURATION:J = 0x96L


# instance fields
.field private final collapseTiming:Landroid/support/design/animation/MotionTiming;

.field private final expandTiming:Landroid/support/design/animation/MotionTiming;


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 51
    invoke-direct {p0}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 48
    new-instance v0, Landroid/support/design/animation/MotionTiming;

    const-wide/16 v1, 0x96

    const-wide/16 v3, 0x4b

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/support/design/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->expandTiming:Landroid/support/design/animation/MotionTiming;

    .line 49
    new-instance v0, Landroid/support/design/animation/MotionTiming;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/support/design/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->collapseTiming:Landroid/support/design/animation/MotionTiming;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance p1, Landroid/support/design/animation/MotionTiming;

    const-wide/16 v0, 0x96

    const-wide/16 v2, 0x4b

    invoke-direct {p1, v2, v3, v0, v1}, Landroid/support/design/animation/MotionTiming;-><init>(JJ)V

    iput-object p1, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->expandTiming:Landroid/support/design/animation/MotionTiming;

    .line 49
    new-instance p1, Landroid/support/design/animation/MotionTiming;

    const-wide/16 v2, 0x0

    invoke-direct {p1, v2, v3, v0, v1}, Landroid/support/design/animation/MotionTiming;-><init>(JJ)V

    iput-object p1, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->collapseTiming:Landroid/support/design/animation/MotionTiming;

    return-void
.end method

.method private createScrimAnimation(Landroid/view/View;ZZLjava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ZZ",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 104
    iget-object p5, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->expandTiming:Landroid/support/design/animation/MotionTiming;

    goto :goto_7

    :cond_5
    iget-object p5, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->collapseTiming:Landroid/support/design/animation/MotionTiming;

    :goto_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1e

    if-nez p3, :cond_11

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 111
    :cond_11
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p3, v2, [F

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_28

    .line 113
    :cond_1e
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p3, v2, [F

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 116
    :goto_28
    invoke-virtual {p5, p1}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 117
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    .line 59
    instance-of p1, p3, Landroid/support/design/widget/FloatingActionButton;

    return p1
.end method

.method protected onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .registers 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p1

    .line 75
    invoke-direct/range {v0 .. v5}, Landroid/support/design/transformation/FabTransformationScrimBehavior;->createScrimAnimation(Landroid/view/View;ZZLjava/util/List;Ljava/util/List;)V

    .line 77
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 78
    invoke-static {p4, p1}, Landroid/support/design/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 79
    new-instance p1, Landroid/support/design/transformation/FabTransformationScrimBehavior$1;

    invoke-direct {p1, p0, p3, p2}, Landroid/support/design/transformation/FabTransformationScrimBehavior$1;-><init>(Landroid/support/design/transformation/FabTransformationScrimBehavior;ZLandroid/view/View;)V

    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p4
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/transformation/ExpandableTransformationBehavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

###### Class android.support.design.transformation.FabTransformationScrimBehavior.AnonymousClass1 (android.support.design.transformation.FabTransformationScrimBehavior$1)
.class Landroid/support/design/transformation/FabTransformationScrimBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FabTransformationScrimBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/transformation/FabTransformationScrimBehavior;->onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/transformation/FabTransformationScrimBehavior;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$expanded:Z


# direct methods
.method constructor <init>(Landroid/support/design/transformation/FabTransformationScrimBehavior;ZLandroid/view/View;)V
    .registers 4

    .line 80
    iput-object p1, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior$1;->this$0:Landroid/support/design/transformation/FabTransformationScrimBehavior;

    iput-boolean p2, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior$1;->val$expanded:Z

    iput-object p3, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior$1;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 90
    iget-boolean p1, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior$1;->val$expanded:Z

    if-nez p1, :cond_a

    .line 91
    iget-object p1, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior$1;->val$child:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 83
    iget-boolean p1, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior$1;->val$expanded:Z

    if-eqz p1, :cond_a

    .line 84
    iget-object p1, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior$1;->val$child:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method
