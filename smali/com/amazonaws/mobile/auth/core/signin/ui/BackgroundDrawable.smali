###### Class com.amazonaws.mobile.auth.core.signin.ui.BackgroundDrawable (com.amazonaws.mobile.auth.core.signin.ui.BackgroundDrawable)
.class public Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BackgroundDrawable.java"


# static fields
.field private static final c:I = -0x1


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;->a:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;->b:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;->a:Landroid/graphics/Paint;

    .line 43
    iput p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;->b:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 48
    invoke-virtual {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;->a:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
