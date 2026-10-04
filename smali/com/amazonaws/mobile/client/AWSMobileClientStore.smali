###### Class com.amazonaws.mobile.client.AWSMobileClientStore (com.amazonaws.mobile.client.AWSMobileClientStore)
.class Lcom/amazonaws/mobile/client/AWSMobileClientStore;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"


# instance fields
.field a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

.field private b:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;)V
    .registers 5

    .line 3402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3400
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 3403
    new-instance v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    iget-object v1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient;->l:Landroid/content/Context;

    const-string v2, "com.amazonaws.mobile.client"

    iget-boolean p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient;->v:Z

    invoke-direct {v0, v1, v2, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 3423
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3424
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_19

    .line 3426
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_19
    move-exception p1

    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 3427
    throw p1
.end method

.method varargs a([Ljava/lang/String;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3410
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3412
    array-length v1, p1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_20

    aget-object v3, p1, v2

    .line 3413
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v4, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_2a

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 3417
    :cond_20
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_2a
    move-exception p1

    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 3418
    throw p1
.end method

.method a()V
    .registers 2

    .line 3451
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a()V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 3443
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3444
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_18

    .line 3446
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_18
    move-exception p1

    iget-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 3447
    throw p1
.end method

.method a(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3432
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3433
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3434
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_33

    goto :goto_11

    .line 3437
    :cond_29
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_33
    move-exception p1

    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 3438
    throw p1
.end method
