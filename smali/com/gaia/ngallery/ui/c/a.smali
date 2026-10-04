###### Class com.gaia.ngallery.ui.c.a (com.gaia.ngallery.ui.c.a)
.class public Lcom/gaia/ngallery/ui/c/a;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "RecycleViewDivider.java"


# static fields
.field private static final e:[I


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    .line 23
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/gaia/ngallery/ui/c/a;->e:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x2

    .line 21
    iput v0, p0, Lcom/gaia/ngallery/ui/c/a;->c:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_14

    if-nez p2, :cond_c

    goto :goto_14

    .line 33
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u53c2\u6570\uff01"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_14
    :goto_14
    iput p2, p0, Lcom/gaia/ngallery/ui/c/a;->d:I

    .line 37
    sget-object p2, Lcom/gaia/ngallery/ui/c/a;->e:[I

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/gaia/ngallery/ui/c/a;->b:Landroid/graphics/drawable/Drawable;

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/c/a;-><init>(Landroid/content/Context;I)V

    .line 51
    invoke-static {p1, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/c/a;->b:Landroid/graphics/drawable/Drawable;

    .line 52
    iget-object p1, p0, Lcom/gaia/ngallery/ui/c/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/gaia/ngallery/ui/c/a;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .registers 5

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/c/a;-><init>(Landroid/content/Context;I)V

    .line 65
    iput p3, p0, Lcom/gaia/ngallery/ui/c/a;->c:I

    .line 66
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/c/a;->a:Landroid/graphics/Paint;

    .line 67
    iget-object p1, p0, Lcom/gaia/ngallery/ui/c/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object p1, p0, Lcom/gaia/ngallery/ui/c/a;->a:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .registers 16

    .line 92
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 93
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 94
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_47

    .line 96
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 97
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 98
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    .line 99
    iget v5, p0, Lcom/gaia/ngallery/ui/c/a;->c:I

    add-int/2addr v5, v4

    .line 100
    iget-object v6, p0, Lcom/gaia/ngallery/ui/c/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_36

    .line 101
    iget-object v6, p0, Lcom/gaia/ngallery/ui/c/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 102
    iget-object v6, p0, Lcom/gaia/ngallery/ui/c/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 104
    :cond_36
    iget-object v6, p0, Lcom/gaia/ngallery/ui/c/a;->a:Landroid/graphics/Paint;

    if-eqz v6, :cond_44

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    int-to-float v11, v5

    .line 105
    iget-object v12, p0, Lcom/gaia/ngallery/ui/c/a;->a:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_47
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .registers 16

    .line 112
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    .line 113
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 114
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_47

    .line 116
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 117
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 118
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 119
    iget v5, p0, Lcom/gaia/ngallery/ui/c/a;->c:I

    add-int/2addr v5, v4

    .line 120
    iget-object v6, p0, Lcom/gaia/ngallery/ui/c/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_36

    .line 121
    iget-object v6, p0, Lcom/gaia/ngallery/ui/c/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4, v0, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    iget-object v6, p0, Lcom/gaia/ngallery/ui/c/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    :cond_36
    iget-object v6, p0, Lcom/gaia/ngallery/ui/c/a;->a:Landroid/graphics/Paint;

    if-eqz v6, :cond_44

    int-to-float v8, v4

    int-to-float v9, v0

    int-to-float v10, v5

    int-to-float v11, v1

    .line 125
    iget-object v12, p0, Lcom/gaia/ngallery/ui/c/a;->a:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_47
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 5

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 76
    iget p2, p0, Lcom/gaia/ngallery/ui/c/a;->c:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 5

    .line 82
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 83
    iget p3, p0, Lcom/gaia/ngallery/ui/c/a;->d:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_c

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/c/a;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_f

    .line 86
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/c/a;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    :goto_f
    return-void
.end method
