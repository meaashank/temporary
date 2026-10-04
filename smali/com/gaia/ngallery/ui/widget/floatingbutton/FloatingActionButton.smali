###### Class com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionButton (com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionButton)
.class public Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;
.super Landroid/support/v7/widget/AppCompatImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$b;,
        Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$a;
    }
.end annotation


# static fields
.field public static final b:I = 0x0

.field public static final c:I = 0x1


# instance fields
.field private a:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field d:I

.field e:I

.field f:I

.field g:Ljava/lang/String;

.field h:Z

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:I

.field private k:F

.field private l:F

.field private m:F

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(IF)Landroid/graphics/drawable/Drawable;
    .registers 12

    .line 291
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 292
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->f(I)I

    move-result p1

    .line 294
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 296
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x1

    .line 297
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 298
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x2

    .line 300
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->c(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, v2, v3

    const/16 p1, 0xff

    if-eq v0, p1, :cond_38

    .line 305
    iget-boolean p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->h:Z

    if-nez p1, :cond_32

    goto :goto_38

    :cond_32
    new-instance p1, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$b;

    invoke-direct {p1, v0, v2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$b;-><init>(I[Landroid/graphics/drawable/Drawable;)V

    goto :goto_3d

    :cond_38
    :goto_38
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_3d
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    float-to-int v8, p2

    const/4 v4, 0x1

    move-object v3, p1

    move v5, v8

    move v6, v8

    move v7, v8

    .line 310
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    return-object p1
.end method

.method private a(F)Landroid/graphics/drawable/StateListDrawable;
    .registers 7

    .line 283
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    .line 284
    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, -0x101009e

    aput v4, v2, v3

    iget v4, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->f:I

    invoke-direct {p0, v4, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 285
    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    iget v2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->e:I

    invoke-direct {p0, v2, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 286
    new-array v1, v3, [I

    iget v2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->d:I

    invoke-direct {p0, v2, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private b(IF)I
    .registers 6

    const/4 v0, 0x3

    .line 358
    new-array v0, v0, [F

    .line 359
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    .line 361
    aget v2, v0, v1

    mul-float v2, v2, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    aput p2, v0, v1

    .line 363
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private b(F)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 333
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 335
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x1

    .line 336
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 337
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 338
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, -0x1000000

    .line 339
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    const p1, 0x3ca3d70a    # 0.02f

    .line 340
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->c(F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-object v0
.end method

.method private c(F)I
    .registers 3

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private c(I)I
    .registers 3

    const v0, 0x3f666666    # 0.9f

    .line 350
    invoke-direct {p0, p1, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->b(IF)I

    move-result p1

    return p1
.end method

.method private c(IF)Landroid/graphics/drawable/Drawable;
    .registers 12

    .line 384
    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->h:Z

    if-nez v0, :cond_b

    .line 385
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p1

    .line 388
    :cond_b
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 390
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->c(I)I

    move-result v8

    .line 391
    invoke-direct {p0, v8}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->e(I)I

    move-result v7

    .line 392
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->d(I)I

    move-result v4

    .line 393
    invoke-direct {p0, v4}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->e(I)I

    move-result v5

    .line 395
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x1

    .line 396
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 397
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 398
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 399
    new-instance p2, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$1;

    move-object v2, p2

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$1;-><init>(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;IIIII)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    return-object v0
.end method

.method private c()V
    .registers 4

    .line 97
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->k:F

    iget v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->l:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->n:I

    return-void
.end method

.method private d(I)I
    .registers 3

    const v0, 0x3f8ccccd    # 1.1f

    .line 354
    invoke-direct {p0, p1, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->b(IF)I

    move-result p1

    return p1
.end method

.method private d()V
    .registers 2

    .line 101
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->j:I

    if-nez v0, :cond_7

    sget v0, Lcom/gaia/ngallery/i$f;->fab_size_normal:I

    goto :goto_9

    :cond_7
    sget v0, Lcom/gaia/ngallery/i$f;->fab_size_mini:I

    :goto_9
    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->b(I)F

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->k:F

    return-void
.end method

.method private e(I)I
    .registers 5

    .line 368
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 369
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 370
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 371
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 367
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private f(I)I
    .registers 4

    .line 377
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 378
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 379
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 376
    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 416
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 417
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    .line 419
    :cond_a
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_d
    return-void
.end method


# virtual methods
.method a(I)I
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 204
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 78
    sget-object v0, Lcom/gaia/ngallery/i$p;->FloatingActionButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 79
    sget p2, Lcom/gaia/ngallery/i$p;->FloatingActionButton_fab_colorNormal:I

    const v0, 0x1060013

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->d:I

    .line 80
    sget p2, Lcom/gaia/ngallery/i$p;->FloatingActionButton_fab_colorPressed:I

    const v0, 0x1060012

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->e:I

    .line 81
    sget p2, Lcom/gaia/ngallery/i$p;->FloatingActionButton_fab_colorDisabled:I

    const/high16 v0, 0x1060000

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->f:I

    .line 82
    sget p2, Lcom/gaia/ngallery/i$p;->FloatingActionButton_fab_size:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->j:I

    .line 83
    sget p2, Lcom/gaia/ngallery/i$p;->FloatingActionButton_fab_icon:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a:I

    .line 84
    sget p2, Lcom/gaia/ngallery/i$p;->FloatingActionButton_fab_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->g:Ljava/lang/String;

    .line 85
    sget p2, Lcom/gaia/ngallery/i$p;->FloatingActionButton_fab_stroke_visible:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->h:Z

    .line 86
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->d()V

    .line 89
    sget p1, Lcom/gaia/ngallery/i$f;->fab_shadow_radius:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->b(I)F

    move-result p1

    iput p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->l:F

    .line 90
    sget p1, Lcom/gaia/ngallery/i$f;->fab_shadow_offset:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->b(I)F

    move-result p1

    iput p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->m:F

    .line 91
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->c()V

    .line 93
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->b()V

    return-void
.end method

.method public a()Z
    .registers 2

    .line 200
    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->h:Z

    return v0
.end method

.method b(I)F
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 208
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1
.end method

.method b()V
    .registers 13

    .line 234
    sget v0, Lcom/gaia/ngallery/i$f;->fab_stroke_width:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->b(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    .line 237
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 239
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->j:I

    if-nez v4, :cond_1a

    sget v4, Lcom/gaia/ngallery/i$g;->fab_bg_normal:I

    goto :goto_1c

    :cond_1a
    sget v4, Lcom/gaia/ngallery/i$g;->fab_bg_mini:I

    :goto_1c
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 240
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a(F)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 241
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->b(F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    .line 242
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-direct {v8, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->k:F

    sget v2, Lcom/gaia/ngallery/i$f;->fab_icon_size:I

    invoke-virtual {p0, v2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->b(I)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    div-int/2addr v0, v3

    .line 247
    iget v2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->l:F

    float-to-int v9, v2

    .line 248
    iget v2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->l:F

    iget v3, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->m:F

    sub-float/2addr v2, v3

    float-to-int v10, v2

    .line 249
    iget v2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->l:F

    iget v3, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->m:F

    add-float/2addr v2, v3

    float-to-int v11, v2

    const/4 v3, 0x1

    move-object v2, v8

    move v4, v9

    move v5, v10

    move v6, v9

    move v7, v11

    .line 251
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    const/4 v3, 0x2

    int-to-float v2, v9

    sub-float/2addr v2, v1

    float-to-int v6, v2

    int-to-float v2, v10

    sub-float/2addr v2, v1

    float-to-int v5, v2

    int-to-float v2, v11

    sub-float/2addr v2, v1

    float-to-int v7, v2

    move-object v2, v8

    move v4, v6

    .line 257
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    const/4 v3, 0x3

    add-int v6, v9, v0

    add-int v5, v10, v0

    add-int v7, v11, v0

    move v4, v6

    .line 263
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 269
    invoke-direct {p0, v8}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getColorDisabled()I
    .registers 2

    .line 178
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->f:I

    return v0
.end method

.method public getColorNormal()I
    .registers 2

    .line 142
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->d:I

    return v0
.end method

.method public getColorPressed()I
    .registers 2

    .line 160
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->e:I

    return v0
.end method

.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 274
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->i:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 275
    :cond_7
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a:I

    if-eqz v0, :cond_16

    .line 276
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 278
    :cond_16
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method getLabelView()Landroid/widget/TextView;
    .registers 2

    .line 220
    sget v0, Lcom/gaia/ngallery/i$h;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->j:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 229
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageButton;->onMeasure(II)V

    .line 230
    iget p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->n:I

    iget p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->n:I

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColorDisabled(I)V
    .registers 3

    .line 186
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->f:I

    if-eq v0, p1, :cond_9

    .line 187
    iput p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->f:I

    .line 188
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->b()V

    :cond_9
    return-void
.end method

.method public setColorDisabledResId(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 182
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->setColorDisabled(I)V

    return-void
.end method

.method public setColorNormal(I)V
    .registers 3

    .line 150
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->d:I

    if-eq v0, p1, :cond_9

    .line 151
    iput p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->d:I

    .line 152
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->b()V

    :cond_9
    return-void
.end method

.method public setColorNormalResId(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 146
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->setColorNormal(I)V

    return-void
.end method

.method public setColorPressed(I)V
    .registers 3

    .line 168
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->e:I

    if-eq v0, p1, :cond_9

    .line 169
    iput p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->e:I

    .line 170
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->b()V

    :cond_9
    return-void
.end method

.method public setColorPressedResId(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 164
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->setColorPressed(I)V

    return-void
.end method

.method public setIcon(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 123
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a:I

    if-eq v0, p1, :cond_c

    .line 124
    iput p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a:I

    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->i:Landroid/graphics/drawable/Drawable;

    .line 126
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->b()V

    :cond_c
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 131
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->i:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_c

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a:I

    .line 133
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->i:Landroid/graphics/drawable/Drawable;

    .line 134
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->b()V

    :cond_c
    return-void
.end method

.method public setSize(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    if-nez p1, :cond_6

    goto :goto_e

    .line 106
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use @FAB_SIZE constants only!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_e
    :goto_e
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->j:I

    if-eq v0, p1, :cond_1d

    .line 110
    iput p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->j:I

    .line 111
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->d()V

    .line 112
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->c()V

    .line 113
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->b()V

    :cond_1d
    return-void
.end method

.method public setStrokeVisible(Z)V
    .registers 3

    .line 193
    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->h:Z

    if-eq v0, p1, :cond_9

    .line 194
    iput-boolean p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->h:Z

    .line 195
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->b()V

    :cond_9
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 212
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->g:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 215
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 425
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 427
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    :cond_9
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageButton;->setVisibility(I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionButton.AnonymousClass1 (com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionButton$1)
.class Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->c(IF)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;IIIII)V
    .registers 7

    .line 399
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$1;->f:Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;

    iput p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$1;->a:I

    iput p3, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$1;->b:I

    iput p4, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$1;->c:I

    iput p5, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$1;->d:I

    iput p6, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$1;->e:I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .registers 12

    .line 402
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v0, 0x2

    div-int/2addr p1, v0

    int-to-float v3, p1

    int-to-float v4, p2

    const/4 p1, 0x5

    new-array v5, p1, [I

    iget p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$1;->a:I

    const/4 v1, 0x0

    aput p2, v5, v1

    iget p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$1;->b:I

    const/4 v1, 0x1

    aput p2, v5, v1

    iget p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$1;->c:I

    aput p2, v5, v0

    iget p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$1;->d:I

    const/4 v0, 0x3

    aput p2, v5, v0

    iget p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$1;->e:I

    const/4 v0, 0x4

    aput p2, v5, v0

    new-array v6, p1, [F

    fill-array-data v6, :array_30

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    move-object v0, v8

    move v1, v3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v8

    nop

    :array_30
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

###### Class com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionButton.a (com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionButton$a)
.class public interface abstract annotation Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$a;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "a"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionButton.b (com.gaia.ngallery.ui.widget.floatingbutton.FloatingActionButton$b)
.class Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$b;
.super Landroid/graphics/drawable/LayerDrawable;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public varargs constructor <init>(I[Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 319
    invoke-direct {p0, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 320
    iput p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$b;->a:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 325
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$b;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 326
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget v7, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton$b;->a:I

    const/16 v8, 0x1f

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 327
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 328
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
