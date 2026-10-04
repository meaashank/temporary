###### Class com.a.a.e (com.a.a.e)
.class public Lcom/a/a/e;
.super Ljava/lang/Object;
.source "TapTarget.java"


# instance fields
.field private A:I

.field private B:I

.field final a:Ljava/lang/CharSequence;

.field final b:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field c:F

.field d:I

.field e:Landroid/graphics/Rect;

.field f:Landroid/graphics/drawable/Drawable;

.field g:Landroid/graphics/Typeface;

.field h:Landroid/graphics/Typeface;

.field i:I

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:F

.field private o:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private p:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private q:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private r:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private s:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private t:Ljava/lang/Integer;

.field private u:Ljava/lang/Integer;

.field private v:Ljava/lang/Integer;

.field private w:Ljava/lang/Integer;

.field private x:Ljava/lang/Integer;

.field private y:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field private z:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 189
    invoke-direct {p0, p2, p3}, Lcom/a/a/e;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_8

    .line 194
    iput-object p1, p0, Lcom/a/a/e;->e:Landroid/graphics/Rect;

    return-void

    .line 191
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass null bounds or title"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f75c28f    # 0.96f

    .line 47
    iput v0, p0, Lcom/a/a/e;->c:F

    const/16 v0, 0x2c

    .line 48
    iput v0, p0, Lcom/a/a/e;->d:I

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/a/a/e;->o:I

    .line 57
    iput v0, p0, Lcom/a/a/e;->p:I

    .line 59
    iput v0, p0, Lcom/a/a/e;->q:I

    .line 61
    iput v0, p0, Lcom/a/a/e;->r:I

    .line 63
    iput v0, p0, Lcom/a/a/e;->s:I

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/a/a/e;->t:Ljava/lang/Integer;

    .line 67
    iput-object v1, p0, Lcom/a/a/e;->u:Ljava/lang/Integer;

    .line 68
    iput-object v1, p0, Lcom/a/a/e;->v:Ljava/lang/Integer;

    .line 69
    iput-object v1, p0, Lcom/a/a/e;->w:Ljava/lang/Integer;

    .line 70
    iput-object v1, p0, Lcom/a/a/e;->x:Ljava/lang/Integer;

    .line 72
    iput v0, p0, Lcom/a/a/e;->y:I

    .line 74
    iput v0, p0, Lcom/a/a/e;->z:I

    const/16 v1, 0x14

    .line 77
    iput v1, p0, Lcom/a/a/e;->A:I

    const/16 v1, 0x12

    .line 78
    iput v1, p0, Lcom/a/a/e;->B:I

    .line 79
    iput v0, p0, Lcom/a/a/e;->i:I

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/a/a/e;->j:Z

    const/4 v1, 0x1

    .line 82
    iput-boolean v1, p0, Lcom/a/a/e;->k:Z

    .line 83
    iput-boolean v1, p0, Lcom/a/a/e;->l:Z

    .line 84
    iput-boolean v0, p0, Lcom/a/a/e;->m:Z

    const v0, 0x3f0a3d71    # 0.54f

    .line 85
    iput v0, p0, Lcom/a/a/e;->n:F

    if-eqz p1, :cond_46

    .line 202
    iput-object p1, p0, Lcom/a/a/e;->a:Ljava/lang/CharSequence;

    .line 203
    iput-object p2, p0, Lcom/a/a/e;->b:Ljava/lang/CharSequence;

    return-void

    .line 199
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass null title"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/content/Context;II)I
    .registers 5
    .param p3    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p3, v0, :cond_c

    .line 497
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 500
    :cond_c
    invoke-static {p1, p2}, Lcom/a/a/i;->b(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public static a(Landroid/graphics/Rect;Ljava/lang/CharSequence;)Lcom/a/a/e;
    .registers 3

    const/4 v0, 0x0

    .line 180
    invoke-static {p0, p1, v0}, Lcom/a/a/e;->a(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/a/a/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/a/a/e;
    .registers 4
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 185
    new-instance v0, Lcom/a/a/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/a/e;-><init>(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static a(Landroid/support/v7/widget/Toolbar;ILjava/lang/CharSequence;)Lcom/a/a/e;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 147
    invoke-static {p0, p1, p2, v0}, Lcom/a/a/e;->a(Landroid/support/v7/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/a/a/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/support/v7/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/a/a/e;
    .registers 5
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 153
    new-instance v0, Lcom/a/a/h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/a/a/h;-><init>(Landroid/support/v7/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static a(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;)Lcom/a/a/e;
    .registers 3

    const/4 v0, 0x0

    .line 93
    invoke-static {p0, p1, v0}, Lcom/a/a/e;->a(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/a/a/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/a/a/e;
    .registers 5
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 102
    new-instance v0, Lcom/a/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/a/a/h;-><init>(Landroid/support/v7/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)Lcom/a/a/e;
    .registers 3

    const/4 v0, 0x0

    .line 170
    invoke-static {p0, p1, v0}, Lcom/a/a/e;->a(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/a/a/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/a/a/e;
    .registers 4
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 175
    new-instance v0, Lcom/a/a/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/a/j;-><init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static a(Landroid/widget/Toolbar;ILjava/lang/CharSequence;)Lcom/a/a/e;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 159
    invoke-static {p0, p1, p2, v0}, Lcom/a/a/e;->a(Landroid/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/a/a/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/a/a/e;
    .registers 5
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 165
    new-instance v0, Lcom/a/a/h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/a/a/h;-><init>(Landroid/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static a(Landroid/widget/Toolbar;Ljava/lang/CharSequence;)Lcom/a/a/e;
    .registers 3

    const/4 v0, 0x0

    .line 110
    invoke-static {p0, p1, v0}, Lcom/a/a/e;->a(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/a/a/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/a/a/e;
    .registers 5
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 119
    new-instance v0, Lcom/a/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/a/a/h;-><init>(Landroid/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;
    .registers 5
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, -0x1

    if-eq p3, v0, :cond_c

    .line 489
    invoke-static {p1, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_c
    return-object p2
.end method

.method public static b(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;)Lcom/a/a/e;
    .registers 3

    const/4 v0, 0x0

    .line 124
    invoke-static {p0, p1, v0}, Lcom/a/a/e;->b(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/a/a/e;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/a/a/e;
    .registers 5
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 130
    new-instance v0, Lcom/a/a/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/a/a/h;-><init>(Landroid/support/v7/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static b(Landroid/widget/Toolbar;Ljava/lang/CharSequence;)Lcom/a/a/e;
    .registers 3

    const/4 v0, 0x0

    .line 135
    invoke-static {p0, p1, v0}, Lcom/a/a/e;->b(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/a/a/e;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/a/a/e;
    .registers 5
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 141
    new-instance v0, Lcom/a/a/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/a/a/h;-><init>(Landroid/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 429
    iget v0, p0, Lcom/a/a/e;->i:I

    return v0
.end method

.method public a(F)Lcom/a/a/e;
    .registers 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_e

    .line 230
    iput p1, p0, Lcom/a/a/e;->c:F

    return-object p0

    .line 228
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given an invalid alpha value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)Lcom/a/a/e;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 214
    iput p1, p0, Lcom/a/a/e;->o:I

    return-object p0
.end method

.method public a(Landroid/graphics/Typeface;)Lcom/a/a/e;
    .registers 3

    if-eqz p1, :cond_7

    .line 291
    iput-object p1, p0, Lcom/a/a/e;->g:Landroid/graphics/Typeface;

    .line 292
    iput-object p1, p0, Lcom/a/a/e;->h:Landroid/graphics/Typeface;

    return-object p0

    .line 290
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot use a null typeface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/a/a/e;
    .registers 3

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, p1, v0}, Lcom/a/a/e;->a(Landroid/graphics/drawable/Drawable;Z)Lcom/a/a/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;Z)Lcom/a/a/e;
    .registers 6

    if-eqz p1, :cond_1e

    .line 406
    iput-object p1, p0, Lcom/a/a/e;->f:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1d

    .line 409
    iget-object p1, p0, Lcom/a/a/e;->f:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/a/a/e;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/e;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1d
    return-object p0

    .line 405
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot use null drawable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)Lcom/a/a/e;
    .registers 2

    .line 208
    iput-boolean p1, p0, Lcom/a/a/e;->m:Z

    return-object p0
.end method

.method a(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/a/a/e;->t:Ljava/lang/Integer;

    iget v1, p0, Lcom/a/a/e;->o:I

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/e;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 2

    .line 437
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public b()Landroid/graphics/Rect;
    .registers 3

    .line 447
    iget-object v0, p0, Lcom/a/a/e;->e:Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    .line 450
    iget-object v0, p0, Lcom/a/a/e;->e:Landroid/graphics/Rect;

    return-object v0

    .line 448
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Requesting bounds that are not set! Make sure your target is ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(F)Lcom/a/a/e;
    .registers 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_e

    .line 339
    iput p1, p0, Lcom/a/a/e;->n:F

    return-object p0

    .line 337
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given an invalid alpha value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)Lcom/a/a/e;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/e;->t:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Landroid/graphics/Typeface;)Lcom/a/a/e;
    .registers 3

    if-eqz p1, :cond_5

    .line 299
    iput-object p1, p0, Lcom/a/a/e;->g:Landroid/graphics/Typeface;

    return-object p0

    .line 298
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot use a null typeface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Z)Lcom/a/a/e;
    .registers 2

    .line 376
    iput-boolean p1, p0, Lcom/a/a/e;->j:Z

    return-object p0
.end method

.method b(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/a/a/e;->u:Ljava/lang/Integer;

    iget v1, p0, Lcom/a/a/e;->p:I

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/e;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lcom/a/a/e;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 236
    iput p1, p0, Lcom/a/a/e;->p:I

    return-object p0
.end method

.method public c(Landroid/graphics/Typeface;)Lcom/a/a/e;
    .registers 3

    if-eqz p1, :cond_5

    .line 306
    iput-object p1, p0, Lcom/a/a/e;->h:Landroid/graphics/Typeface;

    return-object p0

    .line 305
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot use a null typeface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Z)Lcom/a/a/e;
    .registers 2

    .line 382
    iput-boolean p1, p0, Lcom/a/a/e;->k:Z

    return-object p0
.end method

.method c(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/a/a/e;->v:Ljava/lang/Integer;

    iget v1, p0, Lcom/a/a/e;->q:I

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/e;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Lcom/a/a/e;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/e;->u:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(Z)Lcom/a/a/e;
    .registers 2

    .line 388
    iput-boolean p1, p0, Lcom/a/a/e;->l:Z

    return-object p0
.end method

.method d(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/a/a/e;->w:Ljava/lang/Integer;

    iget v1, p0, Lcom/a/a/e;->r:I

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/e;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public e(I)Lcom/a/a/e;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 249
    iput p1, p0, Lcom/a/a/e;->r:I

    .line 250
    iput p1, p0, Lcom/a/a/e;->s:I

    return-object p0
.end method

.method e(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/a/a/e;->x:Ljava/lang/Integer;

    iget v1, p0, Lcom/a/a/e;->s:I

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/e;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method f(Landroid/content/Context;)I
    .registers 4

    .line 479
    iget v0, p0, Lcom/a/a/e;->A:I

    iget v1, p0, Lcom/a/a/e;->y:I

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/e;->a(Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method public f(I)Lcom/a/a/e;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e;->w:Ljava/lang/Integer;

    .line 258
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/e;->x:Ljava/lang/Integer;

    return-object p0
.end method

.method g(Landroid/content/Context;)I
    .registers 4

    .line 483
    iget v0, p0, Lcom/a/a/e;->B:I

    iget v1, p0, Lcom/a/a/e;->z:I

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/e;->a(Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method public g(I)Lcom/a/a/e;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 264
    iput p1, p0, Lcom/a/a/e;->r:I

    return-object p0
.end method

.method public h(I)Lcom/a/a/e;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/e;->w:Ljava/lang/Integer;

    return-object p0
.end method

.method public i(I)Lcom/a/a/e;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 277
    iput p1, p0, Lcom/a/a/e;->s:I

    return-object p0
.end method

.method public j(I)Lcom/a/a/e;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/e;->x:Ljava/lang/Integer;

    return-object p0
.end method

.method public k(I)Lcom/a/a/e;
    .registers 3

    if-ltz p1, :cond_5

    .line 313
    iput p1, p0, Lcom/a/a/e;->A:I

    return-object p0

    .line 312
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given negative text size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(I)Lcom/a/a/e;
    .registers 3

    if-ltz p1, :cond_5

    .line 320
    iput p1, p0, Lcom/a/a/e;->B:I

    return-object p0

    .line 319
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given negative text size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(I)Lcom/a/a/e;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 330
    iput p1, p0, Lcom/a/a/e;->y:I

    return-object p0
.end method

.method public n(I)Lcom/a/a/e;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 349
    iput p1, p0, Lcom/a/a/e;->z:I

    return-object p0
.end method

.method public o(I)Lcom/a/a/e;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 359
    iput p1, p0, Lcom/a/a/e;->q:I

    return-object p0
.end method

.method public p(I)Lcom/a/a/e;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 370
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/e;->v:Ljava/lang/Integer;

    return-object p0
.end method

.method public q(I)Lcom/a/a/e;
    .registers 2

    .line 417
    iput p1, p0, Lcom/a/a/e;->i:I

    return-object p0
.end method

.method public r(I)Lcom/a/a/e;
    .registers 2

    .line 423
    iput p1, p0, Lcom/a/a/e;->d:I

    return-object p0
.end method
