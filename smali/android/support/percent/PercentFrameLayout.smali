###### Class android.support.percent.PercentFrameLayout (android.support.percent.PercentFrameLayout)
.class public Landroid/support/percent/PercentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PercentFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/percent/PercentFrameLayout$LayoutParams;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mHelper:Landroid/support/percent/PercentLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 137
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance p1, Landroid/support/percent/PercentLayoutHelper;

    invoke-direct {p1, p0}, Landroid/support/percent/PercentLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroid/support/percent/PercentFrameLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    new-instance p1, Landroid/support/percent/PercentLayoutHelper;

    invoke-direct {p1, p0}, Landroid/support/percent/PercentLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroid/support/percent/PercentFrameLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    new-instance p1, Landroid/support/percent/PercentLayoutHelper;

    invoke-direct {p1, p0}, Landroid/support/percent/PercentLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroid/support/percent/PercentFrameLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/support/percent/PercentFrameLayout$LayoutParams;
    .registers 3

    .line 150
    new-instance v0, Landroid/support/percent/PercentFrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/support/percent/PercentFrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 132
    invoke-virtual {p0}, Landroid/support/percent/PercentFrameLayout;->generateDefaultLayoutParams()Landroid/support/percent/PercentFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .line 132
    invoke-virtual {p0}, Landroid/support/percent/PercentFrameLayout;->generateDefaultLayoutParams()Landroid/support/percent/PercentFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/percent/PercentFrameLayout$LayoutParams;
    .registers 4

    .line 155
    new-instance v0, Landroid/support/percent/PercentFrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/percent/PercentFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/percent/PercentFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 132
    invoke-virtual {p0, p1}, Landroid/support/percent/PercentFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/percent/PercentFrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .line 132
    invoke-virtual {p0, p1}, Landroid/support/percent/PercentFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/percent/PercentFrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 169
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 170
    iget-object p1, p0, Landroid/support/percent/PercentFrameLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    invoke-virtual {p1}, Landroid/support/percent/PercentLayoutHelper;->restoreOriginalParams()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 160
    iget-object v0, p0, Landroid/support/percent/PercentFrameLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/percent/PercentLayoutHelper;->adjustChildren(II)V

    .line 161
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 162
    iget-object v0, p0, Landroid/support/percent/PercentFrameLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    invoke-virtual {v0}, Landroid/support/percent/PercentLayoutHelper;->handleMeasuredStateTooSmall()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 163
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_13
    return-void
.end method

###### Class android.support.percent.PercentFrameLayout.LayoutParams (android.support.percent.PercentFrameLayout$LayoutParams)
.class public Landroid/support/percent/PercentFrameLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "PercentFrameLayout.java"

# interfaces
.implements Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/percent/PercentFrameLayout;
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

    .line 187
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 191
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 182
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    invoke-static {p1, p2}, Landroid/support/percent/PercentLayoutHelper;->getPercentLayoutInfo(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    iput-object p1, p0, Landroid/support/percent/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    return-void
.end method

.method public constructor <init>(Landroid/support/percent/PercentFrameLayout$LayoutParams;)V
    .registers 2
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 210
    invoke-direct {p0, p1}, Landroid/support/percent/PercentFrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 211
    iget-object p1, p1, Landroid/support/percent/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    iput-object p1, p0, Landroid/support/percent/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 195
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 2

    .line 199
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 2

    .line 203
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 204
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput p1, p0, Landroid/support/percent/PercentFrameLayout$LayoutParams;->gravity:I

    return-void
.end method


# virtual methods
.method public getPercentLayoutInfo()Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    .registers 2

    .line 216
    iget-object v0, p0, Landroid/support/percent/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    if-nez v0, :cond_b

    .line 217
    new-instance v0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v0}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    iput-object v0, p0, Landroid/support/percent/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    .line 220
    :cond_b
    iget-object v0, p0, Landroid/support/percent/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    return-object v0
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .registers 4

    .line 225
    invoke-static {p0, p1, p2, p3}, Landroid/support/percent/PercentLayoutHelper;->fetchWidthAndHeight(Landroid/view/ViewGroup$LayoutParams;Landroid/content/res/TypedArray;II)V

    return-void
.end method
