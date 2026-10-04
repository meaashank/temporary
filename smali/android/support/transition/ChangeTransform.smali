###### Class android.support.transition.ChangeTransform (android.support.transition.ChangeTransform)
.class public Landroid/support/transition/ChangeTransform;
.super Landroid/support/transition/Transition;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;,
        Landroid/support/transition/ChangeTransform$GhostListener;,
        Landroid/support/transition/ChangeTransform$Transforms;
    }
.end annotation


# static fields
.field private static final NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateMatrix"

.field private static final PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateParentMatrix"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeTransform:matrix"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeTransform:parent"

.field private static final PROPNAME_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:parentMatrix"

.field private static final PROPNAME_TRANSFORMS:Ljava/lang/String; = "android:changeTransform:transforms"

.field private static final SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

.field private static final TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field mUseOverlay:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x3

    .line 59
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android:changeTransform:matrix"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android:changeTransform:transforms"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "android:changeTransform:parentMatrix"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sput-object v0, Landroid/support/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/support/transition/ChangeTransform$1;

    const-class v1, [F

    const-string v4, "nonTranslations"

    invoke-direct {v0, v1, v4}, Landroid/support/transition/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 84
    new-instance v0, Landroid/support/transition/ChangeTransform$2;

    const-class v1, Landroid/graphics/PointF;

    const-string v4, "translations"

    invoke-direct {v0, v1, v4}, Landroid/support/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_31

    const/4 v2, 0x1

    :cond_31
    sput-boolean v2, Landroid/support/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 107
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    .line 104
    iput-boolean v0, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    .line 105
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    .line 104
    iput-boolean v0, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    .line 105
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/support/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 112
    sget-object v1, Landroid/support/transition/Styleable;->CHANGE_TRANSFORM:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 113
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "reparentWithOverlay"

    invoke-static {p1, p2, v1, v0, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    const-string v1, "reparent"

    const/4 v2, 0x0

    .line 115
    invoke-static {p1, p2, v1, v2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    .line 117
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .registers 6

    .line 194
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 195
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    return-void

    .line 198
    :cond_b
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parent"

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v1, Landroid/support/transition/ChangeTransform$Transforms;

    invoke-direct {v1, v0}, Landroid/support/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    .line 200
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:transforms"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 202
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_35

    .line 205
    :cond_2f
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v2, 0x0

    .line 207
    :goto_36
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:matrix"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-boolean v1, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    if-eqz v1, :cond_7f

    .line 209
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 210
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 211
    invoke-static {v2, v1}, Landroid/support/transition/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 212
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 213
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:parentMatrix"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:intermediateMatrix"

    sget v3, Landroid/support/transition/R$id;->transition_transform:I

    .line 215
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 214
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object p1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:intermediateParentMatrix"

    sget v2, Landroid/support/transition/R$id;->parent_matrix:I

    .line 217
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 216
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7f
    return-void
.end method

.method private createGhostView(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V
    .registers 7

    .line 385
    iget-object v0, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 387
    iget-object v1, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parentMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 388
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 389
    invoke-static {p1, v2}, Landroid/support/transition/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 391
    invoke-static {v0, p1, v2}, Landroid/support/transition/GhostViewUtils;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/support/transition/GhostViewImpl;

    move-result-object p1

    if-nez p1, :cond_1b

    return-void

    .line 396
    :cond_1b
    iget-object v1, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-interface {p1, v1, v2}, Landroid/support/transition/GhostViewImpl;->reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    move-object v1, p0

    .line 400
    :goto_2b
    iget-object v2, v1, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    if-eqz v2, :cond_32

    .line 401
    iget-object v1, v1, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    goto :goto_2b

    .line 404
    :cond_32
    new-instance v2, Landroid/support/transition/ChangeTransform$GhostListener;

    invoke-direct {v2, v0, p1}, Landroid/support/transition/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroid/support/transition/GhostViewImpl;)V

    .line 405
    invoke-virtual {v1, v2}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 409
    sget-boolean p1, Landroid/support/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-eqz p1, :cond_4f

    .line 410
    iget-object p1, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    iget-object p3, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-eq p1, p3, :cond_4a

    .line 411
    iget-object p1, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/support/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    :cond_4a
    const/high16 p1, 0x3f800000    # 1.0f

    .line 413
    invoke-static {v0, p1}, Landroid/support/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    :cond_4f
    return-void
.end method

.method private createTransformAnimator(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
    .registers 16

    .line 283
    iget-object p1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:changeTransform:matrix"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    .line 284
    iget-object v0, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:matrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    if-nez p1, :cond_18

    .line 287
    sget-object p1, Landroid/support/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_18
    if-nez v0, :cond_1c

    .line 291
    sget-object v0, Landroid/support/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_1c
    move-object v4, v0

    .line 294
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 p1, 0x0

    return-object p1

    .line 298
    :cond_25
    iget-object v0, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:transforms"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/transition/ChangeTransform$Transforms;

    .line 301
    iget-object v5, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 302
    invoke-static {v5}, Landroid/support/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    const/16 p2, 0x9

    .line 304
    new-array v0, p2, [F

    .line 305
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 306
    new-array p1, p2, [F

    .line 307
    invoke-virtual {v4, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 308
    new-instance v7, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {v7, v5, v0}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Landroid/view/View;[F)V

    .line 311
    sget-object v1, Landroid/support/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    new-instance v2, Landroid/support/transition/FloatArrayEvaluator;

    new-array p2, p2, [F

    invoke-direct {v2, p2}, Landroid/support/transition/FloatArrayEvaluator;-><init>([F)V

    const/4 p2, 0x2

    new-array v3, p2, [[F

    const/4 v8, 0x0

    aput-object v0, v3, v8

    const/4 v9, 0x1

    aput-object p1, v3, v9

    invoke-static {v1, v2, v3}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 314
    invoke-virtual {p0}, Landroid/support/transition/ChangeTransform;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v2

    aget v3, v0, p2

    const/4 v10, 0x5

    aget v0, v0, v10

    aget v11, p1, p2

    aget p1, p1, v10

    invoke-virtual {v2, v3, v0, v11, p1}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object p1

    .line 317
    sget-object v0, Landroid/support/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    invoke-static {v0, p1}, Landroid/support/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 319
    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, p2, v8

    aput-object p1, p2, v9

    invoke-static {v7, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 324
    new-instance p2, Landroid/support/transition/ChangeTransform$3;

    move-object v1, p2

    move-object v2, p0

    move v3, p3

    invoke-direct/range {v1 .. v7}, Landroid/support/transition/ChangeTransform$3;-><init>(Landroid/support/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/support/transition/ChangeTransform$Transforms;Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;)V

    .line 365
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 366
    invoke-static {p1, p2}, Landroid/support/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    return-object p1
.end method

.method private parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z
    .registers 6

    .line 372
    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p2}, Landroid/support/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1b

    .line 375
    :cond_f
    invoke-virtual {p0, p1, v1}, Landroid/support/transition/ChangeTransform;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 377
    iget-object p1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, p1, :cond_1e

    :goto_19
    const/4 v2, 0x1

    goto :goto_1e

    :cond_1b
    :goto_1b
    if-ne p1, p2, :cond_1e

    goto :goto_19

    :cond_1e
    :goto_1e
    return v2
.end method

.method static setIdentityTransforms(Landroid/view/View;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 438
    invoke-static/range {v0 .. v8}, Landroid/support/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    return-void
.end method

.method private setMatricesForParent(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V
    .registers 6

    .line 418
    iget-object v0, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parentMatrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 419
    iget-object p2, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    sget v1, Landroid/support/transition/R$id;->parent_matrix:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 421
    iget-object p2, p0, Landroid/support/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 422
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 423
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 425
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:matrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    if-nez v0, :cond_31

    .line 427
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 428
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:matrix"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_31
    iget-object p1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parentMatrix"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    .line 432
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 433
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method static setTransforms(Landroid/view/View;FFFFFFFF)V
    .registers 9

    .line 445
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 446
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 447
    invoke-static {p0, p3}, Landroid/support/v4/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    .line 448
    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    .line 449
    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    .line 450
    invoke-virtual {p0, p6}, Landroid/view/View;->setRotationX(F)V

    .line 451
    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationY(F)V

    .line 452
    invoke-virtual {p0, p8}, Landroid/view/View;->setRotation(F)V

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 235
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeTransform;->captureValues(Landroid/support/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 3
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 223
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeTransform;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 224
    sget-boolean v0, Landroid/support/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v0, :cond_14

    .line 228
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    :cond_14
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 9
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_7f

    if-eqz p3, :cond_7f

    .line 241
    iget-object v0, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parent"

    .line 242
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parent"

    .line 243
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_7f

    .line 247
    :cond_19
    iget-object v0, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parent"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 248
    iget-object v1, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 249
    iget-boolean v2, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    if-eqz v2, :cond_39

    invoke-direct {p0, v0, v1}, Landroid/support/transition/ChangeTransform;->parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_39

    const/4 v1, 0x1

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    .line 251
    :goto_3a
    iget-object v2, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:intermediateMatrix"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    if-eqz v2, :cond_4d

    .line 253
    iget-object v3, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:matrix"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_4d
    iget-object v2, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:intermediateParentMatrix"

    .line 257
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    if-eqz v2, :cond_60

    .line 259
    iget-object v3, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:parentMatrix"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    if-eqz v1, :cond_65

    .line 264
    invoke-direct {p0, p2, p3}, Landroid/support/transition/ChangeTransform;->setMatricesForParent(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    .line 268
    :cond_65
    invoke-direct {p0, p2, p3, v1}, Landroid/support/transition/ChangeTransform;->createTransformAnimator(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    if-eqz v1, :cond_75

    if-eqz v2, :cond_75

    .line 271
    iget-boolean v1, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz v1, :cond_75

    .line 272
    invoke-direct {p0, p1, p2, p3}, Landroid/support/transition/ChangeTransform;->createGhostView(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    goto :goto_7e

    .line 273
    :cond_75
    sget-boolean p1, Landroid/support/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez p1, :cond_7e

    .line 275
    iget-object p1, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    :cond_7e
    :goto_7e
    return-object v2

    :cond_7f
    :goto_7f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReparent()Z
    .registers 2

    .line 172
    iget-boolean v0, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    return v0
.end method

.method public getReparentWithOverlay()Z
    .registers 2

    .line 138
    iget-boolean v0, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 190
    sget-object v0, Landroid/support/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .registers 2

    .line 185
    iput-boolean p1, p0, Landroid/support/transition/ChangeTransform;->mReparent:Z

    return-void
.end method

.method public setReparentWithOverlay(Z)V
    .registers 2

    .line 160
    iput-boolean p1, p0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    return-void
.end method

###### Class android.support.transition.ChangeTransform.AnonymousClass1 (android.support.transition.ChangeTransform$1)
.class final Landroid/support/transition/ChangeTransform$1;
.super Landroid/util/Property;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;",
        "[F>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 69
    check-cast p1, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeTransform$1;->get(Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;)[F

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;)[F
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public set(Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;[F)V
    .registers 3

    .line 77
    invoke-virtual {p1, p2}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->setValues([F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 69
    check-cast p1, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeTransform$1;->set(Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;[F)V

    return-void
.end method

###### Class android.support.transition.ChangeTransform.AnonymousClass2 (android.support.transition.ChangeTransform$2)
.class final Landroid/support/transition/ChangeTransform$2;
.super Landroid/util/Property;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;)Landroid/graphics/PointF;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 85
    check-cast p1, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeTransform$2;->get(Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;Landroid/graphics/PointF;)V
    .registers 3

    .line 93
    invoke-virtual {p1, p2}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->setTranslation(Landroid/graphics/PointF;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 85
    check-cast p1, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeTransform$2;->set(Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class android.support.transition.ChangeTransform.AnonymousClass3 (android.support.transition.ChangeTransform$3)
.class Landroid/support/transition/ChangeTransform$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeTransform;->createTransformAnimator(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/support/transition/ChangeTransform;

.field final synthetic val$finalEndMatrix:Landroid/graphics/Matrix;

.field final synthetic val$handleParentChange:Z

.field final synthetic val$pathAnimatorMatrix:Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

.field final synthetic val$transforms:Landroid/support/transition/ChangeTransform$Transforms;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/support/transition/ChangeTransform$Transforms;Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;)V
    .registers 7

    .line 324
    iput-object p1, p0, Landroid/support/transition/ChangeTransform$3;->this$0:Landroid/support/transition/ChangeTransform;

    iput-boolean p2, p0, Landroid/support/transition/ChangeTransform$3;->val$handleParentChange:Z

    iput-object p3, p0, Landroid/support/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    iput-object p4, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    iput-object p5, p0, Landroid/support/transition/ChangeTransform$3;->val$transforms:Landroid/support/transition/ChangeTransform$Transforms;

    iput-object p6, p0, Landroid/support/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 326
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroid/support/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private setCurrentMatrix(Landroid/graphics/Matrix;)V
    .registers 4

    .line 359
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 360
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    sget v0, Landroid/support/transition/R$id;->transition_transform:I

    iget-object v1, p0, Landroid/support/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 361
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$3;->val$transforms:Landroid/support/transition/ChangeTransform$Transforms;

    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    .line 330
    iput-boolean p1, p0, Landroid/support/transition/ChangeTransform$3;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 335
    iget-boolean p1, p0, Landroid/support/transition/ChangeTransform$3;->mIsCanceled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_23

    .line 336
    iget-boolean p1, p0, Landroid/support/transition/ChangeTransform$3;->val$handleParentChange:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Landroid/support/transition/ChangeTransform$3;->this$0:Landroid/support/transition/ChangeTransform;

    iget-boolean p1, p1, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz p1, :cond_15

    .line 337
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1}, Landroid/support/transition/ChangeTransform$3;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    goto :goto_23

    .line 339
    :cond_15
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    sget v1, Landroid/support/transition/R$id;->transition_transform:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 340
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    sget v1, Landroid/support/transition/R$id;->parent_matrix:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 343
    :cond_23
    :goto_23
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Landroid/support/transition/ViewUtils;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 344
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$3;->val$transforms:Landroid/support/transition/ChangeTransform$Transforms;

    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .registers 2

    .line 349
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-virtual {p1}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    .line 350
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeTransform$3;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .registers 2

    .line 355
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-static {p1}, Landroid/support/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    return-void
.end method

###### Class android.support.transition.ChangeTransform.GhostListener (android.support.transition.ChangeTransform$GhostListener)
.class Landroid/support/transition/ChangeTransform$GhostListener;
.super Landroid/support/transition/TransitionListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GhostListener"
.end annotation


# instance fields
.field private mGhostView:Landroid/support/transition/GhostViewImpl;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/transition/GhostViewImpl;)V
    .registers 3

    .line 518
    invoke-direct {p0}, Landroid/support/transition/TransitionListenerAdapter;-><init>()V

    .line 519
    iput-object p1, p0, Landroid/support/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    .line 520
    iput-object p2, p0, Landroid/support/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/support/transition/GhostViewImpl;

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .registers 4
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 525
    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 526
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    invoke-static {p1}, Landroid/support/transition/GhostViewUtils;->removeGhost(Landroid/view/View;)V

    .line 527
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    sget v0, Landroid/support/transition/R$id;->transition_transform:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 528
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    sget v0, Landroid/support/transition/R$id;->parent_matrix:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/Transition;)V
    .registers 3
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 533
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/support/transition/GhostViewImpl;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/support/transition/GhostViewImpl;->setVisibility(I)V

    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/Transition;)V
    .registers 3
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 538
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/support/transition/GhostViewImpl;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/support/transition/GhostViewImpl;->setVisibility(I)V

    return-void
.end method

###### Class android.support.transition.ChangeTransform.PathAnimatorMatrix (android.support.transition.ChangeTransform$PathAnimatorMatrix)
.class Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathAnimatorMatrix"
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mValues:[F

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;[F)V
    .registers 4

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    .line 557
    iput-object p1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    .line 558
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    .line 559
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 p2, 0x2

    aget p1, p1, p2

    iput p1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 560
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 p2, 0x5

    aget p1, p1, p2

    iput p1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 561
    invoke-direct {p0}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    return-void
.end method

.method private setAnimationMatrix()V
    .registers 4

    .line 576
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    iget v1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 577
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    iget v1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 578
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 579
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Landroid/support/transition/ViewUtils;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method getMatrix()Landroid/graphics/Matrix;
    .registers 2

    .line 583
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method setTranslation(Landroid/graphics/PointF;)V
    .registers 3

    .line 570
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 571
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 572
    invoke-direct {p0}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    return-void
.end method

.method setValues([F)V
    .registers 5

    .line 565
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    invoke-direct {p0}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    return-void
.end method

###### Class android.support.transition.ChangeTransform.Transforms (android.support.transition.ChangeTransform$Transforms)
.class Landroid/support/transition/ChangeTransform$Transforms;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transforms"
.end annotation


# instance fields
.field final mRotationX:F

.field final mRotationY:F

.field final mRotationZ:F

.field final mScaleX:F

.field final mScaleY:F

.field final mTranslationX:F

.field final mTranslationY:F

.field final mTranslationZ:F


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    .line 469
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    .line 472
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    iput p1, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 484
    instance-of v0, p1, Landroid/support/transition/ChangeTransform$Transforms;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 487
    :cond_6
    check-cast p1, Landroid/support/transition/ChangeTransform$Transforms;

    .line 488
    iget v0, p1, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_49

    iget v0, p1, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_49

    iget v0, p1, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_49

    iget v0, p1, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_49

    iget v0, p1, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_49

    iget v0, p1, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_49

    iget v0, p1, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_49

    iget p1, p1, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    iget v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_49

    const/4 v1, 0x1

    :cond_49
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 500
    iget v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    mul-int/lit8 v0, v0, 0x1f

    .line 501
    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_1f

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 502
    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_30

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 503
    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_41

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    :goto_42
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 504
    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_52

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_53

    :cond_52
    const/4 v3, 0x0

    :goto_53
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 505
    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_63

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_64

    :cond_63
    const/4 v3, 0x0

    :goto_64
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 506
    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_74

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_75

    :cond_74
    const/4 v3, 0x0

    :goto_75
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 507
    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_84

    iget v1, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_84
    add-int/2addr v0, v1

    return v0
.end method

.method public restore(Landroid/view/View;)V
    .registers 11

    .line 478
    iget v1, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    iget v4, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    iget v5, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    iget v6, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    iget v7, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    iget v8, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Landroid/support/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    return-void
.end method
