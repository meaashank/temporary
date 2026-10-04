###### Class android.support.v7.widget.CardViewBaseImpl (android.support.v7.widget.CardViewBaseImpl)
.class Landroid/support/v7/widget/CardViewBaseImpl;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Landroid/support/v7/widget/CardViewImpl;


# instance fields
.field final mCornerRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    return-void
.end method

.method private createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroid/support/v7/widget/RoundRectDrawableWithShadow;
    .registers 13

    .line 93
    new-instance v6, Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    return-object v6
.end method

.method private getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;
    .registers 2

    .line 171
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    return-object p1
.end method


# virtual methods
.method public getBackgroundColor(Landroid/support/v7/widget/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .registers 2

    .line 125
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getElevation(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 2

    .line 146
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getShadowSize()F

    move-result p1

    return p1
.end method

.method public getMaxElevation(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 2

    .line 157
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getMaxShadowSize()F

    move-result p1

    return p1
.end method

.method public getMinHeight(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 2

    .line 167
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getMinHeight()F

    move-result p1

    return p1
.end method

.method public getMinWidth(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 2

    .line 162
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getMinWidth()F

    move-result p1

    return p1
.end method

.method public getRadius(Landroid/support/v7/widget/CardViewDelegate;)F
    .registers 2

    .line 136
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getCornerRadius()F

    move-result p1

    return p1
.end method

.method public initStatic()V
    .registers 2

    .line 37
    new-instance v0, Landroid/support/v7/widget/CardViewBaseImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/CardViewBaseImpl$1;-><init>(Landroid/support/v7/widget/CardViewBaseImpl;)V

    sput-object v0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroid/support/v7/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    return-void
.end method

.method public initialize(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .registers 13

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 83
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/CardViewBaseImpl;->createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object p2

    .line 85
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 86
    invoke-interface {p1, p2}, Landroid/support/v7/widget/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    return-void
.end method

.method public onCompatPaddingChanged(Landroid/support/v7/widget/CardViewDelegate;)V
    .registers 2

    return-void
.end method

.method public onPreventCornerOverlapChanged(Landroid/support/v7/widget/CardViewDelegate;)V
    .registers 4

    .line 114
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 115
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    return-void
.end method

.method public setBackgroundColor(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 120
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setElevation(Landroid/support/v7/widget/CardViewDelegate;F)V
    .registers 3

    .line 141
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setShadowSize(F)V

    return-void
.end method

.method public setMaxElevation(Landroid/support/v7/widget/CardViewDelegate;F)V
    .registers 4

    .line 151
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setMaxShadowSize(F)V

    .line 152
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    return-void
.end method

.method public setRadius(Landroid/support/v7/widget/CardViewDelegate;F)V
    .registers 4

    .line 130
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setCornerRadius(F)V

    .line 131
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    return-void
.end method

.method public updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V
    .registers 6

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 100
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V

    .line 101
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getMinWidth(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 102
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewBaseImpl;->getMinHeight(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 101
    invoke-interface {p1, v1, v2}, Landroid/support/v7/widget/CardViewDelegate;->setMinWidthHeightInternal(II)V

    .line 103
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/support/v7/widget/CardViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method

###### Class android.support.v7.widget.CardViewBaseImpl.AnonymousClass1 (android.support.v7.widget.CardViewBaseImpl$1)
.class Landroid/support/v7/widget/CardViewBaseImpl$1;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Landroid/support/v7/widget/RoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/CardViewBaseImpl;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/CardViewBaseImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/CardViewBaseImpl;)V
    .registers 2

    .line 38
    iput-object p1, p0, Landroid/support/v7/widget/CardViewBaseImpl$1;->this$0:Landroid/support/v7/widget/CardViewBaseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .registers 20

    move-object v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, p3

    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v2, v1

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v2, v9

    .line 44
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v2, v1

    sub-float v11, v2, v9

    cmpl-float v1, p3, v9

    if-ltz v1, :cond_b7

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v12, p3, v1

    .line 48
    iget-object v1, v0, Landroid/support/v7/widget/CardViewBaseImpl$1;->this$0:Landroid/support/v7/widget/CardViewBaseImpl;

    iget-object v1, v1, Landroid/support/v7/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    neg-float v2, v12

    invoke-virtual {v1, v2, v2, v12, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 51
    iget v1, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v12

    iget v2, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v12

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 53
    iget-object v1, v0, Landroid/support/v7/widget/CardViewBaseImpl$1;->this$0:Landroid/support/v7/widget/CardViewBaseImpl;

    iget-object v2, v1, Landroid/support/v7/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v14, 0x0

    .line 54
    invoke-virtual {v7, v10, v14}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v6, 0x42b40000    # 90.0f

    .line 55
    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 56
    iget-object v1, v0, Landroid/support/v7/widget/CardViewBaseImpl$1;->this$0:Landroid/support/v7/widget/CardViewBaseImpl;

    iget-object v2, v1, Landroid/support/v7/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    move-object/from16 v1, p1

    const/high16 v9, 0x42b40000    # 90.0f

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 57
    invoke-virtual {v7, v11, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 58
    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->rotate(F)V

    .line 59
    iget-object v1, v0, Landroid/support/v7/widget/CardViewBaseImpl$1;->this$0:Landroid/support/v7/widget/CardViewBaseImpl;

    iget-object v2, v1, Landroid/support/v7/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 60
    invoke-virtual {v7, v10, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 61
    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->rotate(F)V

    .line 62
    iget-object v1, v0, Landroid/support/v7/widget/CardViewBaseImpl$1;->this$0:Landroid/support/v7/widget/CardViewBaseImpl;

    iget-object v2, v1, Landroid/support/v7/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 63
    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 65
    iget v1, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v12

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v1, v2

    iget v4, v8, Landroid/graphics/RectF;->top:F

    iget v1, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v12

    add-float v5, v1, v2

    iget v1, v8, Landroid/graphics/RectF;->top:F

    add-float v6, v1, v12

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 69
    iget v1, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v12

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v1, v2

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v1, v12

    iget v1, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v12

    add-float v5, v1, v2

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 74
    :cond_b7
    iget v2, v8, Landroid/graphics/RectF;->left:F

    iget v1, v8, Landroid/graphics/RectF;->top:F

    add-float v3, v1, p3

    iget v4, v8, Landroid/graphics/RectF;->right:F

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v1, p3

    move-object/from16 v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
