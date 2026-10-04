###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.MultipleFileTransferMonitor (com.amazonaws.mobileconnectors.s3.transfermanager.internal.MultipleFileTransferMonitor)
.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;
.super Ljava/lang/Object;
.source "MultipleFileTransferMonitor.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;

.field private final c:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->a:Ljava/util/Collection;

    .line 35
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;

    .line 42
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;

    invoke-direct {p1, p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;)V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->c:Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;)Ljava/util/Collection;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->a:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->b:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->c:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public declared-synchronized b()Z
    .registers 3

    monitor-enter p0

    .line 88
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;

    .line 89
    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;->f()Z

    move-result v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1f

    if-nez v1, :cond_7

    const/4 v0, 0x0

    .line 90
    monitor-exit p0

    return v0

    :cond_1c
    const/4 v0, 0x1

    .line 92
    monitor-exit p0

    return v0

    :catchall_1f
    move-exception v0

    .line 87
    monitor-exit p0

    throw v0
.end method

###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.MultipleFileTransferMonitor.AnonymousClass1 (com.amazonaws.mobileconnectors.s3.transfermanager.internal.MultipleFileTransferMonitor$1)
.class Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;
.super Ljava/lang/Object;
.source "MultipleFileTransferMonitor.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public get()Ljava/lang/Object;
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;

    .line 53
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->l()Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->a()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    :cond_24
    return-object v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7

    .line 63
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;

    .line 64
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->l()Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->a()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    :cond_24
    return-object v1
.end method

.method public isCancelled()Z
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->b(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->j()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isDone()Z
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;->a:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->b()Z

    move-result v0

    return v0
.end method
