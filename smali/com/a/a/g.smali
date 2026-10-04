###### Class com.a.a.g (com.a.a.g)
.class public Lcom/a/a/g;
.super Landroid/view/View;
.source "TapTargetView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/g$a;
    }
.end annotation


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Z

.field F:Landroid/text/SpannableStringBuilder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field G:Landroid/text/DynamicLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field H:Landroid/text/TextPaint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field I:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field J:Landroid/graphics/Rect;

.field K:Landroid/graphics/Rect;

.field L:Landroid/graphics/Path;

.field M:F

.field N:I

.field O:[I

.field P:I

.field Q:F

.field R:I

.field S:F

.field T:I

.field U:I

.field V:I

.field W:F

.field final a:I

.field aa:F

.field ab:I

.field ac:I

.field ad:Landroid/graphics/Bitmap;

.field ae:Lcom/a/a/g$a;

.field af:Landroid/view/ViewOutlineProvider;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final ag:Lcom/a/a/b$b;

.field final ah:Landroid/animation/ValueAnimator;

.field final ai:Landroid/animation/ValueAnimator;

.field final aj:Landroid/animation/ValueAnimator;

.field private ak:Z

.field private al:Z

.field private am:Z

.field private final an:Landroid/animation/ValueAnimator;

.field private ao:[Landroid/animation/ValueAnimator;

.field private final ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field final g:I

.field final h:I

.field final i:I

.field final j:I

.field final k:I

.field final l:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final m:Landroid/view/ViewManager;

.field final n:Lcom/a/a/e;

.field final o:Landroid/graphics/Rect;

.field final p:Landroid/text/TextPaint;

.field final q:Landroid/text/TextPaint;

.field final r:Landroid/graphics/Paint;

.field final s:Landroid/graphics/Paint;

.field final t:Landroid/graphics/Paint;

.field final u:Landroid/graphics/Paint;

.field v:Ljava/lang/CharSequence;

.field w:Landroid/text/StaticLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field x:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field y:Landroid/text/StaticLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/a/a/e;Lcom/a/a/g$a;)V
    .registers 15
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/a/a/g$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 373
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/a/a/g;->ak:Z

    .line 71
    iput-boolean v0, p0, Lcom/a/a/g;->al:Z

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lcom/a/a/g;->am:Z

    .line 226
    new-instance v2, Lcom/a/a/g$1;

    invoke-direct {v2, p0}, Lcom/a/a/g$1;-><init>(Lcom/a/a/g;)V

    iput-object v2, p0, Lcom/a/a/g;->ag:Lcom/a/a/b$b;

    .line 262
    new-instance v2, Lcom/a/a/b;

    invoke-direct {v2}, Lcom/a/a/b;-><init>()V

    const-wide/16 v3, 0xfa

    .line 263
    invoke-virtual {v2, v3, v4}, Lcom/a/a/b;->b(J)Lcom/a/a/b;

    move-result-object v2

    .line 264
    invoke-virtual {v2, v3, v4}, Lcom/a/a/b;->a(J)Lcom/a/a/b;

    move-result-object v2

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 265
    invoke-virtual {v2, v5}, Lcom/a/a/b;->a(Landroid/animation/TimeInterpolator;)Lcom/a/a/b;

    move-result-object v2

    new-instance v5, Lcom/a/a/g$6;

    invoke-direct {v5, p0}, Lcom/a/a/g$6;-><init>(Lcom/a/a/g;)V

    .line 266
    invoke-virtual {v2, v5}, Lcom/a/a/b;->a(Lcom/a/a/b$b;)Lcom/a/a/b;

    move-result-object v2

    new-instance v5, Lcom/a/a/g$5;

    invoke-direct {v5, p0}, Lcom/a/a/g$5;-><init>(Lcom/a/a/g;)V

    .line 272
    invoke-virtual {v2, v5}, Lcom/a/a/b;->a(Lcom/a/a/b$a;)Lcom/a/a/b;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Lcom/a/a/b;->a()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/a/a/g;->ah:Landroid/animation/ValueAnimator;

    .line 281
    new-instance v2, Lcom/a/a/b;

    invoke-direct {v2}, Lcom/a/a/b;-><init>()V

    const-wide/16 v5, 0x3e8

    .line 282
    invoke-virtual {v2, v5, v6}, Lcom/a/a/b;->b(J)Lcom/a/a/b;

    move-result-object v2

    const/4 v5, -0x1

    .line 283
    invoke-virtual {v2, v5}, Lcom/a/a/b;->a(I)Lcom/a/a/b;

    move-result-object v2

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 284
    invoke-virtual {v2, v5}, Lcom/a/a/b;->a(Landroid/animation/TimeInterpolator;)Lcom/a/a/b;

    move-result-object v2

    new-instance v5, Lcom/a/a/g$7;

    invoke-direct {v5, p0}, Lcom/a/a/g$7;-><init>(Lcom/a/a/g;)V

    .line 285
    invoke-virtual {v2, v5}, Lcom/a/a/b;->a(Lcom/a/a/b$b;)Lcom/a/a/b;

    move-result-object v2

    .line 301
    invoke-virtual {v2}, Lcom/a/a/b;->a()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/a/a/g;->ai:Landroid/animation/ValueAnimator;

    .line 303
    new-instance v2, Lcom/a/a/b;

    invoke-direct {v2, v1}, Lcom/a/a/b;-><init>(Z)V

    .line 304
    invoke-virtual {v2, v3, v4}, Lcom/a/a/b;->b(J)Lcom/a/a/b;

    move-result-object v2

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 305
    invoke-virtual {v2, v5}, Lcom/a/a/b;->a(Landroid/animation/TimeInterpolator;)Lcom/a/a/b;

    move-result-object v2

    new-instance v5, Lcom/a/a/g$9;

    invoke-direct {v5, p0}, Lcom/a/a/g$9;-><init>(Lcom/a/a/g;)V

    .line 306
    invoke-virtual {v2, v5}, Lcom/a/a/b;->a(Lcom/a/a/b$b;)Lcom/a/a/b;

    move-result-object v2

    new-instance v5, Lcom/a/a/g$8;

    invoke-direct {v5, p0}, Lcom/a/a/g$8;-><init>(Lcom/a/a/g;)V

    .line 312
    invoke-virtual {v2, v5}, Lcom/a/a/b;->a(Lcom/a/a/b$a;)Lcom/a/a/b;

    move-result-object v2

    .line 318
    invoke-virtual {v2}, Lcom/a/a/b;->a()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/a/a/g;->aj:Landroid/animation/ValueAnimator;

    .line 320
    new-instance v2, Lcom/a/a/b;

    invoke-direct {v2}, Lcom/a/a/b;-><init>()V

    .line 321
    invoke-virtual {v2, v3, v4}, Lcom/a/a/b;->b(J)Lcom/a/a/b;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 322
    invoke-virtual {v2, v3}, Lcom/a/a/b;->a(Landroid/animation/TimeInterpolator;)Lcom/a/a/b;

    move-result-object v2

    new-instance v3, Lcom/a/a/g$11;

    invoke-direct {v3, p0}, Lcom/a/a/g$11;-><init>(Lcom/a/a/g;)V

    .line 323
    invoke-virtual {v2, v3}, Lcom/a/a/b;->a(Lcom/a/a/b$b;)Lcom/a/a/b;

    move-result-object v2

    new-instance v3, Lcom/a/a/g$10;

    invoke-direct {v3, p0}, Lcom/a/a/g$10;-><init>(Lcom/a/a/g;)V

    .line 340
    invoke-virtual {v2, v3}, Lcom/a/a/b;->a(Lcom/a/a/b$a;)Lcom/a/a/b;

    move-result-object v2

    .line 346
    invoke-virtual {v2}, Lcom/a/a/b;->a()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/a/a/g;->an:Landroid/animation/ValueAnimator;

    const/4 v2, 0x4

    .line 348
    new-array v2, v2, [Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/a/a/g;->ah:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/a/a/g;->ai:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/a/a/g;->an:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/a/a/g;->aj:Landroid/animation/ValueAnimator;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/a/a/g;->ao:[Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_252

    .line 376
    iput-object p4, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    .line 377
    iput-object p2, p0, Lcom/a/a/g;->m:Landroid/view/ViewManager;

    .line 378
    iput-object p3, p0, Lcom/a/a/g;->l:Landroid/view/ViewGroup;

    if-eqz p5, :cond_e0

    goto :goto_e5

    .line 379
    :cond_e0
    new-instance p5, Lcom/a/a/g$a;

    invoke-direct {p5}, Lcom/a/a/g$a;-><init>()V

    :goto_e5
    iput-object p5, p0, Lcom/a/a/g;->ae:Lcom/a/a/g$a;

    .line 380
    iget-object p2, p4, Lcom/a/a/e;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/a/a/g;->v:Ljava/lang/CharSequence;

    .line 381
    iget-object p2, p4, Lcom/a/a/e;->b:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/a/a/g;->x:Ljava/lang/CharSequence;

    const/16 p2, 0x14

    .line 383
    invoke-static {p1, p2}, Lcom/a/a/i;->a(Landroid/content/Context;I)I

    move-result p5

    iput p5, p0, Lcom/a/a/g;->a:I

    const/16 p5, 0x28

    .line 384
    invoke-static {p1, p5}, Lcom/a/a/i;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/a/a/g;->h:I

    .line 385
    iget v2, p4, Lcom/a/a/e;->d:I

    invoke-static {p1, v2}, Lcom/a/a/i;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/a/a/g;->b:I

    .line 386
    invoke-static {p1, p5}, Lcom/a/a/i;->a(Landroid/content/Context;I)I

    move-result p5

    iput p5, p0, Lcom/a/a/g;->d:I

    const/16 p5, 0x8

    .line 387
    invoke-static {p1, p5}, Lcom/a/a/i;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/a/a/g;->e:I

    const/16 v2, 0x168

    .line 388
    invoke-static {p1, v2}, Lcom/a/a/i;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/a/a/g;->f:I

    .line 389
    invoke-static {p1, p2}, Lcom/a/a/i;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/a/a/g;->g:I

    const/16 p2, 0x58

    .line 390
    invoke-static {p1, p2}, Lcom/a/a/i;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/a/a/g;->i:I

    .line 391
    invoke-static {p1, p5}, Lcom/a/a/i;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/a/a/g;->j:I

    .line 392
    invoke-static {p1, v1}, Lcom/a/a/i;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/a/a/g;->k:I

    const p2, 0x3dcccccd    # 0.1f

    .line 393
    iget p5, p0, Lcom/a/a/g;->b:I

    int-to-float p5, p5

    mul-float p5, p5, p2

    float-to-int p2, p5

    iput p2, p0, Lcom/a/a/g;->c:I

    .line 395
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/a/a/g;->L:Landroid/graphics/Path;

    .line 396
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    .line 397
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/a/a/g;->J:Landroid/graphics/Rect;

    .line 399
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/a/a/g;->p:Landroid/text/TextPaint;

    .line 400
    iget-object p2, p0, Lcom/a/a/g;->p:Landroid/text/TextPaint;

    invoke-virtual {p4, p1}, Lcom/a/a/e;->f(Landroid/content/Context;)I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 401
    iget-object p2, p0, Lcom/a/a/g;->p:Landroid/text/TextPaint;

    const-string p5, "sans-serif-medium"

    invoke-static {p5, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 402
    iget-object p2, p0, Lcom/a/a/g;->p:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 404
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/a/a/g;->q:Landroid/text/TextPaint;

    .line 405
    iget-object p2, p0, Lcom/a/a/g;->q:Landroid/text/TextPaint;

    invoke-virtual {p4, p1}, Lcom/a/a/e;->g(Landroid/content/Context;)I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 406
    iget-object p2, p0, Lcom/a/a/g;->q:Landroid/text/TextPaint;

    sget-object p5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p5, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 407
    iget-object p2, p0, Lcom/a/a/g;->q:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 408
    iget-object p2, p0, Lcom/a/a/g;->q:Landroid/text/TextPaint;

    const/16 p5, 0x89

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 410
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/a/a/g;->r:Landroid/graphics/Paint;

    .line 411
    iget-object p2, p0, Lcom/a/a/g;->r:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 412
    iget-object p2, p0, Lcom/a/a/g;->r:Landroid/graphics/Paint;

    iget p5, p4, Lcom/a/a/e;->c:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float p5, p5, v2

    float-to-int p5, p5

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 414
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/a/a/g;->s:Landroid/graphics/Paint;

    .line 415
    iget-object p2, p0, Lcom/a/a/g;->s:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 416
    iget-object p2, p0, Lcom/a/a/g;->s:Landroid/graphics/Paint;

    const/16 p5, 0x32

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 417
    iget-object p2, p0, Lcom/a/a/g;->s:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 418
    iget-object p2, p0, Lcom/a/a/g;->s:Landroid/graphics/Paint;

    iget p5, p0, Lcom/a/a/g;->k:I

    int-to-float p5, p5

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 419
    iget-object p2, p0, Lcom/a/a/g;->s:Landroid/graphics/Paint;

    const/high16 p5, -0x1000000

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/a/a/g;->t:Landroid/graphics/Paint;

    .line 422
    iget-object p2, p0, Lcom/a/a/g;->t:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 424
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/a/a/g;->u:Landroid/graphics/Paint;

    .line 425
    iget-object p2, p0, Lcom/a/a/g;->u:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 427
    invoke-virtual {p0, p1}, Lcom/a/a/g;->a(Landroid/content/Context;)V

    .line 431
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x13

    if-lt p2, p5, :cond_224

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_224

    .line 432
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    .line 433
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p5, 0x4000000

    and-int/2addr p5, p2

    if-eqz p5, :cond_21a

    const/4 p5, 0x1

    goto :goto_21b

    :cond_21a
    const/4 p5, 0x0

    :goto_21b
    const/high16 v2, 0x8000000

    and-int/2addr p2, v2

    if-eqz p2, :cond_221

    const/4 v0, 0x1

    :cond_221
    move v7, p5

    move v8, v0

    goto :goto_226

    :cond_224
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 441
    :goto_226
    new-instance p2, Lcom/a/a/g$12;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p4

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/a/a/g$12;-><init>(Lcom/a/a/g;Lcom/a/a/e;Landroid/view/ViewGroup;Landroid/content/Context;ZZ)V

    iput-object p2, p0, Lcom/a/a/g;->ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 493
    invoke-virtual {p0}, Lcom/a/a/g;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/a/a/g;->ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 495
    invoke-virtual {p0, v1}, Lcom/a/a/g;->setFocusableInTouchMode(Z)V

    .line 496
    invoke-virtual {p0, v1}, Lcom/a/a/g;->setClickable(Z)V

    .line 497
    new-instance p1, Lcom/a/a/g$2;

    invoke-direct {p1, p0}, Lcom/a/a/g$2;-><init>(Lcom/a/a/g;)V

    invoke-virtual {p0, p1}, Lcom/a/a/g;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    new-instance p1, Lcom/a/a/g$3;

    invoke-direct {p1, p0}, Lcom/a/a/g$3;-><init>(Lcom/a/a/g;)V

    invoke-virtual {p0, p1}, Lcom/a/a/g;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 374
    :cond_252
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Landroid/app/Activity;Lcom/a/a/e;)Lcom/a/a/g;
    .registers 3

    const/4 v0, 0x0

    .line 156
    invoke-static {p0, p1, v0}, Lcom/a/a/g;->a(Landroid/app/Activity;Lcom/a/a/e;Lcom/a/a/g$a;)Lcom/a/a/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Lcom/a/a/e;Lcom/a/a/g$a;)Lcom/a/a/g;
    .registers 12

    if-eqz p0, :cond_2a

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 163
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v7, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const v1, 0x1020002

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    .line 166
    new-instance v8, Lcom/a/a/g;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/a/a/g;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/a/a/e;Lcom/a/a/g$a;)V

    .line 167
    invoke-virtual {v0, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v8

    .line 160
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Activity is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/app/Dialog;Lcom/a/a/e;)Lcom/a/a/g;
    .registers 3

    const/4 v0, 0x0

    .line 173
    invoke-static {p0, p1, v0}, Lcom/a/a/g;->a(Landroid/app/Dialog;Lcom/a/a/e;Lcom/a/a/g$a;)Lcom/a/a/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Dialog;Lcom/a/a/e;Lcom/a/a/g$a;)Lcom/a/a/g;
    .registers 11

    if-eqz p0, :cond_38

    .line 179
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p0, "window"

    .line 180
    invoke-virtual {v1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 181
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v0, 0x2

    .line 182
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x1

    .line 183
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v0, 0x0

    .line 184
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x800033

    .line 185
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 186
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 187
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v0, -0x1

    .line 188
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 189
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 191
    new-instance v7, Lcom/a/a/g;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/a/g;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/a/a/e;Lcom/a/a/g$a;)V

    .line 192
    invoke-interface {p0, v7, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v7

    .line 177
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Dialog is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/a/a/g;)Z
    .registers 1

    .line 69
    iget-boolean p0, p0, Lcom/a/a/g;->al:Z

    return p0
.end method

.method static synthetic a(Lcom/a/a/g;Z)Z
    .registers 2

    .line 69
    iput-boolean p1, p0, Lcom/a/a/g;->am:Z

    return p1
.end method

.method static synthetic b(Lcom/a/a/g;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/a/a/g;->f()V

    return-void
.end method

.method static synthetic b(Lcom/a/a/g;Z)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/a/a/g;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .registers 2

    .line 781
    invoke-virtual {p0, p1}, Lcom/a/a/g;->a(Z)V

    .line 782
    iget-object p1, p0, Lcom/a/a/g;->m:Landroid/view/ViewManager;

    invoke-static {p1, p0}, Lcom/a/a/k;->a(Landroid/view/ViewManager;Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/a/a/g;)Z
    .registers 1

    .line 69
    iget-boolean p0, p0, Lcom/a/a/g;->am:Z

    return p0
.end method

.method private f()V
    .registers 2

    .line 536
    iget-boolean v0, p0, Lcom/a/a/g;->E:Z

    if-nez v0, :cond_f

    const/4 v0, 0x0

    .line 537
    iput-boolean v0, p0, Lcom/a/a/g;->am:Z

    .line 538
    iget-object v0, p0, Lcom/a/a/g;->ah:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    .line 539
    iput-boolean v0, p0, Lcom/a/a/g;->E:Z

    :cond_f
    return-void
.end method


# virtual methods
.method a(IIII)D
    .registers 9

    sub-int/2addr p3, p1

    int-to-double v0, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 1029
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-int/2addr p4, p2

    int-to-double p1, p4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method a(F)F
    .registers 4

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_8

    div-float/2addr p1, v0

    return p1

    :cond_8
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    div-float/2addr v1, v0

    return v1
.end method

.method a(FF)F
    .registers 4

    cmpg-float v0, p1, p2

    if-gez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    sub-float/2addr p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    div-float/2addr p1, v0

    return p1
.end method

.method a(IILandroid/graphics/Rect;)I
    .registers 11

    .line 1021
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/a/a/g;->a(IIII)D

    move-result-wide v0

    .line 1022
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/a/a/g;->a(IIII)D

    move-result-wide v2

    .line 1023
    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/a/a/g;->a(IIII)D

    move-result-wide v4

    .line 1024
    iget v6, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, p2, v6, p3}, Lcom/a/a/g;->a(IIII)D

    move-result-wide p1

    .line 1025
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method a(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 8

    .line 937
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 938
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    .line 939
    iget v1, p0, Lcom/a/a/g;->b:I

    int-to-float v1, v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 940
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, p4, v0, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    neg-int p4, v1

    .line 941
    invoke-virtual {v2, p4, p4}, Landroid/graphics/Rect;->inset(II)V

    .line 943
    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/g;->a(IILandroid/graphics/Rect;)I

    move-result p3

    .line 944
    invoke-virtual {p0, p1, p2, v2}, Lcom/a/a/g;->a(IILandroid/graphics/Rect;)I

    move-result p1

    .line 945
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lcom/a/a/g;->h:I

    add-int/2addr p1, p2

    return p1
.end method

.method protected a(Landroid/content/Context;)V
    .registers 7

    .line 544
    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget-boolean v0, v0, Lcom/a/a/e;->l:Z

    iput-boolean v0, p0, Lcom/a/a/g;->B:Z

    .line 545
    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget-boolean v0, v0, Lcom/a/a/e;->j:Z

    iput-boolean v0, p0, Lcom/a/a/g;->C:Z

    .line 546
    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget-boolean v0, v0, Lcom/a/a/e;->k:Z

    iput-boolean v0, p0, Lcom/a/a/g;->D:Z

    .line 550
    iget-boolean v0, p0, Lcom/a/a/g;->C:Z

    if-eqz v0, :cond_34

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_34

    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget-boolean v0, v0, Lcom/a/a/e;->m:Z

    if-nez v0, :cond_34

    .line 551
    new-instance v0, Lcom/a/a/g$4;

    invoke-direct {v0, p0}, Lcom/a/a/g$4;-><init>(Lcom/a/a/g;)V

    iput-object v0, p0, Lcom/a/a/g;->af:Landroid/view/ViewOutlineProvider;

    .line 566
    iget-object v0, p0, Lcom/a/a/g;->af:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/a/a/g;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 567
    iget v0, p0, Lcom/a/a/g;->j:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/a/a/g;->setElevation(F)V

    .line 570
    :cond_34
    iget-boolean v0, p0, Lcom/a/a/g;->C:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/a/a/g;->af:Landroid/view/ViewOutlineProvider;

    if-nez v0, :cond_48

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v0, v3, :cond_48

    .line 571
    invoke-virtual {p0, v1, v2}, Lcom/a/a/g;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_4c

    :cond_48
    const/4 v0, 0x2

    .line 573
    invoke-virtual {p0, v0, v2}, Lcom/a/a/g;->setLayerType(ILandroid/graphics/Paint;)V

    .line 576
    :goto_4c
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const-string v2, "isLightTheme"

    .line 577
    invoke-static {p1, v2}, Lcom/a/a/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    iput-boolean v1, p0, Lcom/a/a/g;->z:Z

    .line 579
    iget-object v1, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    invoke-virtual {v1, p1}, Lcom/a/a/e;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_6f

    .line 581
    iget-object v0, p0, Lcom/a/a/g;->r:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_82

    :cond_6f
    if-eqz v0, :cond_7d

    .line 583
    iget-object v0, p0, Lcom/a/a/g;->r:Landroid/graphics/Paint;

    const-string v1, "colorPrimary"

    invoke-static {p1, v1}, Lcom/a/a/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_82

    .line 585
    :cond_7d
    iget-object v0, p0, Lcom/a/a/g;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 588
    :goto_82
    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    invoke-virtual {v0, p1}, Lcom/a/a/e;->b(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_96

    .line 590
    iget-object v3, p0, Lcom/a/a/g;->t:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a3

    .line 592
    :cond_96
    iget-object v0, p0, Lcom/a/a/g;->t:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/a/a/g;->z:Z

    if-eqz v3, :cond_9f

    const/high16 v3, -0x1000000

    goto :goto_a0

    :cond_9f
    const/4 v3, -0x1

    :goto_a0
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 595
    :goto_a3
    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget-boolean v0, v0, Lcom/a/a/e;->m:Z

    if-eqz v0, :cond_b5

    .line 596
    iget-object v0, p0, Lcom/a/a/g;->t:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 599
    :cond_b5
    iget-object v0, p0, Lcom/a/a/g;->u:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/a/a/g;->t:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 601
    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    invoke-virtual {v0, p1}, Lcom/a/a/e;->c(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d6

    .line 603
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v0, v3}, Lcom/a/a/i;->a(IF)I

    move-result v0

    iput v0, p0, Lcom/a/a/g;->V:I

    goto :goto_d8

    .line 605
    :cond_d6
    iput v2, p0, Lcom/a/a/g;->V:I

    .line 608
    :goto_d8
    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    invoke-virtual {v0, p1}, Lcom/a/a/e;->d(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_ea

    .line 610
    iget-object v1, p0, Lcom/a/a/g;->p:Landroid/text/TextPaint;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_f5

    .line 612
    :cond_ea
    iget-object v0, p0, Lcom/a/a/g;->p:Landroid/text/TextPaint;

    iget-boolean v3, p0, Lcom/a/a/g;->z:Z

    if-eqz v3, :cond_f1

    goto :goto_f2

    :cond_f1
    const/4 v1, -0x1

    :goto_f2
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 615
    :goto_f5
    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    invoke-virtual {v0, p1}, Lcom/a/a/e;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_107

    .line 617
    iget-object v0, p0, Lcom/a/a/g;->q:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_112

    .line 619
    :cond_107
    iget-object p1, p0, Lcom/a/a/g;->q:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/a/a/g;->p:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 622
    :goto_112
    iget-object p1, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget-object p1, p1, Lcom/a/a/e;->g:Landroid/graphics/Typeface;

    if-eqz p1, :cond_121

    .line 623
    iget-object p1, p0, Lcom/a/a/g;->p:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget-object v0, v0, Lcom/a/a/e;->g:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 626
    :cond_121
    iget-object p1, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget-object p1, p1, Lcom/a/a/e;->h:Landroid/graphics/Typeface;

    if-eqz p1, :cond_130

    .line 627
    iget-object p1, p0, Lcom/a/a/g;->q:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget-object v0, v0, Lcom/a/a/e;->h:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_130
    return-void
.end method

.method a(Landroid/graphics/Canvas;)V
    .registers 11

    .line 799
    iget v0, p0, Lcom/a/a/g;->P:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    .line 800
    iget-object v1, p0, Lcom/a/a/g;->s:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 801
    iget-object v1, p0, Lcom/a/a/g;->s:Landroid/graphics/Paint;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 802
    iget-object v1, p0, Lcom/a/a/g;->O:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/a/a/g;->O:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget v5, p0, Lcom/a/a/g;->j:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, p0, Lcom/a/a/g;->M:F

    iget-object v6, p0, Lcom/a/a/g;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 803
    iget-object v1, p0, Lcom/a/a/g;->s:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x6

    :goto_33
    if-lez v1, :cond_60

    .line 806
    iget-object v3, p0, Lcom/a/a/g;->s:Landroid/graphics/Paint;

    int-to-float v5, v1

    const/high16 v6, 0x40e00000    # 7.0f

    div-float/2addr v5, v6

    mul-float v5, v5, v0

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 807
    iget-object v3, p0, Lcom/a/a/g;->O:[I

    aget v3, v3, v2

    int-to-float v3, v3

    iget-object v5, p0, Lcom/a/a/g;->O:[I

    aget v5, v5, v4

    iget v6, p0, Lcom/a/a/g;->j:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/a/a/g;->M:F

    rsub-int/lit8 v7, v1, 0x7

    iget v8, p0, Lcom/a/a/g;->k:I

    mul-int v7, v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/a/a/g;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_33

    :cond_60
    return-void
.end method

.method a(Landroid/graphics/Rect;)V
    .registers 3

    .line 1033
    invoke-virtual {p0, p1}, Lcom/a/a/g;->invalidate(Landroid/graphics/Rect;)V

    .line 1034
    iget-object p1, p0, Lcom/a/a/g;->af:Landroid/view/ViewOutlineProvider;

    if-eqz p1, :cond_10

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_10

    .line 1035
    invoke-virtual {p0}, Lcom/a/a/g;->invalidateOutline()V

    :cond_10
    return-void
.end method

.method a(Z)V
    .registers 7

    .line 638
    iget-boolean v0, p0, Lcom/a/a/g;->ak:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 640
    iput-boolean v0, p0, Lcom/a/a/g;->al:Z

    const/4 v1, 0x1

    .line 641
    iput-boolean v1, p0, Lcom/a/a/g;->ak:Z

    .line 643
    iget-object v1, p0, Lcom/a/a/g;->ao:[Landroid/animation/ValueAnimator;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 644
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 645
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 648
    :cond_1c
    invoke-virtual {p0}, Lcom/a/a/g;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/g;->ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v1, v2}, Lcom/a/a/k;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 649
    iput-boolean v0, p0, Lcom/a/a/g;->E:Z

    .line 651
    iget-object v0, p0, Lcom/a/a/g;->ae:Lcom/a/a/g$a;

    if-eqz v0, :cond_30

    .line 652
    iget-object v0, p0, Lcom/a/a/g;->ae:Lcom/a/a/g$a;

    invoke-virtual {v0, p0, p1}, Lcom/a/a/g$a;->a(Lcom/a/a/g;Z)V

    :cond_30
    return-void
.end method

.method public a()Z
    .registers 2

    .line 795
    iget-boolean v0, p0, Lcom/a/a/g;->ak:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/a/a/g;->E:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method a(I)Z
    .registers 6

    .line 1013
    iget v0, p0, Lcom/a/a/g;->ac:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_13

    .line 1014
    iget v0, p0, Lcom/a/a/g;->i:I

    if-lt p1, v0, :cond_11

    iget v0, p0, Lcom/a/a/g;->ac:I

    iget v3, p0, Lcom/a/a/g;->i:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_12

    :cond_11
    const/4 v1, 0x1

    :cond_12
    return v1

    .line 1016
    :cond_13
    iget v0, p0, Lcom/a/a/g;->i:I

    if-lt p1, v0, :cond_20

    invoke-virtual {p0}, Lcom/a/a/g;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/a/a/g;->i:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_21

    :cond_20
    const/4 v1, 0x1

    :cond_21
    return v1
.end method

.method b()V
    .registers 7

    .line 866
    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget-object v0, v0, Lcom/a/a/e;->f:Landroid/graphics/drawable/Drawable;

    .line 867
    iget-boolean v1, p0, Lcom/a/a/g;->B:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    if-nez v0, :cond_c

    goto :goto_3f

    .line 872
    :cond_c
    iget-object v1, p0, Lcom/a/a/g;->ad:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_11

    return-void

    .line 874
    :cond_11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/g;->ad:Landroid/graphics/Bitmap;

    .line 876
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/a/a/g;->ad:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 877
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-object v4, p0, Lcom/a/a/g;->r:Landroid/graphics/Paint;

    .line 878
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 877
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 879
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 880
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 868
    :cond_3f
    :goto_3f
    iput-object v2, p0, Lcom/a/a/g;->ad:Landroid/graphics/Bitmap;

    return-void
.end method

.method b(Landroid/graphics/Canvas;)V
    .registers 14

    .line 813
    iget-object v0, p0, Lcom/a/a/g;->I:Landroid/graphics/Paint;

    const/4 v1, 0x1

    const/16 v2, 0xff

    const/4 v3, 0x0

    if-nez v0, :cond_29

    .line 814
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/g;->I:Landroid/graphics/Paint;

    .line 815
    iget-object v0, p0, Lcom/a/a/g;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 816
    iget-object v0, p0, Lcom/a/a/g;->I:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 817
    iget-object v0, p0, Lcom/a/a/g;->I:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/a/a/g;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/a/a/i;->a(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 820
    :cond_29
    iget-object v0, p0, Lcom/a/a/g;->H:Landroid/text/TextPaint;

    if-nez v0, :cond_4b

    .line 821
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/a/a/g;->H:Landroid/text/TextPaint;

    .line 822
    iget-object v0, p0, Lcom/a/a/g;->H:Landroid/text/TextPaint;

    const/high16 v4, -0x10000

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 823
    iget-object v0, p0, Lcom/a/a/g;->H:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/a/a/g;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lcom/a/a/i;->b(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 827
    :cond_4b
    iget-object v0, p0, Lcom/a/a/g;->I:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 828
    iget-object v0, p0, Lcom/a/a/g;->K:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/a/a/g;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 829
    iget-object v0, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/a/a/g;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 830
    iget-object v0, p0, Lcom/a/a/g;->O:[I

    aget v0, v0, v3

    int-to-float v0, v0

    iget-object v4, p0, Lcom/a/a/g;->O:[I

    aget v4, v4, v1

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    iget-object v6, p0, Lcom/a/a/g;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 831
    iget-object v0, p0, Lcom/a/a/g;->O:[I

    aget v0, v0, v3

    int-to-float v0, v0

    iget-object v4, p0, Lcom/a/a/g;->O:[I

    aget v4, v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/a/a/g;->N:I

    iget v6, p0, Lcom/a/a/g;->h:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/a/a/g;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 832
    iget-object v0, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/a/a/g;->b:I

    iget v6, p0, Lcom/a/a/g;->a:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/a/a/g;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 835
    iget-object v0, p0, Lcom/a/a/g;->I:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text bounds: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/a/a/g;->K:Landroid/graphics/Rect;

    .line 837
    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nTarget bounds: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    .line 838
    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nCenter: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/a/a/g;->O:[I

    aget v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/a/a/g;->O:[I

    aget v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nView size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-virtual {p0}, Lcom/a/a/g;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/g;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nTarget bounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    .line 841
    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 843
    iget-object v0, p0, Lcom/a/a/g;->F:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_115

    .line 844
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/a/a/g;->F:Landroid/text/SpannableStringBuilder;

    goto :goto_11f

    .line 846
    :cond_115
    iget-object v0, p0, Lcom/a/a/g;->F:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 847
    iget-object v0, p0, Lcom/a/a/g;->F:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 850
    :goto_11f
    iget-object v0, p0, Lcom/a/a/g;->G:Landroid/text/DynamicLayout;

    if-nez v0, :cond_137

    .line 851
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v6, p0, Lcom/a/a/g;->H:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/a/a/g;->getWidth()I

    move-result v7

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/a/a/g;->G:Landroid/text/DynamicLayout;

    .line 854
    :cond_137
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 856
    iget-object v1, p0, Lcom/a/a/g;->I:Landroid/graphics/Paint;

    const/16 v4, 0xdc

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    const/4 v1, 0x0

    .line 857
    iget v4, p0, Lcom/a/a/g;->ab:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 858
    iget-object v1, p0, Lcom/a/a/g;->G:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v1

    int-to-float v8, v1

    iget-object v1, p0, Lcom/a/a/g;->G:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v1

    int-to-float v9, v1

    iget-object v10, p0, Lcom/a/a/g;->I:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 859
    iget-object v1, p0, Lcom/a/a/g;->I:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v2, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 860
    iget-object v1, p0, Lcom/a/a/g;->G:Landroid/text/DynamicLayout;

    invoke-virtual {v1, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 862
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public b(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 766
    iput-boolean v0, p0, Lcom/a/a/g;->al:Z

    .line 767
    iget-object v0, p0, Lcom/a/a/g;->ai:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 768
    iget-object v0, p0, Lcom/a/a/g;->ah:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 769
    iget-boolean v0, p0, Lcom/a/a/g;->E:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/a/a/g;->O:[I

    if-nez v0, :cond_16

    goto :goto_24

    :cond_16
    if-eqz p1, :cond_1e

    .line 774
    iget-object p1, p0, Lcom/a/a/g;->an:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_23

    .line 776
    :cond_1e
    iget-object p1, p0, Lcom/a/a/g;->aj:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_23
    return-void

    .line 770
    :cond_24
    :goto_24
    invoke-direct {p0, p1}, Lcom/a/a/g;->c(Z)V

    return-void
.end method

.method c()V
    .registers 11

    .line 884
    invoke-virtual {p0}, Lcom/a/a/g;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/a/a/g;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/a/a/g;->d:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-gtz v0, :cond_12

    return-void

    .line 889
    :cond_12
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/a/a/g;->v:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/a/a/g;->p:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move v5, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, p0, Lcom/a/a/g;->w:Landroid/text/StaticLayout;

    .line 892
    iget-object v1, p0, Lcom/a/a/g;->x:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3d

    .line 893
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/a/a/g;->x:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/a/a/g;->q:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move v5, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, p0, Lcom/a/a/g;->y:Landroid/text/StaticLayout;

    goto :goto_40

    :cond_3d
    const/4 v0, 0x0

    .line 896
    iput-object v0, p0, Lcom/a/a/g;->y:Landroid/text/StaticLayout;

    :goto_40
    return-void
.end method

.method d()V
    .registers 5

    .line 917
    invoke-virtual {p0}, Lcom/a/a/g;->getTextBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g;->K:Landroid/graphics/Rect;

    .line 918
    invoke-virtual {p0}, Lcom/a/a/g;->getOuterCircleCenterPoint()[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g;->O:[I

    .line 919
    iget-object v0, p0, Lcom/a/a/g;->O:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/a/a/g;->O:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/a/a/g;->K:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/a/a/g;->a(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Lcom/a/a/g;->N:I

    return-void
.end method

.method e()V
    .registers 7

    .line 923
    iget-object v0, p0, Lcom/a/a/g;->O:[I

    if-nez v0, :cond_5

    return-void

    .line 928
    :cond_5
    iget-object v0, p0, Lcom/a/a/g;->J:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/a/a/g;->O:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget v3, p0, Lcom/a/a/g;->M:F

    sub-float/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 929
    iget-object v0, p0, Lcom/a/a/g;->J:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/a/a/g;->O:[I

    const/4 v4, 0x1

    aget v1, v1, v4

    int-to-float v1, v1

    iget v5, p0, Lcom/a/a/g;->M:F

    sub-float/2addr v1, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 930
    iget-object v0, p0, Lcom/a/a/g;->J:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/a/a/g;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/a/a/g;->O:[I

    aget v2, v3, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/a/a/g;->M:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/a/a/g;->h:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 932
    iget-object v0, p0, Lcom/a/a/g;->J:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/a/a/g;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/a/a/g;->O:[I

    aget v2, v2, v4

    int-to-float v2, v2

    iget v3, p0, Lcom/a/a/g;->M:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/a/a/g;->h:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method getOuterCircleCenterPoint()[I
    .registers 10

    .line 968
    iget-object v0, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/a/g;->a(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_22

    .line 969
    new-array v0, v3, [I

    iget-object v3, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    aput v3, v0, v2

    iget-object v2, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    aput v2, v0, v1

    return-object v0

    .line 972
    :cond_22
    iget-object v0, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v4, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/2addr v0, v3

    iget v4, p0, Lcom/a/a/g;->a:I

    add-int/2addr v0, v4

    .line 973
    invoke-virtual {p0}, Lcom/a/a/g;->getTotalTextHeight()I

    move-result v4

    .line 975
    iget-object v5, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget v6, p0, Lcom/a/a/g;->b:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/a/a/g;->a:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    if-lez v5, :cond_4b

    const/4 v5, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v5, 0x0

    .line 977
    :goto_4c
    iget-object v6, p0, Lcom/a/a/g;->K:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 978
    iget-object v7, p0, Lcom/a/a/g;->K:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 979
    iget-object v7, p0, Lcom/a/a/g;->w:Landroid/text/StaticLayout;

    if-nez v7, :cond_6c

    const/4 v7, 0x0

    goto :goto_72

    :cond_6c
    iget-object v7, p0, Lcom/a/a/g;->w:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    :goto_72
    if-eqz v5, :cond_83

    .line 980
    iget-object v5, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    .line 981
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget v8, p0, Lcom/a/a/g;->b:I

    sub-int/2addr v5, v8

    iget v8, p0, Lcom/a/a/g;->a:I

    sub-int/2addr v5, v8

    sub-int/2addr v5, v4

    add-int/2addr v5, v7

    goto :goto_91

    :cond_83
    iget-object v4, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    .line 983
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget v5, p0, Lcom/a/a/g;->b:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/a/a/g;->a:I

    add-int/2addr v4, v5

    add-int v5, v4, v7

    .line 985
    :goto_91
    new-array v4, v3, [I

    add-int/2addr v6, v0

    div-int/2addr v6, v3

    aput v6, v4, v2

    aput v5, v4, v1

    return-object v4
.end method

.method getTextBounds()Landroid/graphics/Rect;
    .registers 7

    .line 949
    invoke-virtual {p0}, Lcom/a/a/g;->getTotalTextHeight()I

    move-result v0

    .line 950
    invoke-virtual {p0}, Lcom/a/a/g;->getTotalTextWidth()I

    move-result v1

    .line 952
    iget-object v2, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Lcom/a/a/g;->b:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/a/a/g;->a:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 954
    iget v3, p0, Lcom/a/a/g;->ab:I

    if-le v2, v3, :cond_1a

    goto :goto_26

    .line 957
    :cond_1a
    iget-object v2, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Lcom/a/a/g;->b:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/a/a/g;->a:I

    add-int/2addr v2, v3

    .line 960
    :goto_26
    invoke-virtual {p0}, Lcom/a/a/g;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_39

    .line 961
    iget v3, p0, Lcom/a/a/g;->g:I

    neg-int v3, v3

    goto :goto_3b

    :cond_39
    iget v3, p0, Lcom/a/a/g;->g:I

    .line 962
    :goto_3b
    iget v4, p0, Lcom/a/a/g;->d:I

    iget-object v5, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 963
    invoke-virtual {p0}, Lcom/a/a/g;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/a/a/g;->d:I

    sub-int/2addr v4, v5

    add-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 964
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method getTotalTextHeight()I
    .registers 3

    .line 989
    iget-object v0, p0, Lcom/a/a/g;->w:Landroid/text/StaticLayout;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 993
    :cond_6
    iget-object v0, p0, Lcom/a/a/g;->y:Landroid/text/StaticLayout;

    if-nez v0, :cond_14

    .line 994
    iget-object v0, p0, Lcom/a/a/g;->w:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/a/a/g;->e:I

    add-int/2addr v0, v1

    return v0

    .line 997
    :cond_14
    iget-object v0, p0, Lcom/a/a/g;->w:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/g;->y:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/g;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method getTotalTextWidth()I
    .registers 3

    .line 1001
    iget-object v0, p0, Lcom/a/a/g;->w:Landroid/text/StaticLayout;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 1005
    :cond_6
    iget-object v0, p0, Lcom/a/a/g;->y:Landroid/text/StaticLayout;

    if-nez v0, :cond_11

    .line 1006
    iget-object v0, p0, Lcom/a/a/g;->w:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    return v0

    .line 1009
    :cond_11
    iget-object v0, p0, Lcom/a/a/g;->w:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/g;->y:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 633
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 634
    invoke-virtual {p0, v0}, Lcom/a/a/g;->a(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 658
    iget-boolean v0, p0, Lcom/a/a/g;->ak:Z

    if-nez v0, :cond_16b

    iget-object v0, p0, Lcom/a/a/g;->O:[I

    if-nez v0, :cond_a

    goto/16 :goto_16b

    .line 660
    :cond_a
    iget v0, p0, Lcom/a/a/g;->ab:I

    const/4 v1, 0x0

    if-lez v0, :cond_1e

    iget v0, p0, Lcom/a/a/g;->ac:I

    if-lez v0, :cond_1e

    .line 661
    iget v0, p0, Lcom/a/a/g;->ab:I

    invoke-virtual {p0}, Lcom/a/a/g;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/a/a/g;->ac:I

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 664
    :cond_1e
    iget v0, p0, Lcom/a/a/g;->V:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_28

    .line 665
    iget v0, p0, Lcom/a/a/g;->V:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 669
    :cond_28
    iget-object v0, p0, Lcom/a/a/g;->r:Landroid/graphics/Paint;

    iget v2, p0, Lcom/a/a/g;->P:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 670
    iget-boolean v0, p0, Lcom/a/a/g;->C:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/a/a/g;->af:Landroid/view/ViewOutlineProvider;

    if-nez v0, :cond_48

    .line 671
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 673
    iget-object v2, p0, Lcom/a/a/g;->L:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 674
    invoke-virtual {p0, p1}, Lcom/a/a/g;->a(Landroid/graphics/Canvas;)V

    .line 676
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 678
    :cond_48
    iget-object v0, p0, Lcom/a/a/g;->O:[I

    aget v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/a/a/g;->O:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/g;->M:F

    iget-object v3, p0, Lcom/a/a/g;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 680
    iget-object v0, p0, Lcom/a/a/g;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/a/a/g;->T:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 681
    iget v0, p0, Lcom/a/a/g;->R:I

    if-lez v0, :cond_81

    .line 682
    iget-object v0, p0, Lcom/a/a/g;->u:Landroid/graphics/Paint;

    iget v1, p0, Lcom/a/a/g;->R:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 683
    iget-object v0, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/g;->Q:F

    iget-object v3, p0, Lcom/a/a/g;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 686
    :cond_81
    iget-object v0, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/g;->S:F

    iget-object v3, p0, Lcom/a/a/g;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 689
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 691
    iget-object v1, p0, Lcom/a/a/g;->K:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/a/a/g;->K:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 692
    iget-object v1, p0, Lcom/a/a/g;->p:Landroid/text/TextPaint;

    iget v2, p0, Lcom/a/a/g;->U:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 693
    iget-object v1, p0, Lcom/a/a/g;->w:Landroid/text/StaticLayout;

    if-eqz v1, :cond_b7

    .line 694
    iget-object v1, p0, Lcom/a/a/g;->w:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 697
    :cond_b7
    iget-object v1, p0, Lcom/a/a/g;->y:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_e1

    iget-object v1, p0, Lcom/a/a/g;->w:Landroid/text/StaticLayout;

    if-eqz v1, :cond_e1

    .line 698
    iget-object v1, p0, Lcom/a/a/g;->w:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/a/a/g;->e:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 699
    iget-object v1, p0, Lcom/a/a/g;->q:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget v3, v3, Lcom/a/a/e;->n:F

    iget v4, p0, Lcom/a/a/g;->U:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 700
    iget-object v1, p0, Lcom/a/a/g;->y:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 703
    :cond_e1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 705
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 707
    iget-object v1, p0, Lcom/a/a/g;->ad:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_117

    .line 708
    iget-object v1, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v3, p0, Lcom/a/a/g;->ad:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    .line 709
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v4, p0, Lcom/a/a/g;->ad:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 708
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 710
    iget-object v1, p0, Lcom/a/a/g;->ad:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/a/a/g;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_160

    .line 711
    :cond_117
    iget-object v1, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget-object v1, v1, Lcom/a/a/e;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_160

    .line 712
    iget-object v1, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget-object v2, v2, Lcom/a/a/e;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    .line 713
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget-object v3, v3, Lcom/a/a/e;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 712
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 714
    iget-object v1, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget-object v1, v1, Lcom/a/a/e;->f:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/a/a/g;->t:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 715
    iget-object v1, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget-object v1, v1, Lcom/a/a/e;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 718
    :cond_160
    :goto_160
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 720
    iget-boolean v0, p0, Lcom/a/a/g;->A:Z

    if-eqz v0, :cond_16a

    .line 721
    invoke-virtual {p0, p1}, Lcom/a/a/g;->b(Landroid/graphics/Canvas;)V

    :cond_16a
    return-void

    :cond_16b
    :goto_16b
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 734
    invoke-virtual {p0}, Lcom/a/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/a/a/g;->D:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    .line 735
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 744
    invoke-virtual {p0}, Lcom/a/a/g;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/a/a/g;->am:Z

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/a/a/g;->D:Z

    if-eqz v0, :cond_34

    const/4 v0, 0x4

    if-ne p1, v0, :cond_34

    .line 745
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_34

    .line 746
    iput-boolean v1, p0, Lcom/a/a/g;->am:Z

    .line 748
    iget-object p1, p0, Lcom/a/a/g;->ae:Lcom/a/a/g$a;

    if-eqz p1, :cond_2a

    .line 749
    iget-object p1, p0, Lcom/a/a/g;->ae:Lcom/a/a/g$a;

    invoke-virtual {p1, p0}, Lcom/a/a/g$a;->c(Lcom/a/a/g;)V

    goto :goto_32

    .line 751
    :cond_2a
    new-instance p1, Lcom/a/a/g$a;

    invoke-direct {p1}, Lcom/a/a/g$a;-><init>()V

    invoke-virtual {p1, p0}, Lcom/a/a/g$a;->c(Lcom/a/a/g;)V

    :goto_32
    const/4 p1, 0x1

    return p1

    :cond_34
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/a/a/g;->W:F

    .line 728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/a/a/g;->aa:F

    .line 729
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDrawDebug(Z)V
    .registers 3

    .line 787
    iget-boolean v0, p0, Lcom/a/a/g;->A:Z

    if-eq v0, p1, :cond_9

    .line 788
    iput-boolean p1, p0, Lcom/a/a/g;->A:Z

    .line 789
    invoke-virtual {p0}, Lcom/a/a/g;->postInvalidate()V

    :cond_9
    return-void
.end method

###### Class com.a.a.g.AnonymousClass1 (com.a.a.g$1)
.class Lcom/a/a/g$1;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Lcom/a/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/g;


# direct methods
.method constructor <init>(Lcom/a/a/g;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 10

    .line 229
    iget-object v0, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    iget v0, v0, Lcom/a/a/g;->N:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    .line 230
    iget-object v1, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    iget v1, v1, Lcom/a/a/g;->M:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    if-nez v1, :cond_1b

    .line 234
    iget-object v4, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    invoke-virtual {v4}, Lcom/a/a/g;->e()V

    .line 237
    :cond_1b
    iget-object v4, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    iget-object v4, v4, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget v4, v4, Lcom/a/a/e;->c:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v4, v4, v5

    .line 238
    iget-object v6, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    iput v0, v6, Lcom/a/a/g;->M:F

    .line 239
    iget-object v0, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float v6, v6, p1

    mul-float v7, v6, v4

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Lcom/a/a/g;->P:I

    .line 240
    iget-object v0, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    iget-object v0, v0, Lcom/a/a/g;->L:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 241
    iget-object v0, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    iget-object v0, v0, Lcom/a/a/g;->L:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    iget-object v4, v4, Lcom/a/a/g;->O:[I

    aget v2, v4, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    iget-object v4, v4, Lcom/a/a/g;->O:[I

    aget v3, v4, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    iget v4, v4, Lcom/a/a/g;->M:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 243
    iget-object v0, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    mul-float v2, v6, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/a/a/g;->T:I

    if-eqz v1, :cond_79

    .line 246
    iget-object v0, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    iget-object v2, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    iget v2, v2, Lcom/a/a/g;->b:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v2, v2, v3

    iput v2, v0, Lcom/a/a/g;->S:F

    goto :goto_8c

    .line 248
    :cond_79
    iget-object v0, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    iget-object v2, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    iget v2, v2, Lcom/a/a/g;->b:I

    int-to-float v2, v2

    mul-float v2, v2, p1

    iput v2, v0, Lcom/a/a/g;->S:F

    .line 249
    iget-object v0, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    iget v2, v0, Lcom/a/a/g;->Q:F

    mul-float v2, v2, p1

    iput v2, v0, Lcom/a/a/g;->Q:F

    .line 252
    :goto_8c
    iget-object v0, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    iget-object v2, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v2, p1, v3}, Lcom/a/a/g;->a(FF)F

    move-result p1

    mul-float p1, p1, v5

    float-to-int p1, p1

    iput p1, v0, Lcom/a/a/g;->U:I

    if-eqz v1, :cond_a3

    .line 255
    iget-object p1, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    invoke-virtual {p1}, Lcom/a/a/g;->e()V

    .line 258
    :cond_a3
    iget-object p1, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    iget-object v0, p0, Lcom/a/a/g$1;->a:Lcom/a/a/g;

    iget-object v0, v0, Lcom/a/a/g;->J:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/a/a/g;->a(Landroid/graphics/Rect;)V

    return-void
.end method

###### Class com.a.a.g.AnonymousClass10 (com.a.a.g$10)
.class Lcom/a/a/g$10;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Lcom/a/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/g;


# direct methods
.method constructor <init>(Lcom/a/a/g;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/a/a/g$10;->a:Lcom/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/a/a/g$10;->a:Lcom/a/a/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/a/a/g;->b(Lcom/a/a/g;Z)V

    return-void
.end method

###### Class com.a.a.g.AnonymousClass11 (com.a.a.g$11)
.class Lcom/a/a/g$11;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Lcom/a/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/g;


# direct methods
.method constructor <init>(Lcom/a/a/g;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 10

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 326
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 327
    iget-object v2, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    iget-object v3, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    iget v3, v3, Lcom/a/a/g;->N:I

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float v4, v4, v0

    add-float/2addr v4, v1

    mul-float v3, v3, v4

    iput v3, v2, Lcom/a/a/g;->M:F

    .line 328
    iget-object v2, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    sub-float v0, v1, v0

    iget-object v3, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    iget-object v3, v3, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget v3, v3, Lcom/a/a/e;->c:F

    mul-float v3, v3, v0

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/a/a/g;->P:I

    .line 329
    iget-object v2, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    iget-object v2, v2, Lcom/a/a/g;->L:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 330
    iget-object v2, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    iget-object v2, v2, Lcom/a/a/g;->L:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    iget-object v3, v3, Lcom/a/a/g;->O:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    int-to-float v3, v3

    iget-object v5, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    iget-object v5, v5, Lcom/a/a/g;->O:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    iget v6, v6, Lcom/a/a/g;->M:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 331
    iget-object v2, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    sub-float v3, v1, p1

    iget-object v5, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    iget v5, v5, Lcom/a/a/g;->b:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    iput v5, v2, Lcom/a/a/g;->S:F

    .line 332
    iget-object v2, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    mul-float v5, v3, v4

    float-to-int v5, v5

    iput v5, v2, Lcom/a/a/g;->T:I

    .line 333
    iget-object v2, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    add-float/2addr p1, v1

    iget-object v1, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    iget v1, v1, Lcom/a/a/g;->b:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    iput p1, v2, Lcom/a/a/g;->Q:F

    .line 334
    iget-object p1, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    iget-object v1, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    iget v1, v1, Lcom/a/a/g;->R:I

    int-to-float v1, v1

    mul-float v3, v3, v1

    float-to-int v1, v3

    iput v1, p1, Lcom/a/a/g;->R:I

    .line 335
    iget-object p1, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    mul-float v0, v0, v4

    float-to-int v0, v0

    iput v0, p1, Lcom/a/a/g;->U:I

    .line 336
    iget-object p1, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    invoke-virtual {p1}, Lcom/a/a/g;->e()V

    .line 337
    iget-object p1, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    iget-object v0, p0, Lcom/a/a/g$11;->a:Lcom/a/a/g;

    iget-object v0, v0, Lcom/a/a/g;->J:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/a/a/g;->a(Landroid/graphics/Rect;)V

    return-void
.end method

###### Class com.a.a.g.AnonymousClass12 (com.a.a.g$12)
.class Lcom/a/a/g$12;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/g;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/a/a/e;Lcom/a/a/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/e;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Lcom/a/a/g;


# direct methods
.method constructor <init>(Lcom/a/a/g;Lcom/a/a/e;Landroid/view/ViewGroup;Landroid/content/Context;ZZ)V
    .registers 7

    .line 441
    iput-object p1, p0, Lcom/a/a/g$12;->f:Lcom/a/a/g;

    iput-object p2, p0, Lcom/a/a/g$12;->a:Lcom/a/a/e;

    iput-object p3, p0, Lcom/a/a/g$12;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/a/a/g$12;->c:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/a/a/g$12;->d:Z

    iput-boolean p6, p0, Lcom/a/a/g$12;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 444
    iget-object v0, p0, Lcom/a/a/g$12;->f:Lcom/a/a/g;

    invoke-static {v0}, Lcom/a/a/g;->a(Lcom/a/a/g;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 447
    :cond_9
    iget-object v0, p0, Lcom/a/a/g$12;->f:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->c()V

    .line 448
    iget-object v0, p0, Lcom/a/a/g$12;->a:Lcom/a/a/e;

    new-instance v1, Lcom/a/a/g$12$1;

    invoke-direct {v1, p0}, Lcom/a/a/g$12$1;-><init>(Lcom/a/a/g$12;)V

    invoke-virtual {v0, v1}, Lcom/a/a/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.a.a.g.AnonymousClass12.AnonymousClass1 (com.a.a.g$12$1)
.class Lcom/a/a/g$12$1;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/g$12;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/g$12;


# direct methods
.method constructor <init>(Lcom/a/a/g$12;)V
    .registers 2

    .line 448
    iput-object p1, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x2

    .line 451
    new-array v1, v0, [I

    .line 453
    iget-object v2, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    iget-object v2, v2, Lcom/a/a/g$12;->f:Lcom/a/a/g;

    iget-object v2, v2, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    iget-object v3, v3, Lcom/a/a/g$12;->a:Lcom/a/a/e;

    invoke-virtual {v3}, Lcom/a/a/e;->b()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 455
    iget-object v2, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    iget-object v2, v2, Lcom/a/a/g$12;->f:Lcom/a/a/g;

    invoke-virtual {v2, v1}, Lcom/a/a/g;->getLocationOnScreen([I)V

    .line 456
    iget-object v2, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    iget-object v2, v2, Lcom/a/a/g$12;->f:Lcom/a/a/g;

    iget-object v2, v2, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v1, v3

    neg-int v4, v4

    const/4 v5, 0x1

    aget v1, v1, v5

    neg-int v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 458
    iget-object v1, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    iget-object v1, v1, Lcom/a/a/g$12;->b:Landroid/view/ViewGroup;

    if-eqz v1, :cond_96

    .line 459
    iget-object v1, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    iget-object v1, v1, Lcom/a/a/g$12;->c:Landroid/content/Context;

    const-string v2, "window"

    .line 460
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 461
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 462
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 464
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 465
    iget-object v4, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    iget-object v4, v4, Lcom/a/a/g$12;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 466
    new-array v0, v0, [I

    .line 467
    iget-object v4, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    iget-object v4, v4, Lcom/a/a/g$12;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 469
    iget-object v4, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    iget-boolean v4, v4, Lcom/a/a/g$12;->d:Z

    if-eqz v4, :cond_69

    .line 470
    aget v4, v0, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 472
    :cond_69
    iget-object v4, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    iget-boolean v4, v4, Lcom/a/a/g$12;->e:Z

    if-eqz v4, :cond_7c

    .line 473
    aget v0, v0, v5

    iget-object v4, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    iget-object v4, v4, Lcom/a/a/g$12;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 479
    :cond_7c
    iget-object v0, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    iget-object v0, v0, Lcom/a/a/g$12;->f:Lcom/a/a/g;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/a/a/g;->ab:I

    .line 480
    iget-object v0, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    iget-object v0, v0, Lcom/a/a/g$12;->f:Lcom/a/a/g;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/a/a/g;->ac:I

    .line 483
    :cond_96
    iget-object v0, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    iget-object v0, v0, Lcom/a/a/g$12;->f:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->b()V

    .line 484
    iget-object v0, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    iget-object v0, v0, Lcom/a/a/g$12;->f:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->requestFocus()Z

    .line 485
    iget-object v0, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    iget-object v0, v0, Lcom/a/a/g$12;->f:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->d()V

    .line 487
    iget-object v0, p0, Lcom/a/a/g$12$1;->a:Lcom/a/a/g$12;

    iget-object v0, v0, Lcom/a/a/g$12;->f:Lcom/a/a/g;

    invoke-static {v0}, Lcom/a/a/g;->b(Lcom/a/a/g;)V

    return-void
.end method

###### Class com.a.a.g.AnonymousClass2 (com.a.a.g$2)
.class Lcom/a/a/g$2;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/g;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/a/a/e;Lcom/a/a/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/g;


# direct methods
.method constructor <init>(Lcom/a/a/g;)V
    .registers 2

    .line 497
    iput-object p1, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 500
    iget-object p1, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget-object p1, p1, Lcom/a/a/g;->ae:Lcom/a/a/g$a;

    if-eqz p1, :cond_9d

    iget-object p1, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget-object p1, p1, Lcom/a/a/g;->O:[I

    if-eqz p1, :cond_9d

    iget-object p1, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    invoke-static {p1}, Lcom/a/a/g;->c(Lcom/a/a/g;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_9d

    .line 502
    :cond_16
    iget-object p1, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget-object v0, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget-object v0, v0, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    .line 503
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget-object v1, v1, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget-object v2, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget v2, v2, Lcom/a/a/g;->W:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget v3, v3, Lcom/a/a/g;->aa:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/a/a/g;->a(IIII)D

    move-result-wide v0

    iget-object p1, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget p1, p1, Lcom/a/a/g;->S:F

    float-to-double v2, p1

    const/4 p1, 0x1

    const/4 v4, 0x0

    cmpg-double v5, v0, v2

    if-gtz v5, :cond_43

    const/4 v0, 0x1

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    .line 504
    :goto_44
    iget-object v1, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget-object v2, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget-object v2, v2, Lcom/a/a/g;->O:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget-object v3, v3, Lcom/a/a/g;->O:[I

    aget v3, v3, p1

    iget-object v5, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget v5, v5, Lcom/a/a/g;->W:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget v6, v6, Lcom/a/a/g;->aa:F

    float-to-int v6, v6

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/a/a/g;->a(IIII)D

    move-result-wide v1

    .line 506
    iget-object v3, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget v3, v3, Lcom/a/a/g;->M:F

    float-to-double v5, v3

    cmpg-double v3, v1, v5

    if-gtz v3, :cond_6a

    goto :goto_6b

    :cond_6a
    const/4 p1, 0x0

    :goto_6b
    if-eqz v0, :cond_7c

    .line 509
    iget-object p1, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    invoke-static {p1, v4}, Lcom/a/a/g;->a(Lcom/a/a/g;Z)Z

    .line 510
    iget-object p1, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget-object p1, p1, Lcom/a/a/g;->ae:Lcom/a/a/g$a;

    iget-object v0, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    invoke-virtual {p1, v0}, Lcom/a/a/g$a;->a(Lcom/a/a/g;)V

    goto :goto_9c

    :cond_7c
    if-eqz p1, :cond_88

    .line 512
    iget-object p1, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget-object p1, p1, Lcom/a/a/g;->ae:Lcom/a/a/g$a;

    iget-object v0, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    invoke-virtual {p1, v0}, Lcom/a/a/g$a;->b(Lcom/a/a/g;)V

    goto :goto_9c

    .line 513
    :cond_88
    iget-object p1, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget-boolean p1, p1, Lcom/a/a/g;->D:Z

    if-eqz p1, :cond_9c

    .line 514
    iget-object p1, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    invoke-static {p1, v4}, Lcom/a/a/g;->a(Lcom/a/a/g;Z)Z

    .line 515
    iget-object p1, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    iget-object p1, p1, Lcom/a/a/g;->ae:Lcom/a/a/g$a;

    iget-object v0, p0, Lcom/a/a/g$2;->a:Lcom/a/a/g;

    invoke-virtual {p1, v0}, Lcom/a/a/g$a;->c(Lcom/a/a/g;)V

    :cond_9c
    :goto_9c
    return-void

    :cond_9d
    :goto_9d
    return-void
.end method

###### Class com.a.a.g.AnonymousClass3 (com.a.a.g$3)
.class Lcom/a/a/g$3;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/g;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/a/a/e;Lcom/a/a/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/g;


# direct methods
.method constructor <init>(Lcom/a/a/g;)V
    .registers 2

    .line 520
    iput-object p1, p0, Lcom/a/a/g$3;->a:Lcom/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5

    .line 523
    iget-object p1, p0, Lcom/a/a/g$3;->a:Lcom/a/a/g;

    iget-object p1, p1, Lcom/a/a/g;->ae:Lcom/a/a/g$a;

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 525
    :cond_8
    iget-object p1, p0, Lcom/a/a/g$3;->a:Lcom/a/a/g;

    iget-object p1, p1, Lcom/a/a/g;->o:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/a/a/g$3;->a:Lcom/a/a/g;

    iget v1, v1, Lcom/a/a/g;->W:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/a/a/g$3;->a:Lcom/a/a/g;

    iget v2, v2, Lcom/a/a/g;->aa:F

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 526
    iget-object p1, p0, Lcom/a/a/g$3;->a:Lcom/a/a/g;

    iget-object p1, p1, Lcom/a/a/g;->ae:Lcom/a/a/g$a;

    iget-object v0, p0, Lcom/a/a/g$3;->a:Lcom/a/a/g;

    invoke-virtual {p1, v0}, Lcom/a/a/g$a;->d(Lcom/a/a/g;)V

    const/4 p1, 0x1

    return p1

    :cond_27
    return v0
.end method

###### Class com.a.a.g.AnonymousClass4 (com.a.a.g$4)
.class Lcom/a/a/g$4;
.super Landroid/view/ViewOutlineProvider;
.source "TapTargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/g;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/g;


# direct methods
.method constructor <init>(Lcom/a/a/g;)V
    .registers 2

    .line 551
    iput-object p1, p0, Lcom/a/a/g$4;->a:Lcom/a/a/g;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 555
    iget-object p1, p0, Lcom/a/a/g$4;->a:Lcom/a/a/g;

    iget-object p1, p1, Lcom/a/a/g;->O:[I

    if-nez p1, :cond_7

    return-void

    .line 556
    :cond_7
    iget-object p1, p0, Lcom/a/a/g$4;->a:Lcom/a/a/g;

    iget-object p1, p1, Lcom/a/a/g;->O:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    int-to-float p1, p1

    iget-object v1, p0, Lcom/a/a/g$4;->a:Lcom/a/a/g;

    iget v1, v1, Lcom/a/a/g;->M:F

    sub-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/a/a/g$4;->a:Lcom/a/a/g;

    iget-object v1, v1, Lcom/a/a/g;->O:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/a/a/g$4;->a:Lcom/a/a/g;

    iget v3, v3, Lcom/a/a/g;->M:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Lcom/a/a/g$4;->a:Lcom/a/a/g;

    iget-object v3, v3, Lcom/a/a/g;->O:[I

    aget v3, v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/a/a/g$4;->a:Lcom/a/a/g;

    iget v4, v4, Lcom/a/a/g;->M:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/a/a/g$4;->a:Lcom/a/a/g;

    iget-object v4, v4, Lcom/a/a/g;->O:[I

    aget v2, v4, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/a/a/g$4;->a:Lcom/a/a/g;

    iget v4, v4, Lcom/a/a/g;->M:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p2, p1, v1, v3, v2}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 559
    iget-object p1, p0, Lcom/a/a/g$4;->a:Lcom/a/a/g;

    iget p1, p1, Lcom/a/a/g;->P:I

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 560
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt p1, v1, :cond_58

    .line 561
    iget-object p1, p0, Lcom/a/a/g$4;->a:Lcom/a/a/g;

    iget p1, p1, Lcom/a/a/g;->j:I

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Outline;->offset(II)V

    :cond_58
    return-void
.end method

###### Class com.a.a.g.AnonymousClass5 (com.a.a.g$5)
.class Lcom/a/a/g$5;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Lcom/a/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/g;


# direct methods
.method constructor <init>(Lcom/a/a/g;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/a/a/g$5;->a:Lcom/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/a/a/g$5;->a:Lcom/a/a/g;

    iget-object v0, v0, Lcom/a/a/g;->ai:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 276
    iget-object v0, p0, Lcom/a/a/g$5;->a:Lcom/a/a/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/a/a/g;->a(Lcom/a/a/g;Z)Z

    return-void
.end method

###### Class com.a.a.g.AnonymousClass6 (com.a.a.g$6)
.class Lcom/a/a/g$6;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Lcom/a/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/g;


# direct methods
.method constructor <init>(Lcom/a/a/g;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/a/a/g$6;->a:Lcom/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/a/a/g$6;->a:Lcom/a/a/g;

    iget-object v0, v0, Lcom/a/a/g;->ag:Lcom/a/a/b$b;

    invoke-interface {v0, p1}, Lcom/a/a/b$b;->a(F)V

    return-void
.end method

###### Class com.a.a.g.AnonymousClass7 (com.a.a.g$7)
.class Lcom/a/a/g$7;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Lcom/a/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/g;


# direct methods
.method constructor <init>(Lcom/a/a/g;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/a/a/g$7;->a:Lcom/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 7

    .line 288
    iget-object v0, p0, Lcom/a/a/g$7;->a:Lcom/a/a/g;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p1, v1}, Lcom/a/a/g;->a(FF)F

    move-result v0

    .line 289
    iget-object v1, p0, Lcom/a/a/g$7;->a:Lcom/a/a/g;

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v3, v0, v2

    iget-object v4, p0, Lcom/a/a/g$7;->a:Lcom/a/a/g;

    iget v4, v4, Lcom/a/a/g;->b:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    iput v3, v1, Lcom/a/a/g;->Q:F

    .line 290
    iget-object v1, p0, Lcom/a/a/g$7;->a:Lcom/a/a/g;

    sub-float/2addr v2, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v2, v2, v0

    float-to-int v0, v2

    iput v0, v1, Lcom/a/a/g;->R:I

    .line 291
    iget-object v0, p0, Lcom/a/a/g$7;->a:Lcom/a/a/g;

    iget-object v1, p0, Lcom/a/a/g$7;->a:Lcom/a/a/g;

    iget v1, v1, Lcom/a/a/g;->b:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/a/a/g$7;->a:Lcom/a/a/g;

    invoke-virtual {v2, p1}, Lcom/a/a/g;->a(F)F

    move-result p1

    iget-object v2, p0, Lcom/a/a/g$7;->a:Lcom/a/a/g;

    iget v2, v2, Lcom/a/a/g;->c:I

    int-to-float v2, v2

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    iput v1, v0, Lcom/a/a/g;->S:F

    .line 293
    iget-object p1, p0, Lcom/a/a/g$7;->a:Lcom/a/a/g;

    iget p1, p1, Lcom/a/a/g;->M:F

    iget-object v0, p0, Lcom/a/a/g$7;->a:Lcom/a/a/g;

    iget v0, v0, Lcom/a/a/g;->N:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_4e

    .line 294
    iget-object p1, p0, Lcom/a/a/g$7;->a:Lcom/a/a/g;

    iget-object v0, p0, Lcom/a/a/g$7;->a:Lcom/a/a/g;

    iget v0, v0, Lcom/a/a/g;->N:I

    int-to-float v0, v0

    iput v0, p1, Lcom/a/a/g;->M:F

    .line 297
    :cond_4e
    iget-object p1, p0, Lcom/a/a/g$7;->a:Lcom/a/a/g;

    invoke-virtual {p1}, Lcom/a/a/g;->e()V

    .line 298
    iget-object p1, p0, Lcom/a/a/g$7;->a:Lcom/a/a/g;

    iget-object v0, p0, Lcom/a/a/g$7;->a:Lcom/a/a/g;

    iget-object v0, v0, Lcom/a/a/g;->J:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/a/a/g;->a(Landroid/graphics/Rect;)V

    return-void
.end method

###### Class com.a.a.g.AnonymousClass8 (com.a.a.g$8)
.class Lcom/a/a/g$8;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Lcom/a/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/g;


# direct methods
.method constructor <init>(Lcom/a/a/g;)V
    .registers 2

    .line 312
    iput-object p1, p0, Lcom/a/a/g$8;->a:Lcom/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/a/a/g$8;->a:Lcom/a/a/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/a/a/g;->b(Lcom/a/a/g;Z)V

    return-void
.end method

###### Class com.a.a.g.AnonymousClass9 (com.a.a.g$9)
.class Lcom/a/a/g$9;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Lcom/a/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/g;


# direct methods
.method constructor <init>(Lcom/a/a/g;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/a/a/g$9;->a:Lcom/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 3

    .line 309
    iget-object v0, p0, Lcom/a/a/g$9;->a:Lcom/a/a/g;

    iget-object v0, v0, Lcom/a/a/g;->ag:Lcom/a/a/b$b;

    invoke-interface {v0, p1}, Lcom/a/a/b$b;->a(F)V

    return-void
.end method

###### Class com.a.a.g.a (com.a.a.g$a)
.class public Lcom/a/a/g$a;
.super Ljava/lang/Object;
.source "TapTargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/g;)V
    .registers 3

    const/4 v0, 0x1

    .line 200
    invoke-virtual {p1, v0}, Lcom/a/a/g;->b(Z)V

    return-void
.end method

.method public a(Lcom/a/a/g;Z)V
    .registers 3

    return-void
.end method

.method public b(Lcom/a/a/g;)V
    .registers 2

    return-void
.end method

.method public c(Lcom/a/a/g;)V
    .registers 3

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p1, v0}, Lcom/a/a/g;->b(Z)V

    return-void
.end method

.method public d(Lcom/a/a/g;)V
    .registers 2

    .line 205
    invoke-virtual {p0, p1}, Lcom/a/a/g$a;->a(Lcom/a/a/g;)V

    return-void
.end method
