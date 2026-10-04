###### Class android.support.percent.PercentRelativeLayout (android.support.percent.PercentRelativeLayout)
.class public Landroid/support/percent/PercentRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "PercentRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/percent/PercentRelativeLayout$LayoutParams;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mHelper:Landroid/support/percent/PercentLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 134
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance p1, Landroid/support/percent/PercentLayoutHelper;

    invoke-direct {p1, p0}, Landroid/support/percent/PercentLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroid/support/percent/PercentRelativeLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    new-instance p1, Landroid/support/percent/PercentLayoutHelper;

    invoke-direct {p1, p0}, Landroid/support/percent/PercentLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroid/support/percent/PercentRelativeLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    new-instance p1, Landroid/support/percent/PercentLayoutHelper;

    invoke-direct {p1, p0}, Landroid/support/percent/PercentLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroid/support/percent/PercentRelativeLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/support/percent/PercentRelativeLayout$LayoutParams;
    .registers 3

    .line 147
    new-instance v0, Landroid/support/percent/PercentRelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/support/percent/PercentRelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 129
    invoke-virtual {p0}, Landroid/support/percent/PercentRelativeLayout;->generateDefaultLayoutParams()Landroid/support/percent/PercentRelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/percent/PercentRelativeLayout$LayoutParams;
    .registers 4

    .line 152
    new-instance v0, Landroid/support/percent/PercentRelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/percent/PercentRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/percent/PercentRelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 129
    invoke-virtual {p0, p1}, Landroid/support/percent/PercentRelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/percent/PercentRelativeLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 2

    .line 129
    invoke-virtual {p0, p1}, Landroid/support/percent/PercentRelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/percent/PercentRelativeLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 166
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 167
    iget-object p1, p0, Landroid/support/percent/PercentRelativeLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    invoke-virtual {p1}, Landroid/support/percent/PercentLayoutHelper;->restoreOriginalParams()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 157
    iget-object v0, p0, Landroid/support/percent/PercentRelativeLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/percent/PercentLayoutHelper;->adjustChildren(II)V

    .line 158
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 159
    iget-object v0, p0, Landroid/support/percent/PercentRelativeLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    invoke-virtual {v0}, Landroid/support/percent/PercentLayoutHelper;->handleMeasuredStateTooSmall()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 160
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    :cond_13
    return-void
.end method

###### Class android.support.percent.PercentRelativeLayout.LayoutParams (android.support.percent.PercentRelativeLayout$LayoutParams)
.class public Landroid/support/percent/PercentRelativeLayout$LayoutParams;
.super Landroid/widget/RelativeLayout$LayoutParams;
.source "PercentRelativeLayout.java"

# interfaces
.implements Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/percent/PercentRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 184
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 179
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 180
    invoke-static {p1, p2}, Landroid/support/percent/PercentLayoutHelper;->getPercentLayoutInfo(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    iput-object p1, p0, Landroid/support/percent/PercentRelativeLayout$LayoutParams;->mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 188
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 2

    .line 192
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method


# virtual methods
.method public getPercentLayoutInfo()Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    .registers 2

    .line 197
    iget-object v0, p0, Landroid/support/percent/PercentRelativeLayout$LayoutParams;->mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    if-nez v0, :cond_b

    .line 198
    new-instance v0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v0}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    iput-object v0, p0, Landroid/support/percent/PercentRelativeLayout$LayoutParams;->mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    .line 201
    :cond_b
    iget-object v0, p0, Landroid/support/percent/PercentRelativeLayout$LayoutParams;->mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    return-object v0
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .registers 4

    .line 206
    invoke-static {p0, p1, p2, p3}, Landroid/support/percent/PercentLayoutHelper;->fetchWidthAndHeight(Landroid/view/ViewGroup$LayoutParams;Landroid/content/res/TypedArray;II)V

    return-void
.end method
