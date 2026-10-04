###### Class com.gaia.ngallery.l.h (com.gaia.ngallery.l.h)
.class public final Lcom/gaia/ngallery/l/h;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/l/h$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    .line 1489
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".PNG"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ".JPG"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, ".JPEG"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, ".BMP"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, ".GIF"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, ".WEBP"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/gaia/ngallery/l/h;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 6

    .line 1888
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1889
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_6
    shr-int/2addr p0, v1

    if-lt p0, p1, :cond_f

    shr-int/2addr v0, v1

    if-lt v0, p2, :cond_f

    shl-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_f
    return v2
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 6
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 297
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 298
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    .line 299
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 300
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 299
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 303
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 304
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .registers 6
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 320
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x1

    .line 322
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 323
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 324
    invoke-static {v0, p2, p3}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 325
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 326
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 4
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 25.0
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v0, 0x0

    .line 1151
    invoke-static {p0, p1, p2, v0}, Lcom/gaia/ngallery/l/h;->a(Landroid/content/Context;Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 5
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 1.0
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 25.0
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1086
    invoke-static {p0, p1, p2, p3, v0}, Lcom/gaia/ngallery/l/h;->a(Landroid/content/Context;Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 14
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 1.0
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 25.0
        .end annotation
    .end param

    .line 1108
    invoke-static {p1}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1109
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1110
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1111
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 1112
    invoke-virtual {v7, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1115
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 1116
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 1117
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1119
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1120
    invoke-virtual {v4, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v5, 0x0

    .line 1121
    invoke-virtual {v4, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1122
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_50

    .line 1123
    invoke-static {p0, v2, p3, p4}, Lcom/gaia/ngallery/l/h;->a(Landroid/content/Context;Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_55

    :cond_50
    float-to-int p0, p3

    .line 1125
    invoke-static {v2, p0, p4}, Lcom/gaia/ngallery/l/h;->b(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_55
    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p3

    if-nez p2, :cond_67

    if-eqz p4, :cond_66

    .line 1128
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_66

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_66
    return-object p0

    :cond_67
    const/4 p2, 0x1

    .line 1131
    invoke-static {p0, v0, v1, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1132
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_75

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_75
    if-eqz p4, :cond_80

    .line 1133
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_80

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_80
    return-object p2
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .registers 6
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 25.0
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    goto :goto_c

    .line 1171
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p3

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1173
    :goto_c
    :try_start_c
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_42

    .line 1174
    :try_start_10
    new-instance p3, Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-direct {p3}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    invoke-virtual {p0, p3}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    .line 1175
    sget-object p3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {p0, p1, p3, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p3

    .line 1179
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1180
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    .line 1181
    invoke-virtual {v1, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 1182
    invoke-virtual {v1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 1183
    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 1184
    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_40

    if-eqz p0, :cond_3f

    .line 1187
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_3f
    return-object p1

    :catchall_40
    move-exception p1

    goto :goto_44

    :catchall_42
    move-exception p1

    const/4 p0, 0x0

    :goto_44
    if-eqz p0, :cond_49

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_49
    throw p1
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    .line 614
    invoke-static {p0, v0, v0, v0}, Lcom/gaia/ngallery/l/h;->b(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 692
    invoke-static {p0, p1, v0, v0, v0}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;FIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 400
    invoke-static {p0, p1, p2, v0}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 508
    invoke-static/range {v0 .. v5}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;
    .registers 13

    .line 528
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 529
    :cond_8
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 530
    invoke-virtual {v5, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setSkew(FFFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 531
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p5, :cond_2b

    .line 532
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2b
    return-object p1
.end method

.method public static a(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 11

    .line 416
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 417
    :cond_8
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 418
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 419
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p3, :cond_2b

    .line 420
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2b
    return-object p1
.end method

.method public static a(Landroid/graphics/Bitmap;FII)Landroid/graphics/Bitmap;
    .registers 5
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 722
    invoke-static {p0, p1, p2, p3, v0}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;FIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;FIIZ)Landroid/graphics/Bitmap;
    .registers 13
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 740
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 741
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 742
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 743
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 744
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 745
    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, p0, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 746
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 747
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 748
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v2, v2

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v0, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    .line 750
    invoke-virtual {v6, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 751
    invoke-virtual {v5, v6, p1, p1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-lez p2, :cond_5a

    .line 753
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 754
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 755
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 756
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 757
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 758
    invoke-virtual {v5, v6, p1, p1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_5a
    if-eqz p4, :cond_65

    .line 760
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_65

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_65
    return-object v4
.end method

.method public static a(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 706
    invoke-static {p0, p1, v0, v0, p2}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;FIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 874
    invoke-static {p0, p1, v0}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;IFF)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    .line 549
    invoke-static {p0, p1, p2, p3, v0}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;IFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;IFFZ)Landroid/graphics/Bitmap;
    .registers 12

    .line 567
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    if-nez p1, :cond_b

    return-object p0

    .line 569
    :cond_b
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 570
    invoke-virtual {v5, p1, p2, p3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 571
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p4, :cond_2f

    .line 572
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2f
    return-object p1
.end method

.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 369
    invoke-static {p0, p1, p2, v0}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;
    .registers 10
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    .line 777
    invoke-static/range {v0 .. v5}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;IIZFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;IIFZ)Landroid/graphics/Bitmap;
    .registers 11
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 795
    invoke-static/range {v0 .. v5}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;IIZFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 439
    invoke-static/range {v0 .. v5}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;
    .registers 7

    .line 459
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 460
    :cond_8
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p5, :cond_17

    .line 461
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_17

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_17
    return-object p1
.end method

.method public static a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 5

    .line 385
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x1

    .line 386
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p3, :cond_18

    .line 387
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_18

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_18
    return-object p1
.end method

.method private static a(Landroid/graphics/Bitmap;IIZFZ)Landroid/graphics/Bitmap;
    .registers 10
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 845
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x1

    if-eqz p5, :cond_c

    goto :goto_14

    .line 846
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p5

    invoke-virtual {p0, p5, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 847
    :goto_14
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    .line 848
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 849
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 850
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 851
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 852
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p2, p1

    .line 853
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p3, :cond_46

    .line 855
    invoke-static {p5, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    div-float/2addr p2, p3

    sub-float/2addr p1, p2

    int-to-float p2, p5

    div-float/2addr p2, p3

    int-to-float p4, v1

    div-float/2addr p4, p3

    .line 856
    invoke-virtual {v2, p2, p4, p1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_54

    :cond_46
    shr-int/2addr p1, v0

    .line 859
    new-instance p2, Landroid/graphics/RectF;

    int-to-float p3, p1

    sub-int/2addr p5, p1

    int-to-float p5, p5

    sub-int/2addr v1, p1

    int-to-float p1, v1

    invoke-direct {p2, p3, p3, p5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 861
    invoke-virtual {v2, p2, p4, p4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_54
    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 23

    .line 888
    invoke-static/range {p0 .. p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_8

    return-object v8

    .line 891
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 892
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 893
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 894
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v1, 0x0

    sub-int v2, v10, p1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v3, v9

    move/from16 v4, p1

    .line 895
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    add-int v1, v10, p1

    .line 897
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v9, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 898
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    move-object/from16 v11, p0

    .line 899
    invoke-virtual {v2, v11, v3, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v10, 0x0

    int-to-float v4, v4

    .line 900
    invoke-virtual {v2, v0, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 901
    new-instance v7, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v7, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 902
    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v13, 0x0

    int-to-float v14, v10

    const/4 v15, 0x0

    .line 904
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    const v17, 0x70ffffff

    const v18, 0xffffff

    sget-object v19, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v12, v3

    move/from16 v16, v5

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 908
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 909
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x0

    int-to-float v5, v9

    .line 910
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 911
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_84

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_84
    if-eqz p2, :cond_8f

    .line 912
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8f

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8f
    return-object v1
.end method

.method public static a(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 1719
    invoke-static {p0, p1, p2, v0}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;JZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;JZ)Landroid/graphics/Bitmap;
    .registers 12

    .line 1733
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_86

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_e

    goto/16 :goto_86

    .line 1734
    :cond_e
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1735
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1737
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v3, v1

    const/4 v1, 0x0

    cmp-long v5, v3, p1

    if-gtz v5, :cond_29

    .line 1738
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_75

    .line 1740
    :cond_29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1741
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1742
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v3, p1

    if-ltz v5, :cond_3f

    .line 1743
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_75

    :cond_3f
    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v4, 0x0

    :goto_43
    if-ge v2, v3, :cond_65

    add-int v4, v2, v3

    .line 1750
    div-int/lit8 v4, v4, 0x2

    .line 1751
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1752
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v5, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1753
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v5, p1

    if-nez v7, :cond_5b

    goto :goto_65

    :cond_5b
    cmp-long v7, v5, p1

    if-lez v7, :cond_62

    add-int/lit8 v3, v4, -0x1

    goto :goto_43

    :cond_62
    add-int/lit8 v2, v4, 0x1

    goto :goto_43

    :cond_65
    :goto_65
    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_71

    .line 1763
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1764
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1766
    :cond_71
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    :goto_75
    if-eqz p3, :cond_80

    .line 1769
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_80

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1770
    :cond_80
    array-length p0, p1

    invoke-static {p1, v1, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_86
    :goto_86
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 982
    invoke-static/range {v0 .. v5}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .registers 9

    .line 1002
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1003
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1004
    invoke-static {p1}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 1005
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 1006
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1007
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float p2, p2

    int-to-float p3, p3

    .line 1008
    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_29
    if-eqz p5, :cond_34

    .line 1010
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_34

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_34
    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
    .registers 3

    .line 1032
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1033
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1034
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1b
    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;FIFFZ)Landroid/graphics/Bitmap;
    .registers 12
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 955
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_3f

    if-nez p1, :cond_9

    goto :goto_3f

    .line 956
    :cond_9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 957
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 958
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 959
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 960
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 961
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    .line 962
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-float/2addr p5, p2

    .line 963
    invoke-virtual {v1, p1, p4, p5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz p6, :cond_3e

    .line 964
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3e

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3e
    return-object v0

    :cond_3f
    :goto_3f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;IIFF)Landroid/graphics/Bitmap;
    .registers 13
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    int-to-float v2, p2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 933
    invoke-static/range {v0 .. v6}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;FIFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 625
    invoke-static {p0, v0, v0, p1}, Lcom/gaia/ngallery/l/h;->b(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    .line 95
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_12

    .line 96
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 97
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 98
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 102
    :cond_12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_38

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_20

    goto :goto_38

    .line 108
    :cond_20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 109
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 110
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    if-eq v3, v1, :cond_31

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_33

    :cond_31
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 108
    :goto_33
    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_48

    .line 104
    :cond_38
    :goto_38
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-eq v0, v1, :cond_41

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_43

    :cond_41
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_43
    const/4 v1, 0x1

    .line 103
    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    :goto_48
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 159
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 159
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 165
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_25

    :cond_21
    const/4 v2, -0x1

    .line 167
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 169
    :goto_25
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 181
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 194
    :cond_4
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 195
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 196
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 197
    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 198
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 199
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 337
    :cond_4
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 352
    :cond_4
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 353
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 354
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 355
    invoke-static {v1, p1, p2}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 356
    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 357
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 239
    :cond_4
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 252
    :cond_4
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->c(Ljava/io/InputStream;)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 253
    invoke-static {p0, v0, p1, p2}, Lcom/gaia/ngallery/l/h;->a([BIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 209
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 210
    :cond_8
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 5

    .line 222
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 223
    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 224
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 225
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 226
    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 227
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 228
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Landroid/graphics/Bitmap;
    .registers 3

    if-eqz p0, :cond_d

    .line 83
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_d

    :cond_6
    const/4 v0, 0x0

    array-length v1, p0

    .line 85
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public static a([BI)Landroid/graphics/Bitmap;
    .registers 3

    .line 264
    array-length v0, p0

    if-nez v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 265
    :cond_5
    array-length v0, p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a([BIII)Landroid/graphics/Bitmap;
    .registers 6

    .line 281
    array-length v0, p0

    if-nez v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 282
    :cond_5
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 283
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 284
    array-length v1, p0

    invoke-static {p0, p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 285
    invoke-static {v0, p2, p3}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 286
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 287
    array-length p2, p0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_e

    .line 127
    :cond_4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p0, v0

    :goto_e
    return-object p0
.end method

.method public static a(Landroid/content/Context;[B)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 148
    invoke-static {p1}, Lcom/gaia/ngallery/l/h;->a([B)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gaia/ngallery/l/h;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1432
    invoke-static {p0, p1, p2, v0}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z
    .registers 9

    .line 1464
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_51

    invoke-static {p1}, Lcom/gaia/ngallery/l/h;->d(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_51

    :cond_e
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1468
    :try_start_10
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_3c
    .catchall {:try_start_10 .. :try_end_1a} :catchall_3a

    const/16 p1, 0x64

    .line 1469
    :try_start_1c
    invoke-virtual {p0, p2, p1, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_37
    .catchall {:try_start_1c .. :try_end_20} :catchall_34

    if-eqz p3, :cond_2f

    .line 1470
    :try_start_22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2b} :catch_2c
    .catchall {:try_start_22 .. :try_end_2b} :catchall_34

    goto :goto_2f

    :catch_2c
    move-exception p0

    move-object v0, v3

    goto :goto_3e

    .line 1474
    :cond_2f
    :goto_2f
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v3, p0, v1

    goto :goto_45

    :catchall_34
    move-exception p0

    move-object v0, v3

    goto :goto_49

    :catch_37
    move-exception p0

    move-object v0, v3

    goto :goto_3d

    :catchall_3a
    move-exception p0

    goto :goto_49

    :catch_3c
    move-exception p0

    :goto_3d
    const/4 p1, 0x0

    .line 1472
    :goto_3e
    :try_start_3e
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3a

    .line 1474
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v0, p0, v1

    :goto_45
    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return p1

    :goto_49
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    throw p0

    :cond_51
    :goto_51
    return v1
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z
    .registers 4

    .line 1420
    invoke-static {p1}, Lcom/gaia/ngallery/l/h;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Z)Z
    .registers 4

    .line 1448
    invoke-static {p1}, Lcom/gaia/ngallery/l/h;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    .line 72
    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 73
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$CompressFormat;)[B
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_c

    .line 138
    :cond_4
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method public static b(Ljava/lang/String;)I
    .registers 3

    .line 585
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v1, 0x1

    .line 586
    invoke-virtual {v0, p0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    const/16 v0, 0x8

    if-eq p0, v0, :cond_16

    const/16 p0, 0x5a

    goto :goto_21

    :cond_16
    const/16 p0, 0x10e

    goto :goto_21

    :cond_19
    const/16 p0, 0xb4

    goto :goto_21

    :catch_1c
    move-exception p0

    .line 602
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public static b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    .line 1021
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 474
    invoke-static/range {v0 .. v5}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    .line 490
    invoke-static/range {v0 .. v5}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 1201
    invoke-static {p0, p1, v0}, Lcom/gaia/ngallery/l/h;->b(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 639
    invoke-static {p0, p1, p2, v0}, Lcom/gaia/ngallery/l/h;->b(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 18
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    move v0, p1

    .line 655
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    return-object v2

    .line 656
    :cond_9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 657
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 658
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 659
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 660
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v1, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    int-to-float v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v7, v8

    .line 662
    new-instance v10, Landroid/graphics/RectF;

    int-to-float v11, v1

    int-to-float v12, v3

    const/4 v13, 0x0

    invoke-direct {v10, v13, v13, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v8

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v8

    .line 663
    invoke-virtual {v10, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 664
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 665
    iget v3, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    div-float v3, v7, v11

    div-float/2addr v7, v12

    .line 666
    invoke-virtual {v1, v3, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 667
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v13, p0

    invoke-direct {v3, p0, v4, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 668
    invoke-virtual {v3, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 669
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 670
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 671
    invoke-virtual {v1, v10, v9, v9, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-lez v0, :cond_7d

    .line 673
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move/from16 v2, p2

    .line 674
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 675
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v0, v0

    .line 676
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    div-float/2addr v0, v8

    sub-float/2addr v9, v0

    div-float/2addr v11, v8

    div-float/2addr v12, v8

    .line 678
    invoke-virtual {v1, v11, v12, v9, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_7d
    if-eqz p3, :cond_88

    .line 680
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_88

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_88
    return-object v6
.end method

.method public static b(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 42

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    move-object/from16 v9, p0

    :goto_5
    move/from16 v1, p1

    goto :goto_14

    .line 1213
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v9, v1

    goto :goto_5

    :goto_14
    if-ge v1, v0, :cond_18

    const/4 v10, 0x1

    goto :goto_19

    :cond_18
    move v10, v1

    .line 1217
    :goto_19
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 1218
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int v13, v11, v12

    .line 1220
    new-array v14, v13, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, v14

    move v4, v11

    move v7, v11

    move v8, v12

    .line 1221
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v1, v11, -0x1

    add-int/lit8 v2, v12, -0x1

    add-int v3, v10, v10

    add-int/2addr v3, v0

    .line 1228
    new-array v4, v13, [I

    .line 1229
    new-array v5, v13, [I

    .line 1230
    new-array v6, v13, [I

    .line 1232
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v7, v7, [I

    add-int/lit8 v8, v3, 0x1

    shr-int/2addr v8, v0

    mul-int v8, v8, v8

    mul-int/lit16 v13, v8, 0x100

    .line 1236
    new-array v15, v13, [I

    const/4 v0, 0x0

    :goto_4d
    if-ge v0, v13, :cond_56

    .line 1238
    div-int v18, v0, v8

    aput v18, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_56
    const/4 v0, 0x3

    .line 1243
    filled-new-array {v3, v0}, [I

    move-result-object v0

    const-class v8, I

    invoke-static {v8, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    add-int/lit8 v8, v10, 0x1

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_6a
    const/16 v20, 0x2

    if-ge v13, v12, :cond_190

    move-object/from16 v21, v9

    neg-int v9, v10

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_83
    const v31, 0xff00

    const/high16 v32, 0xff0000

    if-gt v9, v10, :cond_eb

    move/from16 v34, v2

    move/from16 v33, v12

    const/4 v12, 0x0

    .line 1255
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v2, v18, v2

    aget v2, v14, v2

    add-int v17, v9, v10

    .line 1256
    aget-object v35, v0, v17

    and-int v17, v2, v32

    shr-int/lit8 v17, v17, 0x10

    .line 1257
    aput v17, v35, v12

    and-int v17, v2, v31

    shr-int/lit8 v17, v17, 0x8

    const/16 v16, 0x1

    .line 1258
    aput v17, v35, v16

    and-int/lit16 v2, v2, 0xff

    .line 1259
    aput v2, v35, v20

    .line 1260
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v2, v8, v2

    .line 1261
    aget v17, v35, v12

    mul-int v17, v17, v2

    add-int v22, v22, v17

    .line 1262
    aget v17, v35, v16

    mul-int v17, v17, v2

    add-int v23, v23, v17

    .line 1263
    aget v17, v35, v20

    mul-int v17, v17, v2

    add-int v24, v24, v17

    if-lez v9, :cond_d8

    .line 1265
    aget v2, v35, v12

    add-int v25, v25, v2

    .line 1266
    aget v2, v35, v16

    add-int v26, v26, v2

    .line 1267
    aget v2, v35, v20

    add-int v27, v27, v2

    goto :goto_e4

    .line 1269
    :cond_d8
    aget v2, v35, v12

    add-int v28, v28, v2

    .line 1270
    aget v2, v35, v16

    add-int v29, v29, v2

    .line 1271
    aget v2, v35, v20

    add-int v30, v30, v2

    :goto_e4
    add-int/lit8 v9, v9, 0x1

    move/from16 v12, v33

    move/from16 v2, v34

    goto :goto_83

    :cond_eb
    move/from16 v34, v2

    move/from16 v33, v12

    move v9, v10

    const/4 v2, 0x0

    :goto_f1
    if-ge v2, v11, :cond_182

    .line 1278
    aget v12, v15, v22

    aput v12, v4, v18

    .line 1279
    aget v12, v15, v23

    aput v12, v5, v18

    .line 1280
    aget v12, v15, v24

    aput v12, v6, v18

    sub-int v22, v22, v28

    sub-int v23, v23, v29

    sub-int v24, v24, v30

    sub-int v12, v9, v10

    add-int/2addr v12, v3

    .line 1287
    rem-int/2addr v12, v3

    aget-object v12, v0, v12

    const/16 v17, 0x0

    .line 1289
    aget v35, v12, v17

    sub-int v28, v28, v35

    const/16 v16, 0x1

    .line 1290
    aget v35, v12, v16

    sub-int v29, v29, v35

    .line 1291
    aget v35, v12, v20

    sub-int v30, v30, v35

    if-nez v13, :cond_12a

    add-int v35, v2, v10

    move-object/from16 v36, v15

    add-int/lit8 v15, v35, 0x1

    .line 1294
    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    aput v15, v7, v2

    goto :goto_12c

    :cond_12a
    move-object/from16 v36, v15

    .line 1296
    :goto_12c
    aget v15, v7, v2

    add-int v15, v19, v15

    aget v15, v14, v15

    and-int v35, v15, v32

    shr-int/lit8 v35, v35, 0x10

    const/16 v17, 0x0

    .line 1298
    aput v35, v12, v17

    and-int v35, v15, v31

    shr-int/lit8 v35, v35, 0x8

    const/16 v16, 0x1

    .line 1299
    aput v35, v12, v16

    and-int/lit16 v15, v15, 0xff

    .line 1300
    aput v15, v12, v20

    .line 1302
    aget v15, v12, v17

    add-int v25, v25, v15

    .line 1303
    aget v15, v12, v16

    add-int v26, v26, v15

    .line 1304
    aget v12, v12, v20

    add-int v27, v27, v12

    add-int v22, v22, v25

    add-int v23, v23, v26

    add-int v24, v24, v27

    add-int/lit8 v9, v9, 0x1

    .line 1310
    rem-int/2addr v9, v3

    .line 1311
    rem-int v12, v9, v3

    aget-object v12, v0, v12

    const/4 v15, 0x0

    .line 1313
    aget v17, v12, v15

    add-int v28, v28, v17

    const/16 v16, 0x1

    .line 1314
    aget v17, v12, v16

    add-int v29, v29, v17

    .line 1315
    aget v17, v12, v20

    add-int v30, v30, v17

    .line 1317
    aget v35, v12, v15

    sub-int v25, v25, v35

    .line 1318
    aget v15, v12, v16

    sub-int v26, v26, v15

    .line 1319
    aget v12, v12, v20

    sub-int v27, v27, v12

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v15, v36

    goto/16 :goto_f1

    :cond_182
    move-object/from16 v36, v15

    add-int v19, v19, v11

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v21

    move/from16 v12, v33

    move/from16 v2, v34

    goto/16 :goto_6a

    :cond_190
    move/from16 v34, v2

    move-object/from16 v21, v9

    move/from16 v33, v12

    move-object/from16 v36, v15

    const/4 v1, 0x0

    :goto_199
    if-ge v1, v11, :cond_2cb

    neg-int v2, v10

    mul-int v9, v2, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_1ad
    if-gt v2, v10, :cond_210

    move-object/from16 v37, v7

    const/4 v7, 0x0

    .line 1329
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int v26, v17, v1

    add-int v17, v2, v10

    .line 1331
    aget-object v27, v0, v17

    .line 1333
    aget v17, v4, v26

    aput v17, v27, v7

    .line 1334
    aget v7, v5, v26

    const/16 v16, 0x1

    aput v7, v27, v16

    .line 1335
    aget v7, v6, v26

    aput v7, v27, v20

    .line 1337
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v7, v8, v7

    .line 1339
    aget v28, v4, v26

    mul-int v28, v28, v7

    add-int v12, v12, v28

    .line 1340
    aget v28, v5, v26

    mul-int v28, v28, v7

    add-int v13, v13, v28

    .line 1341
    aget v26, v6, v26

    mul-int v26, v26, v7

    add-int v15, v15, v26

    if-lez v2, :cond_1f6

    const/4 v7, 0x0

    .line 1344
    aget v17, v27, v7

    add-int v18, v18, v17

    const/16 v16, 0x1

    .line 1345
    aget v17, v27, v16

    add-int v19, v19, v17

    .line 1346
    aget v17, v27, v20

    add-int v22, v22, v17

    :goto_1f3
    move/from16 v7, v34

    goto :goto_206

    :cond_1f6
    const/4 v7, 0x0

    const/16 v16, 0x1

    .line 1348
    aget v26, v27, v7

    add-int v23, v23, v26

    .line 1349
    aget v7, v27, v16

    add-int v24, v24, v7

    .line 1350
    aget v7, v27, v20

    add-int v25, v25, v7

    goto :goto_1f3

    :goto_206
    if-ge v2, v7, :cond_209

    add-int/2addr v9, v11

    :cond_209
    add-int/lit8 v2, v2, 0x1

    move/from16 v34, v7

    move-object/from16 v7, v37

    goto :goto_1ad

    :cond_210
    move-object/from16 v37, v7

    move/from16 v7, v34

    move/from16 v26, v19

    move/from16 v27, v22

    move/from16 v9, v33

    const/4 v2, 0x0

    move/from16 v19, v10

    move/from16 v22, v18

    move/from16 v18, v15

    move v15, v13

    move v13, v12

    move v12, v1

    :goto_224
    if-ge v2, v9, :cond_2bb

    const/high16 v28, -0x1000000

    .line 1361
    aget v29, v14, v12

    and-int v28, v29, v28

    aget v29, v36, v13

    shl-int/lit8 v29, v29, 0x10

    or-int v28, v28, v29

    aget v29, v36, v15

    shl-int/lit8 v29, v29, 0x8

    or-int v28, v28, v29

    aget v29, v36, v18

    or-int v28, v28, v29

    aput v28, v14, v12

    sub-int v13, v13, v23

    sub-int v15, v15, v24

    sub-int v18, v18, v25

    sub-int v28, v19, v10

    add-int v28, v28, v3

    .line 1368
    rem-int v28, v28, v3

    aget-object v28, v0, v28

    const/16 v17, 0x0

    .line 1370
    aget v29, v28, v17

    sub-int v23, v23, v29

    const/16 v16, 0x1

    .line 1371
    aget v29, v28, v16

    sub-int v24, v24, v29

    .line 1372
    aget v29, v28, v20

    sub-int v25, v25, v29

    if-nez v1, :cond_26b

    move/from16 v38, v10

    add-int v10, v2, v8

    .line 1375
    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v10

    mul-int v10, v10, v11

    aput v10, v37, v2

    goto :goto_26d

    :cond_26b
    move/from16 v38, v10

    .line 1377
    :goto_26d
    aget v10, v37, v2

    add-int/2addr v10, v1

    .line 1379
    aget v29, v4, v10

    const/16 v17, 0x0

    aput v29, v28, v17

    .line 1380
    aget v29, v5, v10

    const/16 v16, 0x1

    aput v29, v28, v16

    .line 1381
    aget v10, v6, v10

    aput v10, v28, v20

    .line 1383
    aget v10, v28, v17

    add-int v22, v22, v10

    .line 1384
    aget v10, v28, v16

    add-int v26, v26, v10

    .line 1385
    aget v10, v28, v20

    add-int v27, v27, v10

    add-int v13, v13, v22

    add-int v15, v15, v26

    add-int v18, v18, v27

    add-int/lit8 v19, v19, 0x1

    .line 1391
    rem-int v19, v19, v3

    .line 1392
    aget-object v10, v0, v19

    const/16 v17, 0x0

    .line 1394
    aget v28, v10, v17

    add-int v23, v23, v28

    const/16 v16, 0x1

    .line 1395
    aget v28, v10, v16

    add-int v24, v24, v28

    .line 1396
    aget v28, v10, v20

    add-int v25, v25, v28

    .line 1398
    aget v28, v10, v17

    sub-int v22, v22, v28

    .line 1399
    aget v28, v10, v16

    sub-int v26, v26, v28

    .line 1400
    aget v10, v10, v20

    sub-int v27, v27, v10

    add-int/2addr v12, v11

    add-int/lit8 v2, v2, 0x1

    move/from16 v10, v38

    goto/16 :goto_224

    :cond_2bb
    move/from16 v38, v10

    const/16 v16, 0x1

    const/16 v17, 0x0

    add-int/lit8 v1, v1, 0x1

    move/from16 v34, v7

    move/from16 v33, v9

    move-object/from16 v7, v37

    goto/16 :goto_199

    :cond_2cb
    move/from16 v9, v33

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, v21

    move-object v2, v14

    move v4, v11

    move v7, v11

    move v8, v9

    .line 1405
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v21
.end method

.method public static b(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 8

    .line 1056
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1057
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1058
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1059
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1060
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x0

    .line 1061
    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1062
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 1063
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1064
    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p1, :cond_41

    .line 1065
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_41

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_41
    return-object v0
.end method

.method public static b(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/16 v1, 0x8

    .line 1559
    :try_start_6
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 1560
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_15

    invoke-static {v2}, Lcom/gaia/ngallery/l/h;->b([B)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_17

    goto :goto_16

    :cond_15
    move-object p0, v0

    :goto_16
    return-object p0

    :catch_17
    move-exception p0

    .line 1562
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 2

    .line 1574
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->c([B)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "JPEG"

    return-object p0

    .line 1575
    :cond_9
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d([B)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "GIF"

    return-object p0

    .line 1576
    :cond_12
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->e([B)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p0, "PNG"

    return-object p0

    .line 1577
    :cond_1b
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->f([B)Z

    move-result p0

    if-eqz p0, :cond_24

    const-string p0, "BMP"

    return-object p0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/io/File;)Z
    .registers 1

    if-eqz p0, :cond_e

    .line 1486
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    .line 1045
    invoke-static {p0, v0}, Lcom/gaia/ngallery/l/h;->b(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 1661
    invoke-static {p0, p1, p2, v0}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 4

    .line 1677
    invoke-static {p0, p1, p2, p3}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1689
    invoke-static {p0, p1, v0}, Lcom/gaia/ngallery/l/h;->c(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 9
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 809
    invoke-static/range {v0 .. v5}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;IIZFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 10
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    .line 825
    invoke-static/range {v0 .. v5}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;IIZFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 5
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    .line 1703
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1704
    :cond_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1705
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1706
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    if-eqz p2, :cond_21

    .line 1707
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_21

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_21
    const/4 p0, 0x0

    .line 1708
    array-length p2, p1

    invoke-static {p1, p0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1540
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_1b
    .catchall {:try_start_6 .. :try_end_b} :catchall_19

    .line 1541
    :try_start_b
    invoke-static {v3}, Lcom/gaia/ngallery/l/h;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_17
    .catchall {:try_start_b .. :try_end_f} :catchall_28

    .line 1546
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return-object p0

    :catch_17
    move-exception p0

    goto :goto_1d

    :catchall_19
    move-exception p0

    goto :goto_2a

    :catch_1b
    move-exception p0

    move-object v3, v0

    .line 1543
    :goto_1d
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_28

    .line 1546
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v3, p0, v1

    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return-object v0

    :catchall_28
    move-exception p0

    move-object v0, v3

    :goto_2a
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    throw p0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 6

    .line 1500
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 1504
    sget-object v0, Lcom/gaia/ngallery/l/h;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    .line 1505
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_18
    return v2
.end method

.method private static c([B)Z
    .registers 5

    .line 1582
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_12

    aget-byte v0, p0, v2

    const/4 v3, -0x1

    if-ne v0, v3, :cond_12

    aget-byte p0, p0, v1

    const/16 v0, -0x28

    if-ne p0, v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private static c(Ljava/io/InputStream;)[B
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1900
    :try_start_6
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    .line 1901
    new-array v5, v4, [B

    .line 1903
    :goto_f
    invoke-virtual {p0, v5, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1a

    .line 1904
    invoke-virtual {v3, v5, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_f

    .line 1906
    :cond_1a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1e} :catch_28
    .catchall {:try_start_6 .. :try_end_1e} :catchall_26

    .line 1911
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return-object v3

    :catchall_26
    move-exception v0

    goto :goto_34

    :catch_28
    move-exception v3

    .line 1908
    :try_start_29
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_26

    .line 1911
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return-object v0

    :goto_34
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    throw v0
.end method

.method public static d(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 1782
    invoke-static {p0, p1, v0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 1631
    invoke-static {p0, p1, p2, v0}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 4

    .line 1647
    invoke-static {p0, p1, p2, p3}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 6

    .line 1796
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1797
    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1798
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1799
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1800
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1801
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    if-eqz p2, :cond_2a

    .line 1802
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2a
    const/4 p0, 0x0

    .line 1803
    array-length p2, p1

    invoke-static {p1, p0, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/graphics/Bitmap;)Z
    .registers 2

    if-eqz p0, :cond_11

    .line 1613
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-nez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public static d(Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1852
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_11

    return v0

    .line 1853
    :cond_11
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/gaia/ngallery/l/h;->e(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v0

    .line 1855
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_21

    return p0

    :catch_21
    move-exception p0

    .line 1857
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 6

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1513
    sget-object v0, Lcom/gaia/ngallery/l/h;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v1, :cond_29

    aget-object v4, v0, v3

    .line 1514
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_29
    return v2
.end method

.method private static d([B)Z
    .registers 6

    .line 1587
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-lt v0, v3, :cond_35

    aget-byte v0, p0, v2

    const/16 v3, 0x47

    if-ne v0, v3, :cond_35

    aget-byte v0, p0, v1

    const/16 v3, 0x49

    if-ne v0, v3, :cond_35

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v3, 0x46

    if-ne v0, v3, :cond_35

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    const/16 v3, 0x38

    if-ne v0, v3, :cond_35

    const/4 v0, 0x4

    aget-byte v3, p0, v0

    const/16 v4, 0x37

    if-eq v3, v4, :cond_2d

    aget-byte v0, p0, v0

    const/16 v3, 0x39

    if-ne v0, v3, :cond_35

    :cond_2d
    const/4 v0, 0x5

    aget-byte p0, p0, v0

    const/16 v0, 0x61

    if-ne p0, v0, :cond_35

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    return v1
.end method

.method public static e(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 1817
    invoke-static {p0, p1, p2, v0}, Lcom/gaia/ngallery/l/h;->e(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 8

    .line 1833
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1834
    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 1835
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1836
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1837
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1838
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1839
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1840
    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1841
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p3, :cond_38

    .line 1842
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_38

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1843
    :cond_38
    array-length p0, v1

    invoke-static {v1, v3, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1527
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_17

    .line 1864
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_15

    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_17

    :goto_15
    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method private static e([B)Z
    .registers 6

    .line 1594
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lt v0, v3, :cond_3c

    aget-byte v0, p0, v2

    const/16 v3, -0x77

    if-ne v0, v3, :cond_3c

    aget-byte v0, p0, v1

    const/16 v3, 0x50

    if-ne v0, v3, :cond_3c

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v3, 0x4e

    if-ne v0, v3, :cond_3c

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    const/16 v3, 0x47

    if-ne v0, v3, :cond_3c

    const/4 v0, 0x4

    aget-byte v0, p0, v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_3c

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_3c

    const/4 v0, 0x6

    aget-byte v0, p0, v0

    const/16 v4, 0x1a

    if-ne v0, v4, :cond_3c

    const/4 v0, 0x7

    aget-byte p0, p0, v0

    if-ne p0, v3, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    return v1
.end method

.method private static f(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 1847
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_e
    return-object p0
.end method

.method private static f([B)Z
    .registers 5

    .line 1602
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_13

    aget-byte v0, p0, v2

    const/16 v3, 0x42

    if-ne v0, v3, :cond_13

    aget-byte p0, p0, v1

    const/16 v0, 0x4d

    if-ne p0, v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private static g(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 1869
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_1a

    .line 1870
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_17

    return v2

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1a
    return v0
.end method

###### Class com.gaia.ngallery.l.h.a (com.gaia.ngallery.l.h$a)
.class public Lcom/gaia/ngallery/l/h$a;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/l/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:I = 0x400


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
