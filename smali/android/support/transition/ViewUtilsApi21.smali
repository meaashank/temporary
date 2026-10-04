###### Class android.support.transition.ViewUtilsApi21 (android.support.transition.ViewUtilsApi21)
.class Landroid/support/transition/ViewUtilsApi21;
.super Landroid/support/transition/ViewUtilsApi19;
.source "ViewUtilsApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtilsApi21"

.field private static sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

.field private static sSetAnimationMatrixMethodFetched:Z

.field private static sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

.field private static sTransformMatrixToGlobalMethodFetched:Z

.field private static sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

.field private static sTransformMatrixToLocalMethodFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi19;-><init>()V

    return-void
.end method

.method private fetchSetAnimationMatrix()V
    .registers 7

    .line 110
    sget-boolean v0, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethodFetched:Z

    if-nez v0, :cond_26

    const/4 v0, 0x1

    .line 112
    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "setAnimationMatrix"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

    .line 114
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v1

    const-string v2, "ViewUtilsApi21"

    const-string v3, "Failed to retrieve setAnimationMatrix method"

    .line 116
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :goto_24
    sput-boolean v0, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethodFetched:Z

    :cond_26
    return-void
.end method

.method private fetchTransformMatrixToGlobalMethod()V
    .registers 7

    .line 84
    sget-boolean v0, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethodFetched:Z

    if-nez v0, :cond_26

    const/4 v0, 0x1

    .line 86
    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "transformMatrixToGlobal"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

    .line 88
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v1

    const-string v2, "ViewUtilsApi21"

    const-string v3, "Failed to retrieve transformMatrixToGlobal method"

    .line 90
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    :goto_24
    sput-boolean v0, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethodFetched:Z

    :cond_26
    return-void
.end method

.method private fetchTransformMatrixToLocalMethod()V
    .registers 7

    .line 97
    sget-boolean v0, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethodFetched:Z

    if-nez v0, :cond_26

    const/4 v0, 0x1

    .line 99
    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "transformMatrixToLocal"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

    .line 101
    sget-object v1, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v1

    const-string v2, "ViewUtilsApi21"

    const-string v3, "Failed to retrieve transformMatrixToLocal method"

    .line 103
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :goto_24
    sput-boolean v0, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethodFetched:Z

    :cond_26
    return-void
.end method


# virtual methods
.method public setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi21;->fetchSetAnimationMatrix()V

    .line 72
    sget-object v0, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1e

    .line 74
    :try_start_7
    sget-object v0, Landroid/support/transition/ViewUtilsApi21;->sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_12} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_1e

    :catch_13
    move-exception p1

    .line 78
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1e
    :cond_1e
    :goto_1e
    return-void
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi21;->fetchTransformMatrixToGlobalMethod()V

    .line 44
    sget-object v0, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1e

    .line 46
    :try_start_7
    sget-object v0, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_12} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_1e

    :catch_13
    move-exception p1

    .line 50
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1e
    :cond_1e
    :goto_1e
    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi21;->fetchTransformMatrixToLocalMethod()V

    .line 58
    sget-object v0, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1e

    .line 60
    :try_start_7
    sget-object v0, Landroid/support/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_12} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_1e

    :catch_13
    move-exception p1

    .line 64
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1e
    :cond_1e
    :goto_1e
    return-void
.end method
