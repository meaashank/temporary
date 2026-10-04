###### Class com.gaia.ngallery.ui.widget.floatingbutton.AddFloatingActionButton (com.gaia.ngallery.ui.widget.floatingbutton.AddFloatingActionButton)
.class public Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;
.super Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;
.source "AddFloatingActionButton.java"


# instance fields
.field a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 35
    sget-object v0, Lcom/gaia/ngallery/i$p;->AddFloatingActionButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    sget v1, Lcom/gaia/ngallery/i$p;->AddFloatingActionButton_fab_plusIconColor:I

    const v2, 0x106000b

    invoke-virtual {p0, v2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->a:I

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    invoke-super {p0, p1, p2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 8

    .line 67
    sget v0, Lcom/gaia/ngallery/i$f;->fab_icon_size:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->b(I)F

    move-result v6

    const/high16 v0, 0x40000000    # 2.0f

    div-float v4, v6, v0

    .line 70
    sget v1, Lcom/gaia/ngallery/i$f;->fab_plus_icon_size:I

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->b(I)F

    move-result v1

    .line 71
    sget v2, Lcom/gaia/ngallery/i$f;->fab_plus_icon_stroke:I

    invoke-virtual {p0, v2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->b(I)F

    move-result v2

    div-float v5, v2, v0

    sub-float v1, v6, v1

    div-float v3, v1, v0

    .line 74
    new-instance v0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;-><init>(Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;FFFF)V

    .line 82
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 84
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 85
    iget v2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->a:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x1

    .line 87
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v1
.end method

.method public getPlusColor()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->a:I

    return v0
.end method

.method public setIcon(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use FloatingActionButton if you want to use custom icon"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPlusColor(I)V
    .registers 3

    .line 54
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->a:I

    if-eq v0, p1, :cond_9

    .line 55
    iput p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->a:I

    .line 56
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->b()V

    :cond_9
    return-void
.end method

.method public setPlusColorResId(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 50
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->setPlusColor(I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.widget.floatingbutton.AddFloatingActionButton.AnonymousClass1 (com.gaia.ngallery.ui.widget.floatingbutton.AddFloatingActionButton$1)
.class Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;
.super Landroid/graphics/drawable/shapes/Shape;
.source "AddFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;FFFF)V
    .registers 6

    .line 74
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->e:Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton;

    iput p2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->a:F

    iput p3, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->b:F

    iput p4, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->c:F

    iput p5, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->d:F

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 11

    .line 77
    iget v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->a:F

    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->b:F

    iget v2, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->c:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->d:F

    iget v3, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->a:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->b:F

    iget v4, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->c:F

    add-float/2addr v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 78
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->b:F

    iget v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->c:F

    sub-float v3, v0, v1

    iget v4, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->a:F

    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->b:F

    iget v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->c:F

    add-float v5, v0, v1

    iget v0, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->d:F

    iget v1, p0, Lcom/gaia/ngallery/ui/widget/floatingbutton/AddFloatingActionButton$1;->a:F

    sub-float v6, v0, v1

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
