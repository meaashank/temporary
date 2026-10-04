###### Class com.gaia.ngallery.l.d (com.gaia.ngallery.l.d)
.class public Lcom/gaia/ngallery/l/d;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# static fields
.field private static a:Z = false

.field private static b:I = -0x1

.field private static c:I = -0x1

.field private static d:F

.field private static e:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)I
    .registers 2

    .line 67
    sget v0, Lcom/gaia/ngallery/l/d;->d:F

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static a(Landroid/app/Activity;)I
    .registers 3

    .line 37
    sget-boolean v0, Lcom/gaia/ngallery/l/d;->a:Z

    if-nez v0, :cond_13

    .line 38
    const-class v0, Lcom/gaia/ngallery/l/d;

    monitor-enter v0

    .line 39
    :try_start_7
    sget-boolean v1, Lcom/gaia/ngallery/l/d;->a:Z

    if-nez v1, :cond_e

    .line 40
    invoke-static {p0}, Lcom/gaia/ngallery/l/d;->b(Landroid/app/Activity;)V

    .line 42
    :cond_e
    monitor-exit v0

    goto :goto_13

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw p0

    .line 44
    :cond_13
    :goto_13
    sget p0, Lcom/gaia/ngallery/l/d;->b:I

    return p0
.end method

.method public static b(F)I
    .registers 2

    .line 71
    sget v0, Lcom/gaia/ngallery/l/d;->d:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private static b(Landroid/app/Activity;)V
    .registers 4

    .line 48
    sget-boolean v0, Lcom/gaia/ngallery/l/d;->a:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 49
    sput-boolean v0, Lcom/gaia/ngallery/l/d;->a:Z

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 52
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1f

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_22

    .line 57
    :cond_1f
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 60
    :goto_22
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lcom/gaia/ngallery/l/d;->b:I

    .line 61
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lcom/gaia/ngallery/l/d;->c:I

    .line 62
    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcom/gaia/ngallery/l/d;->d:F

    .line 63
    iget p0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput p0, Lcom/gaia/ngallery/l/d;->e:F

    return-void
.end method

.method public static c(F)I
    .registers 2

    .line 75
    sget v0, Lcom/gaia/ngallery/l/d;->e:F

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static d(F)I
    .registers 2

    .line 79
    sget v0, Lcom/gaia/ngallery/l/d;->e:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method
