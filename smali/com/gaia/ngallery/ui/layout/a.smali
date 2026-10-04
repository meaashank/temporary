###### Class com.gaia.ngallery.ui.layout.a (com.gaia.ngallery.ui.layout.a)
.class public Lcom/gaia/ngallery/ui/layout/a;
.super Ljava/lang/Object;
.source "DockConfigStore.java"


# static fields
.field public static final a:I = 0x50

.field public static final b:I = 0x50

.field private static c:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/graphics/PointF;
    .registers 4

    .line 19
    sget-object v0, Lcom/gaia/ngallery/ui/layout/a;->c:Landroid/graphics/PointF;

    if-nez v0, :cond_28

    .line 20
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/ui/layout/a;->c:Landroid/graphics/PointF;

    .line 21
    sget-object v0, Lcom/gaia/ngallery/ui/layout/a;->c:Landroid/graphics/PointF;

    invoke-static {p0}, Lcom/prism/commons/f/d;->a(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x50

    invoke-static {p0, v2}, Lcom/prism/commons/f/d;->a(Landroid/content/Context;I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 22
    sget-object v0, Lcom/gaia/ngallery/ui/layout/a;->c:Landroid/graphics/PointF;

    invoke-static {p0}, Lcom/prism/commons/f/d;->b(Landroid/content/Context;)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    iput p0, v0, Landroid/graphics/PointF;->y:F

    .line 24
    :cond_28
    new-instance p0, Landroid/graphics/PointF;

    sget-object v0, Lcom/gaia/ngallery/ui/layout/a;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sget-object v1, Lcom/gaia/ngallery/ui/layout/a;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;FF)V
    .registers 3

    .line 30
    sget-object p0, Lcom/gaia/ngallery/ui/layout/a;->c:Landroid/graphics/PointF;

    if-nez p0, :cond_b

    .line 31
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    sput-object p0, Lcom/gaia/ngallery/ui/layout/a;->c:Landroid/graphics/PointF;

    .line 32
    :cond_b
    sget-object p0, Lcom/gaia/ngallery/ui/layout/a;->c:Landroid/graphics/PointF;

    iput p1, p0, Landroid/graphics/PointF;->x:F

    .line 33
    sget-object p0, Lcom/gaia/ngallery/ui/layout/a;->c:Landroid/graphics/PointF;

    iput p2, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method
