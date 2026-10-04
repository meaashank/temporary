###### Class android.arch.lifecycle.LiveData (android.arch.lifecycle.LiveData)
.class public abstract Landroid/arch/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/LiveData$a;,
        Landroid/arch/lifecycle/LiveData$b;,
        Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;
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


# static fields
.field private static final NOT_SET:Ljava/lang/Object;

.field static final START_VERSION:I = -0x1


# instance fields
.field private mActiveCount:I

.field private volatile mData:Ljava/lang/Object;

.field private final mDataLock:Ljava/lang/Object;

.field private mDispatchInvalidated:Z

.field private mDispatchingValue:Z

.field private mObservers:Landroid/arch/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/b<",
            "Landroid/arch/lifecycle/l<",
            "TT;>;",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>.b;>;"
        }
    .end annotation
.end field

.field private volatile mPendingData:Ljava/lang/Object;

.field private final mPostValueRunnable:Ljava/lang/Runnable;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Landroid/arch/a/b/b;

    invoke-direct {v0}, Landroid/arch/a/b/b;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/a/b/b;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    .line 69
    sget-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 72
    sget-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    .line 78
    new-instance v0, Landroid/arch/lifecycle/LiveData$1;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/LiveData$1;-><init>(Landroid/arch/lifecycle/LiveData;)V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;
    .registers 1

    .line 59
    iget-object p0, p0, Landroid/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;
    .registers 1

    .line 59
    iget-object p0, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Landroid/arch/lifecycle/LiveData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 59
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .registers 1

    .line 59
    sget-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/arch/lifecycle/LiveData;)I
    .registers 1

    .line 59
    iget p0, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    return p0
.end method

.method static synthetic access$302(Landroid/arch/lifecycle/LiveData;I)I
    .registers 2

    .line 59
    iput p1, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    return p1
.end method

.method static synthetic access$400(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LiveData$b;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LiveData;->dispatchingValue(Landroid/arch/lifecycle/LiveData$b;)V

    return-void
.end method

.method private static assertMainThread(Ljava/lang/String;)V
    .registers 4

    .line 434
    invoke-static {}, Landroid/arch/a/a/a;->a()Landroid/arch/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/a/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 435
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on a background"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private considerNotify(Landroid/arch/lifecycle/LiveData$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>.b;)V"
        }
    .end annotation

    .line 92
    iget-boolean v0, p1, Landroid/arch/lifecycle/LiveData$b;->d:Z

    if-nez v0, :cond_5

    return-void

    .line 100
    :cond_5
    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData$b;->a()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/LiveData$b;->a(Z)V

    return-void

    .line 104
    :cond_10
    iget v0, p1, Landroid/arch/lifecycle/LiveData$b;->e:I

    iget v1, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    if-lt v0, v1, :cond_17

    return-void

    .line 107
    :cond_17
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    iput v0, p1, Landroid/arch/lifecycle/LiveData$b;->e:I

    .line 109
    iget-object p1, p1, Landroid/arch/lifecycle/LiveData$b;->c:Landroid/arch/lifecycle/l;

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/arch/lifecycle/l;->onChanged(Ljava/lang/Object;)V

    return-void
.end method

.method private dispatchingValue(Landroid/arch/lifecycle/LiveData$b;)V
    .registers 5
    .param p1    # Landroid/arch/lifecycle/LiveData$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>.b;)V"
        }
    .end annotation

    .line 113
    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->mDispatchingValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 114
    iput-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    return-void

    .line 117
    :cond_8
    iput-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->mDispatchingValue:Z

    :cond_a
    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz p1, :cond_14

    .line 121
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LiveData;->considerNotify(Landroid/arch/lifecycle/LiveData$b;)V

    const/4 p1, 0x0

    goto :goto_33

    .line 124
    :cond_14
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/a/b/b;

    .line 125
    invoke-virtual {v1}, Landroid/arch/a/b/b;->c()Landroid/arch/a/b/b$d;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LiveData$b;

    invoke-direct {p0, v2}, Landroid/arch/lifecycle/LiveData;->considerNotify(Landroid/arch/lifecycle/LiveData$b;)V

    .line 127
    iget-boolean v2, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz v2, :cond_1a

    .line 132
    :cond_33
    :goto_33
    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-nez v1, :cond_a

    .line 133
    iput-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->mDispatchingValue:Z

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 295
    sget-object v1, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-eq v0, v1, :cond_7

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method getVersion()I
    .registers 2

    .line 303
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    return v0
.end method

.method public hasActiveObservers()Z
    .registers 2

    .line 346
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasObservers()Z
    .registers 2

    .line 336
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/a/b/b;

    invoke-virtual {v0}, Landroid/arch/a/b/b;->a()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public observe(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/l;)V
    .registers 5
    .param p1    # Landroid/arch/lifecycle/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/arch/lifecycle/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/e;",
            "Landroid/arch/lifecycle/l<",
            "TT;>;)V"
        }
    .end annotation

    .line 166
    invoke-interface {p1}, Landroid/arch/lifecycle/e;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->a()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_d

    return-void

    .line 170
    :cond_d
    new-instance v0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/l;)V

    .line 171
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/a/b/b;

    invoke-virtual {v1, p2, v0}, Landroid/arch/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/arch/lifecycle/LiveData$b;

    if-eqz p2, :cond_2b

    .line 172
    invoke-virtual {p2, p1}, Landroid/arch/lifecycle/LiveData$b;->a(Landroid/arch/lifecycle/e;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_2b

    .line 173
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    :goto_2b
    if-eqz p2, :cond_2e

    return-void

    .line 179
    :cond_2e
    invoke-interface {p1}, Landroid/arch/lifecycle/e;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/Lifecycle;->a(Landroid/arch/lifecycle/d;)V

    return-void
.end method

.method public observeForever(Landroid/arch/lifecycle/l;)V
    .registers 4
    .param p1    # Landroid/arch/lifecycle/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/l<",
            "TT;>;)V"
        }
    .end annotation

    .line 198
    new-instance v0, Landroid/arch/lifecycle/LiveData$a;

    invoke-direct {v0, p0, p1}, Landroid/arch/lifecycle/LiveData$a;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/l;)V

    .line 199
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/a/b/b;

    invoke-virtual {v1, p1, v0}, Landroid/arch/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/LiveData$b;

    if-eqz p1, :cond_1c

    .line 200
    instance-of v1, p1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez v1, :cond_14

    goto :goto_1c

    .line 201
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    :goto_1c
    if-eqz p1, :cond_1f

    return-void

    :cond_1f
    const/4 p1, 0x1

    .line 207
    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/LiveData$a;->a(Z)V

    return-void
.end method

.method protected onActive()V
    .registers 1

    return-void
.end method

.method protected onInactive()V
    .registers 1

    return-void
.end method

.method protected postValue(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_3
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    sget-object v2, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 261
    :goto_c
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 262
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1c

    if-nez v1, :cond_12

    return-void

    .line 266
    :cond_12
    invoke-static {}, Landroid/arch/a/a/a;->a()Landroid/arch/a/a/a;

    move-result-object p1

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/arch/a/a/a;->b(Ljava/lang/Runnable;)V

    return-void

    :catchall_1c
    move-exception p1

    .line 262
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public removeObserver(Landroid/arch/lifecycle/l;)V
    .registers 3
    .param p1    # Landroid/arch/lifecycle/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/l<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "removeObserver"

    .line 217
    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/a/b/b;

    invoke-virtual {v0, p1}, Landroid/arch/a/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/LiveData$b;

    if-nez p1, :cond_10

    return-void

    .line 222
    :cond_10
    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData$b;->b()V

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/LiveData$b;->a(Z)V

    return-void
.end method

.method public removeObservers(Landroid/arch/lifecycle/e;)V
    .registers 5
    .param p1    # Landroid/arch/lifecycle/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string v0, "removeObservers"

    .line 234
    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/a/b/b;

    invoke-virtual {v0}, Landroid/arch/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 236
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LiveData$b;

    invoke-virtual {v2, p1}, Landroid/arch/lifecycle/LiveData$b;->a(Landroid/arch/lifecycle/e;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 237
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/l;

    invoke-virtual {p0, v1}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/l;)V

    goto :goto_b

    :cond_2d
    return-void
.end method

.method protected setValue(Ljava/lang/Object;)V
    .registers 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "setValue"

    .line 279
    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 280
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    .line 281
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 282
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LiveData;->dispatchingValue(Landroid/arch/lifecycle/LiveData$b;)V

    return-void
.end method

###### Class android.arch.lifecycle.LiveData.AnonymousClass1 (android.arch.lifecycle.LiveData$1)
.class Landroid/arch/lifecycle/LiveData$1;
.super Ljava/lang/Object;
.source "LiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;)V
    .registers 2

    .line 78
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$1;->a:Landroid/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 82
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$1;->a:Landroid/arch/lifecycle/LiveData;

    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->access$000(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 83
    :try_start_7
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$1;->a:Landroid/arch/lifecycle/LiveData;

    invoke-static {v1}, Landroid/arch/lifecycle/LiveData;->access$100(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;

    move-result-object v1

    .line 84
    iget-object v2, p0, Landroid/arch/lifecycle/LiveData$1;->a:Landroid/arch/lifecycle/LiveData;

    invoke-static {}, Landroid/arch/lifecycle/LiveData;->access$200()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/arch/lifecycle/LiveData;->access$102(Landroid/arch/lifecycle/LiveData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1d

    .line 87
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$1;->a:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :catchall_1d
    move-exception v1

    .line 85
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

###### Class android.arch.lifecycle.LiveData.LifecycleBoundObserver (android.arch.lifecycle.LiveData$LifecycleBoundObserver)
.class Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroid/arch/lifecycle/LiveData$b;
.source "LiveData.java"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/LiveData<",
        "TT;>.b;",
        "Landroid/arch/lifecycle/GenericLifecycleObserver;"
    }
.end annotation


# instance fields
.field final a:Landroid/arch/lifecycle/e;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic b:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/l;)V
    .registers 4
    .param p2    # Landroid/arch/lifecycle/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/e;",
            "Landroid/arch/lifecycle/l<",
            "TT;>;)V"
        }
    .end annotation

    .line 352
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->b:Landroid/arch/lifecycle/LiveData;

    .line 353
    invoke-direct {p0, p1, p3}, Landroid/arch/lifecycle/LiveData$b;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/l;)V

    .line 354
    iput-object p2, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroid/arch/lifecycle/e;

    return-void
.end method


# virtual methods
.method public a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .registers 3

    .line 364
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroid/arch/lifecycle/e;

    invoke-interface {p1}, Landroid/arch/lifecycle/e;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/arch/lifecycle/Lifecycle;->a()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object p2, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne p1, p2, :cond_16

    .line 365
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->b:Landroid/arch/lifecycle/LiveData;

    iget-object p2, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->c:Landroid/arch/lifecycle/l;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/l;)V

    return-void

    .line 368
    :cond_16
    invoke-virtual {p0}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a(Z)V

    return-void
.end method

.method a()Z
    .registers 3

    .line 359
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroid/arch/lifecycle/e;

    invoke-interface {v0}, Landroid/arch/lifecycle/e;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->a()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/Lifecycle$State;->isAtLeast(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v0

    return v0
.end method

.method a(Landroid/arch/lifecycle/e;)Z
    .registers 3

    .line 373
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroid/arch/lifecycle/e;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method b()V
    .registers 2

    .line 378
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroid/arch/lifecycle/e;

    invoke-interface {v0}, Landroid/arch/lifecycle/e;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/Lifecycle;->b(Landroid/arch/lifecycle/d;)V

    return-void
.end method

###### Class android.arch.lifecycle.LiveData.a (android.arch.lifecycle.LiveData$a)
.class Landroid/arch/lifecycle/LiveData$a;
.super Landroid/arch/lifecycle/LiveData$b;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/LiveData<",
        "TT;>.b;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/l<",
            "TT;>;)V"
        }
    .end annotation

    .line 423
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$a;->a:Landroid/arch/lifecycle/LiveData;

    .line 424
    invoke-direct {p0, p1, p2}, Landroid/arch/lifecycle/LiveData$b;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/l;)V

    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class android.arch.lifecycle.LiveData.b (android.arch.lifecycle.LiveData$b)
.class abstract Landroid/arch/lifecycle/LiveData$b;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# instance fields
.field final c:Landroid/arch/lifecycle/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field d:Z

.field e:I

.field final synthetic f:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/l<",
            "TT;>;)V"
        }
    .end annotation

    .line 387
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$b;->f:Landroid/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 385
    iput p1, p0, Landroid/arch/lifecycle/LiveData$b;->e:I

    .line 388
    iput-object p2, p0, Landroid/arch/lifecycle/LiveData$b;->c:Landroid/arch/lifecycle/l;

    return-void
.end method


# virtual methods
.method a(Z)V
    .registers 6

    .line 401
    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData$b;->d:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 406
    :cond_5
    iput-boolean p1, p0, Landroid/arch/lifecycle/LiveData$b;->d:Z

    .line 407
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$b;->f:Landroid/arch/lifecycle/LiveData;

    invoke-static {p1}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 408
    :goto_13
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$b;->f:Landroid/arch/lifecycle/LiveData;

    invoke-static {v1}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result v2

    iget-boolean v3, p0, Landroid/arch/lifecycle/LiveData$b;->d:Z

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, -0x1

    :goto_1f
    add-int/2addr v2, v0

    invoke-static {v1, v2}, Landroid/arch/lifecycle/LiveData;->access$302(Landroid/arch/lifecycle/LiveData;I)I

    if-eqz p1, :cond_2e

    .line 409
    iget-boolean p1, p0, Landroid/arch/lifecycle/LiveData$b;->d:Z

    if-eqz p1, :cond_2e

    .line 410
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$b;->f:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData;->onActive()V

    .line 412
    :cond_2e
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$b;->f:Landroid/arch/lifecycle/LiveData;

    invoke-static {p1}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result p1

    if-nez p1, :cond_3f

    iget-boolean p1, p0, Landroid/arch/lifecycle/LiveData$b;->d:Z

    if-nez p1, :cond_3f

    .line 413
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$b;->f:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData;->onInactive()V

    .line 415
    :cond_3f
    iget-boolean p1, p0, Landroid/arch/lifecycle/LiveData$b;->d:Z

    if-eqz p1, :cond_48

    .line 416
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$b;->f:Landroid/arch/lifecycle/LiveData;

    invoke-static {p1, p0}, Landroid/arch/lifecycle/LiveData;->access$400(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LiveData$b;)V

    :cond_48
    return-void
.end method

.method abstract a()Z
.end method

.method a(Landroid/arch/lifecycle/e;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method b()V
    .registers 1

    return-void
.end method
