###### Class android.support.design.transformation.ExpandableBehavior (android.support.design.transformation.ExpandableBehavior)
.class public abstract Landroid/support/design/transformation/ExpandableBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "ExpandableBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_COLLAPSED:I = 0x2

.field private static final STATE_EXPANDED:I = 0x1

.field private static final STATE_UNINITIALIZED:I


# instance fields
.field private currentState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    return-void
.end method

.method static synthetic access$000(Landroid/support/design/transformation/ExpandableBehavior;)I
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    return p0
.end method

.method private didStateChange(Z)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_f

    .line 141
    iget p1, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    if-eqz p1, :cond_d

    iget p1, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_e

    :cond_d
    const/4 v0, 0x1

    :cond_e
    return v0

    .line 144
    :cond_f
    iget p1, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    if-ne p1, v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public static from(Landroid/view/View;Ljava/lang/Class;)Landroid/support/design/transformation/ExpandableBehavior;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/design/transformation/ExpandableBehavior;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 157
    instance-of v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_21

    .line 160
    check-cast p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 161
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object p0

    .line 162
    instance-of v0, p0, Landroid/support/design/transformation/ExpandableBehavior;

    if-eqz v0, :cond_19

    .line 165
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/design/transformation/ExpandableBehavior;

    return-object p0

    .line 163
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The view is not associated with ExpandableBehavior"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The view is not a child of CoordinatorLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected findExpandableWidget(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/support/design/expandable/ExpandableWidget;
    .registers 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 128
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1d

    .line 130
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 131
    invoke-virtual {p0, p1, p2, v3}, Landroid/support/design/transformation/ExpandableBehavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 132
    check-cast v3, Landroid/support/design/expandable/ExpandableWidget;

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 116
    check-cast p3, Landroid/support/design/expandable/ExpandableWidget;

    .line 117
    invoke-interface {p3}, Landroid/support/design/expandable/ExpandableWidget;->isExpanded()Z

    move-result p1

    .line 118
    invoke-direct {p0, p1}, Landroid/support/design/transformation/ExpandableBehavior;->didStateChange(Z)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 119
    invoke-interface {p3}, Landroid/support/design/expandable/ExpandableWidget;->isExpanded()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x2

    :goto_16
    iput p1, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    .line 120
    move-object p1, p3

    check-cast p1, Landroid/view/View;

    invoke-interface {p3}, Landroid/support/design/expandable/ExpandableWidget;->isExpanded()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/transformation/ExpandableBehavior;->onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z

    move-result p1

    return p1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 6
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 88
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_2f

    .line 89
    invoke-virtual {p0, p1, p2}, Landroid/support/design/transformation/ExpandableBehavior;->findExpandableWidget(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/support/design/expandable/ExpandableWidget;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 90
    invoke-interface {p1}, Landroid/support/design/expandable/ExpandableWidget;->isExpanded()Z

    move-result p3

    invoke-direct {p0, p3}, Landroid/support/design/transformation/ExpandableBehavior;->didStateChange(Z)Z

    move-result p3

    if-eqz p3, :cond_2f

    .line 91
    invoke-interface {p1}, Landroid/support/design/expandable/ExpandableWidget;->isExpanded()Z

    move-result p3

    if-eqz p3, :cond_1e

    const/4 p3, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p3, 0x2

    :goto_1f
    iput p3, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    .line 92
    iget p3, p0, Landroid/support/design/transformation/ExpandableBehavior;->currentState:I

    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/support/design/transformation/ExpandableBehavior$1;

    invoke-direct {v1, p0, p2, p3, p1}, Landroid/support/design/transformation/ExpandableBehavior$1;-><init>(Landroid/support/design/transformation/ExpandableBehavior;Landroid/view/View;ILandroid/support/design/expandable/ExpandableWidget;)V

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2f
    const/4 p1, 0x0

    return p1
.end method

###### Class android.support.design.transformation.ExpandableBehavior.AnonymousClass1 (android.support.design.transformation.ExpandableBehavior$1)
.class Landroid/support/design/transformation/ExpandableBehavior$1;
.super Ljava/lang/Object;
.source "ExpandableBehavior.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/transformation/ExpandableBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/transformation/ExpandableBehavior;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$dep:Landroid/support/design/expandable/ExpandableWidget;

.field final synthetic val$expectedState:I


# direct methods
.method constructor <init>(Landroid/support/design/transformation/ExpandableBehavior;Landroid/view/View;ILandroid/support/design/expandable/ExpandableWidget;)V
    .registers 5

    .line 96
    iput-object p1, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->this$0:Landroid/support/design/transformation/ExpandableBehavior;

    iput-object p2, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->val$child:Landroid/view/View;

    iput p3, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->val$expectedState:I

    iput-object p4, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->val$dep:Landroid/support/design/expandable/ExpandableWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 6

    .line 99
    iget-object v0, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 101
    iget-object v0, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->this$0:Landroid/support/design/transformation/ExpandableBehavior;

    invoke-static {v0}, Landroid/support/design/transformation/ExpandableBehavior;->access$000(Landroid/support/design/transformation/ExpandableBehavior;)I

    move-result v0

    iget v1, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->val$expectedState:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_25

    .line 102
    iget-object v0, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->this$0:Landroid/support/design/transformation/ExpandableBehavior;

    iget-object v1, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->val$dep:Landroid/support/design/expandable/ExpandableWidget;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->val$child:Landroid/view/View;

    iget-object v4, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->val$dep:Landroid/support/design/expandable/ExpandableWidget;

    invoke-interface {v4}, Landroid/support/design/expandable/ExpandableWidget;->isExpanded()Z

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/support/design/transformation/ExpandableBehavior;->onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z

    :cond_25
    return v2
.end method
