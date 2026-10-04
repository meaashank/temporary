###### Class com.a.a.j (com.a.a.j)
.class Lcom/a/a/j;
.super Lcom/a/a/e;
.source "ViewTapTarget.java"


# instance fields
.field final o:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p2, p3}, Lcom/a/a/e;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_8

    .line 33
    iput-object p1, p0, Lcom/a/a/j;->o:Landroid/view/View;

    return-void

    .line 31
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given null view to target"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/a/a/j;->o:Landroid/view/View;

    new-instance v1, Lcom/a/a/j$1;

    invoke-direct {v1, p0, p1}, Lcom/a/a/j$1;-><init>(Lcom/a/a/j;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/a/a/k;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.a.a.j.AnonymousClass1 (com.a.a.j$1)
.class Lcom/a/a/j$1;
.super Ljava/lang/Object;
.source "ViewTapTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/j;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/a/a/j;


# direct methods
.method constructor <init>(Lcom/a/a/j;Ljava/lang/Runnable;)V
    .registers 3

    .line 38
    iput-object p1, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    iput-object p2, p0, Lcom/a/a/j$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v0, 0x2

    .line 42
    new-array v0, v0, [I

    .line 43
    iget-object v1, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    iget-object v1, v1, Lcom/a/a/j;->o:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 44
    iget-object v1, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x1

    aget v6, v0, v5

    aget v7, v0, v3

    iget-object v8, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    iget-object v8, v8, Lcom/a/a/j;->o:Landroid/view/View;

    .line 45
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v0, v0, v5

    iget-object v5, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    iget-object v5, v5, Lcom/a/a/j;->o:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v2, v4, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v1, Lcom/a/a/j;->e:Landroid/graphics/Rect;

    .line 47
    iget-object v0, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    iget-object v0, v0, Lcom/a/a/j;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    iget-object v0, v0, Lcom/a/a/j;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_97

    iget-object v0, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    iget-object v0, v0, Lcom/a/a/j;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_97

    .line 48
    iget-object v0, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    iget-object v0, v0, Lcom/a/a/j;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    iget-object v1, v1, Lcom/a/a/j;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 50
    iget-object v2, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    iget-object v2, v2, Lcom/a/a/j;->o:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 51
    iget-object v1, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    iget-object v4, v4, Lcom/a/a/j;->o:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/a/a/j;->f:Landroid/graphics/drawable/Drawable;

    .line 52
    iget-object v0, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    iget-object v0, v0, Lcom/a/a/j;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    iget-object v1, v1, Lcom/a/a/j;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/a/a/j$1;->b:Lcom/a/a/j;

    iget-object v2, v2, Lcom/a/a/j;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    :cond_97
    iget-object v0, p0, Lcom/a/a/j$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
