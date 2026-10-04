###### Class com.amazonaws.mobile.auth.core.signin.ui.buttons.SignInButton (com.amazonaws.mobile.auth.core.signin.ui.buttons.SignInButton)
.class public Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;
.super Landroid/widget/LinearLayout;
.source "SignInButton.java"


# static fields
.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:F = 8.0f

.field private static final j:F

.field private static final k:I = -0x1000000


# instance fields
.field protected a:Landroid/widget/ImageView;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/graphics/Bitmap;

.field protected d:Z

.field private final l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    .line 52
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    move-result v1

    sput v1, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->e:I

    .line 55
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    move-result v1

    sput v1, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->f:I

    const/4 v1, 0x2

    .line 58
    invoke-static {v1}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    move-result v1

    sput v1, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->g:I

    .line 61
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    move-result v0

    sput v0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->h:I

    const/16 v0, 0x32

    .line 67
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->j:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;)V
    .registers 9

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 85
    iput-boolean p3, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->d:Z

    .line 90
    iput-object p4, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;

    const/4 p4, 0x1

    .line 91
    invoke-virtual {p0, p4}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->setFocusable(Z)V

    .line 92
    invoke-virtual {p0, p4}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->setClickable(Z)V

    .line 93
    invoke-virtual {p0, p3}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->setOrientation(I)V

    const/16 v0, 0x10

    .line 94
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->setGravity(I)V

    .line 95
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->getBackgroundStatesDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->a:Landroid/widget/ImageView;

    .line 98
    invoke-virtual {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;

    invoke-virtual {v2}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;->j()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->c:Landroid/graphics/Bitmap;

    .line 99
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->c:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 100
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->a:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 104
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    sget v2, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->e:I

    sget v3, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->f:I

    invoke-virtual {v1, v2, p3, v3, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, 0x0

    .line 108
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 109
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 112
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;

    invoke-virtual {v2}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 114
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 115
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz p2, :cond_a3

    .line 119
    sget-object v0, Lcom/amazonaws/mobile/auth/core/R$styleable;->SignInButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 120
    sget p2, Lcom/amazonaws/mobile/auth/core/R$styleable;->SignInButton_button_style:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-lez p2, :cond_9a

    .line 121
    iput-boolean p4, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->d:Z

    .line 123
    :cond_9a
    sget p2, Lcom/amazonaws/mobile/auth/core/R$styleable;->SignInButton_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_a3
    if-eqz v2, :cond_ab

    .line 130
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b6

    .line 132
    :cond_ab
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;

    invoke-virtual {p2}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;->i()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 135
    :goto_b6
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    sget p2, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->g:I

    invoke-static {p2}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    move-result p2

    sget p4, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->h:I

    invoke-static {p4}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    move-result p4

    invoke-virtual {p1, p2, p3, p4, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 140
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 141
    iget-object p2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p1}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->a()V

    .line 144
    invoke-virtual {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->invalidate()V

    return-void
.end method

.method private a(FFLandroid/graphics/RectF;)F
    .registers 8

    move v0, p1

    :goto_1
    cmpg-float v1, p1, p2

    if-gtz v1, :cond_19

    add-float v1, p1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 272
    invoke-direct {p0, v1, p3}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->a(FLandroid/graphics/RectF;)Z

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v2, :cond_16

    add-float p1, v1, v3

    move v0, v1

    goto :goto_1

    :cond_16
    sub-float p2, v1, v3

    goto :goto_1

    :cond_19
    return v0
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .registers 16

    .line 153
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;

    invoke-virtual {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;->a()I

    move-result v0

    .line 156
    invoke-static {v0, p1}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    .line 159
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v4, v3, [I

    iget-object v5, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;

    .line 161
    invoke-virtual {v5}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;->d()I

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    iget-object v5, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;

    invoke-virtual {v5}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;->d()I

    move-result v5

    const/4 v7, 0x1

    aput v5, v4, v7

    invoke-direct {v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 162
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 165
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v3, [I

    iget-object v8, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;

    .line 167
    invoke-virtual {v8}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;->e()I

    move-result v8

    aput v8, v5, v6

    iget-object v8, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;

    invoke-virtual {v8}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;->e()I

    move-result v8

    aput v8, v5, v7

    invoke-direct {v2, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 168
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 170
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    aput-object p1, v4, v3

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v0

    .line 176
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 179
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;

    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;->f()I

    move-result v10

    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;

    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;->f()I

    move-result v11

    const/4 v9, 0x1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 182
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;

    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;->f()I

    move-result v10

    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;

    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;->f()I

    move-result v11

    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;

    .line 183
    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;->g()I

    move-result v12

    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;

    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;->g()I

    move-result v13

    const/4 v9, 0x2

    .line 182
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    return-object v0
.end method

.method private a()V
    .registers 3

    .line 201
    iget-boolean v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->d:Z

    if-eqz v0, :cond_11

    .line 202
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x11

    .line 203
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->setGravity(I)V

    goto :goto_1c

    .line 205
    :cond_11
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x10

    .line 206
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->setGravity(I)V

    :goto_1c
    return-void
.end method

.method private a(FLandroid/graphics/RectF;)Z
    .registers 6

    .line 252
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 253
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 254
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    if-nez p1, :cond_21

    .line 255
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_31

    :cond_21
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 256
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    invoke-interface {p1, v1, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 258
    :goto_31
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 261
    invoke-virtual {p2, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p1

    return p1
.end method

.method private b()V
    .registers 6

    .line 286
    invoke-virtual {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->d:Z

    if-eqz v0, :cond_b

    goto :goto_5a

    :cond_b
    const/4 v0, 0x2

    const/high16 v1, 0x41000000    # 8.0f

    .line 291
    invoke-virtual {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 290
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 292
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 293
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 294
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 295
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 296
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 298
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    sget v4, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->j:F

    .line 299
    invoke-direct {p0, v0, v4, v1}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->a(FFLandroid/graphics/RectF;)F

    move-result v0

    .line 298
    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_5a
    :goto_5a
    return-void
.end method

.method private getBackgroundStatesDrawable()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 192
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    .line 193
    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    iget-object v3, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;

    .line 194
    invoke-virtual {v3}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;->c()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 193
    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 195
    new-array v1, v2, [I

    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->l:Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;

    .line 196
    invoke-virtual {v2}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButtonAttributes;->b()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 7

    .line 239
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 240
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 241
    invoke-virtual {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->getMeasuredHeight()I

    move-result p2

    int-to-double v0, p2

    const-wide v2, 0x3fe70a3d70a3d70aL    # 0.72

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p2, v0

    .line 242
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_27

    .line 243
    iget-object p2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 247
    :cond_27
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 248
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 304
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_7

    if-eq p2, p4, :cond_a

    .line 306
    :cond_7
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b()V

    :cond_a
    return-void
.end method

.method public setButtonText(I)V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b()V

    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b()V

    return-void
.end method

.method public setSmallStyle(Z)V
    .registers 2

    .line 215
    iput-boolean p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->d:Z

    .line 216
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->a()V

    return-void
.end method
