###### Class com.bumptech.glide.load.resource.d.c (com.bumptech.glide.load.resource.d.c)
.class public Lcom/bumptech/glide/load/resource/d/c;
.super Landroid/graphics/drawable/Drawable;
.source "GifDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lcom/bumptech/glide/load/resource/d/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/d/c$a;
    }
.end annotation


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field private static final c:I = 0x77


# instance fields
.field private final d:Lcom/bumptech/glide/load/resource/d/c$a;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/c/b;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/i;IILandroid/graphics/Bitmap;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/c/b;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/e;",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    .line 110
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/resource/d/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/c/b;Lcom/bumptech/glide/load/i;IILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/c/b;Lcom/bumptech/glide/load/i;IILandroid/graphics/Bitmap;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/c/b;",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/bumptech/glide/load/resource/d/c$a;

    new-instance v8, Lcom/bumptech/glide/load/resource/d/g;

    .line 142
    invoke-static {p1}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object v2

    move-object v1, v8

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/load/resource/d/g;-><init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/c/b;IILcom/bumptech/glide/load/i;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v8}, Lcom/bumptech/glide/load/resource/d/c$a;-><init>(Lcom/bumptech/glide/load/resource/d/g;)V

    .line 138
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/d/c;-><init>(Lcom/bumptech/glide/load/resource/d/c$a;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/d/c$a;)V
    .registers 3

    .line 150
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->h:Z

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/bumptech/glide/load/resource/d/c;->j:I

    .line 151
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/d/c$a;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/d/g;Landroid/graphics/Paint;)V
    .registers 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 156
    new-instance v0, Lcom/bumptech/glide/load/resource/d/c$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/d/c$a;-><init>(Lcom/bumptech/glide/load/resource/d/g;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/d/c;-><init>(Lcom/bumptech/glide/load/resource/d/c$a;)V

    .line 157
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/c;->l:Landroid/graphics/Paint;

    return-void
.end method

.method private k()V
    .registers 2

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Lcom/bumptech/glide/load/resource/d/c;->i:I

    return-void
.end method

.method private l()V
    .registers 4

    .line 228
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->g:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v0, v2}, Lcom/bumptech/glide/h/j;->a(ZLjava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->h()I

    move-result v0

    if-ne v0, v1, :cond_17

    .line 232
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->invalidateSelf()V

    goto :goto_27

    .line 233
    :cond_17
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->e:Z

    if-nez v0, :cond_27

    .line 234
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/d/c;->e:Z

    .line 235
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/d/g;->a(Lcom/bumptech/glide/load/resource/d/g$b;)V

    .line 236
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->invalidateSelf()V

    :cond_27
    :goto_27
    return-void
.end method

.method private m()V
    .registers 2

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->e:Z

    .line 242
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/d/g;->b(Lcom/bumptech/glide/load/resource/d/g$b;)V

    return-void
.end method

.method private n()Landroid/graphics/Rect;
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->m:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 312
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->m:Landroid/graphics/Rect;

    .line 314
    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->m:Landroid/graphics/Rect;

    return-object v0
.end method

.method private o()Landroid/graphics/Paint;
    .registers 3

    .line 318
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->l:Landroid/graphics/Paint;

    if-nez v0, :cond_c

    .line 319
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->l:Landroid/graphics/Paint;

    .line 321
    :cond_c
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->l:Landroid/graphics/Paint;

    return-object v0
.end method

.method private p()Landroid/graphics/drawable/Drawable$Callback;
    .registers 3

    .line 332
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 333
    :goto_4
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 334
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    goto :goto_4

    :cond_f
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->e()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .registers 3

    const/4 v0, -0x1

    if-gtz p1, :cond_10

    if-eq p1, v0, :cond_10

    if-nez p1, :cond_8

    goto :goto_10

    .line 380
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    :goto_10
    if-nez p1, :cond_20

    .line 385
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object p1, p1, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/d/g;->i()I

    move-result p1

    if-nez p1, :cond_1d

    const/4 p1, -0x1

    .line 387
    :cond_1d
    iput p1, p0, Lcom/bumptech/glide/load/resource/d/c;->j:I

    goto :goto_22

    .line 389
    :cond_20
    iput p1, p0, Lcom/bumptech/glide/load/resource/d/c;->j:I

    :goto_22
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/i;Landroid/graphics/Bitmap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/d/g;->a(Lcom/bumptech/glide/load/i;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method a(Z)V
    .registers 2

    .line 276
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/d/c;->e:Z

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/i;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->a()Lcom/bumptech/glide/load/i;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/nio/ByteBuffer;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->g()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 287
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->g:Z

    if-eqz v0, :cond_5

    return-void

    .line 291
    :cond_5
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->k:Z

    if-eqz v0, :cond_21

    const/16 v0, 0x77

    .line 292
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->n()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->k:Z

    .line 296
    :cond_21
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 297
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->n()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->o()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public e()I
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->h()I

    move-result v0

    return v0
.end method

.method public f()I
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->f()I

    move-result v0

    return v0
.end method

.method public g()V
    .registers 3

    .line 207
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->e:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "You cannot restart a currently running animation."

    invoke-static {v0, v1}, Lcom/bumptech/glide/h/j;->a(ZLjava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->l()V

    .line 209
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->start()V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->d()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->c()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x2

    return v0
.end method

.method public h()V
    .registers 3

    .line 341
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->p()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_d

    .line 342
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->stop()V

    .line 343
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->invalidateSelf()V

    return-void

    .line 347
    :cond_d
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->invalidateSelf()V

    .line 349
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->e()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_22

    .line 350
    iget v0, p0, Lcom/bumptech/glide/load/resource/d/c;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/d/c;->i:I

    .line 353
    :cond_22
    iget v0, p0, Lcom/bumptech/glide/load/resource/d/c;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_30

    iget v0, p0, Lcom/bumptech/glide/load/resource/d/c;->i:I

    iget v1, p0, Lcom/bumptech/glide/load/resource/d/c;->j:I

    if-lt v0, v1, :cond_30

    .line 354
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c;->stop()V

    :cond_30
    return-void
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x1

    .line 367
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->g:Z

    .line 368
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/c;->d:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g;->j()V

    return-void
.end method

.method public isRunning()Z
    .registers 2

    .line 271
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->e:Z

    return v0
.end method

.method j()Z
    .registers 2

    .line 373
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->g:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .line 281
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 282
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/d/c;->k:Z

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 302
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->o()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 307
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->o()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5

    .line 247
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->g:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v0, v1}, Lcom/bumptech/glide/h/j;->a(ZLjava/lang/String;)V

    .line 250
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/d/c;->h:Z

    if-nez p1, :cond_11

    .line 252
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->m()V

    goto :goto_18

    .line 253
    :cond_11
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->f:Z

    if-eqz v0, :cond_18

    .line 254
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->l()V

    .line 256
    :cond_18
    :goto_18
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->f:Z

    .line 215
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->k()V

    .line 216
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->h:Z

    if-eqz v0, :cond_d

    .line 217
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->l()V

    :cond_d
    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/c;->f:Z

    .line 224
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/c;->m()V

    return-void
.end method

###### Class com.bumptech.glide.load.resource.d.c.a (com.bumptech.glide.load.resource.d.c$a)
.class final Lcom/bumptech/glide/load/resource/d/c$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/resource/d/g;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/d/g;)V
    .registers 2

    .line 397
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 410
    new-instance v0, Lcom/bumptech/glide/load/resource/d/c;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/d/c;-><init>(Lcom/bumptech/glide/load/resource/d/c$a;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 404
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/c$a;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
