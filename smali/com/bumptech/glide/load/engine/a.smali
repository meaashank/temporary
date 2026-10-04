###### Class com.bumptech.glide.load.engine.a (com.bumptech.glide.load.engine.a)
.class final Lcom/bumptech/glide/load/engine/a;
.super Ljava/lang/Object;
.source "ActiveResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/a$b;,
        Lcom/bumptech/glide/load/engine/a$a;
    }
.end annotation


# static fields
.field private static final b:I = 0x1


# instance fields
.field final a:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Landroid/os/Handler;

.field private e:Lcom/bumptech/glide/load/engine/n$a;

.field private f:Ljava/lang/ref/ReferenceQueue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Thread;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private volatile h:Z

.field private volatile i:Lcom/bumptech/glide/load/engine/a$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .registers 5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/a$1;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/load/engine/a$1;-><init>(Lcom/bumptech/glide/load/engine/a;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->d:Landroid/os/Handler;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->a:Ljava/util/Map;

    .line 55
    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/a;->c:Z

    return-void
.end method

.method private c()Ljava/lang/ref/ReferenceQueue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->f:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_1e

    .line 113
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->f:Ljava/lang/ref/ReferenceQueue;

    .line 114
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bumptech/glide/load/engine/a$2;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/engine/a$2;-><init>(Lcom/bumptech/glide/load/engine/a;)V

    const-string v2, "glide-active-resources"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->g:Ljava/lang/Thread;

    .line 122
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 124
    :cond_1e
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->f:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 4

    .line 129
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/a;->h:Z

    if-nez v0, :cond_26

    .line 131
    :try_start_4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->f:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a$b;

    .line 132
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->d:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->i:Lcom/bumptech/glide/load/engine/a$a;

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a$a;->a()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_1d} :catch_1e

    goto :goto_0

    .line 141
    :catch_1e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_26
    return-void
.end method

.method a(Lcom/bumptech/glide/load/c;)V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/a$b;

    if-eqz p1, :cond_d

    .line 79
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/a$b;->a()V

    :cond_d
    return-void
.end method

.method a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;)V"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/bumptech/glide/load/engine/a$b;

    .line 67
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a;->c()Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/a;->c:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/bumptech/glide/load/engine/a$b;-><init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/n;Ljava/lang/ref/ReferenceQueue;Z)V

    .line 70
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/a;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/a$b;

    if-eqz p1, :cond_18

    .line 72
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/a$b;->a()V

    :cond_18
    return-void
.end method

.method a(Lcom/bumptech/glide/load/engine/a$a;)V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a;->i:Lcom/bumptech/glide/load/engine/a$a;

    return-void
.end method

.method a(Lcom/bumptech/glide/load/engine/a$b;)V
    .registers 6
    .param p1    # Lcom/bumptech/glide/load/engine/a$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 99
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/a$b;->a:Lcom/bumptech/glide/load/c;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-boolean v0, p1, Lcom/bumptech/glide/load/engine/a$b;->b:Z

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/bumptech/glide/load/engine/a$b;->c:Lcom/bumptech/glide/load/engine/s;

    if-nez v0, :cond_13

    goto :goto_2b

    .line 105
    :cond_13
    new-instance v0, Lcom/bumptech/glide/load/engine/n;

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/a$b;->c:Lcom/bumptech/glide/load/engine/s;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/n;-><init>(Lcom/bumptech/glide/load/engine/s;ZZ)V

    .line 107
    iget-object v1, p1, Lcom/bumptech/glide/load/engine/a$b;->a:Lcom/bumptech/glide/load/c;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a;->e:Lcom/bumptech/glide/load/engine/n$a;

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/engine/n;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/n$a;)V

    .line 108
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->e:Lcom/bumptech/glide/load/engine/n$a;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/a$b;->a:Lcom/bumptech/glide/load/c;

    invoke-interface {v1, p1, v0}, Lcom/bumptech/glide/load/engine/n$a;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/n;)V

    return-void

    :cond_2b
    :goto_2b
    return-void
.end method

.method a(Lcom/bumptech/glide/load/engine/n$a;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a;->e:Lcom/bumptech/glide/load/engine/n$a;

    return-void
.end method

.method b(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/n;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/a$b;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 90
    :cond_c
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/a$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/n;

    if-nez v0, :cond_17

    .line 92
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/engine/a$b;)V

    :cond_17
    return-object v0
.end method

.method b()V
    .registers 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/a;->h:Z

    .line 159
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->g:Ljava/lang/Thread;

    if-nez v0, :cond_8

    return-void

    .line 163
    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 165
    :try_start_d
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->g:Ljava/lang/Thread;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    .line 166
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_32

    .line 167
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to join in time"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_2b} :catch_2b

    .line 170
    :catch_2b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_32
    return-void
.end method

###### Class com.bumptech.glide.load.engine.a.AnonymousClass1 (com.bumptech.glide.load.engine.a$1)
.class Lcom/bumptech/glide/load/engine/a$1;
.super Ljava/lang/Object;
.source "ActiveResources.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/engine/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/a;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a$1;->a:Lcom/bumptech/glide/load/engine/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 29
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 30
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a$1;->a:Lcom/bumptech/glide/load/engine/a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/engine/a$b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/engine/a$b;)V

    return v1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

###### Class com.bumptech.glide.load.engine.a.AnonymousClass2 (com.bumptech.glide.load.engine.a$2)
.class Lcom/bumptech/glide/load/engine/a$2;
.super Ljava/lang/Object;
.source "ActiveResources.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/a;->c()Ljava/lang/ref/ReferenceQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/engine/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/a;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a$2;->a:Lcom/bumptech/glide/load/engine/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const/16 v0, 0xa

    .line 118
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a$2;->a:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a;->a()V

    return-void
.end method

###### Class com.bumptech.glide.load.engine.a.InterfaceC0037a (com.bumptech.glide.load.engine.a$a)
.class interface abstract Lcom/bumptech/glide/load/engine/a$a;
.super Ljava/lang/Object;
.source "ActiveResources.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

###### Class com.bumptech.glide.load.engine.a.b (com.bumptech.glide.load.engine.a$b)
.class final Lcom/bumptech/glide/load/engine/a$b;
.super Ljava/lang/ref/WeakReference;
.source "ActiveResources.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lcom/bumptech/glide/load/engine/n<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/c;

.field final b:Z

.field c:Lcom/bumptech/glide/load/engine/s;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/s<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/n;Ljava/lang/ref/ReferenceQueue;Z)V
    .registers 5
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/ref/ReferenceQueue;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lcom/bumptech/glide/load/engine/n<",
            "*>;>;Z)V"
        }
    .end annotation

    .line 188
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 189
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/c;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a$b;->a:Lcom/bumptech/glide/load/c;

    .line 191
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/n;->b()Z

    move-result p1

    if-eqz p1, :cond_1e

    if-eqz p4, :cond_1e

    .line 192
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/n;->a()Lcom/bumptech/glide/load/engine/s;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/s;

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a$b;->c:Lcom/bumptech/glide/load/engine/s;

    .line 193
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/n;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/a$b;->b:Z

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a$b;->c:Lcom/bumptech/glide/load/engine/s;

    .line 198
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a$b;->clear()V

    return-void
.end method
