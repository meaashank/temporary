###### Class com.bumptech.glide.m (com.bumptech.glide.m)
.class public Lcom/bumptech/glide/m;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/d/i;
.implements Lcom/bumptech/glide/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/m$a;,
        Lcom/bumptech/glide/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/d/i;",
        "Lcom/bumptech/glide/j<",
        "Lcom/bumptech/glide/l<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final d:Lcom/bumptech/glide/request/g;

.field private static final e:Lcom/bumptech/glide/request/g;

.field private static final f:Lcom/bumptech/glide/request/g;


# instance fields
.field protected final a:Lcom/bumptech/glide/f;

.field protected final b:Landroid/content/Context;

.field final c:Lcom/bumptech/glide/d/h;

.field private final g:Lcom/bumptech/glide/d/n;

.field private final h:Lcom/bumptech/glide/d/m;

.field private final i:Lcom/bumptech/glide/d/p;

.field private final j:Ljava/lang/Runnable;

.field private final k:Landroid/os/Handler;

.field private final l:Lcom/bumptech/glide/d/c;

.field private m:Lcom/bumptech/glide/request/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 52
    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->v()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/request/g;

    .line 53
    const-class v0, Lcom/bumptech/glide/load/resource/d/c;

    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->v()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/m;->e:Lcom/bumptech/glide/request/g;

    .line 54
    sget-object v0, Lcom/bumptech/glide/load/engine/h;->c:Lcom/bumptech/glide/load/engine/h;

    .line 55
    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->e(Z)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/m;->f:Lcom/bumptech/glide/request/g;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/d/h;Lcom/bumptech/glide/d/m;Landroid/content/Context;)V
    .registers 12
    .param p1    # Lcom/bumptech/glide/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/d/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/d/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    new-instance v4, Lcom/bumptech/glide/d/n;

    invoke-direct {v4}, Lcom/bumptech/glide/d/n;-><init>()V

    .line 83
    invoke-virtual {p1}, Lcom/bumptech/glide/f;->e()Lcom/bumptech/glide/d/d;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 78
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/m;-><init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/d/h;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/n;Lcom/bumptech/glide/d/d;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/d/h;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/n;Lcom/bumptech/glide/d/d;Landroid/content/Context;)V
    .registers 9

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/bumptech/glide/d/p;

    invoke-direct {v0}, Lcom/bumptech/glide/d/p;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/m;->i:Lcom/bumptech/glide/d/p;

    .line 64
    new-instance v0, Lcom/bumptech/glide/m$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/m$1;-><init>(Lcom/bumptech/glide/m;)V

    iput-object v0, p0, Lcom/bumptech/glide/m;->j:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/m;->k:Landroid/os/Handler;

    .line 96
    iput-object p1, p0, Lcom/bumptech/glide/m;->a:Lcom/bumptech/glide/f;

    .line 97
    iput-object p2, p0, Lcom/bumptech/glide/m;->c:Lcom/bumptech/glide/d/h;

    .line 98
    iput-object p3, p0, Lcom/bumptech/glide/m;->h:Lcom/bumptech/glide/d/m;

    .line 99
    iput-object p4, p0, Lcom/bumptech/glide/m;->g:Lcom/bumptech/glide/d/n;

    .line 100
    iput-object p6, p0, Lcom/bumptech/glide/m;->b:Landroid/content/Context;

    .line 104
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Lcom/bumptech/glide/m$b;

    invoke-direct {p6, p4}, Lcom/bumptech/glide/m$b;-><init>(Lcom/bumptech/glide/d/n;)V

    .line 103
    invoke-interface {p5, p3, p6}, Lcom/bumptech/glide/d/d;->a(Landroid/content/Context;Lcom/bumptech/glide/d/c$a;)Lcom/bumptech/glide/d/c;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/m;->l:Lcom/bumptech/glide/d/c;

    .line 111
    invoke-static {}, Lcom/bumptech/glide/h/l;->d()Z

    move-result p3

    if-eqz p3, :cond_43

    .line 112
    iget-object p3, p0, Lcom/bumptech/glide/m;->k:Landroid/os/Handler;

    iget-object p4, p0, Lcom/bumptech/glide/m;->j:Ljava/lang/Runnable;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_46

    .line 114
    :cond_43
    invoke-interface {p2, p0}, Lcom/bumptech/glide/d/h;->a(Lcom/bumptech/glide/d/i;)V

    .line 116
    :goto_46
    iget-object p3, p0, Lcom/bumptech/glide/m;->l:Lcom/bumptech/glide/d/c;

    invoke-interface {p2, p3}, Lcom/bumptech/glide/d/h;->a(Lcom/bumptech/glide/d/i;)V

    .line 118
    invoke-virtual {p1}, Lcom/bumptech/glide/f;->f()Lcom/bumptech/glide/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/h;->a()Lcom/bumptech/glide/request/g;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/request/g;)V

    .line 120
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/m;)V

    return-void
.end method

.method private c(Lcom/bumptech/glide/request/a/o;)V
    .registers 4
    .param p1    # Lcom/bumptech/glide/request/a/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/o<",
            "*>;)V"
        }
    .end annotation

    .line 571
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->b(Lcom/bumptech/glide/request/a/o;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 589
    iget-object v0, p0, Lcom/bumptech/glide/m;->a:Lcom/bumptech/glide/f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/a/o;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-interface {p1}, Lcom/bumptech/glide/request/a/o;->a()Lcom/bumptech/glide/request/c;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 590
    invoke-interface {p1}, Lcom/bumptech/glide/request/a/o;->a()Lcom/bumptech/glide/request/c;

    move-result-object v0

    const/4 v1, 0x0

    .line 591
    invoke-interface {p1, v1}, Lcom/bumptech/glide/request/a/o;->a(Lcom/bumptech/glide/request/c;)V

    .line 592
    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->b()V

    :cond_1f
    return-void
.end method

.method private d(Lcom/bumptech/glide/request/g;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 128
    iget-object v0, p0, Lcom/bumptech/glide/m;->m:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/m;->m:Lcom/bumptech/glide/request/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/l;
    .registers 5
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
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/l<",
            "TResourceType;>;"
        }
    .end annotation

    .line 528
    new-instance v0, Lcom/bumptech/glide/l;

    iget-object v1, p0, Lcom/bumptech/glide/m;->a:Lcom/bumptech/glide/f;

    iget-object v2, p0, Lcom/bumptech/glide/m;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/bumptech/glide/l;-><init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/m;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic a(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->b(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/net/Uri;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->b(Landroid/net/Uri;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/io/File;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->b(Ljava/io/File;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->b(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->b(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->b(Ljava/lang/String;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/net/URL;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->b(Ljava/net/URL;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a([B)Ljava/lang/Object;
    .registers 2
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->b([B)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 544
    new-instance v0, Lcom/bumptech/glide/m$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/m$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/request/a/o;)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/request/a/o;)V
    .registers 4
    .param p1    # Lcom/bumptech/glide/request/a/o;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/o<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 558
    :cond_3
    invoke-static {}, Lcom/bumptech/glide/h/l;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 559
    invoke-direct {p0, p1}, Lcom/bumptech/glide/m;->c(Lcom/bumptech/glide/request/a/o;)V

    goto :goto_17

    .line 561
    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/m;->k:Landroid/os/Handler;

    new-instance v1, Lcom/bumptech/glide/m$2;

    invoke-direct {v1, p0, p1}, Lcom/bumptech/glide/m$2;-><init>(Lcom/bumptech/glide/m;Lcom/bumptech/glide/request/a/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_17
    return-void
.end method

.method a(Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/request/c;)V
    .registers 4
    .param p1    # Lcom/bumptech/glide/request/a/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/o<",
            "*>;",
            "Lcom/bumptech/glide/request/c;",
            ")V"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/bumptech/glide/m;->i:Lcom/bumptech/glide/d/p;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d/p;->a(Lcom/bumptech/glide/request/a/o;)V

    .line 614
    iget-object p1, p0, Lcom/bumptech/glide/m;->g:Lcom/bumptech/glide/d/n;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/d/n;->a(Lcom/bumptech/glide/request/c;)V

    return-void
.end method

.method protected a(Lcom/bumptech/glide/request/g;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 124
    invoke-virtual {p1}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/g;->w()Lcom/bumptech/glide/request/g;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/m;->m:Lcom/bumptech/glide/request/g;

    return-void
.end method

.method public a()Z
    .registers 2

    .line 184
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 185
    iget-object v0, p0, Lcom/bumptech/glide/m;->g:Lcom/bumptech/glide/d/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/n;->a()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/l;
    .registers 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/bumptech/glide/l<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 369
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->l()Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/l;->b(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/l;
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/l<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->l()Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/l;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/net/Uri;)Lcom/bumptech/glide/l;
    .registers 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/l<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 405
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->l()Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/l;->b(Landroid/net/Uri;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/File;)Lcom/bumptech/glide/l;
    .registers 3
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/l<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->l()Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/l;->b(Ljava/io/File;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Integer;)Lcom/bumptech/glide/l;
    .registers 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/l<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 430
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->l()Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/l;->b(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Lcom/bumptech/glide/l;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/l<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 469
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->l()Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/l;->b(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/bumptech/glide/l;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/l<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->l()Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/l;->b(Ljava/lang/String;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/net/URL;)Lcom/bumptech/glide/l;
    .registers 3
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/bumptech/glide/l<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 443
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->l()Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/l;->b(Ljava/net/URL;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b([B)Lcom/bumptech/glide/l;
    .registers 3
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/l<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->l()Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/l;->b([B)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/m;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 151
    invoke-direct {p0, p1}, Lcom/bumptech/glide/m;->d(Lcom/bumptech/glide/request/g;)V

    return-object p0
.end method

.method b(Ljava/lang/Class;)Lcom/bumptech/glide/n;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/n<",
            "*TT;>;"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/bumptech/glide/m;->a:Lcom/bumptech/glide/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/f;->f()Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 2

    .line 199
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 200
    iget-object v0, p0, Lcom/bumptech/glide/m;->g:Lcom/bumptech/glide/d/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/n;->b()V

    return-void
.end method

.method b(Lcom/bumptech/glide/request/a/o;)Z
    .registers 5
    .param p1    # Lcom/bumptech/glide/request/a/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/o<",
            "*>;)Z"
        }
    .end annotation

    .line 597
    invoke-interface {p1}, Lcom/bumptech/glide/request/a/o;->a()Lcom/bumptech/glide/request/c;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 603
    :cond_8
    iget-object v2, p0, Lcom/bumptech/glide/m;->g:Lcom/bumptech/glide/d/n;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/d/n;->c(Lcom/bumptech/glide/request/c;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 604
    iget-object v0, p0, Lcom/bumptech/glide/m;->i:Lcom/bumptech/glide/d/p;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d/p;->b(Lcom/bumptech/glide/request/a/o;)V

    const/4 v0, 0x0

    .line 605
    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/a/o;->a(Lcom/bumptech/glide/request/c;)V

    return v1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/Object;)Lcom/bumptech/glide/l;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/l<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->m()Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/l;->b(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/m;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 173
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/request/g;)V

    return-object p0
.end method

.method public c()V
    .registers 2

    .line 220
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/m;->g:Lcom/bumptech/glide/d/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/n;->c()V

    return-void
.end method

.method public d()V
    .registers 3

    .line 241
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 242
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->b()V

    .line 243
    iget-object v0, p0, Lcom/bumptech/glide/m;->h:Lcom/bumptech/glide/d/m;

    invoke-interface {v0}, Lcom/bumptech/glide/d/m;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/m;

    .line 244
    invoke-virtual {v1}, Lcom/bumptech/glide/m;->b()V

    goto :goto_10

    :cond_20
    return-void
.end method

.method public e()V
    .registers 2

    .line 255
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 256
    iget-object v0, p0, Lcom/bumptech/glide/m;->g:Lcom/bumptech/glide/d/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/n;->d()V

    return-void
.end method

.method public f()V
    .registers 3

    .line 267
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 268
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->e()V

    .line 269
    iget-object v0, p0, Lcom/bumptech/glide/m;->h:Lcom/bumptech/glide/d/m;

    invoke-interface {v0}, Lcom/bumptech/glide/d/m;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/m;

    .line 270
    invoke-virtual {v1}, Lcom/bumptech/glide/m;->e()V

    goto :goto_10

    :cond_20
    return-void
.end method

.method public g()V
    .registers 2

    .line 281
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->e()V

    .line 282
    iget-object v0, p0, Lcom/bumptech/glide/m;->i:Lcom/bumptech/glide/d/p;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/p;->g()V

    return-void
.end method

.method public h()V
    .registers 2

    .line 291
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->b()V

    .line 292
    iget-object v0, p0, Lcom/bumptech/glide/m;->i:Lcom/bumptech/glide/d/p;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/p;->h()V

    return-void
.end method

.method public i()V
    .registers 3

    .line 301
    iget-object v0, p0, Lcom/bumptech/glide/m;->i:Lcom/bumptech/glide/d/p;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/p;->i()V

    .line 302
    iget-object v0, p0, Lcom/bumptech/glide/m;->i:Lcom/bumptech/glide/d/p;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/p;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/a/o;

    .line 303
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/request/a/o;)V

    goto :goto_f

    .line 305
    :cond_1f
    iget-object v0, p0, Lcom/bumptech/glide/m;->i:Lcom/bumptech/glide/d/p;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/p;->b()V

    .line 306
    iget-object v0, p0, Lcom/bumptech/glide/m;->g:Lcom/bumptech/glide/d/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/n;->e()V

    .line 307
    iget-object v0, p0, Lcom/bumptech/glide/m;->c:Lcom/bumptech/glide/d/h;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/d/h;->b(Lcom/bumptech/glide/d/i;)V

    .line 308
    iget-object v0, p0, Lcom/bumptech/glide/m;->c:Lcom/bumptech/glide/d/h;

    iget-object v1, p0, Lcom/bumptech/glide/m;->l:Lcom/bumptech/glide/d/c;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/d/h;->b(Lcom/bumptech/glide/d/i;)V

    .line 309
    iget-object v0, p0, Lcom/bumptech/glide/m;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bumptech/glide/m;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 310
    iget-object v0, p0, Lcom/bumptech/glide/m;->a:Lcom/bumptech/glide/f;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/m;)V

    return-void
.end method

.method public j()Lcom/bumptech/glide/l;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 322
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;)Lcom/bumptech/glide/l;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/bumptech/glide/l;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/l<",
            "Lcom/bumptech/glide/load/resource/d/c;",
            ">;"
        }
    .end annotation

    .line 341
    const-class v0, Lcom/bumptech/glide/load/resource/d/c;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;)Lcom/bumptech/glide/l;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/m;->e:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/bumptech/glide/l;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/l<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 357
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;)Lcom/bumptech/glide/l;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/bumptech/glide/l;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/l<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 486
    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;)Lcom/bumptech/glide/l;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/m;->f:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/bumptech/glide/l;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/l<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 513
    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;)Lcom/bumptech/glide/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/bumptech/glide/request/g;->a(Z)Lcom/bumptech/glide/request/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;

    move-result-object v0

    return-object v0
.end method

.method o()Lcom/bumptech/glide/request/g;
    .registers 2

    .line 618
    iget-object v0, p0, Lcom/bumptech/glide/m;->m:Lcom/bumptech/glide/request/g;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/m;->g:Lcom/bumptech/glide/d/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/m;->h:Lcom/bumptech/glide/d/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.m.AnonymousClass1 (com.bumptech.glide.m$1)
.class Lcom/bumptech/glide/m$1;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/m;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/m;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/bumptech/glide/m$1;->a:Lcom/bumptech/glide/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/m$1;->a:Lcom/bumptech/glide/m;

    iget-object v0, v0, Lcom/bumptech/glide/m;->c:Lcom/bumptech/glide/d/h;

    iget-object v1, p0, Lcom/bumptech/glide/m$1;->a:Lcom/bumptech/glide/m;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/d/h;->a(Lcom/bumptech/glide/d/i;)V

    return-void
.end method

###### Class com.bumptech.glide.m.AnonymousClass2 (com.bumptech.glide.m$2)
.class Lcom/bumptech/glide/m$2;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/request/a/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/request/a/o;

.field final synthetic b:Lcom/bumptech/glide/m;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/m;Lcom/bumptech/glide/request/a/o;)V
    .registers 3

    .line 561
    iput-object p1, p0, Lcom/bumptech/glide/m$2;->b:Lcom/bumptech/glide/m;

    iput-object p2, p0, Lcom/bumptech/glide/m$2;->a:Lcom/bumptech/glide/request/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 564
    iget-object v0, p0, Lcom/bumptech/glide/m$2;->b:Lcom/bumptech/glide/m;

    iget-object v1, p0, Lcom/bumptech/glide/m$2;->a:Lcom/bumptech/glide/request/a/o;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/request/a/o;)V

    return-void
.end method

###### Class com.bumptech.glide.m.a (com.bumptech.glide.m$a)
.class Lcom/bumptech/glide/m$a;
.super Lcom/bumptech/glide/request/a/q;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/a/q<",
        "Landroid/view/View;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 650
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a/q;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/request/b/f;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
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
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/b/f<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

###### Class com.bumptech.glide.m.b (com.bumptech.glide.m$b)
.class Lcom/bumptech/glide/m$b;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/d/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/d/n;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/d/n;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/d/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p1, p0, Lcom/bumptech/glide/m$b;->a:Lcom/bumptech/glide/d/n;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    if-eqz p1, :cond_7

    .line 642
    iget-object p1, p0, Lcom/bumptech/glide/m$b;->a:Lcom/bumptech/glide/d/n;

    invoke-virtual {p1}, Lcom/bumptech/glide/d/n;->f()V

    :cond_7
    return-void
.end method
