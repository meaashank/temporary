###### Class com.bumptech.glide.request.i (com.bumptech.glide.request.i)
.class public Lcom/bumptech/glide/request/i;
.super Ljava/lang/Object;
.source "ThumbnailRequestCoordinator.java"

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

.field private d:Z


# direct methods
.method constructor <init>()V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/i;-><init>(Lcom/bumptech/glide/request/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/request/d;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/bumptech/glide/request/i;->a:Lcom/bumptech/glide/request/d;

    return-void
.end method

.method private j()Z
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->a:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->a:Lcom/bumptech/glide/request/d;

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

    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->a:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->a:Lcom/bumptech/glide/request/d;

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

    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->a:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->a:Lcom/bumptech/glide/request/d;

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

    .line 104
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->a:Lcom/bumptech/glide/request/d;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->a:Lcom/bumptech/glide/request/d;

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

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/bumptech/glide/request/i;->d:Z

    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->d()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->c()Z

    move-result v0

    if-nez v0, :cond_18

    .line 116
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->a()V

    .line 118
    :cond_18
    iget-boolean v0, p0, Lcom/bumptech/glide/request/i;->d:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->c()Z

    move-result v0

    if-nez v0, :cond_29

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->a()V

    :cond_29
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/c;)V
    .registers 3

    .line 28
    iput-object p1, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    .line 29
    iput-object p2, p0, Lcom/bumptech/glide/request/i;->c:Lcom/bumptech/glide/request/c;

    return-void
.end method

.method public a(Lcom/bumptech/glide/request/c;)Z
    .registers 5

    .line 172
    instance-of v0, p1, Lcom/bumptech/glide/request/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 173
    check-cast p1, Lcom/bumptech/glide/request/i;

    .line 174
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    if-nez v0, :cond_10

    iget-object v0, p1, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    if-nez v0, :cond_2e

    goto :goto_1a

    :cond_10
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    iget-object v2, p1, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/c;->a(Lcom/bumptech/glide/request/c;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :goto_1a
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Lcom/bumptech/glide/request/c;

    if-nez v0, :cond_23

    iget-object p1, p1, Lcom/bumptech/glide/request/i;->c:Lcom/bumptech/glide/request/c;

    if-nez p1, :cond_2e

    goto :goto_2d

    :cond_23
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Lcom/bumptech/glide/request/c;

    iget-object p1, p1, Lcom/bumptech/glide/request/i;->c:Lcom/bumptech/glide/request/c;

    .line 175
    invoke-interface {v0, p1}, Lcom/bumptech/glide/request/c;->a(Lcom/bumptech/glide/request/c;)Z

    move-result p1

    if-eqz p1, :cond_2e

    :goto_2d
    const/4 v1, 0x1

    :cond_2e
    return v1

    :cond_2f
    return v1
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/bumptech/glide/request/i;->d:Z

    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->b()V

    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->b()V

    return-void
.end method

.method public b(Lcom/bumptech/glide/request/c;)Z
    .registers 3

    .line 40
    invoke-direct {p0}, Lcom/bumptech/glide/request/i;->j()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {p1}, Lcom/bumptech/glide/request/c;->e()Z

    move-result p1

    if-nez p1, :cond_18

    :cond_16
    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public c()Z
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->c()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/bumptech/glide/request/c;)Z
    .registers 3

    .line 55
    invoke-direct {p0}, Lcom/bumptech/glide/request/i;->l()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/bumptech/glide/request/i;->i()Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public d()Z
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->d()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public d(Lcom/bumptech/glide/request/c;)Z
    .registers 3

    .line 60
    invoke-direct {p0}, Lcom/bumptech/glide/request/i;->k()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public e(Lcom/bumptech/glide/request/c;)V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 81
    :cond_9
    iget-object p1, p0, Lcom/bumptech/glide/request/i;->a:Lcom/bumptech/glide/request/d;

    if-eqz p1, :cond_12

    .line 82
    iget-object p1, p0, Lcom/bumptech/glide/request/i;->a:Lcom/bumptech/glide/request/d;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/d;->e(Lcom/bumptech/glide/request/c;)V

    .line 87
    :cond_12
    iget-object p1, p0, Lcom/bumptech/glide/request/i;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {p1}, Lcom/bumptech/glide/request/c;->d()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 88
    iget-object p1, p0, Lcom/bumptech/glide/request/i;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {p1}, Lcom/bumptech/glide/request/c;->b()V

    :cond_1f
    return-void
.end method

.method public e()Z
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->e()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->e()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public f(Lcom/bumptech/glide/request/c;)V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 98
    :cond_9
    iget-object p1, p0, Lcom/bumptech/glide/request/i;->a:Lcom/bumptech/glide/request/d;

    if-eqz p1, :cond_12

    .line 99
    iget-object p1, p0, Lcom/bumptech/glide/request/i;->a:Lcom/bumptech/glide/request/d;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/d;->f(Lcom/bumptech/glide/request/c;)V

    :cond_12
    return-void
.end method

.method public f()Z
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->f()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->g()Z

    move-result v0

    return v0
.end method

.method public h()V
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->b:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->h()V

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/request/i;->c:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->h()V

    return-void
.end method

.method public i()Z
    .registers 2

    .line 73
    invoke-direct {p0}, Lcom/bumptech/glide/request/i;->m()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/bumptech/glide/request/i;->e()Z

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
