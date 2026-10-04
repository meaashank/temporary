###### Class com.amazonaws.event.ProgressListenerChain (com.amazonaws.event.ProgressListenerChain)
.class public Lcom/amazonaws/event/ProgressListenerChain;
.super Ljava/lang/Object;
.source "ProgressListenerChain.java"

# interfaces
.implements Lcom/amazonaws/event/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;
    }
.end annotation


# static fields
.field private static final c:Lcom/amazonaws/logging/Log;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/event/ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/amazonaws/event/ProgressListenerChain;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/event/ProgressListenerChain;->c:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public varargs constructor <init>(Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;[Lcom/amazonaws/event/ProgressListener;)V
    .registers 6

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/event/ProgressListenerChain;->a:Ljava/util/List;

    if-eqz p2, :cond_1b

    .line 62
    array-length v0, p2

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_18

    aget-object v2, p2, v1

    .line 63
    invoke-virtual {p0, v2}, Lcom/amazonaws/event/ProgressListenerChain;->a(Lcom/amazonaws/event/ProgressListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 64
    :cond_18
    iput-object p1, p0, Lcom/amazonaws/event/ProgressListenerChain;->b:Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;

    return-void

    .line 59
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Progress Listeners cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>([Lcom/amazonaws/event/ProgressListener;)V
    .registers 3

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/event/ProgressListenerChain;-><init>(Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;[Lcom/amazonaws/event/ProgressListener;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/event/ProgressListener;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerChain;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/amazonaws/event/ProgressEvent;)V
    .registers 6

    .line 97
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerChain;->b:Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;

    if-eqz v0, :cond_d

    .line 98
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerChain;->b:Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;

    invoke-interface {v0, p1}, Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;->a(Lcom/amazonaws/event/ProgressEvent;)Lcom/amazonaws/event/ProgressEvent;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    .line 103
    :cond_d
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerChain;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/event/ProgressListener;

    .line 105
    :try_start_1f
    invoke-interface {v1, p1}, Lcom/amazonaws/event/ProgressListener;->a(Lcom/amazonaws/event/ProgressEvent;)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_13

    :catch_23
    move-exception v1

    .line 107
    sget-object v2, Lcom/amazonaws/event/ProgressListenerChain;->c:Lcom/amazonaws/logging/Log;

    const-string v3, "Couldn\'t update progress listener"

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_13

    :cond_2c
    return-void
.end method

.method public declared-synchronized a(Lcom/amazonaws/event/ProgressListener;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_5

    .line 73
    monitor-exit p0

    return-void

    .line 74
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerChain;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    .line 75
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    .line 71
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/amazonaws/event/ProgressListener;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_5

    .line 83
    monitor-exit p0

    return-void

    .line 84
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerChain;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    .line 85
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    .line 81
    monitor-exit p0

    throw p1
.end method

###### Class com.amazonaws.event.ProgressListenerChain.ProgressEventFilter (com.amazonaws.event.ProgressListenerChain$ProgressEventFilter)
.class public interface abstract Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;
.super Ljava/lang/Object;
.source "ProgressListenerChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/event/ProgressListenerChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressEventFilter"
.end annotation


# virtual methods
.method public abstract a(Lcom/amazonaws/event/ProgressEvent;)Lcom/amazonaws/event/ProgressEvent;
.end method
