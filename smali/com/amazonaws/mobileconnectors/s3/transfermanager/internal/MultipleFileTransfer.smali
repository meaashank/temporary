###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.MultipleFileTransfer (com.amazonaws.mobileconnectors.s3.transfermanager.internal.MultipleFileTransfer)
.class public abstract Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;
.source "MultipleFileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;",
        ">",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;"
    }
.end annotation


# instance fields
.field protected final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;",
            "Lcom/amazonaws/event/ProgressListenerChain;",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;)V

    .line 34
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->e:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V
    .registers 4

    .line 72
    invoke-super {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 74
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer$1;->a:[I

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_34

    goto :goto_32

    :pswitch_10
    const/16 p1, 0x8

    .line 95
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->a(I)V

    goto :goto_32

    :pswitch_16
    const/16 p1, 0x10

    .line 92
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->a(I)V

    goto :goto_32

    :pswitch_1c
    const/4 p1, 0x4

    .line 89
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->a(I)V

    goto :goto_32

    .line 79
    :pswitch_21
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 p1, 0x2

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->a(I)V

    goto :goto_32

    .line 76
    :pswitch_2f
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->a(I)V

    :cond_32
    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_21
        :pswitch_1c
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method

.method public d()V
    .registers 6

    .line 52
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->e:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;

    .line 53
    invoke-interface {v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;->j()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    move-result-object v3

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Failed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne v3, v4, :cond_21

    .line 54
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Failed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    return-void

    .line 56
    :cond_21
    invoke-interface {v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;->j()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne v2, v3, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_2b
    if-eqz v1, :cond_33

    .line 61
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    goto :goto_38

    .line 63
    :cond_33
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Completed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->a(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    :goto_38
    return-void
.end method

###### Class com.amazonaws.mobileconnectors.s3.transfermanager.internal.MultipleFileTransfer.AnonymousClass1 (com.amazonaws.mobileconnectors.s3.transfermanager.internal.MultipleFileTransfer$1)
.class synthetic Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer$1;
.super Ljava/lang/Object;
.source "MultipleFileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 74
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->values()[Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer$1;->a:[I

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Waiting:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer$1;->a:[I

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->InProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer$1;->a:[I

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Completed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer$1;->a:[I

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer$1;->a:[I

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Failed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    return-void
.end method
