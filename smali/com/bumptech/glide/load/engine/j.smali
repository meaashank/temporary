###### Class com.bumptech.glide.load.engine.j (com.bumptech.glide.load.engine.j)
.class Lcom/bumptech/glide/load/engine/j;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lcom/bumptech/glide/h/a/a$c;
.implements Lcom/bumptech/glide/load/engine/DecodeJob$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/j$b;,
        Lcom/bumptech/glide/load/engine/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/h/a/a$c;",
        "Lcom/bumptech/glide/load/engine/DecodeJob$a<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/engine/j$a;

.field private static final b:Landroid/os/Handler;

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3


# instance fields
.field private A:Lcom/bumptech/glide/load/engine/DecodeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation
.end field

.field private volatile B:Z

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/h;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/bumptech/glide/h/a/c;

.field private final h:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/bumptech/glide/load/engine/j$a;

.field private final j:Lcom/bumptech/glide/load/engine/k;

.field private final k:Lcom/bumptech/glide/load/engine/b/a;

.field private final l:Lcom/bumptech/glide/load/engine/b/a;

.field private final m:Lcom/bumptech/glide/load/engine/b/a;

.field private final n:Lcom/bumptech/glide/load/engine/b/a;

.field private o:Lcom/bumptech/glide/load/c;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/bumptech/glide/load/engine/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/s<",
            "*>;"
        }
    .end annotation
.end field

.field private u:Lcom/bumptech/glide/load/DataSource;

.field private v:Z

.field private w:Lcom/bumptech/glide/load/engine/GlideException;

.field private x:Z

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/h;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/bumptech/glide/load/engine/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 26
    new-instance v0, Lcom/bumptech/glide/load/engine/j$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/j$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/j;->a:Lcom/bumptech/glide/load/engine/j$a;

    .line 27
    new-instance v0, Landroid/os/Handler;

    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/j$b;

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/j$b;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/load/engine/j;->b:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/k;Landroid/support/v4/util/Pools$Pool;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/b/a;",
            "Lcom/bumptech/glide/load/engine/b/a;",
            "Lcom/bumptech/glide/load/engine/b/a;",
            "Lcom/bumptech/glide/load/engine/b/a;",
            "Lcom/bumptech/glide/load/engine/k;",
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;>;)V"
        }
    .end annotation

    .line 72
    sget-object v7, Lcom/bumptech/glide/load/engine/j;->a:Lcom/bumptech/glide/load/engine/j$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/engine/j;-><init>(Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/k;Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/load/engine/j$a;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/b/a;Lcom/bumptech/glide/load/engine/k;Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/load/engine/j$a;)V
    .registers 10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/b/a;",
            "Lcom/bumptech/glide/load/engine/b/a;",
            "Lcom/bumptech/glide/load/engine/b/a;",
            "Lcom/bumptech/glide/load/engine/b/a;",
            "Lcom/bumptech/glide/load/engine/k;",
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;>;",
            "Lcom/bumptech/glide/load/engine/j$a;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j;->f:Ljava/util/List;

    .line 37
    invoke-static {}, Lcom/bumptech/glide/h/a/c;->a()Lcom/bumptech/glide/h/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j;->g:Lcom/bumptech/glide/h/a/c;

    .line 91
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/j;->k:Lcom/bumptech/glide/load/engine/b/a;

    .line 92
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/j;->l:Lcom/bumptech/glide/load/engine/b/a;

    .line 93
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/j;->m:Lcom/bumptech/glide/load/engine/b/a;

    .line 94
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/j;->n:Lcom/bumptech/glide/load/engine/b/a;

    .line 95
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/j;->j:Lcom/bumptech/glide/load/engine/k;

    .line 96
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/j;->h:Landroid/support/v4/util/Pools$Pool;

    .line 97
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/j;->i:Lcom/bumptech/glide/load/engine/j$a;

    return-void
.end method

.method private a(Z)V
    .registers 4

    .line 238
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 239
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j;->o:Lcom/bumptech/glide/load/c;

    .line 241
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j;->z:Lcom/bumptech/glide/load/engine/n;

    .line 242
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j;->t:Lcom/bumptech/glide/load/engine/s;

    .line 243
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/j;->y:Ljava/util/List;

    if-eqz v1, :cond_18

    .line 244
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/j;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_18
    const/4 v1, 0x0

    .line 246
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/j;->x:Z

    .line 247
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/j;->B:Z

    .line 248
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/j;->v:Z

    .line 249
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/j;->A:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Z)V

    .line 250
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j;->A:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 251
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j;->w:Lcom/bumptech/glide/load/engine/GlideException;

    .line 252
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j;->u:Lcom/bumptech/glide/load/DataSource;

    .line 253
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/j;->h:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {p1, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private c(Lcom/bumptech/glide/request/h;)V
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->y:Ljava/util/List;

    if-nez v0, :cond_c

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j;->y:Ljava/util/List;

    .line 166
    :cond_c
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    return-void
.end method

.method private d(Lcom/bumptech/glide/request/h;)Z
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->y:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private h()Lcom/bumptech/glide/load/engine/b/a;
    .registers 2

    .line 153
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->q:Z

    if-eqz v0, :cond_7

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->m:Lcom/bumptech/glide/load/engine/b/a;

    goto :goto_10

    :cond_7
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->r:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->n:Lcom/bumptech/glide/load/engine/b/a;

    goto :goto_10

    :cond_e
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->l:Lcom/bumptech/glide/load/engine/b/a;

    :goto_10
    return-object v0
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/c;ZZZZ)Lcom/bumptech/glide/load/engine/j;
    .registers 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/j<",
            "TR;>;"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/j;->o:Lcom/bumptech/glide/load/c;

    .line 108
    iput-boolean p2, p0, Lcom/bumptech/glide/load/engine/j;->p:Z

    .line 109
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/j;->q:Z

    .line 110
    iput-boolean p4, p0, Lcom/bumptech/glide/load/engine/j;->r:Z

    .line 111
    iput-boolean p5, p0, Lcom/bumptech/glide/load/engine/j;->s:Z

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;)V"
        }
    .end annotation

    .line 273
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/j;->h()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/b/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/GlideException;)V
    .registers 3

    .line 265
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/j;->w:Lcom/bumptech/glide/load/engine/GlideException;

    .line 266
    sget-object p1, Lcom/bumptech/glide/load/engine/j;->b:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/s;Lcom/bumptech/glide/load/DataSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/s<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/j;->t:Lcom/bumptech/glide/load/engine/s;

    .line 259
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/j;->u:Lcom/bumptech/glide/load/DataSource;

    .line 260
    sget-object p1, Lcom/bumptech/glide/load/engine/j;->b:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method a(Lcom/bumptech/glide/request/h;)V
    .registers 4

    .line 124
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 125
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->g:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/a/c;->b()V

    .line 126
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->v:Z

    if-eqz v0, :cond_14

    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->z:Lcom/bumptech/glide/load/engine/n;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/j;->u:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/h;->a(Lcom/bumptech/glide/load/engine/s;Lcom/bumptech/glide/load/DataSource;)V

    goto :goto_23

    .line 128
    :cond_14
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->x:Z

    if-eqz v0, :cond_1e

    .line 129
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->w:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/h;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    goto :goto_23

    .line 131
    :cond_1e
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_23
    return-void
.end method

.method a()Z
    .registers 2

    .line 149
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->s:Z

    return v0
.end method

.method b()V
    .registers 3

    .line 177
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->x:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->v:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->B:Z

    if-eqz v0, :cond_d

    goto :goto_1d

    :cond_d
    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->B:Z

    .line 182
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->A:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->b()V

    .line 185
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->j:Lcom/bumptech/glide/load/engine/k;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/j;->o:Lcom/bumptech/glide/load/c;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/k;->a(Lcom/bumptech/glide/load/engine/j;Lcom/bumptech/glide/load/c;)V

    return-void

    :cond_1d
    :goto_1d
    return-void
.end method

.method public b(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;)V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/j;->A:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 117
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->k:Lcom/bumptech/glide/load/engine/b/a;

    goto :goto_f

    .line 119
    :cond_b
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/j;->h()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v0

    .line 120
    :goto_f
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/b/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method b(Lcom/bumptech/glide/request/h;)V
    .registers 3

    .line 136
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->g:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/a/c;->b()V

    .line 138
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->v:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->x:Z

    if-eqz v0, :cond_11

    goto :goto_22

    .line 141
    :cond_11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/j;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 143
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/j;->b()V

    goto :goto_25

    .line 139
    :cond_22
    :goto_22
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/j;->c(Lcom/bumptech/glide/request/h;)V

    :cond_25
    :goto_25
    return-void
.end method

.method c()Z
    .registers 2

    .line 190
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->B:Z

    return v0
.end method

.method e()V
    .registers 7

    .line 195
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->g:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/a/c;->b()V

    .line 196
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->B:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 197
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->t:Lcom/bumptech/glide/load/engine/s;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/s;->f()V

    .line 198
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/j;->a(Z)V

    return-void

    .line 200
    :cond_13
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    .line 202
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->v:Z

    if-nez v0, :cond_6b

    .line 205
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->i:Lcom/bumptech/glide/load/engine/j$a;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/j;->t:Lcom/bumptech/glide/load/engine/s;

    iget-boolean v3, p0, Lcom/bumptech/glide/load/engine/j;->p:Z

    invoke-virtual {v0, v2, v3}, Lcom/bumptech/glide/load/engine/j$a;->a(Lcom/bumptech/glide/load/engine/s;Z)Lcom/bumptech/glide/load/engine/n;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j;->z:Lcom/bumptech/glide/load/engine/n;

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->v:Z

    .line 210
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->z:Lcom/bumptech/glide/load/engine/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/n;->g()V

    .line 211
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->j:Lcom/bumptech/glide/load/engine/k;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/j;->o:Lcom/bumptech/glide/load/c;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/j;->z:Lcom/bumptech/glide/load/engine/n;

    invoke-interface {v0, p0, v2, v3}, Lcom/bumptech/glide/load/engine/k;->a(Lcom/bumptech/glide/load/engine/j;Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/n;)V

    .line 214
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_43
    if-ge v2, v0, :cond_62

    .line 215
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/j;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/request/h;

    .line 216
    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/j;->d(Lcom/bumptech/glide/request/h;)Z

    move-result v4

    if-nez v4, :cond_5f

    .line 217
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/j;->z:Lcom/bumptech/glide/load/engine/n;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/n;->g()V

    .line 218
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/j;->z:Lcom/bumptech/glide/load/engine/n;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/j;->u:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v3, v4, v5}, Lcom/bumptech/glide/request/h;->a(Lcom/bumptech/glide/load/engine/s;Lcom/bumptech/glide/load/DataSource;)V

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 222
    :cond_62
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->z:Lcom/bumptech/glide/load/engine/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/n;->h()V

    .line 224
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/j;->a(Z)V

    return-void

    .line 203
    :cond_6b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method f()V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->g:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/a/c;->b()V

    .line 230
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->B:Z

    if-eqz v0, :cond_15

    .line 233
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->j:Lcom/bumptech/glide/load/engine/k;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/j;->o:Lcom/bumptech/glide/load/c;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/k;->a(Lcom/bumptech/glide/load/engine/j;Lcom/bumptech/glide/load/c;)V

    const/4 v0, 0x0

    .line 234
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/j;->a(Z)V

    return-void

    .line 231
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method g()V
    .registers 5

    .line 278
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->g:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/a/c;->b()V

    .line 279
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->B:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 280
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/j;->a(Z)V

    return-void

    .line 282
    :cond_e
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 284
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->x:Z

    if-nez v0, :cond_47

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/j;->x:Z

    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->j:Lcom/bumptech/glide/load/engine/k;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/j;->o:Lcom/bumptech/glide/load/c;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v2, v3}, Lcom/bumptech/glide/load/engine/k;->a(Lcom/bumptech/glide/load/engine/j;Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/n;)V

    .line 291
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/h;

    .line 292
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/j;->d(Lcom/bumptech/glide/request/h;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 293
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/j;->w:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {v2, v3}, Lcom/bumptech/glide/request/h;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    goto :goto_2b

    .line 297
    :cond_43
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/j;->a(Z)V

    return-void

    .line 285
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n_()Lcom/bumptech/glide/h/a/c;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->g:Lcom/bumptech/glide/h/a/c;

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.j.a (com.bumptech.glide.load.engine.j$a)
.class Lcom/bumptech/glide/load/engine/j$a;
.super Ljava/lang/Object;
.source "EngineJob.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/s;Z)Lcom/bumptech/glide/load/engine/n;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/s<",
            "TR;>;Z)",
            "Lcom/bumptech/glide/load/engine/n<",
            "TR;>;"
        }
    .end annotation

    .line 309
    new-instance v0, Lcom/bumptech/glide/load/engine/n;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/bumptech/glide/load/engine/n;-><init>(Lcom/bumptech/glide/load/engine/s;ZZ)V

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.j.b (com.bumptech.glide.load.engine.j$b)
.class Lcom/bumptech/glide/load/engine/j$b;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 321
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/j;

    .line 322
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_30

    .line 333
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :pswitch_22
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/j;->f()V

    goto :goto_2d

    .line 327
    :pswitch_26
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/j;->g()V

    goto :goto_2d

    .line 324
    :pswitch_2a
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/j;->e()V

    :goto_2d
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_26
        :pswitch_22
    .end packed-switch
.end method
