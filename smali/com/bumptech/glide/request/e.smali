###### Class com.bumptech.glide.request.e (com.bumptech.glide.request.e)
.class public Lcom/bumptech/glide/request/e;
.super Ljava/lang/Object;
.source "RequestFutureTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/b;
.implements Lcom/bumptech/glide/request/f;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/b<",
        "TR;>;",
        "Lcom/bumptech/glide/request/f<",
        "TR;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/request/e$a;


# instance fields
.field private final b:Landroid/os/Handler;

.field private final d:I

.field private final e:I

.field private final f:Z

.field private final g:Lcom/bumptech/glide/request/e$a;

.field private h:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private i:Lcom/bumptech/glide/request/c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/bumptech/glide/load/engine/GlideException;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Lcom/bumptech/glide/request/e$a;

    invoke-direct {v0}, Lcom/bumptech/glide/request/e$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/e;->a:Lcom/bumptech/glide/request/e$a;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;II)V
    .registers 10

    .line 77
    sget-object v5, Lcom/bumptech/glide/request/e;->a:Lcom/bumptech/glide/request/e$a;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/request/e;-><init>(Landroid/os/Handler;IIZLcom/bumptech/glide/request/e$a;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;IIZLcom/bumptech/glide/request/e$a;)V
    .registers 6

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/bumptech/glide/request/e;->b:Landroid/os/Handler;

    .line 83
    iput p2, p0, Lcom/bumptech/glide/request/e;->d:I

    .line 84
    iput p3, p0, Lcom/bumptech/glide/request/e;->e:I

    .line 85
    iput-boolean p4, p0, Lcom/bumptech/glide/request/e;->f:Z

    .line 86
    iput-object p5, p0, Lcom/bumptech/glide/request/e;->g:Lcom/bumptech/glide/request/e$a;

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Long;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TR;"
        }
    .end annotation

    monitor-enter p0

    .line 186
    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->f:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->isDone()Z

    move-result v0

    if-nez v0, :cond_e

    .line 187
    invoke-static {}, Lcom/bumptech/glide/h/l;->b()V

    .line 190
    :cond_e
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->j:Z

    if-nez v0, :cond_89

    .line 192
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->l:Z

    if-nez v0, :cond_81

    .line 194
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->k:Z

    if-eqz v0, :cond_1e

    .line 195
    iget-object p1, p0, Lcom/bumptech/glide/request/e;->h:Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_8f

    monitor-exit p0

    return-object p1

    :cond_1e
    const-wide/16 v0, 0x0

    if-nez p1, :cond_28

    .line 199
    :try_start_22
    iget-object p1, p0, Lcom/bumptech/glide/request/e;->g:Lcom/bumptech/glide/request/e$a;

    invoke-virtual {p1, p0, v0, v1}, Lcom/bumptech/glide/request/e$a;->a(Ljava/lang/Object;J)V

    goto :goto_51

    .line 200
    :cond_28
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_51

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 202
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p1, 0x0

    add-long/2addr v2, v0

    .line 203
    :goto_3a
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->isDone()Z

    move-result p1

    if-nez p1, :cond_51

    cmp-long p1, v0, v2

    if-gez p1, :cond_51

    .line 204
    iget-object p1, p0, Lcom/bumptech/glide/request/e;->g:Lcom/bumptech/glide/request/e$a;

    const/4 v4, 0x0

    sub-long v0, v2, v0

    invoke-virtual {p1, p0, v0, v1}, Lcom/bumptech/glide/request/e$a;->a(Ljava/lang/Object;J)V

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_3a

    .line 209
    :cond_51
    :goto_51
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-nez p1, :cond_7b

    .line 211
    iget-boolean p1, p0, Lcom/bumptech/glide/request/e;->l:Z

    if-nez p1, :cond_73

    .line 213
    iget-boolean p1, p0, Lcom/bumptech/glide/request/e;->j:Z

    if-nez p1, :cond_6d

    .line 215
    iget-boolean p1, p0, Lcom/bumptech/glide/request/e;->k:Z

    if-eqz p1, :cond_67

    .line 219
    iget-object p1, p0, Lcom/bumptech/glide/request/e;->h:Ljava/lang/Object;
    :try_end_65
    .catchall {:try_start_22 .. :try_end_65} :catchall_8f

    monitor-exit p0

    return-object p1

    .line 216
    :cond_67
    :try_start_67
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 214
    :cond_6d
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1

    .line 212
    :cond_73
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->m:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 210
    :cond_7b
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 193
    :cond_81
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/bumptech/glide/request/e;->m:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 191
    :cond_89
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1
    :try_end_8f
    .catchall {:try_start_67 .. :try_end_8f} :catchall_8f

    :catchall_8f
    move-exception p1

    .line 185
    monitor-exit p0

    throw p1
.end method

.method private b()V
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/request/c;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->i:Lcom/bumptech/glide/request/c;

    return-object v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public a(Lcom/bumptech/glide/request/a/n;)V
    .registers 4
    .param p1    # Lcom/bumptech/glide/request/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 132
    iget v0, p0, Lcom/bumptech/glide/request/e;->d:I

    iget v1, p0, Lcom/bumptech/glide/request/e;->e:I

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/a/n;->a(II)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/request/c;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 142
    iput-object p1, p0, Lcom/bumptech/glide/request/e;->i:Lcom/bumptech/glide/request/c;

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Object;Lcom/bumptech/glide/request/b/f;)V
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
            "(TR;",
            "Lcom/bumptech/glide/request/b/f<",
            "-TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 182
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/a/o;Z)Z
    .registers 5
    .param p1    # Lcom/bumptech/glide/load/engine/GlideException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/a/o<",
            "TR;>;Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    .line 255
    :try_start_2
    iput-boolean p2, p0, Lcom/bumptech/glide/request/e;->l:Z

    .line 256
    iput-object p1, p0, Lcom/bumptech/glide/request/e;->m:Lcom/bumptech/glide/load/engine/GlideException;

    .line 257
    iget-object p1, p0, Lcom/bumptech/glide/request/e;->g:Lcom/bumptech/glide/request/e$a;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/request/e$a;->a(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_e

    const/4 p1, 0x0

    .line 258
    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    .line 254
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/a/o<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    .line 265
    :try_start_2
    iput-boolean p2, p0, Lcom/bumptech/glide/request/e;->k:Z

    .line 266
    iput-object p1, p0, Lcom/bumptech/glide/request/e;->h:Ljava/lang/Object;

    .line 267
    iget-object p1, p0, Lcom/bumptech/glide/request/e;->g:Lcom/bumptech/glide/request/e$a;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/request/e$a;->a(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_e

    const/4 p1, 0x0

    .line 268
    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    .line 264
    monitor-exit p0

    throw p1
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public b(Lcom/bumptech/glide/request/a/n;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public declared-synchronized c(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 173
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized cancel(Z)Z
    .registers 4

    monitor-enter p0

    .line 91
    :try_start_1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/e;->isDone()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_19

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    .line 92
    monitor-exit p0

    return p1

    :cond_a
    const/4 v0, 0x1

    .line 94
    :try_start_b
    iput-boolean v0, p0, Lcom/bumptech/glide/request/e;->j:Z

    .line 95
    iget-object v1, p0, Lcom/bumptech/glide/request/e;->g:Lcom/bumptech/glide/request/e$a;

    invoke-virtual {v1, p0}, Lcom/bumptech/glide/request/e$a;->a(Ljava/lang/Object;)V

    if-eqz p1, :cond_17

    .line 97
    invoke-direct {p0}, Lcom/bumptech/glide/request/e;->b()V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_19

    .line 99
    :cond_17
    monitor-exit p0

    return v0

    :catchall_19
    move-exception p1

    .line 90
    monitor-exit p0

    throw p1
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 115
    :try_start_1
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/e;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .line 124
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/e;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()V
    .registers 1

    return-void
.end method

.method public i()V
    .registers 1

    return-void
.end method

.method public declared-synchronized isCancelled()Z
    .registers 2

    monitor-enter p0

    .line 104
    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    monitor-enter p0

    .line 109
    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->j:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->k:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/bumptech/glide/request/e;->l:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->i:Lcom/bumptech/glide/request/c;

    if-eqz v0, :cond_c

    .line 228
    iget-object v0, p0, Lcom/bumptech/glide/request/e;->i:Lcom/bumptech/glide/request/c;

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->b()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/bumptech/glide/request/e;->i:Lcom/bumptech/glide/request/c;

    :cond_c
    return-void
.end method

###### Class com.bumptech.glide.request.e.a (com.bumptech.glide.request.e$a)
.class Lcom/bumptech/glide/request/e$a;
.super Ljava/lang/Object;
.source "RequestFutureTarget.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)V
    .registers 2

    .line 281
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method a(Ljava/lang/Object;J)V
    .registers 4

    .line 277
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V

    return-void
.end method
