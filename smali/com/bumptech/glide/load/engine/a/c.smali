###### Class com.bumptech.glide.load.engine.a.c (com.bumptech.glide.load.engine.a.c)
.class final Lcom/bumptech/glide/load/engine/a/c;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/a/c$b;,
        Lcom/bumptech/glide/load/engine/a/c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/engine/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/engine/a/c$b;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/c;->a:Ljava/util/Map;

    .line 22
    new-instance v0, Lcom/bumptech/glide/load/engine/a/c$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/c$b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/c;->b:Lcom/bumptech/glide/load/engine/a/c$b;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .registers 4

    .line 26
    monitor-enter p0

    .line 27
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/c$a;

    if-nez v0, :cond_16

    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/c;->b:Lcom/bumptech/glide/load/engine/a/c$b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a/c$b;->a()Lcom/bumptech/glide/load/engine/a/c$a;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_16
    iget p1, v0, Lcom/bumptech/glide/load/engine/a/c$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/bumptech/glide/load/engine/a/c$a;->b:I

    .line 33
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_23

    .line 35
    iget-object p1, v0, Lcom/bumptech/glide/load/engine/a/c$a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void

    :catchall_23
    move-exception p1

    .line 33
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method b(Ljava/lang/String;)V
    .registers 7

    .line 40
    monitor-enter p0

    .line 41
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/c$a;

    .line 42
    iget v1, v0, Lcom/bumptech/glide/load/engine/a/c$a;->b:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_5d

    .line 48
    iget v1, v0, Lcom/bumptech/glide/load/engine/a/c$a;->b:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/bumptech/glide/load/engine/a/c$a;->b:I

    .line 49
    iget v1, v0, Lcom/bumptech/glide/load/engine/a/c$a;->b:I

    if-nez v1, :cond_56

    .line 50
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/a/c$a;

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 57
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/a/c;->b:Lcom/bumptech/glide/load/engine/a/c$b;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/engine/a/c$b;->a(Lcom/bumptech/glide/load/engine/a/c$a;)V

    goto :goto_56

    .line 52
    :cond_2f
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed the wrong lock, expected to remove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but actually removed: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", safeKey: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_56
    :goto_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_7e

    .line 61
    iget-object p1, v0, Lcom/bumptech/glide/load/engine/a/c$a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 43
    :cond_5d
    :try_start_5d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot release a lock that is not held, safeKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", interestedThreads: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/bumptech/glide/load/engine/a/c$a;->b:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_7e
    move-exception p1

    .line 59
    monitor-exit p0
    :try_end_80
    .catchall {:try_start_5d .. :try_end_80} :catchall_7e

    throw p1
.end method

###### Class com.bumptech.glide.load.engine.a.c.a (com.bumptech.glide.load.engine.a.c$a)
.class Lcom/bumptech/glide/load/engine/a/c$a;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/locks/Lock;

.field b:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/c$a;->a:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

###### Class com.bumptech.glide.load.engine.a.c.b (com.bumptech.glide.load.engine.a.c$b)
.class Lcom/bumptech/glide/load/engine/a/c$b;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:I = 0xa


# instance fields
.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/load/engine/a/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/c$b;->b:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method a()Lcom/bumptech/glide/load/engine/a/c$a;
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/c$b;->b:Ljava/util/Queue;

    monitor-enter v0

    .line 82
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/c$b;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/a/c$a;

    .line 83
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    if-nez v1, :cond_13

    .line 85
    new-instance v1, Lcom/bumptech/glide/load/engine/a/c$a;

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/a/c$a;-><init>()V

    :cond_13
    return-object v1

    :catchall_14
    move-exception v1

    .line 83
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method a(Lcom/bumptech/glide/load/engine/a/c$a;)V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/c$b;->b:Ljava/util/Queue;

    monitor-enter v0

    .line 92
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/c$b;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_12

    .line 93
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/c$b;->b:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 95
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method
