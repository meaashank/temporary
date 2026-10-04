###### Class com.bumptech.glide.load.engine.b.a (com.bumptech.glide.load.engine.b.a)
.class public final Lcom/bumptech/glide/load/engine/b/a;
.super Ljava/lang/Object;
.source "GlideExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/b/a$a;,
        Lcom/bumptech/glide/load/engine/b/a$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "source"

.field private static final b:Ljava/lang/String; = "disk-cache"

.field private static final c:I = 0x1

.field private static final d:Ljava/lang/String; = "GlideExecutor"

.field private static final e:Ljava/lang/String; = "source-unlimited"

.field private static final f:Ljava/lang/String; = "animation"

.field private static final g:J

.field private static final h:I = 0x4

.field private static volatile i:I


# instance fields
.field private final j:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bumptech/glide/load/engine/b/a;->g:J

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/a;->j:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/bumptech/glide/load/engine/b/a;
    .registers 3

    const-string v0, "disk-cache"

    .line 78
    sget-object v1, Lcom/bumptech/glide/load/engine/b/a$b;->d:Lcom/bumptech/glide/load/engine/b/a$b;

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/bumptech/glide/load/engine/b/a;->a(ILjava/lang/String;Lcom/bumptech/glide/load/engine/b/a$b;)Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILcom/bumptech/glide/load/engine/b/a$b;)Lcom/bumptech/glide/load/engine/b/a;
    .registers 12

    .line 248
    new-instance v0, Lcom/bumptech/glide/load/engine/b/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v4, Lcom/bumptech/glide/load/engine/b/a;->g:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/engine/b/a$a;

    const-string v1, "animation"

    const/4 v2, 0x1

    invoke-direct {v8, v1, p1, v2}, Lcom/bumptech/glide/load/engine/b/a$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/b/a$b;Z)V

    const/4 v2, 0x0

    move-object v1, v9

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/engine/b/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;Lcom/bumptech/glide/load/engine/b/a$b;)Lcom/bumptech/glide/load/engine/b/a;
    .registers 13

    .line 122
    new-instance v0, Lcom/bumptech/glide/load/engine/b/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/engine/b/a$a;

    const/4 v1, 0x1

    invoke-direct {v8, p1, p2, v1}, Lcom/bumptech/glide/load/engine/b/a$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/b/a$b;Z)V

    const-wide/16 v4, 0x0

    move-object v1, v9

    move v2, p0

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/engine/b/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static a(Lcom/bumptech/glide/load/engine/b/a$b;)Lcom/bumptech/glide/load/engine/b/a;
    .registers 3

    const-string v0, "disk-cache"

    const/4 v1, 0x1

    .line 100
    invoke-static {v1, v0, p0}, Lcom/bumptech/glide/load/engine/b/a;->a(ILjava/lang/String;Lcom/bumptech/glide/load/engine/b/a$b;)Lcom/bumptech/glide/load/engine/b/a;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/bumptech/glide/load/engine/b/a;
    .registers 3

    .line 143
    invoke-static {}, Lcom/bumptech/glide/load/engine/b/a;->e()I

    move-result v0

    const-string v1, "source"

    sget-object v2, Lcom/bumptech/glide/load/engine/b/a$b;->d:Lcom/bumptech/glide/load/engine/b/a$b;

    .line 142
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/b/a;->b(ILjava/lang/String;Lcom/bumptech/glide/load/engine/b/a$b;)Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v0

    return-object v0
.end method

.method public static b(ILjava/lang/String;Lcom/bumptech/glide/load/engine/b/a$b;)Lcom/bumptech/glide/load/engine/b/a;
    .registers 13

    .line 187
    new-instance v0, Lcom/bumptech/glide/load/engine/b/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/engine/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v8, p1, p2, v1}, Lcom/bumptech/glide/load/engine/b/a$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/b/a$b;Z)V

    const-wide/16 v4, 0x0

    move-object v1, v9

    move v2, p0

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/engine/b/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static b(Lcom/bumptech/glide/load/engine/b/a$b;)Lcom/bumptech/glide/load/engine/b/a;
    .registers 3

    .line 166
    invoke-static {}, Lcom/bumptech/glide/load/engine/b/a;->e()I

    move-result v0

    const-string v1, "source"

    .line 165
    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/load/engine/b/a;->b(ILjava/lang/String;Lcom/bumptech/glide/load/engine/b/a$b;)Lcom/bumptech/glide/load/engine/b/a;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lcom/bumptech/glide/load/engine/b/a;
    .registers 10

    .line 212
    new-instance v0, Lcom/bumptech/glide/load/engine/b/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v4, Lcom/bumptech/glide/load/engine/b/a;->g:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/engine/b/a$a;

    const-string v1, "source-unlimited"

    sget-object v2, Lcom/bumptech/glide/load/engine/b/a$b;->d:Lcom/bumptech/glide/load/engine/b/a$b;

    const/4 v3, 0x0

    invoke-direct {v8, v1, v2, v3}, Lcom/bumptech/glide/load/engine/b/a$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/b/a$b;Z)V

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/engine/b/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static d()Lcom/bumptech/glide/load/engine/b/a;
    .registers 2

    .line 229
    invoke-static {}, Lcom/bumptech/glide/load/engine/b/a;->e()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_9

    const/4 v0, 0x2

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    .line 237
    :goto_a
    sget-object v1, Lcom/bumptech/glide/load/engine/b/a$b;->d:Lcom/bumptech/glide/load/engine/b/a$b;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/engine/b/a;->a(ILcom/bumptech/glide/load/engine/b/a$b;)Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v0

    return-object v0
.end method

.method public static e()I
    .registers 2

    .line 357
    sget v0, Lcom/bumptech/glide/load/engine/b/a;->i:I

    if-nez v0, :cond_f

    const/4 v0, 0x4

    .line 359
    invoke-static {}, Lcom/bumptech/glide/load/engine/b/b;->a()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/bumptech/glide/load/engine/b/a;->i:I

    .line 361
    :cond_f
    sget v0, Lcom/bumptech/glide/load/engine/b/a;->i:I

    return v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 343
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 268
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .param p1    # Ljava/util/Collection;
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
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 6
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
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
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/util/Collection;
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
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 6
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isShutdown()Z
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .registers 2

    .line 321
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 4
    .param p1    # Ljava/lang/Runnable;
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
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 3
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.b.a.ThreadFactoryC0039a (com.bumptech.glide.load.engine.b.a$a)
.class final Lcom/bumptech/glide/load/engine/b/a$a;
.super Ljava/lang/Object;
.source "GlideExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final c:I = 0x9


# instance fields
.field final a:Lcom/bumptech/glide/load/engine/b/a$b;

.field final b:Z

.field private final d:Ljava/lang/String;

.field private e:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/b/a$b;Z)V
    .registers 4

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/a$a;->d:Ljava/lang/String;

    .line 427
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/b/a$a;->a:Lcom/bumptech/glide/load/engine/b/a$b;

    .line 428
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/b/a$a;->b:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 433
    :try_start_1
    new-instance v0, Lcom/bumptech/glide/load/engine/b/a$a$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glide-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b/a$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/engine/b/a$a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/load/engine/b/a$a$1;-><init>(Lcom/bumptech/glide/load/engine/b/a$a;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 452
    iget p1, p0, Lcom/bumptech/glide/load/engine/b/a$a;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bumptech/glide/load/engine/b/a$a;->e:I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 453
    monitor-exit p0

    return-object v0

    :catchall_2b
    move-exception p1

    .line 432
    monitor-exit p0

    throw p1
.end method

###### Class com.bumptech.glide.load.engine.b.a.ThreadFactoryC0039a.AnonymousClass1 (com.bumptech.glide.load.engine.b.a$a$1)
.class Lcom/bumptech/glide/load/engine/b/a$a$1;
.super Ljava/lang/Thread;
.source "GlideExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/b/a$a;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/engine/b/a$a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/b/a$a;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    .line 433
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/a$a$1;->a:Lcom/bumptech/glide/load/engine/b/a$a;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/16 v0, 0x9

    .line 437
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 438
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/a$a$1;->a:Lcom/bumptech/glide/load/engine/b/a$a;

    iget-boolean v0, v0, Lcom/bumptech/glide/load/engine/b/a$a;->b:Z

    if-eqz v0, :cond_1f

    .line 439
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 441
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 439
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 446
    :cond_1f
    :try_start_1f
    invoke-super {p0}, Ljava/lang/Thread;->run()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception v0

    .line 448
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b/a$a$1;->a:Lcom/bumptech/glide/load/engine/b/a$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/b/a$a;->a:Lcom/bumptech/glide/load/engine/b/a$b;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/b/a$b;->a(Ljava/lang/Throwable;)V

    :goto_2b
    return-void
.end method

###### Class com.bumptech.glide.load.engine.b.a.b (com.bumptech.glide.load.engine.b.a$b)
.class public interface abstract Lcom/bumptech/glide/load/engine/b/a$b;
.super Ljava/lang/Object;
.source "GlideExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/load/engine/b/a$b;

.field public static final b:Lcom/bumptech/glide/load/engine/b/a$b;

.field public static final c:Lcom/bumptech/glide/load/engine/b/a$b;

.field public static final d:Lcom/bumptech/glide/load/engine/b/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 374
    new-instance v0, Lcom/bumptech/glide/load/engine/b/a$b$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/b/a$b$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/b/a$b;->a:Lcom/bumptech/glide/load/engine/b/a$b;

    .line 383
    new-instance v0, Lcom/bumptech/glide/load/engine/b/a$b$2;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/b/a$b$2;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/b/a$b;->b:Lcom/bumptech/glide/load/engine/b/a$b;

    .line 396
    new-instance v0, Lcom/bumptech/glide/load/engine/b/a$b$3;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/b/a$b$3;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/b/a$b;->c:Lcom/bumptech/glide/load/engine/b/a$b;

    .line 406
    sget-object v0, Lcom/bumptech/glide/load/engine/b/a$b;->b:Lcom/bumptech/glide/load/engine/b/a$b;

    sput-object v0, Lcom/bumptech/glide/load/engine/b/a$b;->d:Lcom/bumptech/glide/load/engine/b/a$b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)V
.end method

###### Class com.bumptech.glide.load.engine.b.a.b.AnonymousClass1 (com.bumptech.glide.load.engine.b.a$b$1)
.class Lcom/bumptech/glide/load/engine/b/a$b$1;
.super Ljava/lang/Object;
.source "GlideExecutor.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/b/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

###### Class com.bumptech.glide.load.engine.b.a.b.AnonymousClass2 (com.bumptech.glide.load.engine.b.a$b$2)
.class Lcom/bumptech/glide/load/engine/b/a$b$2;
.super Ljava/lang/Object;
.source "GlideExecutor.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/b/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p1, :cond_12

    const-string v0, "GlideExecutor"

    const/4 v1, 0x6

    .line 386
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "GlideExecutor"

    const-string v1, "Request threw uncaught throwable"

    .line 387
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    return-void
.end method

###### Class com.bumptech.glide.load.engine.b.a.b.AnonymousClass3 (com.bumptech.glide.load.engine.b.a$b$3)
.class Lcom/bumptech/glide/load/engine/b/a$b$3;
.super Ljava/lang/Object;
.source "GlideExecutor.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/b/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 400
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Request threw uncaught throwable"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
