###### Class com.bumptech.glide.request.a (com.bumptech.glide.request.a)
.class public final Lcom/bumptech/glide/request/a;
.super Ljava/lang/Object;
.source "ErrorRequestCoordinator.java"

# interfaces
.implements Lcom/bumptech/glide/request/c;
.implements Lcom/bumptech/glide/request/d;


# instance fields
.field private final a:Lcom/bumptech/glide/request/d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/bumptech/glide/request/c;

.field private c:Lcom/bumptech/glide/request/c;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/d;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/d;

    return-void
.end method

.method private g(Lcom/bumptech/glide/request/c;)Z
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->g()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method private j()Z
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/d;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/d;->b(Lcom/bumptech/glide/request/c;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private k()Z
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/d;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/d;->d(Lcom/bumptech/glide/request/c;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private l()Z
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/d;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/d;->c(Lcom/bumptech/glide/request/c;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private m()Z
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/d;

    invoke-interface {v0}, Lcom/bumptech/glide/request/d;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->c()Z

    move-result v0

    if-nez v0, :cond_d

    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->a()V

    :cond_d
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/c;)V
    .registers 3

    .line 22
    iput-object p1, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    .line 23
    iput-object p2, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/c;

    return-void
.end method

.method public a(Lcom/bumptech/glide/request/c;)Z
    .registers 5

    .line 76
    instance-of v0, p1, Lcom/bumptech/glide/request/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 77
    check-cast p1, Lcom/bumptech/glide/request/a;

    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    iget-object v2, p1, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/c;->a(Lcom/bumptech/glide/request/c;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/c;

    iget-object p1, p1, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/request/c;->a(Lcom/bumptech/glide/request/c;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1

    :cond_1d
    return v1
.end method

.method public b()V
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->b()V

    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 39
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->b()V

    :cond_12
    return-void
.end method

.method public b(Lcom/bumptech/glide/request/c;)Z
    .registers 3

    .line 85
    invoke-direct {p0}, Lcom/bumptech/glide/request/a;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a;->g(Lcom/bumptech/glide/request/c;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public c()Z
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/c;

    :goto_a
    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->c()Z

    move-result v0

    goto :goto_12

    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    goto :goto_a

    :goto_12
    return v0
.end method

.method public c(Lcom/bumptech/glide/request/c;)Z
    .registers 3

    .line 94
    invoke-direct {p0}, Lcom/bumptech/glide/request/a;->l()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a;->g(Lcom/bumptech/glide/request/c;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public d()Z
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/c;

    :goto_a
    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->d()Z

    move-result v0

    goto :goto_12

    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    goto :goto_a

    :goto_12
    return v0
.end method

.method public d(Lcom/bumptech/glide/request/c;)Z
    .registers 3

    .line 99
    invoke-direct {p0}, Lcom/bumptech/glide/request/a;->k()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a;->g(Lcom/bumptech/glide/request/c;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public e(Lcom/bumptech/glide/request/c;)V
    .registers 2

    .line 125
    iget-object p1, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/d;

    if-eqz p1, :cond_9

    .line 126
    iget-object p1, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/d;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/d;->e(Lcom/bumptech/glide/request/c;)V

    :cond_9
    return-void
.end method

.method public e()Z
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/c;

    :goto_a
    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->e()Z

    move-result v0

    goto :goto_12

    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    goto :goto_a

    :goto_12
    return v0
.end method

.method public f(Lcom/bumptech/glide/request/c;)V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 133
    iget-object p1, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {p1}, Lcom/bumptech/glide/request/c;->c()Z

    move-result p1

    if-nez p1, :cond_15

    .line 134
    iget-object p1, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {p1}, Lcom/bumptech/glide/request/c;->a()V

    :cond_15
    return-void

    .line 139
    :cond_16
    iget-object p1, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/d;

    if-eqz p1, :cond_1f

    .line 140
    iget-object p1, p0, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/d;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/d;->f(Lcom/bumptech/glide/request/c;)V

    :cond_1f
    return-void
.end method

.method public f()Z
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/c;

    :goto_a
    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->f()Z

    move-result v0

    goto :goto_12

    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    goto :goto_a

    :goto_12
    return v0
.end method

.method public g()Z
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public h()V
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->h()V

    .line 71
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->h()V

    return-void
.end method

.method public i()Z
    .registers 2

    .line 116
    invoke-direct {p0}, Lcom/bumptech/glide/request/a;->m()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
