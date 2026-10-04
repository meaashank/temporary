###### Class com.gaia.ngallery.ui.widget.photoview.e (com.gaia.ngallery.ui.widget.photoview.e)
.class public Lcom/gaia/ngallery/ui/widget/photoview/e;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/gaia/ngallery/ui/widget/photoview/a/e;
.implements Lcom/gaia/ngallery/ui/widget/photoview/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/ui/widget/photoview/e$b;,
        Lcom/gaia/ngallery/ui/widget/photoview/e$a;,
        Lcom/gaia/ngallery/ui/widget/photoview/e$f;,
        Lcom/gaia/ngallery/ui/widget/photoview/e$g;,
        Lcom/gaia/ngallery/ui/widget/photoview/e$d;,
        Lcom/gaia/ngallery/ui/widget/photoview/e$e;,
        Lcom/gaia/ngallery/ui/widget/photoview/e$c;
    }
.end annotation


# static fields
.field static final f:I = -0x1

.field static final g:I = 0x0

.field static final h:I = 0x1

.field static final i:I = 0x2

.field static j:I

.field private static final k:Ljava/lang/String;


# instance fields
.field private A:Lcom/gaia/ngallery/ui/widget/photoview/e$c;

.field private B:Lcom/gaia/ngallery/ui/widget/photoview/e$d;

.field private C:Lcom/gaia/ngallery/ui/widget/photoview/e$g;

.field private D:Landroid/view/View$OnLongClickListener;

.field private E:Lcom/gaia/ngallery/ui/widget/photoview/e$e;

.field private F:Lcom/gaia/ngallery/ui/widget/photoview/e$f;

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:Lcom/gaia/ngallery/ui/widget/photoview/e$b;

.field private L:I

.field private M:F

.field private N:Z

.field private O:Landroid/widget/ImageView$ScaleType;

.field e:I

.field private l:Landroid/view/animation/Interpolator;

.field private m:F

.field private n:F

.field private o:F

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/view/GestureDetector;

.field private u:Lcom/gaia/ngallery/ui/widget/photoview/a/d;

.field private final v:Landroid/graphics/Matrix;

.field private final w:Landroid/graphics/Matrix;

.field private final x:Landroid/graphics/Matrix;

.field private final y:Landroid/graphics/RectF;

.field private final z:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-class v0, Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/widget/photoview/e;->k:Ljava/lang/String;

    const/4 v0, 0x1

    .line 64
    sput v0, Lcom/gaia/ngallery/ui/widget/photoview/e;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 3

    const/4 v0, 0x1

    .line 155
    invoke-direct {p0, p1, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;-><init>(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .registers 5

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->l:Landroid/view/animation/Interpolator;

    const/16 v0, 0xc8

    .line 57
    iput v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->e:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    iput v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->m:F

    const/high16 v0, 0x3fe00000    # 1.75f

    .line 67
    iput v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->n:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 68
    iput v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->o:F

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->p:Z

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->q:Z

    .line 72
    iput-boolean v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->r:Z

    .line 132
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->v:Landroid/graphics/Matrix;

    .line 133
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->w:Landroid/graphics/Matrix;

    .line 134
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->x:Landroid/graphics/Matrix;

    .line 135
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->y:Landroid/graphics/RectF;

    const/16 v1, 0x9

    .line 136
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->z:[F

    const/4 v1, 0x2

    .line 148
    iput v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->L:I

    .line 152
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->O:Landroid/widget/ImageView$ScaleType;

    .line 159
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->s:Ljava/lang/ref/WeakReference;

    .line 161
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 162
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 166
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 169
    :cond_61
    invoke-static {p1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->b(Landroid/widget/ImageView;)V

    .line 171
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_6b

    return-void

    .line 175
    :cond_6b
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/gaia/ngallery/ui/widget/photoview/a/f;->a(Landroid/content/Context;Lcom/gaia/ngallery/ui/widget/photoview/a/e;)Lcom/gaia/ngallery/ui/widget/photoview/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->u:Lcom/gaia/ngallery/ui/widget/photoview/a/d;

    .line 177
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/gaia/ngallery/ui/widget/photoview/e$1;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/widget/photoview/e$1;-><init>(Lcom/gaia/ngallery/ui/widget/photoview/e;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->t:Landroid/view/GestureDetector;

    .line 207
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->t:Landroid/view/GestureDetector;

    new-instance v0, Lcom/gaia/ngallery/ui/widget/photoview/c;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/widget/photoview/c;-><init>(Lcom/gaia/ngallery/ui/widget/photoview/e;)V

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    const/4 p1, 0x0

    .line 208
    iput p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->M:F

    .line 211
    invoke-virtual {p0, p2}, Lcom/gaia/ngallery/ui/widget/photoview/e;->b(Z)V

    return-void
.end method

.method private a(Landroid/graphics/Matrix;I)F
    .registers 4

    .line 852
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->z:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 853
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->z:[F

    aget p1, p1, p2

    return p1
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/widget/photoview/e;)Landroid/view/View$OnLongClickListener;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->D:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .registers 11

    .line 894
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->k()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_da

    if-nez p1, :cond_a

    goto/16 :goto_da

    .line 899
    :cond_a
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->c(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 900
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->d(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 901
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 902
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 904
    iget-object v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->v:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v3, v2

    div-float v4, v1, v3

    int-to-float v5, p1

    div-float v6, v0, v5

    .line 910
    iget v7, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->M:F

    float-to-int v7, v7

    .line 911
    iget-boolean v8, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->r:Z

    if-eqz v8, :cond_32

    if-le v2, p1, :cond_32

    const/16 v7, 0x5a

    .line 916
    :cond_32
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->O:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v8, 0x40000000    # 2.0f

    if-ne p1, v2, :cond_45

    .line 917
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->v:Landroid/graphics/Matrix;

    sub-float/2addr v1, v3

    div-float/2addr v1, v8

    sub-float/2addr v0, v5

    div-float/2addr v0, v8

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_c6

    .line 920
    :cond_45
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->O:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v2, :cond_62

    .line 921
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 922
    iget-object v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->v:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 923
    iget-object v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->v:Landroid/graphics/Matrix;

    mul-float v3, v3, p1

    sub-float/2addr v1, v3

    div-float/2addr v1, v8

    mul-float v5, v5, p1

    sub-float/2addr v0, v5

    div-float/2addr v0, v8

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_c6

    .line 926
    :cond_62
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->O:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v2, :cond_85

    const/high16 p1, 0x3f800000    # 1.0f

    .line 927
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 928
    iget-object v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->v:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 929
    iget-object v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->v:Landroid/graphics/Matrix;

    mul-float v3, v3, p1

    sub-float/2addr v1, v3

    div-float/2addr v1, v8

    mul-float v5, v5, p1

    sub-float/2addr v0, v5

    div-float/2addr v0, v8

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_c6

    .line 933
    :cond_85
    new-instance p1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 934
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2, v2, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 938
    rem-int/lit16 v0, v7, 0xb4

    if-eqz v0, :cond_99

    .line 939
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v2, v2, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 942
    :cond_99
    sget-object v0, Lcom/gaia/ngallery/ui/widget/photoview/e$2;->a:[I

    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->O:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_dc

    goto :goto_c6

    .line 957
    :pswitch_a7
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->v:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p1, v4, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_c6

    .line 944
    :pswitch_af
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->v:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 945
    invoke-virtual {v0, p1, v4, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_c6

    .line 953
    :pswitch_b7
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->v:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p1, v4, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_c6

    .line 949
    :pswitch_bf
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->v:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p1, v4, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 966
    :goto_c6
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->x:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    int-to-float p1, v7

    .line 967
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->e(F)V

    .line 968
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->p()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->e(Landroid/graphics/Matrix;)V

    .line 969
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->t()Z

    return-void

    :cond_da
    :goto_da
    return-void

    nop

    :pswitch_data_dc
    .packed-switch 0x2
        :pswitch_bf
        :pswitch_b7
        :pswitch_af
        :pswitch_a7
    .end packed-switch
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/widget/photoview/e;Landroid/graphics/Matrix;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->e(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static a(Landroid/widget/ImageView;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 89
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static synthetic b(Lcom/gaia/ngallery/ui/widget/photoview/e;)Lcom/gaia/ngallery/ui/widget/photoview/e$f;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->F:Lcom/gaia/ngallery/ui/widget/photoview/e$f;

    return-object p0
.end method

.method private static b(Landroid/widget/ImageView;)V
    .registers 3

    if-eqz p0, :cond_17

    .line 118
    instance-of v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/d;

    if-nez v0, :cond_17

    .line 119
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 120
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_17
    return-void
.end method

.method private static b(Landroid/widget/ImageView$ScaleType;)Z
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 100
    :cond_4
    sget-object v0, Lcom/gaia/ngallery/ui/widget/photoview/e$2;->a:[I

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    return v1

    .line 102
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported in PhotoView"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Landroid/widget/ImageView;)I
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 975
    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method static synthetic c(Lcom/gaia/ngallery/ui/widget/photoview/e;)Landroid/view/animation/Interpolator;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->l:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method private static c(FFF)V
    .registers 3

    cmpl-float p0, p0, p1

    if-gez p0, :cond_11

    cmpl-float p0, p1, p2

    if-gez p0, :cond_9

    return-void

    .line 80
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private d(Landroid/widget/ImageView;)I
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 981
    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method static synthetic d(Lcom/gaia/ngallery/ui/widget/photoview/e;)Landroid/graphics/Matrix;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->x:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private d(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .registers 6

    .line 813
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->k()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 816
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 818
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->y:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 819
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 818
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 820
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->y:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 821
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->y:Landroid/graphics/RectF;

    return-object p1

    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic e(Lcom/gaia/ngallery/ui/widget/photoview/e;)Landroid/graphics/Matrix;
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->p()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method private e(Landroid/graphics/Matrix;)V
    .registers 3

    .line 867
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->k()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 870
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->s()V

    .line 871
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 874
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->A:Lcom/gaia/ngallery/ui/widget/photoview/e$c;

    if-eqz v0, :cond_1b

    .line 875
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->d(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 877
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->A:Lcom/gaia/ngallery/ui/widget/photoview/e$c;

    invoke-interface {v0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/e$c;->a(Landroid/graphics/RectF;)V

    :cond_1b
    return-void
.end method

.method private p()Landroid/graphics/Matrix;
    .registers 3

    .line 703
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->w:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->v:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 704
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->w:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->x:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 705
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->w:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private q()V
    .registers 2

    .line 709
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->K:Lcom/gaia/ngallery/ui/widget/photoview/e$b;

    if-eqz v0, :cond_c

    .line 710
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->K:Lcom/gaia/ngallery/ui/widget/photoview/e$b;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->a()V

    const/4 v0, 0x0

    .line 711
    iput-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->K:Lcom/gaia/ngallery/ui/widget/photoview/e$b;

    :cond_c
    return-void
.end method

.method private r()V
    .registers 2

    .line 723
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->t()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 724
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->p()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->e(Landroid/graphics/Matrix;)V

    :cond_d
    return-void
.end method

.method private s()V
    .registers 3

    .line 729
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->k()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 735
    instance-of v1, v0, Lcom/gaia/ngallery/ui/widget/photoview/d;

    if-nez v1, :cond_1f

    .line 736
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_1f

    .line 737
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher. You should call setScaleType on the PhotoViewAttacher instead of on the ImageView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_1f
    return-void
.end method

.method private t()Z
    .registers 11

    .line 745
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->k()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 750
    :cond_8
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->p()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/gaia/ngallery/ui/widget/photoview/e;->d(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v2

    if-nez v2, :cond_13

    return v1

    .line 755
    :cond_13
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 758
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->d(Landroid/widget/ImageView;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    cmpg-float v8, v3, v5

    if-gtz v8, :cond_45

    .line 760
    sget-object v8, Lcom/gaia/ngallery/ui/widget/photoview/e$2;->a:[I

    iget-object v9, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->O:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_a8

    sub-float/2addr v5, v3

    div-float/2addr v5, v6

    .line 768
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float v3, v5, v3

    goto :goto_5b

    :pswitch_3b
    sub-float/2addr v5, v3

    .line 765
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float v3, v5, v3

    goto :goto_5b

    .line 762
    :pswitch_41
    iget v3, v2, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    goto :goto_5b

    .line 771
    :cond_45
    iget v3, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_4f

    .line 772
    iget v3, v2, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    goto :goto_5b

    .line 773
    :cond_4f
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5a

    .line 774
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v5, v3

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x0

    .line 777
    :goto_5b
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->c(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    const/4 v5, 0x1

    cmpg-float v8, v4, v0

    if-gtz v8, :cond_86

    .line 779
    sget-object v1, Lcom/gaia/ngallery/ui/widget/photoview/e$2;->a:[I

    iget-object v7, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->O:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v7

    aget v1, v1, v7

    packed-switch v1, :pswitch_data_b0

    sub-float/2addr v0, v4

    div-float/2addr v0, v6

    .line 787
    iget v1, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    :goto_77
    move v7, v0

    goto :goto_82

    :pswitch_79
    sub-float/2addr v0, v4

    .line 784
    iget v1, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    goto :goto_77

    .line 781
    :pswitch_7e
    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_77

    :goto_82
    const/4 v0, 0x2

    .line 790
    iput v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->L:I

    goto :goto_a2

    .line 791
    :cond_86
    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_92

    .line 792
    iput v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->L:I

    .line 793
    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v7, v0

    goto :goto_a2

    .line 794
    :cond_92
    iget v1, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_9f

    .line 795
    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float v7, v0, v1

    .line 796
    iput v5, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->L:I

    goto :goto_a2

    :cond_9f
    const/4 v0, -0x1

    .line 798
    iput v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->L:I

    .line 802
    :goto_a2
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->x:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v5

    :pswitch_data_a8
    .packed-switch 0x2
        :pswitch_41
        :pswitch_3b
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x2
        :pswitch_7e
        :pswitch_79
    .end packed-switch
.end method

.method private u()V
    .registers 2

    .line 860
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->x:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 861
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->M:F

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->e(F)V

    .line 862
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->p()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->e(Landroid/graphics/Matrix;)V

    .line 863
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->t()Z

    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 4

    .line 551
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->n:F

    iget v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->o:F

    invoke-static {p1, v0, v1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->c(FFF)V

    .line 552
    iput p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->m:F

    return-void
.end method

.method public a(FF)V
    .registers 6

    .line 377
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->u:Lcom/gaia/ngallery/ui/widget/photoview/a/d;

    invoke-interface {v0}, Lcom/gaia/ngallery/ui/widget/photoview/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 381
    :cond_9
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->k()Landroid/widget/ImageView;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->x:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 383
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->r()V

    .line 394
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 395
    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->p:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->u:Lcom/gaia/ngallery/ui/widget/photoview/a/d;

    invoke-interface {v0}, Lcom/gaia/ngallery/ui/widget/photoview/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->q:Z

    if-nez v0, :cond_4a

    .line 396
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->L:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_43

    iget v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->L:I

    if-nez v0, :cond_39

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_43

    :cond_39
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->L:I

    if-ne v0, v1, :cond_4f

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_4f

    :cond_43
    if-eqz p2, :cond_4f

    const/4 p1, 0x0

    .line 400
    invoke-interface {p2, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4f

    :cond_4a
    if-eqz p2, :cond_4f

    .line 405
    invoke-interface {p2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public a(FFF)V
    .registers 4

    .line 569
    invoke-static {p1, p2, p3}, Lcom/gaia/ngallery/ui/widget/photoview/e;->c(FFF)V

    .line 570
    iput p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->m:F

    .line 571
    iput p2, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->n:F

    .line 572
    iput p3, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->o:F

    return-void
.end method

.method public a(FFFF)V
    .registers 7

    .line 413
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->k()Landroid/widget/ImageView;

    move-result-object p1

    .line 414
    new-instance p2, Lcom/gaia/ngallery/ui/widget/photoview/e$b;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e$b;-><init>(Lcom/gaia/ngallery/ui/widget/photoview/e;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->K:Lcom/gaia/ngallery/ui/widget/photoview/e$b;

    .line 415
    iget-object p2, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->K:Lcom/gaia/ngallery/ui/widget/photoview/e$b;

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->c(Landroid/widget/ImageView;)I

    move-result v0

    .line 416
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->d(Landroid/widget/ImageView;)I

    move-result v1

    float-to-int p3, p3

    float-to-int p4, p4

    .line 415
    invoke-virtual {p2, v0, v1, p3, p4}, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->a(IIII)V

    .line 417
    iget-object p2, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->K:Lcom/gaia/ngallery/ui/widget/photoview/e$b;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(FFFZ)V
    .registers 13

    .line 625
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->k()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 628
    iget v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->m:F

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_30

    iget v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->o:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_13

    goto :goto_30

    :cond_13
    if-eqz p4, :cond_27

    .line 633
    new-instance p4, Lcom/gaia/ngallery/ui/widget/photoview/e$a;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->f()F

    move-result v4

    move-object v2, p4

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/gaia/ngallery/ui/widget/photoview/e$a;-><init>(Lcom/gaia/ngallery/ui/widget/photoview/e;FFFF)V

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_31

    .line 636
    :cond_27
    iget-object p4, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->x:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 637
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->r()V

    goto :goto_31

    :cond_30
    :goto_30
    return-void

    :cond_31
    :goto_31
    return-void
.end method

.method public a(FZ)V
    .registers 5

    .line 612
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->k()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 616
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 617
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 615
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/gaia/ngallery/ui/widget/photoview/e;->a(FFFZ)V

    :cond_17
    return-void
.end method

.method public a(I)V
    .registers 2

    if-gez p1, :cond_4

    const/16 p1, 0xc8

    .line 836
    :cond_4
    iput p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->e:I

    return-void
.end method

.method public a(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 217
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->t:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_12

    .line 219
    :cond_8
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->t:Landroid/view/GestureDetector;

    new-instance v0, Lcom/gaia/ngallery/ui/widget/photoview/c;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/widget/photoview/c;-><init>(Lcom/gaia/ngallery/ui/widget/photoview/e;)V

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :goto_12
    return-void
.end method

.method public a(Landroid/view/View$OnLongClickListener;)V
    .registers 2

    .line 577
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->D:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .registers 2

    .line 648
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->l:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public a(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    .line 653
    invoke-static {p1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->b(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->O:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_f

    .line 654
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->O:Landroid/widget/ImageView$ScaleType;

    .line 657
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->n()V

    :cond_f
    return-void
.end method

.method public a(Lcom/gaia/ngallery/ui/widget/photoview/e$c;)V
    .registers 2

    .line 582
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->A:Lcom/gaia/ngallery/ui/widget/photoview/e$c;

    return-void
.end method

.method public a(Lcom/gaia/ngallery/ui/widget/photoview/e$d;)V
    .registers 2

    .line 587
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->B:Lcom/gaia/ngallery/ui/widget/photoview/e$d;

    return-void
.end method

.method public a(Lcom/gaia/ngallery/ui/widget/photoview/e$e;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->E:Lcom/gaia/ngallery/ui/widget/photoview/e$e;

    return-void
.end method

.method public a(Lcom/gaia/ngallery/ui/widget/photoview/e$f;)V
    .registers 2

    .line 230
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->F:Lcom/gaia/ngallery/ui/widget/photoview/e$f;

    return-void
.end method

.method public a(Lcom/gaia/ngallery/ui/widget/photoview/e$g;)V
    .registers 2

    .line 597
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->C:Lcom/gaia/ngallery/ui/widget/photoview/e$g;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 546
    iput-boolean p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->p:Z

    return-void
.end method

.method public a()Z
    .registers 2

    .line 235
    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->N:Z

    return v0
.end method

.method public a(Landroid/graphics/Matrix;)Z
    .registers 4

    if-eqz p1, :cond_22

    .line 291
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->k()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 296
    :cond_a
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_11

    return v1

    .line 300
    :cond_11
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->x:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 301
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->p()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->e(Landroid/graphics/Matrix;)V

    .line 302
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->t()Z

    const/4 p1, 0x1

    return p1

    .line 288
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Matrix cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Landroid/graphics/RectF;
    .registers 2

    .line 281
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->t()Z

    .line 282
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->p()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->d(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public b(F)V
    .registers 4

    .line 557
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->m:F

    iget v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->o:F

    invoke-static {v0, p1, v1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->c(FFF)V

    .line 558
    iput p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->n:F

    return-void
.end method

.method public b(FFF)V
    .registers 7

    .line 457
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->f()F

    move-result v0

    iget v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->o:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_10

    cmpg-float v0, p1, v2

    if-gez v0, :cond_2f

    :cond_10
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->f()F

    move-result v0

    iget v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->m:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1e

    cmpl-float v0, p1, v2

    if-lez v0, :cond_2f

    .line 458
    :cond_1e
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->E:Lcom/gaia/ngallery/ui/widget/photoview/e$e;

    if-eqz v0, :cond_27

    .line 459
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->E:Lcom/gaia/ngallery/ui/widget/photoview/e$e;

    invoke-interface {v0, p1, p2, p3}, Lcom/gaia/ngallery/ui/widget/photoview/e$e;->onScaleChange(FFF)V

    .line 461
    :cond_27
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->x:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 462
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->r()V

    :cond_2f
    return-void
.end method

.method public b(Landroid/graphics/Matrix;)V
    .registers 3

    .line 692
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->p()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 663
    iput-boolean p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->N:Z

    .line 664
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->n()V

    return-void
.end method

.method public c()F
    .registers 2

    .line 351
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->m:F

    return v0
.end method

.method public c(F)V
    .registers 4

    .line 563
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->m:F

    iget v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->n:F

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->c(FFF)V

    .line 564
    iput p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->o:F

    return-void
.end method

.method public c(Landroid/graphics/Matrix;)V
    .registers 3

    .line 699
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->x:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 884
    iput-boolean p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->r:Z

    .line 885
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->n()V

    return-void
.end method

.method public d()F
    .registers 2

    .line 356
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->n:F

    return v0
.end method

.method public d(F)V
    .registers 4

    .line 316
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->x:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 317
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->r()V

    return-void
.end method

.method public e()F
    .registers 2

    .line 361
    iget v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->o:F

    return v0
.end method

.method public e(F)V
    .registers 4

    .line 330
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->x:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 331
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->r()V

    return-void
.end method

.method public f()F
    .registers 7

    .line 366
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->x:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->x:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    .line 367
    invoke-direct {p0, v1, v4}, Lcom/gaia/ngallery/ui/widget/photoview/e;->a(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v4, v1

    .line 366
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public f(F)V
    .registers 3

    const/4 v0, 0x0

    .line 607
    invoke-virtual {p0, p1, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->a(FZ)V

    return-void
.end method

.method public g()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->O:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public g(F)V
    .registers 3

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 308
    iput p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->M:F

    .line 309
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->n()V

    return-void
.end method

.method public h()Landroid/graphics/Bitmap;
    .registers 2

    .line 828
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->k()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    .line 829
    :cond_8
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public i()Lcom/gaia/ngallery/ui/widget/photoview/d;
    .registers 1

    return-object p0
.end method

.method public j()V
    .registers 5

    .line 246
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->s:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 254
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 255
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 256
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 260
    :cond_1f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 263
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->q()V

    .line 266
    :cond_25
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->t:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2e

    .line 267
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->t:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 271
    :cond_2e
    iput-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->A:Lcom/gaia/ngallery/ui/widget/photoview/e$c;

    .line 272
    iput-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->B:Lcom/gaia/ngallery/ui/widget/photoview/e$d;

    .line 273
    iput-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->C:Lcom/gaia/ngallery/ui/widget/photoview/e$g;

    .line 276
    iput-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->s:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public k()Landroid/widget/ImageView;
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->s:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 338
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_13

    .line 343
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->j()V

    :cond_13
    return-object v0
.end method

.method l()Lcom/gaia/ngallery/ui/widget/photoview/e$d;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->B:Lcom/gaia/ngallery/ui/widget/photoview/e$d;

    return-object v0
.end method

.method m()Lcom/gaia/ngallery/ui/widget/photoview/e$g;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->C:Lcom/gaia/ngallery/ui/widget/photoview/e$g;

    return-object v0
.end method

.method public n()V
    .registers 3

    .line 668
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->k()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 671
    iget-boolean v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->N:Z

    if-eqz v1, :cond_15

    .line 674
    invoke-static {v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->b(Landroid/widget/ImageView;)V

    .line 677
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_18

    .line 680
    :cond_15
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->u()V

    :cond_18
    :goto_18
    return-void
.end method

.method public o()Landroid/graphics/Matrix;
    .registers 2

    .line 716
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->w:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public onGlobalLayout()V
    .registers 7

    .line 422
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->k()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 425
    iget-boolean v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->N:Z

    if-eqz v1, :cond_3a

    .line 426
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    .line 427
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    .line 428
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    .line 429
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    .line 438
    iget v5, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->G:I

    if-ne v1, v5, :cond_2a

    iget v5, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->I:I

    if-ne v3, v5, :cond_2a

    iget v5, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->J:I

    if-ne v4, v5, :cond_2a

    iget v5, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->H:I

    if-eq v2, v5, :cond_41

    .line 441
    :cond_2a
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->a(Landroid/graphics/drawable/Drawable;)V

    .line 444
    iput v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->G:I

    .line 445
    iput v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->H:I

    .line 446
    iput v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->I:I

    .line 447
    iput v4, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->J:I

    goto :goto_41

    .line 450
    :cond_3a
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 472
    iget-boolean v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->N:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9e

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->a(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 474
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_29

    packed-switch v3, :pswitch_data_d2

    goto :goto_26

    :pswitch_1e
    if-eqz v0, :cond_23

    .line 479
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 484
    :cond_23
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->q()V

    :goto_26
    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_56

    .line 491
    :cond_29
    :pswitch_29
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->f()F

    move-result v0

    iget v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->m:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_53

    .line 492
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->b()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 494
    new-instance v9, Lcom/gaia/ngallery/ui/widget/photoview/e$a;

    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->f()F

    move-result v5

    iget v6, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->m:F

    .line 495
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/gaia/ngallery/ui/widget/photoview/e$a;-><init>(Lcom/gaia/ngallery/ui/widget/photoview/e;FFFF)V

    .line 494
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    :goto_54
    move v3, v0

    const/4 v0, 0x1

    .line 505
    :goto_56
    iget-object v4, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->u:Lcom/gaia/ngallery/ui/widget/photoview/a/d;

    if-eqz v4, :cond_8f

    .line 506
    iget-object v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->u:Lcom/gaia/ngallery/ui/widget/photoview/a/d;

    invoke-interface {v3}, Lcom/gaia/ngallery/ui/widget/photoview/a/d;->a()Z

    move-result v3

    .line 507
    iget-object v4, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->u:Lcom/gaia/ngallery/ui/widget/photoview/a/d;

    invoke-interface {v4}, Lcom/gaia/ngallery/ui/widget/photoview/a/d;->b()Z

    move-result v4

    .line 509
    iget-object v5, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->u:Lcom/gaia/ngallery/ui/widget/photoview/a/d;

    invoke-interface {v5, p2}, Lcom/gaia/ngallery/ui/widget/photoview/a/d;->c(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v3, :cond_78

    .line 511
    iget-object v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->u:Lcom/gaia/ngallery/ui/widget/photoview/a/d;

    invoke-interface {v3}, Lcom/gaia/ngallery/ui/widget/photoview/a/d;->a()Z

    move-result v3

    if-nez v3, :cond_78

    const/4 v3, 0x1

    goto :goto_79

    :cond_78
    const/4 v3, 0x0

    :goto_79
    if-nez v4, :cond_85

    .line 512
    iget-object v4, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->u:Lcom/gaia/ngallery/ui/widget/photoview/a/d;

    invoke-interface {v4}, Lcom/gaia/ngallery/ui/widget/photoview/a/d;->b()Z

    move-result v4

    if-nez v4, :cond_85

    const/4 v4, 0x1

    goto :goto_86

    :cond_85
    const/4 v4, 0x0

    :goto_86
    if-eqz v3, :cond_8b

    if-eqz v4, :cond_8b

    const/4 v1, 0x1

    .line 514
    :cond_8b
    iput-boolean v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->q:Z

    move v1, v5

    goto :goto_90

    :cond_8f
    move v1, v3

    .line 518
    :goto_90
    iget-object v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->t:Landroid/view/GestureDetector;

    if-eqz v3, :cond_9f

    iget-object v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->t:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_9f

    const/4 v1, 0x1

    goto :goto_9f

    :cond_9e
    const/4 v0, 0x0

    :cond_9f
    :goto_9f
    if-eqz v0, :cond_d0

    .line 524
    iget-boolean p2, p0, Lcom/gaia/ngallery/ui/widget/photoview/e;->q:Z

    if-eqz p2, :cond_d0

    .line 526
    :try_start_a5
    const-class p2, Landroid/view/View;

    const-string v0, "mListenerInfo"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 527
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 528
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 529
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mOnClickListener"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 530
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 531
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_d0

    .line 532
    instance-of v0, p2, Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_d0

    .line 533
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_d0} :catch_d0

    :catch_d0
    :cond_d0
    return v1

    nop

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_29
    .end packed-switch
.end method

###### Class com.gaia.ngallery.ui.widget.photoview.e.AnonymousClass1 (com.gaia.ngallery.ui.widget.photoview.e$1)
.class Lcom/gaia/ngallery/ui/widget/photoview/e$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/widget/photoview/e;-><init>(Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/widget/photoview/e;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/widget/photoview/e;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$1;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    .line 191
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$1;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->b(Lcom/gaia/ngallery/ui/widget/photoview/e;)Lcom/gaia/ngallery/ui/widget/photoview/e$f;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 192
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$1;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->f()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_16

    return v1

    .line 196
    :cond_16
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    sget v2, Lcom/gaia/ngallery/ui/widget/photoview/e;->j:I

    if-gt v0, v2, :cond_32

    .line 197
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    sget v2, Lcom/gaia/ngallery/ui/widget/photoview/e;->j:I

    if-le v0, v2, :cond_27

    goto :goto_32

    .line 201
    :cond_27
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$1;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->b(Lcom/gaia/ngallery/ui/widget/photoview/e;)Lcom/gaia/ngallery/ui/widget/photoview/e$f;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gaia/ngallery/ui/widget/photoview/e$f;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_32
    :goto_32
    return v1

    :cond_33
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3

    .line 183
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$1;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->a(Lcom/gaia/ngallery/ui/widget/photoview/e;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 184
    iget-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$1;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-static {p1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->a(Lcom/gaia/ngallery/ui/widget/photoview/e;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$1;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->k()Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_17
    return-void
.end method

###### Class com.gaia.ngallery.ui.widget.photoview.e.AnonymousClass2 (com.gaia.ngallery.ui.widget.photoview.e$2)
.class synthetic Lcom/gaia/ngallery/ui/widget/photoview/e$2;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/widget/photoview/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 100
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/gaia/ngallery/ui/widget/photoview/e$2;->a:[I

    :try_start_9
    sget-object v0, Lcom/gaia/ngallery/ui/widget/photoview/e$2;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/gaia/ngallery/ui/widget/photoview/e$2;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/gaia/ngallery/ui/widget/photoview/e$2;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/gaia/ngallery/ui/widget/photoview/e$2;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v0, Lcom/gaia/ngallery/ui/widget/photoview/e$2;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    return-void
.end method

###### Class com.gaia.ngallery.ui.widget.photoview.e.a (com.gaia.ngallery.ui.widget.photoview.e$a)
.class Lcom/gaia/ngallery/ui/widget/photoview/e$a;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/widget/photoview/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/widget/photoview/e;

.field private final b:F

.field private final c:F

.field private final d:J

.field private final e:F

.field private final f:F


# direct methods
.method public constructor <init>(Lcom/gaia/ngallery/ui/widget/photoview/e;FFFF)V
    .registers 6

    .line 1088
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    iput p4, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->b:F

    .line 1090
    iput p5, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->c:F

    .line 1091
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->d:J

    .line 1092
    iput p2, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->e:F

    .line 1093
    iput p3, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->f:F

    return-void
.end method

.method private a()F
    .registers 5

    .line 1116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->d:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    iget v2, v2, Lcom/gaia/ngallery/ui/widget/photoview/e;->e:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 1117
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1118
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-static {v1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->c(Lcom/gaia/ngallery/ui/widget/photoview/e;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1098
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->k()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1103
    :cond_9
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->a()F

    move-result v1

    .line 1104
    iget v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->e:F

    iget v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->f:F

    iget v4, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->e:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    .line 1105
    iget-object v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v3}, Lcom/gaia/ngallery/ui/widget/photoview/e;->f()F

    move-result v3

    div-float/2addr v2, v3

    .line 1107
    iget-object v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    iget v4, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->b:F

    iget v5, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$a;->c:F

    invoke-virtual {v3, v2, v4, v5}, Lcom/gaia/ngallery/ui/widget/photoview/e;->b(FFF)V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_30

    .line 1111
    invoke-static {v0, p0}, Lcom/gaia/ngallery/ui/widget/photoview/a;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_30
    return-void
.end method

###### Class com.gaia.ngallery.ui.widget.photoview.e.b (com.gaia.ngallery.ui.widget.photoview.e$b)
.class Lcom/gaia/ngallery/ui/widget/photoview/e$b;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/widget/photoview/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/widget/photoview/e;

.field private final b:Lcom/gaia/ngallery/ui/widget/photoview/b/d;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/gaia/ngallery/ui/widget/photoview/e;Landroid/content/Context;)V
    .registers 3

    .line 1128
    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1129
    invoke-static {p2}, Lcom/gaia/ngallery/ui/widget/photoview/b/d;->a(Landroid/content/Context;)Lcom/gaia/ngallery/ui/widget/photoview/b/d;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->b:Lcom/gaia/ngallery/ui/widget/photoview/b/d;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1133
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->b:Lcom/gaia/ngallery/ui/widget/photoview/b/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/widget/photoview/b/d;->a(Z)V

    return-void
.end method

.method public a(IIII)V
    .registers 19

    move-object v0, p0

    .line 1138
    iget-object v1, v0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v1}, Lcom/gaia/ngallery/ui/widget/photoview/e;->b()Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_a

    return-void

    .line 1143
    :cond_a
    iget v2, v1, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v2, p1

    int-to-float v2, v2

    .line 1146
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/4 v5, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_28

    .line 1148
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v9, v2

    const/4 v8, 0x0

    goto :goto_2a

    :cond_28
    move v8, v4

    move v9, v8

    .line 1153
    :goto_2a
    iget v2, v1, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move/from16 v3, p2

    int-to-float v3, v3

    .line 1154
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_48

    .line 1156
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v11, v1

    const/4 v10, 0x0

    goto :goto_4a

    :cond_48
    move v10, v2

    move v11, v10

    .line 1161
    :goto_4a
    iput v4, v0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->c:I

    .line 1162
    iput v2, v0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->d:I

    if-ne v4, v9, :cond_52

    if-eq v2, v11, :cond_5e

    .line 1166
    :cond_52
    iget-object v3, v0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->b:Lcom/gaia/ngallery/ui/widget/photoview/b/d;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v5, v2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v13}, Lcom/gaia/ngallery/ui/widget/photoview/b/d;->a(IIIIIIIIII)V

    :cond_5e
    return-void
.end method

.method public run()V
    .registers 7

    .line 1173
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->b:Lcom/gaia/ngallery/ui/widget/photoview/b/d;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/widget/photoview/b/d;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1177
    :cond_9
    iget-object v0, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/widget/photoview/e;->k()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1178
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->b:Lcom/gaia/ngallery/ui/widget/photoview/b/d;

    invoke-virtual {v1}, Lcom/gaia/ngallery/ui/widget/photoview/b/d;->a()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1180
    iget-object v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->b:Lcom/gaia/ngallery/ui/widget/photoview/b/d;

    invoke-virtual {v1}, Lcom/gaia/ngallery/ui/widget/photoview/b/d;->c()I

    move-result v1

    .line 1181
    iget-object v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->b:Lcom/gaia/ngallery/ui/widget/photoview/b/d;

    invoke-virtual {v2}, Lcom/gaia/ngallery/ui/widget/photoview/b/d;->d()I

    move-result v2

    .line 1183
    iget-object v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-static {v3}, Lcom/gaia/ngallery/ui/widget/photoview/e;->d(Lcom/gaia/ngallery/ui/widget/photoview/e;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->c:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->d:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1184
    iget-object v3, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    iget-object v4, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->a:Lcom/gaia/ngallery/ui/widget/photoview/e;

    invoke-static {v4}, Lcom/gaia/ngallery/ui/widget/photoview/e;->e(Lcom/gaia/ngallery/ui/widget/photoview/e;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gaia/ngallery/ui/widget/photoview/e;->a(Lcom/gaia/ngallery/ui/widget/photoview/e;Landroid/graphics/Matrix;)V

    .line 1186
    iput v1, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->c:I

    .line 1187
    iput v2, p0, Lcom/gaia/ngallery/ui/widget/photoview/e$b;->d:I

    .line 1190
    invoke-static {v0, p0}, Lcom/gaia/ngallery/ui/widget/photoview/a;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_48
    return-void
.end method

###### Class com.gaia.ngallery.ui.widget.photoview.e.c (com.gaia.ngallery.ui.widget.photoview.e$c)
.class public interface abstract Lcom/gaia/ngallery/ui/widget/photoview/e$c;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/widget/photoview/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(Landroid/graphics/RectF;)V
.end method

###### Class com.gaia.ngallery.ui.widget.photoview.e.d (com.gaia.ngallery.ui.widget.photoview.e$d)
.class public interface abstract Lcom/gaia/ngallery/ui/widget/photoview/e$d;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/widget/photoview/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/view/View;FF)V
.end method

###### Class com.gaia.ngallery.ui.widget.photoview.e.InterfaceC0064e (com.gaia.ngallery.ui.widget.photoview.e$e)
.class public interface abstract Lcom/gaia/ngallery/ui/widget/photoview/e$e;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/widget/photoview/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "e"
.end annotation


# virtual methods
.method public abstract onScaleChange(FFF)V
.end method

###### Class com.gaia.ngallery.ui.widget.photoview.e.f (com.gaia.ngallery.ui.widget.photoview.e$f)
.class public interface abstract Lcom/gaia/ngallery/ui/widget/photoview/e$f;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/widget/photoview/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation


# virtual methods
.method public abstract a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end method

###### Class com.gaia.ngallery.ui.widget.photoview.e.g (com.gaia.ngallery.ui.widget.photoview.e$g)
.class public interface abstract Lcom/gaia/ngallery/ui/widget/photoview/e$g;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/widget/photoview/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "g"
.end annotation


# virtual methods
.method public abstract a(Landroid/view/View;FF)V
.end method
