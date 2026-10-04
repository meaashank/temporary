###### Class android.arch.lifecycle.b (android.arch.lifecycle.b)
.class public abstract Landroid/arch/lifecycle/b;
.super Ljava/lang/Object;
.source "ComputableLiveData.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final b:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-static {}, Landroid/arch/a/a/a;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/b;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/arch/lifecycle/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/arch/lifecycle/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    new-instance v0, Landroid/arch/lifecycle/b$2;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/b$2;-><init>(Landroid/arch/lifecycle/b;)V

    iput-object v0, p0, Landroid/arch/lifecycle/b;->a:Ljava/lang/Runnable;

    .line 122
    new-instance v0, Landroid/arch/lifecycle/b$3;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/b$3;-><init>(Landroid/arch/lifecycle/b;)V

    iput-object v0, p0, Landroid/arch/lifecycle/b;->b:Ljava/lang/Runnable;

    .line 65
    iput-object p1, p0, Landroid/arch/lifecycle/b;->c:Ljava/util/concurrent/Executor;

    .line 66
    new-instance p1, Landroid/arch/lifecycle/b$1;

    invoke-direct {p1, p0}, Landroid/arch/lifecycle/b$1;-><init>(Landroid/arch/lifecycle/b;)V

    iput-object p1, p0, Landroid/arch/lifecycle/b;->d:Landroid/arch/lifecycle/LiveData;

    return-void
.end method

.method static synthetic a(Landroid/arch/lifecycle/b;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 41
    iget-object p0, p0, Landroid/arch/lifecycle/b;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic b(Landroid/arch/lifecycle/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 41
    iget-object p0, p0, Landroid/arch/lifecycle/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic c(Landroid/arch/lifecycle/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 41
    iget-object p0, p0, Landroid/arch/lifecycle/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic d(Landroid/arch/lifecycle/b;)Landroid/arch/lifecycle/LiveData;
    .registers 1

    .line 41
    iget-object p0, p0, Landroid/arch/lifecycle/b;->d:Landroid/arch/lifecycle/LiveData;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/arch/lifecycle/LiveData;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Landroid/arch/lifecycle/b;->d:Landroid/arch/lifecycle/LiveData;

    return-object v0
.end method

.method public b()V
    .registers 3

    .line 142
    invoke-static {}, Landroid/arch/a/a/a;->a()Landroid/arch/a/a/a;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/lifecycle/b;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/arch/a/a/a;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract c()Ljava/lang/Object;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

###### Class android.arch.lifecycle.b.AnonymousClass1 (android.arch.lifecycle.b$1)
.class Landroid/arch/lifecycle/b$1;
.super Landroid/arch/lifecycle/LiveData;
.source "ComputableLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/arch/lifecycle/b;-><init>(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/arch/lifecycle/b;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/b;)V
    .registers 2

    .line 66
    iput-object p1, p0, Landroid/arch/lifecycle/b$1;->a:Landroid/arch/lifecycle/b;

    invoke-direct {p0}, Landroid/arch/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .registers 3

    .line 69
    iget-object v0, p0, Landroid/arch/lifecycle/b$1;->a:Landroid/arch/lifecycle/b;

    invoke-static {v0}, Landroid/arch/lifecycle/b;->a(Landroid/arch/lifecycle/b;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/lifecycle/b$1;->a:Landroid/arch/lifecycle/b;

    iget-object v1, v1, Landroid/arch/lifecycle/b;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class android.arch.lifecycle.b.AnonymousClass2 (android.arch.lifecycle.b$2)
.class Landroid/arch/lifecycle/b$2;
.super Ljava/lang/Object;
.source "ComputableLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/arch/lifecycle/b;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/b;)V
    .registers 2

    .line 86
    iput-object p1, p0, Landroid/arch/lifecycle/b$2;->a:Landroid/arch/lifecycle/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 94
    :cond_0
    iget-object v0, p0, Landroid/arch/lifecycle/b$2;->a:Landroid/arch/lifecycle/b;

    invoke-static {v0}, Landroid/arch/lifecycle/b;->b(Landroid/arch/lifecycle/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_45

    const/4 v0, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    .line 98
    :goto_11
    :try_start_11
    iget-object v4, p0, Landroid/arch/lifecycle/b$2;->a:Landroid/arch/lifecycle/b;

    invoke-static {v4}, Landroid/arch/lifecycle/b;->c(Landroid/arch/lifecycle/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 100
    iget-object v0, p0, Landroid/arch/lifecycle/b$2;->a:Landroid/arch/lifecycle/b;

    invoke-virtual {v0}, Landroid/arch/lifecycle/b;->c()Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x1

    goto :goto_11

    :cond_25
    if-eqz v0, :cond_30

    .line 103
    iget-object v1, p0, Landroid/arch/lifecycle/b$2;->a:Landroid/arch/lifecycle/b;

    invoke-static {v1}, Landroid/arch/lifecycle/b;->d(Landroid/arch/lifecycle/b;)Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/arch/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_3a

    .line 107
    :cond_30
    iget-object v1, p0, Landroid/arch/lifecycle/b$2;->a:Landroid/arch/lifecycle/b;

    invoke-static {v1}, Landroid/arch/lifecycle/b;->b(Landroid/arch/lifecycle/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_46

    :catchall_3a
    move-exception v0

    iget-object v1, p0, Landroid/arch/lifecycle/b$2;->a:Landroid/arch/lifecycle/b;

    invoke-static {v1}, Landroid/arch/lifecycle/b;->b(Landroid/arch/lifecycle/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_45
    const/4 v0, 0x0

    :goto_46
    if-eqz v0, :cond_54

    .line 117
    iget-object v0, p0, Landroid/arch/lifecycle/b$2;->a:Landroid/arch/lifecycle/b;

    invoke-static {v0}, Landroid/arch/lifecycle/b;->c(Landroid/arch/lifecycle/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_54
    return-void
.end method

###### Class android.arch.lifecycle.b.AnonymousClass3 (android.arch.lifecycle.b$3)
.class Landroid/arch/lifecycle/b$3;
.super Ljava/lang/Object;
.source "ComputableLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/arch/lifecycle/b;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/b;)V
    .registers 2

    .line 123
    iput-object p1, p0, Landroid/arch/lifecycle/b$3;->a:Landroid/arch/lifecycle/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 127
    iget-object v0, p0, Landroid/arch/lifecycle/b$3;->a:Landroid/arch/lifecycle/b;

    invoke-static {v0}, Landroid/arch/lifecycle/b;->d(Landroid/arch/lifecycle/b;)Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData;->hasActiveObservers()Z

    move-result v0

    .line 128
    iget-object v1, p0, Landroid/arch/lifecycle/b$3;->a:Landroid/arch/lifecycle/b;

    invoke-static {v1}, Landroid/arch/lifecycle/b;->c(Landroid/arch/lifecycle/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_27

    if-eqz v0, :cond_27

    .line 130
    iget-object v0, p0, Landroid/arch/lifecycle/b$3;->a:Landroid/arch/lifecycle/b;

    invoke-static {v0}, Landroid/arch/lifecycle/b;->a(Landroid/arch/lifecycle/b;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/lifecycle/b$3;->a:Landroid/arch/lifecycle/b;

    iget-object v1, v1, Landroid/arch/lifecycle/b;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_27
    return-void
.end method
