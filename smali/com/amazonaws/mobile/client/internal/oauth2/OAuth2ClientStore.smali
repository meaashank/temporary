###### Class com.amazonaws.mobile.client.internal.oauth2.OAuth2ClientStore (com.amazonaws.mobile.client.internal.oauth2.OAuth2ClientStore)
.class Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;
.super Ljava/lang/Object;
.source "OAuth2Client.java"


# instance fields
.field a:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)V
    .registers 5

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 395
    new-instance v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    iget-object v1, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->j:Landroid/content/Context;

    const-string v2, "com.amazonaws.mobile.client.oauth2"

    iget-boolean p1, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->k:Z

    invoke-direct {v0, v1, v2, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    return-void
.end method


# virtual methods
.method a()Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;
    .registers 10

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 419
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->EXPIRES_IN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    :goto_18
    move-object v6, v0

    goto :goto_1f

    .line 420
    :cond_1a
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_18

    .line 421
    :goto_1f
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v2, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->ACCESS_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    .line 422
    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v3, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->ID_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    .line 423
    invoke-virtual {v3}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v4, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->REFRESH_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    .line 424
    invoke-virtual {v4}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v5, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->TOKEN_TYPE:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    .line 425
    invoke-virtual {v5}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v7, "createDate"

    .line 427
    invoke-virtual {v1, v7}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v8, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->SCOPES:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    .line 428
    invoke-virtual {v8}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_0 .. :try_end_6d} :catchall_77

    .line 430
    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_77
    move-exception v0

    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 431
    throw v0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 450
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_19

    .line 452
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_19
    move-exception p1

    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 453
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

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 437
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 438
    array-length v1, p1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_20

    aget-object v3, p1, v2

    .line 439
    iget-object v4, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v4, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_2a

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 443
    :cond_20
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_2a
    move-exception p1

    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 444
    throw p1
.end method

.method a(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;)V
    .registers 5

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 401
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->ACCESS_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->ID_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->REFRESH_TOKEN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    sget-object v1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->EXPIRES_IN:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Constants$TokenResponseFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->f()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_46

    const/4 v2, 0x0

    goto :goto_4e

    .line 405
    :cond_46
    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->f()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    :goto_4e
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    const-string v1, "createDate"

    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Tokens;->g()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_0 .. :try_end_60} :catchall_6a

    .line 408
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_6a
    move-exception p1

    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 409
    throw p1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 470
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_18

    .line 472
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_18
    move-exception p1

    iget-object p2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 473
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

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 459
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

    .line 460
    iget-object v2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_33

    goto :goto_11

    .line 463
    :cond_29
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_33
    move-exception p1

    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 464
    throw p1
.end method

.method public a(Z)V
    .registers 3

    .line 481
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a(Z)V

    return-void
.end method

.method b()V
    .registers 2

    .line 477
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-virtual {v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a()V

    return-void
.end method
