###### Class com.bumptech.glide.request.g (com.bumptech.glide.request.g)
.class public Lcom/bumptech/glide/request/g;
.super Ljava/lang/Object;
.source "RequestOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static A:Lcom/bumptech/glide/request/g; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static B:Lcom/bumptech/glide/request/g; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static C:Lcom/bumptech/glide/request/g; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static final a:I = -0x1

.field private static final b:I = 0x2

.field private static final c:I = 0x4

.field private static final d:I = 0x8

.field private static final e:I = 0x10

.field private static final f:I = 0x20

.field private static final g:I = 0x40

.field private static final h:I = 0x80

.field private static final i:I = 0x100

.field private static final j:I = 0x200

.field private static final k:I = 0x400

.field private static final l:I = 0x800

.field private static final m:I = 0x1000

.field private static final n:I = 0x2000

.field private static final o:I = 0x4000

.field private static final p:I = 0x8000

.field private static final q:I = 0x10000

.field private static final r:I = 0x20000

.field private static final s:I = 0x40000

.field private static final t:I = 0x80000

.field private static final u:I = 0x100000

.field private static v:Lcom/bumptech/glide/request/g;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static w:Lcom/bumptech/glide/request/g;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static x:Lcom/bumptech/glide/request/g;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static y:Lcom/bumptech/glide/request/g;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static z:Lcom/bumptech/glide/request/g;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private D:I

.field private E:F

.field private F:Lcom/bumptech/glide/load/engine/h;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private G:Lcom/bumptech/glide/Priority;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private H:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private I:I

.field private J:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private K:I

.field private L:Z

.field private M:I

.field private N:I

.field private O:Lcom/bumptech/glide/load/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private P:Z

.field private Q:Z

.field private R:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private S:I

.field private T:Lcom/bumptech/glide/load/f;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private U:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/i<",
            "*>;>;"
        }
    .end annotation
.end field

.field private V:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private W:Z

.field private X:Landroid/content/res/Resources$Theme;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private Y:Z

.field private Z:Z

.field private aa:Z

.field private ab:Z

.field private ac:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 85
    iput v0, p0, Lcom/bumptech/glide/request/g;->E:F

    .line 86
    sget-object v0, Lcom/bumptech/glide/load/engine/h;->e:Lcom/bumptech/glide/load/engine/h;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->F:Lcom/bumptech/glide/load/engine/h;

    .line 88
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->G:Lcom/bumptech/glide/Priority;

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->L:Z

    const/4 v1, -0x1

    .line 97
    iput v1, p0, Lcom/bumptech/glide/request/g;->M:I

    .line 98
    iput v1, p0, Lcom/bumptech/glide/request/g;->N:I

    .line 100
    invoke-static {}, Lcom/bumptech/glide/g/b;->a()Lcom/bumptech/glide/g/b;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/request/g;->O:Lcom/bumptech/glide/load/c;

    .line 102
    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->Q:Z

    .line 106
    new-instance v1, Lcom/bumptech/glide/load/f;

    invoke-direct {v1}, Lcom/bumptech/glide/load/f;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/g;->T:Lcom/bumptech/glide/load/f;

    .line 108
    new-instance v1, Lcom/bumptech/glide/h/b;

    invoke-direct {v1}, Lcom/bumptech/glide/h/b;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/g;->U:Ljava/util/Map;

    .line 110
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/request/g;->V:Ljava/lang/Class;

    .line 118
    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->ab:Z

    return-void
.end method

.method private Y()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1587
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->W:Z

    if-nez v0, :cond_5

    return-object p0

    .line 1588
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked RequestOptions, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Lcom/bumptech/glide/request/g;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 244
    sget-object v0, Lcom/bumptech/glide/request/g;->x:Lcom/bumptech/glide/request/g;

    if-nez v0, :cond_13

    .line 245
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    .line 246
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->w()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/g;->x:Lcom/bumptech/glide/request/g;

    .line 249
    :cond_13
    sget-object v0, Lcom/bumptech/glide/request/g;->x:Lcom/bumptech/glide/request/g;

    return-object v0
.end method

.method public static a(F)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 129
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->b(F)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 166
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->f(I)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(II)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 215
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/g;->b(II)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(J)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p0    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 358
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/g;->b(J)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 399
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->b(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 157
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 148
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 348
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Lcom/bumptech/glide/load/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 235
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p0    # Lcom/bumptech/glide/load/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/e<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    .line 329
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Lcom/bumptech/glide/load/engine/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 138
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    .line 304
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/i;Z)Lcom/bumptech/glide/request/g;
    .registers 5
    .param p1    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    .line 1263
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 1264
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/i;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 1267
    :cond_d
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/p;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/p;-><init>(Lcom/bumptech/glide/load/i;Z)V

    .line 1269
    const-class v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, p1, p2}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/i;Z)Lcom/bumptech/glide/request/g;

    .line 1270
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0, p2}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/i;Z)Lcom/bumptech/glide/request/g;

    .line 1275
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/p;->a()Lcom/bumptech/glide/load/i;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/i;Z)Lcom/bumptech/glide/request/g;

    .line 1276
    const-class v0, Lcom/bumptech/glide/load/resource/d/c;

    new-instance v1, Lcom/bumptech/glide/load/resource/d/f;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/resource/d/f;-><init>(Lcom/bumptech/glide/load/i;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/i;Z)Lcom/bumptech/glide/request/g;

    .line 1277
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public static a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 368
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;Z)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    if-eqz p3, :cond_7

    .line 1193
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    goto :goto_b

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    :goto_b
    const/4 p2, 0x1

    .line 1194
    iput-boolean p2, p1, Lcom/bumptech/glide/request/g;->ab:Z

    return-object p1
.end method

.method public static a(Ljava/lang/Class;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    .line 338
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->b(Ljava/lang/Class;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Class;Lcom/bumptech/glide/load/i;Z)Lcom/bumptech/glide/request/g;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/i<",
            "TT;>;Z)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    .line 1309
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 1310
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-direct {v0, p1, p2, p3}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/i;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 1313
    :cond_d
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    invoke-static {p2}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->U:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    const/4 p1, 0x1

    .line 1317
    iput-boolean p1, p0, Lcom/bumptech/glide/request/g;->Q:Z

    .line 1318
    iget p2, p0, Lcom/bumptech/glide/request/g;->D:I

    const/high16 v0, 0x10000

    or-int/2addr p2, v0

    iput p2, p0, Lcom/bumptech/glide/request/g;->D:I

    const/4 p2, 0x0

    .line 1321
    iput-boolean p2, p0, Lcom/bumptech/glide/request/g;->ab:Z

    if-eqz p3, :cond_36

    .line 1323
    iget p2, p0, Lcom/bumptech/glide/request/g;->D:I

    const/high16 p3, 0x20000

    or-int/2addr p2, p3

    iput p2, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 1324
    iput-boolean p1, p0, Lcom/bumptech/glide/request/g;->P:Z

    .line 1326
    :cond_36
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public static a(Z)Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_19

    .line 194
    sget-object p0, Lcom/bumptech/glide/request/g;->v:Lcom/bumptech/glide/request/g;

    if-nez p0, :cond_16

    .line 195
    new-instance p0, Lcom/bumptech/glide/request/g;

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/g;->e(Z)Lcom/bumptech/glide/request/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->w()Lcom/bumptech/glide/request/g;

    move-result-object p0

    sput-object p0, Lcom/bumptech/glide/request/g;->v:Lcom/bumptech/glide/request/g;

    .line 197
    :cond_16
    sget-object p0, Lcom/bumptech/glide/request/g;->v:Lcom/bumptech/glide/request/g;

    return-object p0

    .line 199
    :cond_19
    sget-object p0, Lcom/bumptech/glide/request/g;->w:Lcom/bumptech/glide/request/g;

    if-nez p0, :cond_2d

    .line 200
    new-instance p0, Lcom/bumptech/glide/request/g;

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/g;->e(Z)Lcom/bumptech/glide/request/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->w()Lcom/bumptech/glide/request/g;

    move-result-object p0

    sput-object p0, Lcom/bumptech/glide/request/g;->w:Lcom/bumptech/glide/request/g;

    .line 202
    :cond_2d
    sget-object p0, Lcom/bumptech/glide/request/g;->w:Lcom/bumptech/glide/request/g;

    return-object p0
.end method

.method public static b()Lcom/bumptech/glide/request/g;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 259
    sget-object v0, Lcom/bumptech/glide/request/g;->y:Lcom/bumptech/glide/request/g;

    if-nez v0, :cond_13

    .line 260
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    .line 261
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->q()Lcom/bumptech/glide/request/g;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->w()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/g;->y:Lcom/bumptech/glide/request/g;

    .line 264
    :cond_13
    sget-object v0, Lcom/bumptech/glide/request/g;->y:Lcom/bumptech/glide/request/g;

    return-object v0
.end method

.method public static b(I)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 184
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->h(I)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 175
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->e(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lcom/bumptech/glide/request/g;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 274
    sget-object v0, Lcom/bumptech/glide/request/g;->z:Lcom/bumptech/glide/request/g;

    if-nez v0, :cond_13

    .line 275
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    .line 276
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->m()Lcom/bumptech/glide/request/g;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->w()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/g;->z:Lcom/bumptech/glide/request/g;

    .line 279
    :cond_13
    sget-object v0, Lcom/bumptech/glide/request/g;->z:Lcom/bumptech/glide/request/g;

    return-object v0
.end method

.method public static c(I)Lcom/bumptech/glide/request/g;
    .registers 1
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 226
    invoke-static {p0, p0}, Lcom/bumptech/glide/request/g;->a(II)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1178
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method private static c(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static d()Lcom/bumptech/glide/request/g;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 289
    sget-object v0, Lcom/bumptech/glide/request/g;->A:Lcom/bumptech/glide/request/g;

    if-nez v0, :cond_13

    .line 290
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    .line 291
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->s()Lcom/bumptech/glide/request/g;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->w()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/g;->A:Lcom/bumptech/glide/request/g;

    .line 294
    :cond_13
    sget-object v0, Lcom/bumptech/glide/request/g;->A:Lcom/bumptech/glide/request/g;

    return-object v0
.end method

.method public static d(I)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 377
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->k(I)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private d(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1184
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public static e()Lcom/bumptech/glide/request/g;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 314
    sget-object v0, Lcom/bumptech/glide/request/g;->B:Lcom/bumptech/glide/request/g;

    if-nez v0, :cond_13

    .line 315
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    .line 316
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->t()Lcom/bumptech/glide/request/g;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->w()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/g;->B:Lcom/bumptech/glide/request/g;

    .line 319
    :cond_13
    sget-object v0, Lcom/bumptech/glide/request/g;->B:Lcom/bumptech/glide/request/g;

    return-object v0
.end method

.method public static e(I)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 388
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->j(I)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method public static f()Lcom/bumptech/glide/request/g;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 410
    sget-object v0, Lcom/bumptech/glide/request/g;->C:Lcom/bumptech/glide/request/g;

    if-nez v0, :cond_13

    .line 411
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    .line 412
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->u()Lcom/bumptech/glide/request/g;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->w()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/g;->C:Lcom/bumptech/glide/request/g;

    .line 415
    :cond_13
    sget-object v0, Lcom/bumptech/glide/request/g;->C:Lcom/bumptech/glide/request/g;

    return-object v0
.end method

.method private l(I)Z
    .registers 3

    .line 1708
    iget v0, p0, Lcom/bumptech/glide/request/g;->D:I

    invoke-static {v0, p1}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final A()Ljava/util/Map;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/i<",
            "*>;>;"
        }
    .end annotation

    .line 1607
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->U:Ljava/util/Map;

    return-object v0
.end method

.method public final B()Z
    .registers 2

    .line 1612
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->P:Z

    return v0
.end method

.method public final C()Lcom/bumptech/glide/load/f;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1617
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->T:Lcom/bumptech/glide/load/f;

    return-object v0
.end method

.method public final D()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1622
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->V:Ljava/lang/Class;

    return-object v0
.end method

.method public final E()Lcom/bumptech/glide/load/engine/h;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1627
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->F:Lcom/bumptech/glide/load/engine/h;

    return-object v0
.end method

.method public final F()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1633
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->H:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final G()I
    .registers 2

    .line 1638
    iget v0, p0, Lcom/bumptech/glide/request/g;->I:I

    return v0
.end method

.method public final H()I
    .registers 2

    .line 1643
    iget v0, p0, Lcom/bumptech/glide/request/g;->K:I

    return v0
.end method

.method public final I()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1649
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->J:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final J()I
    .registers 2

    .line 1654
    iget v0, p0, Lcom/bumptech/glide/request/g;->S:I

    return v0
.end method

.method public final K()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1660
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->R:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final L()Landroid/content/res/Resources$Theme;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1665
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->X:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final M()Z
    .registers 2

    .line 1670
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->L:Z

    return v0
.end method

.method public final N()Lcom/bumptech/glide/load/c;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1675
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->O:Lcom/bumptech/glide/load/c;

    return-object v0
.end method

.method public final O()Z
    .registers 2

    const/16 v0, 0x8

    .line 1679
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/g;->l(I)Z

    move-result v0

    return v0
.end method

.method public final P()Lcom/bumptech/glide/Priority;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1684
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->G:Lcom/bumptech/glide/Priority;

    return-object v0
.end method

.method public final Q()I
    .registers 2

    .line 1688
    iget v0, p0, Lcom/bumptech/glide/request/g;->N:I

    return v0
.end method

.method public final R()Z
    .registers 3

    .line 1692
    iget v0, p0, Lcom/bumptech/glide/request/g;->N:I

    iget v1, p0, Lcom/bumptech/glide/request/g;->M:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/h/l;->a(II)Z

    move-result v0

    return v0
.end method

.method public final S()I
    .registers 2

    .line 1696
    iget v0, p0, Lcom/bumptech/glide/request/g;->M:I

    return v0
.end method

.method public final T()F
    .registers 2

    .line 1700
    iget v0, p0, Lcom/bumptech/glide/request/g;->E:F

    return v0
.end method

.method U()Z
    .registers 2

    .line 1704
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ab:Z

    return v0
.end method

.method public final V()Z
    .registers 2

    .line 1714
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Z:Z

    return v0
.end method

.method public final W()Z
    .registers 2

    .line 1720
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    return v0
.end method

.method public final X()Z
    .registers 2

    .line 1726
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->aa:Z

    return v0
.end method

.method public a(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 740
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 741
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->a(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 744
    :cond_d
    iput-object p1, p0, Lcom/bumptech/glide/request/g;->X:Landroid/content/res/Resources$Theme;

    .line 745
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 747
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method final a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    .line 1152
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 1153
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 1156
    :cond_d
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/g;

    const/4 p1, 0x0

    .line 1157
    invoke-direct {p0, p2, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/i;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/g;
    .registers 6
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1403
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 1404
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 1407
    :cond_d
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1408
    iget v0, p1, Lcom/bumptech/glide/request/g;->E:F

    iput v0, p0, Lcom/bumptech/glide/request/g;->E:F

    .line 1410
    :cond_1a
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1411
    iget-boolean v0, p1, Lcom/bumptech/glide/request/g;->Z:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->Z:Z

    .line 1413
    :cond_28
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1414
    iget-boolean v0, p1, Lcom/bumptech/glide/request/g;->ac:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    .line 1416
    :cond_36
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1417
    iget-object v0, p1, Lcom/bumptech/glide/request/g;->F:Lcom/bumptech/glide/load/engine/h;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->F:Lcom/bumptech/glide/load/engine/h;

    .line 1419
    :cond_43
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1420
    iget-object v0, p1, Lcom/bumptech/glide/request/g;->G:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->G:Lcom/bumptech/glide/Priority;

    .line 1422
    :cond_51
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    .line 1423
    iget-object v0, p1, Lcom/bumptech/glide/request/g;->H:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->H:Landroid/graphics/drawable/Drawable;

    .line 1424
    iput v1, p0, Lcom/bumptech/glide/request/g;->I:I

    .line 1425
    iget v0, p0, Lcom/bumptech/glide/request/g;->D:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 1427
    :cond_68
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7f

    .line 1428
    iget v0, p1, Lcom/bumptech/glide/request/g;->I:I

    iput v0, p0, Lcom/bumptech/glide/request/g;->I:I

    .line 1429
    iput-object v2, p0, Lcom/bumptech/glide/request/g;->H:Landroid/graphics/drawable/Drawable;

    .line 1430
    iget v0, p0, Lcom/bumptech/glide/request/g;->D:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 1432
    :cond_7f
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1433
    iget-object v0, p1, Lcom/bumptech/glide/request/g;->J:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->J:Landroid/graphics/drawable/Drawable;

    .line 1434
    iput v1, p0, Lcom/bumptech/glide/request/g;->K:I

    .line 1435
    iget v0, p0, Lcom/bumptech/glide/request/g;->D:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 1437
    :cond_95
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1438
    iget v0, p1, Lcom/bumptech/glide/request/g;->K:I

    iput v0, p0, Lcom/bumptech/glide/request/g;->K:I

    .line 1439
    iput-object v2, p0, Lcom/bumptech/glide/request/g;->J:Landroid/graphics/drawable/Drawable;

    .line 1440
    iget v0, p0, Lcom/bumptech/glide/request/g;->D:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 1442
    :cond_ab
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 1443
    iget-boolean v0, p1, Lcom/bumptech/glide/request/g;->L:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->L:Z

    .line 1445
    :cond_b9
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 1446
    iget v0, p1, Lcom/bumptech/glide/request/g;->N:I

    iput v0, p0, Lcom/bumptech/glide/request/g;->N:I

    .line 1447
    iget v0, p1, Lcom/bumptech/glide/request/g;->M:I

    iput v0, p0, Lcom/bumptech/glide/request/g;->M:I

    .line 1449
    :cond_cb
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 1450
    iget-object v0, p1, Lcom/bumptech/glide/request/g;->O:Lcom/bumptech/glide/load/c;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->O:Lcom/bumptech/glide/load/c;

    .line 1452
    :cond_d9
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 1453
    iget-object v0, p1, Lcom/bumptech/glide/request/g;->V:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->V:Ljava/lang/Class;

    .line 1455
    :cond_e7
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 1456
    iget-object v0, p1, Lcom/bumptech/glide/request/g;->R:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->R:Landroid/graphics/drawable/Drawable;

    .line 1457
    iput v1, p0, Lcom/bumptech/glide/request/g;->S:I

    .line 1458
    iget v0, p0, Lcom/bumptech/glide/request/g;->D:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 1460
    :cond_fd
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 1461
    iget v0, p1, Lcom/bumptech/glide/request/g;->S:I

    iput v0, p0, Lcom/bumptech/glide/request/g;->S:I

    .line 1462
    iput-object v2, p0, Lcom/bumptech/glide/request/g;->R:Landroid/graphics/drawable/Drawable;

    .line 1463
    iget v0, p0, Lcom/bumptech/glide/request/g;->D:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 1465
    :cond_113
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 1466
    iget-object v0, p1, Lcom/bumptech/glide/request/g;->X:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->X:Landroid/content/res/Resources$Theme;

    .line 1468
    :cond_122
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 1469
    iget-boolean v0, p1, Lcom/bumptech/glide/request/g;->Q:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->Q:Z

    .line 1471
    :cond_130
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 1472
    iget-boolean v0, p1, Lcom/bumptech/glide/request/g;->P:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->P:Z

    .line 1474
    :cond_13e
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_153

    .line 1475
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->U:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->U:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1476
    iget-boolean v0, p1, Lcom/bumptech/glide/request/g;->ab:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->ab:Z

    .line 1478
    :cond_153
    iget v0, p1, Lcom/bumptech/glide/request/g;->D:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_161

    .line 1479
    iget-boolean v0, p1, Lcom/bumptech/glide/request/g;->aa:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->aa:Z

    .line 1483
    :cond_161
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Q:Z

    if-nez v0, :cond_17d

    .line 1484
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->U:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1485
    iget v0, p0, Lcom/bumptech/glide/request/g;->D:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 1486
    iput-boolean v1, p0, Lcom/bumptech/glide/request/g;->P:Z

    .line 1487
    iget v0, p0, Lcom/bumptech/glide/request/g;->D:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/g;->D:I

    const/4 v0, 0x1

    .line 1488
    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->ab:Z

    .line 1491
    :cond_17d
    iget v0, p0, Lcom/bumptech/glide/request/g;->D:I

    iget v1, p1, Lcom/bumptech/glide/request/g;->D:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 1492
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->T:Lcom/bumptech/glide/load/f;

    iget-object p1, p1, Lcom/bumptech/glide/request/g;->T:Lcom/bumptech/glide/load/f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/f;->a(Lcom/bumptech/glide/load/f;)V

    .line 1494
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/i<",
            "TT;>;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1301
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/i;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public varargs a([Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # [Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    .line 1237
    new-instance v0, Lcom/bumptech/glide/load/d;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/d;-><init>([Lcom/bumptech/glide/load/i;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/i;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(F)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 435
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 436
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->b(F)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_25

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_25

    .line 442
    iput p1, p0, Lcom/bumptech/glide/request/g;->E:F

    .line 443
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 445
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 440
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(II)Lcom/bumptech/glide/request/g;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 784
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 785
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/g;->b(II)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 788
    :cond_d
    iput p1, p0, Lcom/bumptech/glide/request/g;->N:I

    .line 789
    iput p2, p0, Lcom/bumptech/glide/request/g;->M:I

    .line 790
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 792
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(J)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 935
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/aa;->c:Lcom/bumptech/glide/load/e;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 909
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/e;->b:Lcom/bumptech/glide/load/e;

    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 551
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 552
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 555
    :cond_d
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/Priority;

    iput-object p1, p0, Lcom/bumptech/glide/request/g;->G:Lcom/bumptech/glide/Priority;

    .line 556
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 558
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 963
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/n;->b:Lcom/bumptech/glide/load/e;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/resource/d/i;->a:Lcom/bumptech/glide/load/e;

    .line 965
    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 823
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 824
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 827
    :cond_d
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/c;

    iput-object p1, p0, Lcom/bumptech/glide/request/g;->O:Lcom/bumptech/glide/load/c;

    .line 828
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 829
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/e<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    .line 868
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 869
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 872
    :cond_d
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    invoke-static {p2}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->T:Lcom/bumptech/glide/load/f;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/f;->a(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/bumptech/glide/load/f;

    .line 875
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/engine/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 533
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 534
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 536
    :cond_d
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/h;

    iput-object p1, p0, Lcom/bumptech/glide/request/g;->F:Lcom/bumptech/glide/load/engine/h;

    .line 537
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 539
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1216
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/i;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1001
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->h:Lcom/bumptech/glide/load/e;

    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method final b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    .line 1167
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 1168
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 1171
    :cond_d
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/g;

    .line 1172
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    .line 881
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 882
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->b(Ljava/lang/Class;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 885
    :cond_d
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/bumptech/glide/request/g;->V:Ljava/lang/Class;

    .line 886
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 887
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/i<",
            "TT;>;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1345
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/i;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 463
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 464
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->b(Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 467
    :cond_d
    iput-boolean p1, p0, Lcom/bumptech/glide/request/g;->Z:Z

    .line 468
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 470
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 572
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 573
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 576
    :cond_d
    iput-object p1, p0, Lcom/bumptech/glide/request/g;->J:Landroid/graphics/drawable/Drawable;

    .line 577
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    const/4 p1, 0x0

    .line 579
    iput p1, p0, Lcom/bumptech/glide/request/g;->K:I

    .line 580
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 582
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1257
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/i;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 489
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 490
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->c(Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 493
    :cond_d
    iput-boolean p1, p0, Lcom/bumptech/glide/request/g;->ac:Z

    .line 494
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 496
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 628
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 629
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->d(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 632
    :cond_d
    iput-object p1, p0, Lcom/bumptech/glide/request/g;->R:Landroid/graphics/drawable/Drawable;

    .line 633
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    const/4 p1, 0x0

    .line 635
    iput p1, p0, Lcom/bumptech/glide/request/g;->S:I

    .line 636
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    and-int/lit16 p1, p1, -0x4001

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 638
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public d(Z)Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 506
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 507
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->d(Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 510
    :cond_d
    iput-boolean p1, p0, Lcom/bumptech/glide/request/g;->aa:Z

    .line 511
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 513
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 683
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 684
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->e(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 687
    :cond_d
    iput-object p1, p0, Lcom/bumptech/glide/request/g;->H:Landroid/graphics/drawable/Drawable;

    .line 688
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    const/4 p1, 0x0

    .line 690
    iput p1, p0, Lcom/bumptech/glide/request/g;->I:I

    .line 691
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 693
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public e(Z)Lcom/bumptech/glide/request/g;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 762
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 763
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/g;->e(Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_e
    xor-int/2addr p1, v1

    .line 766
    iput-boolean p1, p0, Lcom/bumptech/glide/request/g;->L:Z

    .line 767
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 769
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1500
    instance-of v0, p1, Lcom/bumptech/glide/request/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_af

    .line 1501
    check-cast p1, Lcom/bumptech/glide/request/g;

    .line 1502
    iget v0, p1, Lcom/bumptech/glide/request/g;->E:F

    iget v2, p0, Lcom/bumptech/glide/request/g;->E:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_ae

    iget v0, p0, Lcom/bumptech/glide/request/g;->I:I

    iget v2, p1, Lcom/bumptech/glide/request/g;->I:I

    if-ne v0, v2, :cond_ae

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->H:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->H:Landroid/graphics/drawable/Drawable;

    .line 1504
    invoke-static {v0, v2}, Lcom/bumptech/glide/h/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget v0, p0, Lcom/bumptech/glide/request/g;->K:I

    iget v2, p1, Lcom/bumptech/glide/request/g;->K:I

    if-ne v0, v2, :cond_ae

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->J:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->J:Landroid/graphics/drawable/Drawable;

    .line 1506
    invoke-static {v0, v2}, Lcom/bumptech/glide/h/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget v0, p0, Lcom/bumptech/glide/request/g;->S:I

    iget v2, p1, Lcom/bumptech/glide/request/g;->S:I

    if-ne v0, v2, :cond_ae

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->R:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->R:Landroid/graphics/drawable/Drawable;

    .line 1508
    invoke-static {v0, v2}, Lcom/bumptech/glide/h/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->L:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/g;->L:Z

    if-ne v0, v2, :cond_ae

    iget v0, p0, Lcom/bumptech/glide/request/g;->M:I

    iget v2, p1, Lcom/bumptech/glide/request/g;->M:I

    if-ne v0, v2, :cond_ae

    iget v0, p0, Lcom/bumptech/glide/request/g;->N:I

    iget v2, p1, Lcom/bumptech/glide/request/g;->N:I

    if-ne v0, v2, :cond_ae

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->P:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/g;->P:Z

    if-ne v0, v2, :cond_ae

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Q:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/g;->Q:Z

    if-ne v0, v2, :cond_ae

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Z:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/g;->Z:Z

    if-ne v0, v2, :cond_ae

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->aa:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/g;->aa:Z

    if-ne v0, v2, :cond_ae

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->F:Lcom/bumptech/glide/load/engine/h;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->F:Lcom/bumptech/glide/load/engine/h;

    .line 1516
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->G:Lcom/bumptech/glide/Priority;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->G:Lcom/bumptech/glide/Priority;

    if-ne v0, v2, :cond_ae

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->T:Lcom/bumptech/glide/load/f;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->T:Lcom/bumptech/glide/load/f;

    .line 1518
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->U:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->U:Ljava/util/Map;

    .line 1519
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->V:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->V:Ljava/lang/Class;

    .line 1520
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->O:Lcom/bumptech/glide/load/c;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->O:Lcom/bumptech/glide/load/c;

    .line 1521
    invoke-static {v0, v2}, Lcom/bumptech/glide/h/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->X:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lcom/bumptech/glide/request/g;->X:Landroid/content/res/Resources$Theme;

    .line 1522
    invoke-static {v0, p1}, Lcom/bumptech/glide/h/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ae

    const/4 v1, 0x1

    :cond_ae
    return v1

    :cond_af
    return v1
.end method

.method public f(I)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 597
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 598
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->f(I)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 601
    :cond_d
    iput p1, p0, Lcom/bumptech/glide/request/g;->K:I

    .line 602
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    const/4 p1, 0x0

    .line 604
    iput-object p1, p0, Lcom/bumptech/glide/request/g;->J:Landroid/graphics/drawable/Drawable;

    .line 605
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 607
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public g()Lcom/bumptech/glide/request/g;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 852
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/g;

    .line 853
    new-instance v1, Lcom/bumptech/glide/load/f;

    invoke-direct {v1}, Lcom/bumptech/glide/load/f;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/g;->T:Lcom/bumptech/glide/load/f;

    .line 854
    iget-object v1, v0, Lcom/bumptech/glide/request/g;->T:Lcom/bumptech/glide/load/f;

    iget-object v2, p0, Lcom/bumptech/glide/request/g;->T:Lcom/bumptech/glide/load/f;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/f;->a(Lcom/bumptech/glide/load/f;)V

    .line 855
    new-instance v1, Lcom/bumptech/glide/h/b;

    invoke-direct {v1}, Lcom/bumptech/glide/h/b;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/g;->U:Ljava/util/Map;

    .line 856
    iget-object v1, v0, Lcom/bumptech/glide/request/g;->U:Ljava/util/Map;

    iget-object v2, p0, Lcom/bumptech/glide/request/g;->U:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 857
    iput-boolean v1, v0, Lcom/bumptech/glide/request/g;->W:Z

    .line 858
    iput-boolean v1, v0, Lcom/bumptech/glide/request/g;->Y:Z
    :try_end_27
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_27} :catch_28

    return-object v0

    :catch_28
    move-exception v0

    .line 861
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public g(I)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 659
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 660
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->g(I)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 663
    :cond_d
    iput p1, p0, Lcom/bumptech/glide/request/g;->S:I

    .line 664
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    const/4 p1, 0x0

    .line 666
    iput-object p1, p0, Lcom/bumptech/glide/request/g;->R:Landroid/graphics/drawable/Drawable;

    .line 667
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    and-int/lit16 p1, p1, -0x2001

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 669
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public h(I)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 707
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 708
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->h(I)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    .line 710
    :cond_d
    iput p1, p0, Lcom/bumptech/glide/request/g;->I:I

    .line 711
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    const/4 p1, 0x0

    .line 713
    iput-object p1, p0, Lcom/bumptech/glide/request/g;->H:Landroid/graphics/drawable/Drawable;

    .line 714
    iget p1, p0, Lcom/bumptech/glide/request/g;->D:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 716
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public final h()Z
    .registers 2

    .line 891
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Q:Z

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1529
    iget v0, p0, Lcom/bumptech/glide/request/g;->E:F

    invoke-static {v0}, Lcom/bumptech/glide/h/l;->a(F)I

    move-result v0

    .line 1530
    iget v1, p0, Lcom/bumptech/glide/request/g;->I:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->b(II)I

    move-result v0

    .line 1531
    iget-object v1, p0, Lcom/bumptech/glide/request/g;->H:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1532
    iget v1, p0, Lcom/bumptech/glide/request/g;->K:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->b(II)I

    move-result v0

    .line 1533
    iget-object v1, p0, Lcom/bumptech/glide/request/g;->J:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1534
    iget v1, p0, Lcom/bumptech/glide/request/g;->S:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->b(II)I

    move-result v0

    .line 1535
    iget-object v1, p0, Lcom/bumptech/glide/request/g;->R:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1536
    iget-boolean v1, p0, Lcom/bumptech/glide/request/g;->L:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->a(ZI)I

    move-result v0

    .line 1537
    iget v1, p0, Lcom/bumptech/glide/request/g;->M:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->b(II)I

    move-result v0

    .line 1538
    iget v1, p0, Lcom/bumptech/glide/request/g;->N:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->b(II)I

    move-result v0

    .line 1539
    iget-boolean v1, p0, Lcom/bumptech/glide/request/g;->P:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->a(ZI)I

    move-result v0

    .line 1540
    iget-boolean v1, p0, Lcom/bumptech/glide/request/g;->Q:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->a(ZI)I

    move-result v0

    .line 1541
    iget-boolean v1, p0, Lcom/bumptech/glide/request/g;->Z:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->a(ZI)I

    move-result v0

    .line 1542
    iget-boolean v1, p0, Lcom/bumptech/glide/request/g;->aa:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->a(ZI)I

    move-result v0

    .line 1543
    iget-object v1, p0, Lcom/bumptech/glide/request/g;->F:Lcom/bumptech/glide/load/engine/h;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1544
    iget-object v1, p0, Lcom/bumptech/glide/request/g;->G:Lcom/bumptech/glide/Priority;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1545
    iget-object v1, p0, Lcom/bumptech/glide/request/g;->T:Lcom/bumptech/glide/load/f;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1546
    iget-object v1, p0, Lcom/bumptech/glide/request/g;->U:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1547
    iget-object v1, p0, Lcom/bumptech/glide/request/g;->V:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1548
    iget-object v1, p0, Lcom/bumptech/glide/request/g;->O:Lcom/bumptech/glide/load/c;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1549
    iget-object v1, p0, Lcom/bumptech/glide/request/g;->X:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/l;->a(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public i(I)Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 806
    invoke-virtual {p0, p1, p1}, Lcom/bumptech/glide/request/g;->b(II)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public final i()Z
    .registers 2

    const/16 v0, 0x800

    .line 895
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/g;->l(I)Z

    move-result v0

    return v0
.end method

.method public j(I)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 919
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/e;->a:Lcom/bumptech/glide/load/e;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public final j()Z
    .registers 2

    .line 899
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->W:Z

    return v0
.end method

.method public k()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 988
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/n;->e:Lcom/bumptech/glide/load/e;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public k(I)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1018
    sget-object v0, Lcom/bumptech/glide/load/b/a/b;->a:Lcom/bumptech/glide/load/e;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public l()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1033
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->b:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1048
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->b:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1065
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->a:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/r;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/r;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/g;->d(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1082
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->a:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/r;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/r;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/g;->c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1098
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->e:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/k;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/k;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/g;->d(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1114
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->e:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/k;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/k;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/g;->c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1128
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->b:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1143
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->e:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/bumptech/glide/request/g;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1356
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_d

    .line 1357
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->t()Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0

    .line 1360
    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->U:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1361
    iget v0, p0, Lcom/bumptech/glide/request/g;->D:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/request/g;->D:I

    const/4 v0, 0x0

    .line 1362
    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->P:Z

    .line 1363
    iget v1, p0, Lcom/bumptech/glide/request/g;->D:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/request/g;->D:I

    .line 1364
    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->Q:Z

    .line 1365
    iget v0, p0, Lcom/bumptech/glide/request/g;->D:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/g;->D:I

    const/4 v0, 0x1

    .line 1366
    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->ab:Z

    .line 1367
    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->Y()Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1382
    sget-object v0, Lcom/bumptech/glide/load/resource/d/i;->b:Lcom/bumptech/glide/load/e;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 1561
    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->W:Z

    return-object p0
.end method

.method public w()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1576
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->W:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    if-eqz v0, :cond_9

    goto :goto_11

    .line 1577
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 1580
    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    .line 1581
    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->v()Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method protected x()Z
    .registers 2

    .line 1594
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->Y:Z

    return v0
.end method

.method public final y()Z
    .registers 2

    const/4 v0, 0x4

    .line 1598
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/g;->l(I)Z

    move-result v0

    return v0
.end method

.method public final z()Z
    .registers 2

    const/16 v0, 0x100

    .line 1602
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/g;->l(I)Z

    move-result v0

    return v0
.end method
