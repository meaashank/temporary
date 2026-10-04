###### Class com.bumptech.glide.g (com.bumptech.glide.g)
.class public final Lcom/bumptech/glide/g;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/n<",
            "**>;>;"
        }
    .end annotation
.end field

.field private b:Lcom/bumptech/glide/load/engine/i;

.field private c:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

.field private d:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

.field private e:Lcom/bumptech/glide/load/engine/a/j;

.field private f:Lcom/bumptech/glide/load/engine/b/a;

.field private g:Lcom/bumptech/glide/load/engine/b/a;

.field private h:Lcom/bumptech/glide/load/engine/a/a$a;

.field private i:Lcom/bumptech/glide/load/engine/a/l;

.field private j:Lcom/bumptech/glide/d/d;

.field private k:I

.field private l:Lcom/bumptech/glide/request/g;

.field private m:Lcom/bumptech/glide/d/l$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private n:Lcom/bumptech/glide/load/engine/b/a;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->a:Ljava/util/Map;

    const/4 v0, 0x4

    .line 43
    iput v0, p0, Lcom/bumptech/glide/g;->k:I

    .line 44
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/request/g;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/bumptech/glide/f;
    .registers 14
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/engine/b/a;

    if-nez v0, :cond_a

    .line 388
    invoke-static {}, Lcom/bumptech/glide/load/engine/b/a;->b()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/engine/b/a;

    .line 391
    :cond_a
    iget-object v0, p0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/load/engine/b/a;

    if-nez v0, :cond_14

    .line 392
    invoke-static {}, Lcom/bumptech/glide/load/engine/b/a;->a()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/load/engine/b/a;

    .line 395
    :cond_14
    iget-object v0, p0, Lcom/bumptech/glide/g;->n:Lcom/bumptech/glide/load/engine/b/a;

    if-nez v0, :cond_1e

    .line 396
    invoke-static {}, Lcom/bumptech/glide/load/engine/b/a;->d()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->n:Lcom/bumptech/glide/load/engine/b/a;

    .line 399
    :cond_1e
    iget-object v0, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/engine/a/l;

    if-nez v0, :cond_2d

    .line 400
    new-instance v0, Lcom/bumptech/glide/load/engine/a/l$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/a/l$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a/l$a;->a()Lcom/bumptech/glide/load/engine/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/engine/a/l;

    .line 403
    :cond_2d
    iget-object v0, p0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/d/d;

    if-nez v0, :cond_38

    .line 404
    new-instance v0, Lcom/bumptech/glide/d/f;

    invoke-direct {v0}, Lcom/bumptech/glide/d/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/d/d;

    .line 407
    :cond_38
    iget-object v0, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    if-nez v0, :cond_54

    .line 408
    iget-object v0, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/engine/a/l;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a/l;->b()I

    move-result v0

    if-lez v0, :cond_4d

    .line 410
    new-instance v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;

    int-to-long v3, v0

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;-><init>(J)V

    iput-object v2, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    goto :goto_54

    .line 412
    :cond_4d
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    .line 416
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    if-nez v0, :cond_65

    .line 417
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;

    iget-object v2, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/engine/a/l;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/a/l;->c()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 420
    :cond_65
    iget-object v0, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/engine/a/j;

    if-nez v0, :cond_77

    .line 421
    new-instance v0, Lcom/bumptech/glide/load/engine/a/i;

    iget-object v2, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/engine/a/l;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/a/l;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, v2, v3}, Lcom/bumptech/glide/load/engine/a/i;-><init>(J)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/engine/a/j;

    .line 424
    :cond_77
    iget-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/load/engine/a/a$a;

    if-nez v0, :cond_82

    .line 425
    new-instance v0, Lcom/bumptech/glide/load/engine/a/h;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/a/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/load/engine/a/a$a;

    .line 428
    :cond_82
    iget-object v0, p0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/load/engine/i;

    if-nez v0, :cond_a0

    .line 429
    new-instance v0, Lcom/bumptech/glide/load/engine/i;

    iget-object v3, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/engine/a/j;

    iget-object v4, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/load/engine/a/a$a;

    iget-object v5, p0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/load/engine/b/a;

    iget-object v6, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/engine/b/a;

    .line 435
    invoke-static {}, Lcom/bumptech/glide/load/engine/b/a;->c()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v7

    .line 436
    invoke-static {}, Lcom/bumptech/glide/load/engine/b/a;->d()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v8

    iget-boolean v9, p0, Lcom/bumptech/glide/g;->o:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/bumptech/glide/load/engine/i;-><init>(Lcom/bumptech/glide/load/engine/a/j;Lcom/bumptech/glide/load/engine/a/a$a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Z)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/load/engine/i;

    .line 440
    :cond_a0
    new-instance v6, Lcom/bumptech/glide/d/l;

    iget-object v0, p0, Lcom/bumptech/glide/g;->m:Lcom/bumptech/glide/d/l$a;

    invoke-direct {v6, v0}, Lcom/bumptech/glide/d/l;-><init>(Lcom/bumptech/glide/d/l$a;)V

    .line 443
    new-instance v11, Lcom/bumptech/glide/f;

    iget-object v2, p0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/load/engine/i;

    iget-object v3, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/engine/a/j;

    iget-object v4, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    iget-object v5, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    iget-object v7, p0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/d/d;

    iget v8, p0, Lcom/bumptech/glide/g;->k:I

    iget-object v0, p0, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/request/g;

    .line 452
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->v()Lcom/bumptech/glide/request/g;

    move-result-object v9

    iget-object v10, p0, Lcom/bumptech/glide/g;->a:Ljava/util/Map;

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/f;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/load/engine/a/j;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Lcom/bumptech/glide/d/l;Lcom/bumptech/glide/d/d;ILcom/bumptech/glide/request/g;Ljava/util/Map;)V

    return-object v11
.end method

.method public a(I)Lcom/bumptech/glide/g;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    if-lt p1, v0, :cond_9

    const/4 v0, 0x6

    if-gt p1, v0, :cond_9

    .line 319
    iput p1, p0, Lcom/bumptech/glide/g;->k:I

    return-object p0

    .line 316
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/bumptech/glide/d/d;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/d/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 282
    iput-object p1, p0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/d/d;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/a$a;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/engine/a/a$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/load/engine/a/a$a;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/j;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/engine/a/j;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/engine/a/j;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/l$a;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/engine/a/l$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 249
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/a/l$a;->a()Lcom/bumptech/glide/load/engine/a/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/load/engine/a/l;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/engine/a/l;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/engine/a/l;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/engine/a/l;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/b/a;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/engine/b/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->b(Lcom/bumptech/glide/load/engine/b/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    return-object p0
.end method

.method a(Lcom/bumptech/glide/load/engine/i;)Lcom/bumptech/glide/g;
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/load/engine/i;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/request/g;

    return-object p0
.end method

.method public a(Ljava/lang/Class;Lcom/bumptech/glide/n;)Lcom/bumptech/glide/g;
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/n;
        .annotation build Landroid/support/annotation/Nullable;
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
            "Lcom/bumptech/glide/n<",
            "*TT;>;)",
            "Lcom/bumptech/glide/g;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/bumptech/glide/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Z)Lcom/bumptech/glide/g;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 371
    iput-boolean p1, p0, Lcom/bumptech/glide/g;->o:Z

    return-object p0
.end method

.method a(Lcom/bumptech/glide/d/l$a;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/d/l$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 376
    iput-object p1, p0, Lcom/bumptech/glide/g;->m:Lcom/bumptech/glide/d/l$a;

    return-void
.end method

.method public b(Lcom/bumptech/glide/load/engine/b/a;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/engine/b/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/engine/b/a;

    return-object p0
.end method

.method public c(Lcom/bumptech/glide/load/engine/b/a;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/engine/b/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/load/engine/b/a;

    return-object p0
.end method

.method public d(Lcom/bumptech/glide/load/engine/b/a;)Lcom/bumptech/glide/g;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/engine/b/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/bumptech/glide/g;->n:Lcom/bumptech/glide/load/engine/b/a;

    return-object p0
.end method
