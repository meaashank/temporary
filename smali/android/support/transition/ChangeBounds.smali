###### Class android.support.transition.ChangeBounds (android.support.transition.ChangeBounds)
.class public Landroid/support/transition/ChangeBounds;
.super Landroid/support/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static sRectEvaluator:Landroid/support/transition/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mResizeClip:Z

.field private mTempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    .line 60
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android:changeBounds:bounds"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android:changeBounds:clip"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "android:changeBounds:parent"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "android:changeBounds:windowX"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "android:changeBounds:windowY"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/support/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 86
    new-instance v0, Landroid/support/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 99
    new-instance v0, Landroid/support/transition/ChangeBounds$3;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 112
    new-instance v0, Landroid/support/transition/ChangeBounds$4;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    .line 129
    new-instance v0, Landroid/support/transition/ChangeBounds$5;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    .line 146
    new-instance v0, Landroid/support/transition/ChangeBounds$6;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 167
    new-instance v0, Landroid/support/transition/RectEvaluator;

    invoke-direct {v0}, Landroid/support/transition/RectEvaluator;-><init>()V

    sput-object v0, Landroid/support/transition/ChangeBounds;->sRectEvaluator:Landroid/support/transition/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 169
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    const/4 v0, 0x2

    .line 163
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    .line 165
    iput-boolean v0, p0, Landroid/support/transition/ChangeBounds;->mReparent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    .line 163
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    .line 165
    iput-boolean v0, p0, Landroid/support/transition/ChangeBounds;->mReparent:Z

    .line 175
    sget-object v1, Landroid/support/transition/Styleable;->CHANGE_BOUNDS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 176
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v1, "resizeClip"

    invoke-static {p1, p2, v1, v0, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result p2

    .line 178
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    invoke-virtual {p0, p2}, Landroid/support/transition/ChangeBounds;->setResizeClip(Z)V

    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .registers 10

    .line 217
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 219
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_77

    .line 220
    :cond_14
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 221
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 220
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:parent"

    iget-object v3, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-boolean v1, p0, Landroid/support/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_68

    .line 224
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 225
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowX"

    iget-object v3, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowY"

    iget-object v3, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_68
    iget-boolean v1, p0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    if-eqz v1, :cond_77

    .line 229
    iget-object p1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:clip"

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    return-void
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    .line 246
    iget-boolean v0, p0, Landroid/support/transition/ChangeBounds;->mReparent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 247
    invoke-virtual {p0, p1, v1}, Landroid/support/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_11

    if-ne p1, p2, :cond_f

    goto :goto_15

    :cond_f
    const/4 v1, 0x0

    goto :goto_15

    .line 251
    :cond_11
    iget-object p1, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, p1, :cond_f

    :cond_15
    :goto_15
    return v1
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 241
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeBounds;->captureValues(Landroid/support/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 236
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeBounds;->captureValues(Landroid/support/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 24
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_26f

    if-nez v1, :cond_c

    goto/16 :goto_26f

    .line 264
    :cond_c
    iget-object v3, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .line 265
    iget-object v4, v1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:parent"

    .line 266
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const-string v5, "android:changeBounds:parent"

    .line 267
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v3, :cond_26d

    if-nez v4, :cond_26

    goto/16 :goto_26d

    .line 271
    :cond_26
    iget-object v9, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 272
    invoke-direct {v8, v3, v4}, Landroid/support/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1bc

    .line 273
    iget-object v3, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:bounds"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 274
    iget-object v5, v1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeBounds:bounds"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 275
    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 276
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 277
    iget v11, v3, Landroid/graphics/Rect;->top:I

    .line 278
    iget v12, v5, Landroid/graphics/Rect;->top:I

    .line 279
    iget v13, v3, Landroid/graphics/Rect;->right:I

    .line 280
    iget v14, v5, Landroid/graphics/Rect;->right:I

    .line 281
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 282
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v13, v6

    sub-int v2, v3, v11

    sub-int v10, v14, v7

    sub-int v4, v15, v12

    .line 287
    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v16, v9

    const-string v9, "android:changeBounds:clip"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 288
    iget-object v1, v1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:changeBounds:clip"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/graphics/Rect;

    if-eqz v5, :cond_75

    if-nez v2, :cond_79

    :cond_75
    if-eqz v10, :cond_88

    if-eqz v4, :cond_88

    :cond_79
    if-ne v6, v7, :cond_80

    if-eq v11, v12, :cond_7e

    goto :goto_80

    :cond_7e
    const/4 v1, 0x0

    goto :goto_81

    :cond_80
    :goto_80
    const/4 v1, 0x1

    :goto_81
    if-ne v13, v14, :cond_85

    if-eq v3, v15, :cond_89

    :cond_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    :cond_88
    const/4 v1, 0x0

    :cond_89
    :goto_89
    if-eqz v0, :cond_91

    .line 294
    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_95

    :cond_91
    if-nez v0, :cond_97

    if-eqz v9, :cond_97

    :cond_95
    add-int/lit8 v1, v1, 0x1

    :cond_97
    if-lez v1, :cond_1f9

    move-object/from16 v18, v9

    .line 300
    iget-boolean v9, v8, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    move-object/from16 v19, v0

    const/4 v0, 0x2

    if-nez v9, :cond_132

    move-object/from16 v9, v16

    .line 301
    invoke-static {v9, v6, v11, v13, v3}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    if-ne v1, v0, :cond_105

    if-ne v5, v10, :cond_c1

    if-ne v2, v4, :cond_c1

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v0

    int-to-float v1, v6

    int-to-float v2, v11

    int-to-float v3, v7

    int-to-float v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 307
    sget-object v1, Landroid/support/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    invoke-static {v9, v1, v0}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_1a1

    .line 310
    :cond_c1
    new-instance v1, Landroid/support/transition/ChangeBounds$ViewBounds;

    invoke-direct {v1, v9}, Landroid/support/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v2

    int-to-float v4, v6

    int-to-float v5, v11

    int-to-float v6, v7

    int-to-float v7, v12

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v2

    .line 313
    sget-object v4, Landroid/support/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 314
    invoke-static {v1, v4, v2}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v4

    int-to-float v5, v13

    int-to-float v3, v3

    int-to-float v6, v14

    int-to-float v7, v15

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v3

    .line 318
    sget-object v4, Landroid/support/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    invoke-static {v1, v4, v3}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 320
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 321
    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    const/4 v2, 0x1

    aput-object v3, v0, v2

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 323
    new-instance v0, Landroid/support/transition/ChangeBounds$7;

    invoke-direct {v0, v8, v1}, Landroid/support/transition/ChangeBounds$7;-><init>(Landroid/support/transition/ChangeBounds;Landroid/support/transition/ChangeBounds$ViewBounds;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v0, v4

    goto/16 :goto_1a1

    :cond_105
    if-ne v6, v7, :cond_11e

    if-eq v11, v12, :cond_10a

    goto :goto_11e

    .line 336
    :cond_10a
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v0

    int-to-float v1, v13

    int-to-float v2, v3

    int-to-float v3, v14

    int-to-float v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 338
    sget-object v1, Landroid/support/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    invoke-static {v9, v1, v0}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_1a1

    .line 331
    :cond_11e
    :goto_11e
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v0

    int-to-float v1, v6

    int-to-float v2, v11

    int-to-float v3, v7

    int-to-float v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 333
    sget-object v1, Landroid/support/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    invoke-static {v9, v1, v0}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_1a1

    :cond_132
    move-object/from16 v9, v16

    .line 342
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 343
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v1, v6

    add-int/2addr v3, v11

    .line 345
    invoke-static {v9, v6, v11, v1, v3}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    if-ne v6, v7, :cond_148

    if-eq v11, v12, :cond_146

    goto :goto_148

    :cond_146
    const/4 v11, 0x0

    goto :goto_15b

    .line 350
    :cond_148
    :goto_148
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v1

    int-to-float v3, v6

    int-to-float v6, v11

    int-to-float v11, v7

    int-to-float v13, v12

    invoke-virtual {v1, v3, v6, v11, v13}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 352
    sget-object v3, Landroid/support/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    invoke-static {v9, v3, v1}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object v11, v1

    :goto_15b
    if-nez v19, :cond_164

    .line 357
    new-instance v1, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_167

    :cond_164
    const/4 v3, 0x0

    move-object/from16 v1, v19

    :goto_167
    if-nez v18, :cond_16f

    .line 360
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_171

    :cond_16f
    move-object/from16 v2, v18

    .line 363
    :goto_171
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19c

    .line 364
    invoke-static {v9, v1}, Landroid/support/v4/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    const-string v4, "clipBounds"

    .line 365
    sget-object v5, Landroid/support/transition/ChangeBounds;->sRectEvaluator:Landroid/support/transition/RectEvaluator;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-static {v9, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 367
    new-instance v13, Landroid/support/transition/ChangeBounds$8;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, v18

    move v4, v7

    move v5, v12

    move v6, v14

    move v7, v15

    invoke-direct/range {v0 .. v7}, Landroid/support/transition/ChangeBounds$8;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v10, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_19d

    :cond_19c
    const/4 v10, 0x0

    .line 385
    :goto_19d
    invoke-static {v11, v10}, Landroid/support/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    .line 388
    :goto_1a1
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1bb

    .line 389
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    .line 390
    invoke-static {v1, v2}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 391
    new-instance v2, Landroid/support/transition/ChangeBounds$9;

    invoke-direct {v2, v8, v1}, Landroid/support/transition/ChangeBounds$9;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 418
    invoke-virtual {v8, v2}, Landroid/support/transition/ChangeBounds;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    :cond_1bb
    return-object v0

    .line 423
    :cond_1bc
    iget-object v2, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 424
    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:windowY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 425
    iget-object v3, v1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:windowX"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 426
    iget-object v1, v1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:windowY"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v3, :cond_1fb

    if-eq v0, v1, :cond_1f9

    goto :goto_1fb

    :cond_1f9
    const/4 v0, 0x0

    return-object v0

    .line 429
    :cond_1fb
    :goto_1fb
    iget-object v4, v8, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 430
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 432
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 433
    invoke-virtual {v9, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 434
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 436
    invoke-static {v9}, Landroid/support/transition/ViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    move-result v7

    const/4 v4, 0x0

    .line 437
    invoke-static {v9, v4}, Landroid/support/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 438
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ViewUtils;->getOverlay(Landroid/view/View;)Landroid/support/transition/ViewOverlayImpl;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/support/transition/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v4

    iget-object v10, v8, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int/2addr v2, v10

    int-to-float v2, v2

    iget-object v10, v8, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v12, 0x1

    aget v10, v10, v12

    sub-int/2addr v0, v10

    int-to-float v0, v0

    iget-object v10, v8, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    aget v10, v10, v11

    sub-int/2addr v3, v10

    int-to-float v3, v3

    iget-object v10, v8, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    aget v10, v10, v12

    sub-int/2addr v1, v10

    int-to-float v1, v1

    invoke-virtual {v4, v2, v0, v3, v1}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 442
    sget-object v1, Landroid/support/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    invoke-static {v1, v0}, Landroid/support/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 444
    new-array v1, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v11

    invoke-static {v6, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 445
    new-instance v11, Landroid/support/transition/ChangeBounds$10;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v6

    move-object v4, v9

    move v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/support/transition/ChangeBounds$10;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v10

    :cond_26d
    :goto_26d
    const/4 v0, 0x0

    return-object v0

    :cond_26f
    :goto_26f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResizeClip()Z
    .registers 2

    .line 213
    iget-boolean v0, p0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 185
    sget-object v0, Landroid/support/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setResizeClip(Z)V
    .registers 2

    .line 202
    iput-boolean p1, p0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass1 (android.support.transition.ChangeBounds$1)
.class final Landroid/support/transition/ChangeBounds$1;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private mBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 70
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;
    .registers 4

    .line 81
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 82
    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Landroid/support/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 69
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeBounds$1;->get(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V
    .registers 5

    .line 74
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 75
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 76
    iget-object p2, p0, Landroid/support/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 69
    check-cast p1, Landroid/graphics/drawable/Drawable;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeBounds$1;->set(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass10 (android.support.transition.ChangeBounds$10)
.class Landroid/support/transition/ChangeBounds$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/ChangeBounds;

.field final synthetic val$drawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$sceneRoot:Landroid/view/ViewGroup;

.field final synthetic val$transitionAlpha:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .registers 6

    .line 445
    iput-object p1, p0, Landroid/support/transition/ChangeBounds$10;->this$0:Landroid/support/transition/ChangeBounds;

    iput-object p2, p0, Landroid/support/transition/ChangeBounds$10;->val$sceneRoot:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/transition/ChangeBounds$10;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Landroid/support/transition/ChangeBounds$10;->val$view:Landroid/view/View;

    iput p5, p0, Landroid/support/transition/ChangeBounds$10;->val$transitionAlpha:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 448
    iget-object p1, p0, Landroid/support/transition/ChangeBounds$10;->val$sceneRoot:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/support/transition/ViewUtils;->getOverlay(Landroid/view/View;)Landroid/support/transition/ViewOverlayImpl;

    move-result-object p1

    iget-object v0, p0, Landroid/support/transition/ChangeBounds$10;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p1, v0}, Landroid/support/transition/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 449
    iget-object p1, p0, Landroid/support/transition/ChangeBounds$10;->val$view:Landroid/view/View;

    iget v0, p0, Landroid/support/transition/ChangeBounds$10;->val$transitionAlpha:F

    invoke-static {p1, v0}, Landroid/support/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass2 (android.support.transition.ChangeBounds$2)
.class final Landroid/support/transition/ChangeBounds$2;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/transition/ChangeBounds$ViewBounds;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/support/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 87
    check-cast p1, Landroid/support/transition/ChangeBounds$ViewBounds;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeBounds$2;->get(Landroid/support/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/support/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V
    .registers 3

    .line 90
    invoke-virtual {p1, p2}, Landroid/support/transition/ChangeBounds$ViewBounds;->setTopLeft(Landroid/graphics/PointF;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 87
    check-cast p1, Landroid/support/transition/ChangeBounds$ViewBounds;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeBounds$2;->set(Landroid/support/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass3 (android.support.transition.ChangeBounds$3)
.class final Landroid/support/transition/ChangeBounds$3;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/transition/ChangeBounds$ViewBounds;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/support/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 100
    check-cast p1, Landroid/support/transition/ChangeBounds$ViewBounds;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeBounds$3;->get(Landroid/support/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/support/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V
    .registers 3

    .line 103
    invoke-virtual {p1, p2}, Landroid/support/transition/ChangeBounds$ViewBounds;->setBottomRight(Landroid/graphics/PointF;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 100
    check-cast p1, Landroid/support/transition/ChangeBounds$ViewBounds;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeBounds$3;->set(Landroid/support/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass4 (android.support.transition.ChangeBounds$4)
.class final Landroid/support/transition/ChangeBounds$4;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 113
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeBounds$4;->get(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 6

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 118
    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 119
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 120
    invoke-static {p1, v0, v1, v2, p2}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 113
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeBounds$4;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass5 (android.support.transition.ChangeBounds$5)
.class final Landroid/support/transition/ChangeBounds$5;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 130
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeBounds$5;->get(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 6

    .line 133
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 134
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 137
    invoke-static {p1, v0, p2, v1, v2}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 130
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeBounds$5;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass6 (android.support.transition.ChangeBounds$6)
.class final Landroid/support/transition/ChangeBounds$6;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 147
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 147
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeBounds$6;->get(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 6

    .line 150
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 151
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    .line 154
    invoke-static {p1, v0, p2, v1, v2}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 147
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeBounds$6;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass7 (android.support.transition.ChangeBounds$7)
.class Landroid/support/transition/ChangeBounds$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mViewBounds:Landroid/support/transition/ChangeBounds$ViewBounds;

.field final synthetic this$0:Landroid/support/transition/ChangeBounds;

.field final synthetic val$viewBounds:Landroid/support/transition/ChangeBounds$ViewBounds;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeBounds;Landroid/support/transition/ChangeBounds$ViewBounds;)V
    .registers 3

    .line 323
    iput-object p1, p0, Landroid/support/transition/ChangeBounds$7;->this$0:Landroid/support/transition/ChangeBounds;

    iput-object p2, p0, Landroid/support/transition/ChangeBounds$7;->val$viewBounds:Landroid/support/transition/ChangeBounds$ViewBounds;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 326
    iget-object p1, p0, Landroid/support/transition/ChangeBounds$7;->val$viewBounds:Landroid/support/transition/ChangeBounds$ViewBounds;

    iput-object p1, p0, Landroid/support/transition/ChangeBounds$7;->mViewBounds:Landroid/support/transition/ChangeBounds$ViewBounds;

    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass8 (android.support.transition.ChangeBounds$8)
.class Landroid/support/transition/ChangeBounds$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Landroid/support/transition/ChangeBounds;

.field final synthetic val$endBottom:I

.field final synthetic val$endLeft:I

.field final synthetic val$endRight:I

.field final synthetic val$endTop:I

.field final synthetic val$finalClip:Landroid/graphics/Rect;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .registers 8

    .line 367
    iput-object p1, p0, Landroid/support/transition/ChangeBounds$8;->this$0:Landroid/support/transition/ChangeBounds;

    iput-object p2, p0, Landroid/support/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    iput-object p3, p0, Landroid/support/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    iput p4, p0, Landroid/support/transition/ChangeBounds$8;->val$endLeft:I

    iput p5, p0, Landroid/support/transition/ChangeBounds$8;->val$endTop:I

    iput p6, p0, Landroid/support/transition/ChangeBounds$8;->val$endRight:I

    iput p7, p0, Landroid/support/transition/ChangeBounds$8;->val$endBottom:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    .line 372
    iput-boolean p1, p0, Landroid/support/transition/ChangeBounds$8;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    .line 377
    iget-boolean p1, p0, Landroid/support/transition/ChangeBounds$8;->mIsCanceled:Z

    if-nez p1, :cond_18

    .line 378
    iget-object p1, p0, Landroid/support/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    iget-object v0, p0, Landroid/support/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 379
    iget-object p1, p0, Landroid/support/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    iget v0, p0, Landroid/support/transition/ChangeBounds$8;->val$endLeft:I

    iget v1, p0, Landroid/support/transition/ChangeBounds$8;->val$endTop:I

    iget v2, p0, Landroid/support/transition/ChangeBounds$8;->val$endRight:I

    iget v3, p0, Landroid/support/transition/ChangeBounds$8;->val$endBottom:I

    invoke-static {p1, v0, v1, v2, v3}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    :cond_18
    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass9 (android.support.transition.ChangeBounds$9)
.class Landroid/support/transition/ChangeBounds$9;
.super Landroid/support/transition/TransitionListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Landroid/support/transition/ChangeBounds;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;)V
    .registers 3

    .line 391
    iput-object p1, p0, Landroid/support/transition/ChangeBounds$9;->this$0:Landroid/support/transition/ChangeBounds;

    iput-object p2, p0, Landroid/support/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/support/transition/TransitionListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 392
    iput-boolean p1, p0, Landroid/support/transition/ChangeBounds$9;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/support/transition/Transition;)V
    .registers 3
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 396
    iget-object p1, p0, Landroid/support/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    .line 397
    iput-boolean p1, p0, Landroid/support/transition/ChangeBounds$9;->mCanceled:Z

    return-void
.end method

.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .registers 4
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 402
    iget-boolean v0, p0, Landroid/support/transition/ChangeBounds$9;->mCanceled:Z

    if-nez v0, :cond_a

    .line 403
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 405
    :cond_a
    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/Transition;)V
    .registers 3
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 410
    iget-object p1, p0, Landroid/support/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/Transition;)V
    .registers 3
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 415
    iget-object p1, p0, Landroid/support/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    return-void
.end method

###### Class android.support.transition.ChangeBounds.ViewBounds (android.support.transition.ChangeBounds$ViewBounds)
.class Landroid/support/transition/ChangeBounds$ViewBounds;
.super Ljava/lang/Object;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewBounds"
.end annotation


# instance fields
.field private mBottom:I

.field private mBottomRightCalls:I

.field private mLeft:I

.field private mRight:I

.field private mTop:I

.field private mTopLeftCalls:I

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    return-void
.end method

.method private setLeftTopRightBottom()V
    .registers 6

    .line 491
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mLeft:I

    iget v2, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTop:I

    iget v3, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mRight:I

    iget v4, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottom:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    const/4 v0, 0x0

    .line 492
    iput v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 493
    iput v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    return-void
.end method


# virtual methods
.method setBottomRight(Landroid/graphics/PointF;)V
    .registers 3

    .line 482
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mRight:I

    .line 483
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottom:I

    .line 484
    iget p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 485
    iget p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    iget v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    if-ne p1, v0, :cond_1f

    .line 486
    invoke-direct {p0}, Landroid/support/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    :cond_1f
    return-void
.end method

.method setTopLeft(Landroid/graphics/PointF;)V
    .registers 3

    .line 473
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mLeft:I

    .line 474
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTop:I

    .line 475
    iget p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 476
    iget p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    iget v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    if-ne p1, v0, :cond_1f

    .line 477
    invoke-direct {p0}, Landroid/support/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    :cond_1f
    return-void
.end method
