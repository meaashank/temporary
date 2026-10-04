###### Class android.support.transition.ViewUtils (android.support.transition.ViewUtils)
.class Landroid/support/transition/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field static final CLIP_BOUNDS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMPL:Landroid/support/transition/ViewUtilsBase;

.field private static final TAG:Ljava/lang/String; = "ViewUtils"

.field static final TRANSITION_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final VISIBILITY_MASK:I = 0xc

.field private static sViewFlagsField:Ljava/lang/reflect/Field;

.field private static sViewFlagsFieldFetched:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_e

    .line 46
    new-instance v0, Landroid/support/transition/ViewUtilsApi22;

    invoke-direct {v0}, Landroid/support/transition/ViewUtilsApi22;-><init>()V

    sput-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    goto :goto_31

    .line 47
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1c

    .line 48
    new-instance v0, Landroid/support/transition/ViewUtilsApi21;

    invoke-direct {v0}, Landroid/support/transition/ViewUtilsApi21;-><init>()V

    sput-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    goto :goto_31

    .line 49
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2a

    .line 50
    new-instance v0, Landroid/support/transition/ViewUtilsApi19;

    invoke-direct {v0}, Landroid/support/transition/ViewUtilsApi19;-><init>()V

    sput-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    goto :goto_31

    .line 52
    :cond_2a
    new-instance v0, Landroid/support/transition/ViewUtilsBase;

    invoke-direct {v0}, Landroid/support/transition/ViewUtilsBase;-><init>()V

    sput-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    .line 59
    :goto_31
    new-instance v0, Landroid/support/transition/ViewUtils$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ViewUtils$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ViewUtils;->TRANSITION_ALPHA:Landroid/util/Property;

    .line 74
    new-instance v0, Landroid/support/transition/ViewUtils$2;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ViewUtils$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ViewUtils;->CLIP_BOUNDS:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearNonTransitionAlpha(Landroid/view/View;)V
    .registers 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 131
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0}, Landroid/support/transition/ViewUtilsBase;->clearNonTransitionAlpha(Landroid/view/View;)V

    return-void
.end method

.method private static fetchViewFlagsField()V
    .registers 3

    .line 214
    sget-boolean v0, Landroid/support/transition/ViewUtils;->sViewFlagsFieldFetched:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    .line 216
    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "mViewFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    .line 217
    sget-object v1, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_1c

    :catch_15
    const-string v1, "ViewUtils"

    const-string v2, "fetchViewFlagsField: "

    .line 219
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_1c
    sput-boolean v0, Landroid/support/transition/ViewUtils;->sViewFlagsFieldFetched:Z

    :cond_1e
    return-void
.end method

.method static getOverlay(Landroid/view/View;)Landroid/support/transition/ViewOverlayImpl;
    .registers 3
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_c

    .line 94
    new-instance v0, Landroid/support/transition/ViewOverlayApi18;

    invoke-direct {v0, p0}, Landroid/support/transition/ViewOverlayApi18;-><init>(Landroid/view/View;)V

    return-object v0

    .line 96
    :cond_c
    invoke-static {p0}, Landroid/support/transition/ViewOverlayApi14;->createFrom(Landroid/view/View;)Landroid/support/transition/ViewOverlayApi14;

    move-result-object p0

    return-object p0
.end method

.method static getTransitionAlpha(Landroid/view/View;)F
    .registers 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 114
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0}, Landroid/support/transition/ViewUtilsBase;->getTransitionAlpha(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method static getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;
    .registers 3
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_c

    .line 104
    new-instance v0, Landroid/support/transition/WindowIdApi18;

    invoke-direct {v0, p0}, Landroid/support/transition/WindowIdApi18;-><init>(Landroid/view/View;)V

    return-object v0

    .line 106
    :cond_c
    new-instance v0, Landroid/support/transition/WindowIdApi14;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/transition/WindowIdApi14;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method static saveNonTransitionAlpha(Landroid/view/View;)V
    .registers 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 122
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0}, Landroid/support/transition/ViewUtilsBase;->saveNonTransitionAlpha(Landroid/view/View;)V

    return-void
.end method

.method static setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 3
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 198
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Landroid/support/transition/ViewUtilsBase;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static setLeftTopRightBottom(Landroid/view/View;IIII)V
    .registers 11
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 210
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/ViewUtilsBase;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    return-void
.end method

.method static setTransitionAlpha(Landroid/view/View;F)V
    .registers 3
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Landroid/support/transition/ViewUtilsBase;->setTransitionAlpha(Landroid/view/View;F)V

    return-void
.end method

.method static setTransitionVisibility(Landroid/view/View;I)V
    .registers 4
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 148
    invoke-static {}, Landroid/support/transition/ViewUtils;->fetchViewFlagsField()V

    .line 149
    sget-object v0, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_15

    .line 151
    :try_start_7
    sget-object v0, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 152
    sget-object v1, Landroid/support/transition/ViewUtils;->sViewFlagsField:Ljava/lang/reflect/Field;

    and-int/lit8 v0, v0, -0xd

    or-int/2addr p1, v0

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_15} :catch_15

    :catch_15
    :cond_15
    return-void
.end method

.method static transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 3
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 172
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Landroid/support/transition/ViewUtilsBase;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 3
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 188
    sget-object v0, Landroid/support/transition/ViewUtils;->IMPL:Landroid/support/transition/ViewUtilsBase;

    invoke-virtual {v0, p0, p1}, Landroid/support/transition/ViewUtilsBase;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

###### Class android.support.transition.ViewUtils.AnonymousClass1 (android.support.transition.ViewUtils$1)
.class final Landroid/support/transition/ViewUtils$1;
.super Landroid/util/Property;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    .line 64
    invoke-static {p1}, Landroid/support/transition/ViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 60
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/transition/ViewUtils$1;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/view/View;Ljava/lang/Float;)V
    .registers 3

    .line 69
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Landroid/support/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 60
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ViewUtils$1;->set(Landroid/view/View;Ljava/lang/Float;)V

    return-void
.end method

###### Class android.support.transition.ViewUtils.AnonymousClass2 (android.support.transition.ViewUtils$2)
.class final Landroid/support/transition/ViewUtils$2;
.super Landroid/util/Property;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2

    .line 79
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 75
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/transition/ViewUtils$2;->get(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    .line 84
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 75
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ViewUtils$2;->set(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
