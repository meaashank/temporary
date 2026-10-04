###### Class com.gaia.ngallery.ui.widget.a.a (com.gaia.ngallery.ui.widget.a.a)
.class public Lcom/gaia/ngallery/ui/widget/a/a;
.super Lcom/gaia/ngallery/ui/widget/a/c;
.source "Api20ItemDivider.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x4

    .line 40
    invoke-direct {p0, p1, v0, v0}, Lcom/gaia/ngallery/ui/widget/a/a;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/a/c;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/widget/a/a;->a:Landroid/graphics/drawable/Drawable;

    .line 50
    iput p2, p0, Lcom/gaia/ngallery/ui/widget/a/a;->b:I

    .line 51
    iput p3, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;)I
    .registers 3

    .line 97
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 98
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_f

    .line 99
    check-cast p1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x1

    return p1
.end method

.method private a(II)Z
    .registers 3

    if-ge p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method private a(III)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_9

    add-int/2addr p1, v1

    if-ne p1, p3, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0

    .line 112
    :cond_9
    rem-int v2, p3, p2

    sub-int/2addr p3, v2

    .line 113
    div-int/2addr p3, p2

    if-lez v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    add-int/2addr p3, v2

    add-int/2addr p1, v1

    .line 115
    rem-int v2, p1, p2

    if-nez v2, :cond_1d

    .line 117
    div-int/2addr p1, p2

    if-ne p3, p1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0

    :cond_1d
    sub-int/2addr p1, v2

    .line 120
    div-int/2addr p1, p2

    add-int/2addr p1, v1

    if-ne p3, p1, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0
.end method

.method private b(II)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    return v0

    .line 129
    :cond_4
    rem-int/2addr p1, p2

    if-nez p1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private c(II)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    return v0

    :cond_4
    add-int/2addr p1, v0

    .line 135
    rem-int/2addr p1, p2

    if-nez p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 177
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    return v0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .registers 10

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 146
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_2a

    .line 148
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 150
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 151
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 152
    iget v5, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    add-int/2addr v5, v4

    .line 153
    iget-object v6, p0, Lcom/gaia/ngallery/ui/widget/a/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    iget-object v2, p0, Lcom/gaia/ngallery/ui/widget/a/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 156
    :cond_2a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public b()I
    .registers 2

    .line 182
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/a/a;->b:I

    return v0
.end method

.method public b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .registers 10

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 161
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_2a

    .line 163
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    .line 165
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 166
    iget v5, p0, Lcom/gaia/ngallery/ui/widget/a/a;->b:I

    add-int/2addr v5, v3

    .line 167
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 169
    iget-object v6, p0, Lcom/gaia/ngallery/ui/widget/a/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 170
    iget-object v2, p0, Lcom/gaia/ngallery/ui/widget/a/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 172
    :cond_2a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 9

    .line 56
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    .line 57
    invoke-direct {p0, p3}, Lcom/gaia/ngallery/ui/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result p4

    .line 58
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    .line 60
    invoke-direct {p0, p2, p4}, Lcom/gaia/ngallery/ui/widget/a/a;->a(II)Z

    move-result v0

    .line 61
    invoke-direct {p0, p2, p4, p3}, Lcom/gaia/ngallery/ui/widget/a/a;->a(III)Z

    move-result p3

    .line 62
    invoke-direct {p0, p2, p4}, Lcom/gaia/ngallery/ui/widget/a/a;->b(II)Z

    move-result v1

    .line 63
    invoke-direct {p0, p2, p4}, Lcom/gaia/ngallery/ui/widget/a/a;->c(II)Z

    move-result p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p4, v3, :cond_47

    if-eqz v0, :cond_2f

    .line 67
    iget p2, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, v2, v2, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_e4

    :cond_2f
    if-eqz p3, :cond_3a

    .line 69
    iget p2, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, v2, p2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_e4

    .line 71
    :cond_3a
    iget p2, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, v2, p2, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_e4

    :cond_47
    if-eqz v0, :cond_58

    if-eqz v1, :cond_58

    .line 75
    iget p2, p0, Lcom/gaia/ngallery/ui/widget/a/a;->b:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_e4

    :cond_58
    if-eqz v0, :cond_69

    if-eqz p2, :cond_69

    .line 77
    iget p2, p0, Lcom/gaia/ngallery/ui/widget/a/a;->b:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, p2, v2, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_e4

    :cond_69
    if-eqz v0, :cond_7b

    .line 79
    iget p2, p0, Lcom/gaia/ngallery/ui/widget/a/a;->b:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/gaia/ngallery/ui/widget/a/a;->b:I

    div-int/lit8 p3, p3, 0x2

    iget p4, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_e4

    :cond_7b
    if-eqz p3, :cond_8b

    if-eqz v1, :cond_8b

    .line 81
    iget p2, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/gaia/ngallery/ui/widget/a/a;->b:I

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, v2, p2, p3, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_e4

    :cond_8b
    if-eqz p3, :cond_9b

    if-eqz p2, :cond_9b

    .line 83
    iget p2, p0, Lcom/gaia/ngallery/ui/widget/a/a;->b:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, p2, p3, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_e4

    :cond_9b
    if-eqz p3, :cond_ad

    .line 85
    iget p2, p0, Lcom/gaia/ngallery/ui/widget/a/a;->b:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    div-int/lit8 p3, p3, 0x2

    iget p4, p0, Lcom/gaia/ngallery/ui/widget/a/a;->b:I

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p1, p2, p3, p4, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_e4

    :cond_ad
    if-eqz v1, :cond_bf

    .line 87
    iget p2, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/gaia/ngallery/ui/widget/a/a;->b:I

    div-int/lit8 p3, p3, 0x2

    iget p4, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p1, v2, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_e4

    :cond_bf
    if-eqz p2, :cond_d1

    .line 89
    iget p2, p0, Lcom/gaia/ngallery/ui/widget/a/a;->b:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    div-int/lit8 p3, p3, 0x2

    iget p4, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p1, p2, p3, v2, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_e4

    .line 91
    :cond_d1
    iget p2, p0, Lcom/gaia/ngallery/ui/widget/a/a;->b:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    div-int/lit8 p3, p3, 0x2

    iget p4, p0, Lcom/gaia/ngallery/ui/widget/a/a;->b:I

    div-int/lit8 p4, p4, 0x2

    iget v0, p0, Lcom/gaia/ngallery/ui/widget/a/a;->c:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_e4
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 4

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/widget/a/a;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/ui/widget/a/a;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method
