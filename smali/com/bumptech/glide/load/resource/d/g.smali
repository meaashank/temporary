###### Class com.bumptech.glide.load.resource.d.g (com.bumptech.glide.load.resource.d.g)
.class Lcom/bumptech/glide/load/resource/d/g;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/d/g$d;,
        Lcom/bumptech/glide/load/resource/d/g$a;,
        Lcom/bumptech/glide/load/resource/d/g$c;,
        Lcom/bumptech/glide/load/resource/d/g$b;
    }
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/m;

.field private final b:Lcom/bumptech/glide/c/b;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/resource/d/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/bumptech/glide/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/bumptech/glide/load/resource/d/g$a;

.field private k:Z

.field private l:Lcom/bumptech/glide/load/resource/d/g$a;

.field private m:Landroid/graphics/Bitmap;

.field private n:Lcom/bumptech/glide/load/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/bumptech/glide/load/resource/d/g$a;

.field private p:Lcom/bumptech/glide/load/resource/d/g$d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/c/b;IILcom/bumptech/glide/load/i;Landroid/graphics/Bitmap;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/c/b;",
            "II",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-virtual {p1}, Lcom/bumptech/glide/f;->b()Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    move-result-object v1

    .line 66
    invoke-virtual {p1}, Lcom/bumptech/glide/f;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v2

    .line 69
    invoke-virtual {p1}, Lcom/bumptech/glide/f;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/bumptech/glide/load/resource/d/g;->a(Lcom/bumptech/glide/m;II)Lcom/bumptech/glide/l;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    .line 64
    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/resource/d/g;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/m;Lcom/bumptech/glide/c/b;Landroid/os/Handler;Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/i;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/m;Lcom/bumptech/glide/c/b;Landroid/os/Handler;Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/i;Landroid/graphics/Bitmap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/e;",
            "Lcom/bumptech/glide/m;",
            "Lcom/bumptech/glide/c/b;",
            "Landroid/os/Handler;",
            "Lcom/bumptech/glide/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Ljava/util/List;

    .line 83
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/m;

    if-nez p4, :cond_1c

    .line 85
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/bumptech/glide/load/resource/d/g$c;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/d/g$c;-><init>(Lcom/bumptech/glide/load/resource/d/g;)V

    invoke-direct {p4, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 87
    :cond_1c
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    .line 88
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/d/g;->c:Landroid/os/Handler;

    .line 89
    iput-object p5, p0, Lcom/bumptech/glide/load/resource/d/g;->i:Lcom/bumptech/glide/l;

    .line 91
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Lcom/bumptech/glide/c/b;

    .line 93
    invoke-virtual {p0, p6, p7}, Lcom/bumptech/glide/load/resource/d/g;->a(Lcom/bumptech/glide/load/i;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static a(Lcom/bumptech/glide/m;II)Lcom/bumptech/glide/l;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/m;",
            "II)",
            "Lcom/bumptech/glide/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->j()Lcom/bumptech/glide/l;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/engine/h;->b:Lcom/bumptech/glide/load/engine/h;

    .line 339
    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    const/4 v1, 0x1

    .line 340
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->c(Z)Lcom/bumptech/glide/request/g;

    move-result-object v0

    .line 341
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->e(Z)Lcom/bumptech/glide/request/g;

    move-result-object v0

    .line 342
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/g;->b(II)Lcom/bumptech/glide/request/g;

    move-result-object p1

    .line 338
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;

    move-result-object p0

    return-object p0
.end method

.method private m()I
    .registers 4

    .line 148
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/g;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/g;->k()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 149
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/g;->k()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 148
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/h/l;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    return v0
.end method

.method private n()V
    .registers 2

    .line 165
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->f:Z

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->k:Z

    .line 171
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/g;->p()V

    return-void
.end method

.method private o()V
    .registers 2

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->f:Z

    return-void
.end method

.method private p()V
    .registers 6

    .line 203
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->f:Z

    if-eqz v0, :cond_6b

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->g:Z

    if-eqz v0, :cond_9

    goto :goto_6b

    .line 206
    :cond_9
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    .line 207
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Lcom/bumptech/glide/load/resource/d/g$a;

    const/4 v2, 0x0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    const-string v3, "Pending target must be null when starting from the first frame"

    invoke-static {v0, v3}, Lcom/bumptech/glide/h/j;->a(ZLjava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Lcom/bumptech/glide/c/b;

    invoke-interface {v0}, Lcom/bumptech/glide/c/b;->i()V

    .line 210
    iput-boolean v2, p0, Lcom/bumptech/glide/load/resource/d/g;->h:Z

    .line 212
    :cond_22
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Lcom/bumptech/glide/load/resource/d/g$a;

    if-eqz v0, :cond_2f

    .line 213
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Lcom/bumptech/glide/load/resource/d/g$a;

    const/4 v1, 0x0

    .line 214
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 215
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/d/g;->a(Lcom/bumptech/glide/load/resource/d/g$a;)V

    return-void

    .line 218
    :cond_2f
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/d/g;->g:Z

    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Lcom/bumptech/glide/c/b;

    invoke-interface {v0}, Lcom/bumptech/glide/c/b;->f()I

    move-result v0

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 224
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Lcom/bumptech/glide/c/b;

    invoke-interface {v0}, Lcom/bumptech/glide/c/b;->e()V

    .line 225
    new-instance v0, Lcom/bumptech/glide/load/resource/d/g$a;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/d/g;->c:Landroid/os/Handler;

    iget-object v4, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Lcom/bumptech/glide/c/b;

    invoke-interface {v4}, Lcom/bumptech/glide/c/b;->h()I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bumptech/glide/load/resource/d/g$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->l:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 226
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->i:Lcom/bumptech/glide/l;

    invoke-static {}, Lcom/bumptech/glide/load/resource/d/g;->r()Lcom/bumptech/glide/load/c;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Lcom/bumptech/glide/c/b;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->b(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->l:Lcom/bumptech/glide/load/resource/d/g$a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/a/o;)Lcom/bumptech/glide/request/a/o;

    return-void

    :cond_6b
    :goto_6b
    return-void
.end method

.method private q()V
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    .line 231
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->m:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/e;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->m:Landroid/graphics/Bitmap;

    :cond_e
    return-void
.end method

.method private static r()Lcom/bumptech/glide/load/c;
    .registers 3

    .line 348
    new-instance v0, Lcom/bumptech/glide/g/d;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/g/d;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method a()Lcom/bumptech/glide/load/i;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->n:Lcom/bumptech/glide/load/i;

    return-object v0
.end method

.method a(Lcom/bumptech/glide/load/i;Landroid/graphics/Bitmap;)V
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

    .line 97
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/i;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->n:Lcom/bumptech/glide/load/i;

    .line 98
    invoke-static {p2}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/g;->m:Landroid/graphics/Bitmap;

    .line 99
    iget-object p2, p0, Lcom/bumptech/glide/load/resource/d/g;->i:Lcom/bumptech/glide/l;

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->i:Lcom/bumptech/glide/l;

    return-void
.end method

.method a(Lcom/bumptech/glide/load/resource/d/g$a;)V
    .registers 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->p:Lcom/bumptech/glide/load/resource/d/g$d;

    if-eqz v0, :cond_9

    .line 253
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->p:Lcom/bumptech/glide/load/resource/d/g$d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/d/g$d;->a()V

    :cond_9
    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->g:Z

    .line 256
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->k:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1b

    .line 257
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 264
    :cond_1b
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->f:Z

    if-nez v0, :cond_22

    .line 265
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Lcom/bumptech/glide/load/resource/d/g$a;

    return-void

    .line 269
    :cond_22
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/d/g$a;->o_()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 270
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/g;->q()V

    .line 271
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->j:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 272
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->j:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 275
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_37
    if-ltz p1, :cond_47

    .line 276
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/resource/d/g$b;

    .line 277
    invoke-interface {v2}, Lcom/bumptech/glide/load/resource/d/g$b;->h()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_37

    :cond_47
    if-eqz v0, :cond_52

    .line 280
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->c:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 284
    :cond_52
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/g;->p()V

    return-void
.end method

.method a(Lcom/bumptech/glide/load/resource/d/g$b;)V
    .registers 4

    .line 111
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->k:Z

    if-nez v0, :cond_25

    .line 114
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 117
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1c

    .line 120
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/g;->n()V

    :cond_1c
    return-void

    .line 115
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe twice in a row"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe to a cleared frame loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lcom/bumptech/glide/load/resource/d/g$d;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/resource/d/g$d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 247
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->p:Lcom/bumptech/glide/load/resource/d/g$d;

    return-void
.end method

.method b()Landroid/graphics/Bitmap;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->m:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method b(Lcom/bumptech/glide/load/resource/d/g$b;)V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 127
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/g;->o()V

    :cond_10
    return-void
.end method

.method c()I
    .registers 2

    .line 132
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/g;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method d()I
    .registers 2

    .line 136
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/g;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method e()I
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Lcom/bumptech/glide/c/b;

    invoke-interface {v0}, Lcom/bumptech/glide/c/b;->m()I

    move-result v0

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/g;->m()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method f()I
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->j:Lcom/bumptech/glide/load/resource/d/g$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->j:Lcom/bumptech/glide/load/resource/d/g$a;

    iget v0, v0, Lcom/bumptech/glide/load/resource/d/g$a;->a:I

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method g()Ljava/nio/ByteBuffer;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Lcom/bumptech/glide/c/b;

    invoke-interface {v0}, Lcom/bumptech/glide/c/b;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method h()I
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Lcom/bumptech/glide/c/b;

    invoke-interface {v0}, Lcom/bumptech/glide/c/b;->g()I

    move-result v0

    return v0
.end method

.method i()I
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Lcom/bumptech/glide/c/b;

    invoke-interface {v0}, Lcom/bumptech/glide/c/b;->l()I

    move-result v0

    return v0
.end method

.method j()V
    .registers 4

    .line 179
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/g;->q()V

    .line 181
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/g;->o()V

    .line 182
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->j:Lcom/bumptech/glide/load/resource/d/g$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 183
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/m;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/g;->j:Lcom/bumptech/glide/load/resource/d/g$a;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/request/a/o;)V

    .line 184
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->j:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 186
    :cond_19
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->l:Lcom/bumptech/glide/load/resource/d/g$a;

    if-eqz v0, :cond_26

    .line 187
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/m;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/g;->l:Lcom/bumptech/glide/load/resource/d/g$a;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/request/a/o;)V

    .line 188
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->l:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 190
    :cond_26
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Lcom/bumptech/glide/load/resource/d/g$a;

    if-eqz v0, :cond_33

    .line 191
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/m;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Lcom/bumptech/glide/load/resource/d/g$a;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/request/a/o;)V

    .line 192
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 194
    :cond_33
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Lcom/bumptech/glide/c/b;

    invoke-interface {v0}, Lcom/bumptech/glide/c/b;->o()V

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->k:Z

    return-void
.end method

.method k()Landroid/graphics/Bitmap;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->j:Lcom/bumptech/glide/load/resource/d/g$a;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->j:Lcom/bumptech/glide/load/resource/d/g$a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/g$a;->o_()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->m:Landroid/graphics/Bitmap;

    :goto_d
    return-object v0
.end method

.method l()V
    .registers 4

    .line 237
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->f:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Can\'t restart a running animation"

    invoke-static {v0, v2}, Lcom/bumptech/glide/h/j;->a(ZLjava/lang/String;)V

    .line 238
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/d/g;->h:Z

    .line 239
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Lcom/bumptech/glide/load/resource/d/g$a;

    if-eqz v0, :cond_19

    .line 240
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/m;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Lcom/bumptech/glide/load/resource/d/g$a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/request/a/o;)V

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Lcom/bumptech/glide/load/resource/d/g$a;

    :cond_19
    return-void
.end method

###### Class com.bumptech.glide.load.resource.d.g.a (com.bumptech.glide.load.resource.d.g$a)
.class Lcom/bumptech/glide/load/resource/d/g$a;
.super Lcom/bumptech/glide/request/a/m;
.source "GifFrameLoader.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/a/m<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field private final b:Landroid/os/Handler;

.field private final d:J

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Handler;IJ)V
    .registers 5

    .line 315
    invoke-direct {p0}, Lcom/bumptech/glide/request/a/m;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g$a;->b:Landroid/os/Handler;

    .line 317
    iput p2, p0, Lcom/bumptech/glide/load/resource/d/g$a;->a:I

    .line 318
    iput-wide p3, p0, Lcom/bumptech/glide/load/resource/d/g$a;->d:J

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/b/f;)V
    .registers 5
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/b/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/b/f<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g$a;->e:Landroid/graphics/Bitmap;

    .line 329
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/d/g$a;->b:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 330
    iget-object p2, p0, Lcom/bumptech/glide/load/resource/d/g$a;->b:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/bumptech/glide/load/resource/d/g$a;->d:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/request/b/f;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/b/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 308
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/d/g$a;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/b/f;)V

    return-void
.end method

.method o_()Landroid/graphics/Bitmap;
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g$a;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

###### Class com.bumptech.glide.load.resource.d.g.b (com.bumptech.glide.load.resource.d.g$b)
.class public interface abstract Lcom/bumptech/glide/load/resource/d/g$b;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract h()V
.end method

###### Class com.bumptech.glide.load.resource.d.g.c (com.bumptech.glide.load.resource.d.g$c)
.class Lcom/bumptech/glide/load/resource/d/g$c;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2


# instance fields
.field final synthetic c:Lcom/bumptech/glide/load/resource/d/g;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/d/g;)V
    .registers 2

    .line 292
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g$c;->c:Lcom/bumptech/glide/load/resource/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 296
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 297
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/resource/d/g$a;

    .line 298
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g$c;->c:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/d/g;->a(Lcom/bumptech/glide/load/resource/d/g$a;)V

    return v1

    .line 300
    :cond_f
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 301
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/resource/d/g$a;

    .line 302
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g$c;->c:Lcom/bumptech/glide/load/resource/d/g;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/m;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/request/a/o;)V

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

###### Class com.bumptech.glide.load.resource.d.g.d (com.bumptech.glide.load.resource.d.g$d)
.class interface abstract Lcom/bumptech/glide/load/resource/d/g$d;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "d"
.end annotation


# virtual methods
.method public abstract a()V
.end method
