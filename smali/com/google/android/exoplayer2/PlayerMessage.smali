###### Class com.google.android.exoplayer2.PlayerMessage (com.google.android.exoplayer2.PlayerMessage)
.class public final Lcom/google/android/exoplayer2/PlayerMessage;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/PlayerMessage$Sender;,
        Lcom/google/android/exoplayer2/PlayerMessage$Target;
    }
.end annotation


# instance fields
.field private deleteAfterDelivery:Z

.field private handler:Landroid/os/Handler;

.field private isDelivered:Z

.field private isProcessed:Z

.field private isSent:Z

.field private payload:Ljava/lang/Object;

.field private positionMs:J

.field private final sender:Lcom/google/android/exoplayer2/PlayerMessage$Sender;

.field private final target:Lcom/google/android/exoplayer2/PlayerMessage$Target;

.field private final timeline:Lcom/google/android/exoplayer2/Timeline;

.field private type:I

.field private windowIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/PlayerMessage$Sender;Lcom/google/android/exoplayer2/PlayerMessage$Target;Lcom/google/android/exoplayer2/Timeline;ILandroid/os/Handler;)V
    .registers 6

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->sender:Lcom/google/android/exoplayer2/PlayerMessage$Sender;

    .line 85
    iput-object p2, p0, Lcom/google/android/exoplayer2/PlayerMessage;->target:Lcom/google/android/exoplayer2/PlayerMessage$Target;

    .line 86
    iput-object p3, p0, Lcom/google/android/exoplayer2/PlayerMessage;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 87
    iput-object p5, p0, Lcom/google/android/exoplayer2/PlayerMessage;->handler:Landroid/os/Handler;

    .line 88
    iput p4, p0, Lcom/google/android/exoplayer2/PlayerMessage;->windowIndex:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 89
    iput-wide p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized blockUntilDelivered()Z
    .registers 3

    monitor-enter p0

    .line 259
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 261
    :goto_1c
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isProcessed:Z

    if-nez v0, :cond_24

    .line 262
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1c

    .line 264
    :cond_24
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isDelivered:Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return v0

    :catchall_28
    move-exception v0

    .line 258
    monitor-exit p0

    throw v0
.end method

.method public getDeleteAfterDelivery()Z
    .registers 2

    .line 223
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPayload()Ljava/lang/Object;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getPositionMs()J
    .registers 3

    .line 176
    iget-wide v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    return-wide v0
.end method

.method public getTarget()Lcom/google/android/exoplayer2/PlayerMessage$Target;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->target:Lcom/google/android/exoplayer2/PlayerMessage$Target;

    return-object v0
.end method

.method public getTimeline()Lcom/google/android/exoplayer2/Timeline;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 118
    iget v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->type:I

    return v0
.end method

.method public getWindowIndex()I
    .registers 2

    .line 203
    iget v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->windowIndex:I

    return v0
.end method

.method public declared-synchronized markAsProcessed(Z)V
    .registers 3

    monitor-enter p0

    .line 276
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isDelivered:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isDelivered:Z

    const/4 p1, 0x1

    .line 277
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isProcessed:Z

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 279
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    .line 275
    monitor-exit p0

    throw p1
.end method

.method public send()Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 7

    .line 235
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 236
    iget-wide v2, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_17

    .line 237
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 239
    :cond_17
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->sender:Lcom/google/android/exoplayer2/PlayerMessage$Sender;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/PlayerMessage$Sender;->sendMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V

    return-object p0
.end method

.method public setDeleteAfterDelivery(Z)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 3

    .line 216
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 217
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    return-object p0
.end method

.method public setHandler(Landroid/os/Handler;)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 3

    .line 147
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 148
    iput-object p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 129
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 130
    iput-object p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->payload:Ljava/lang/Object;

    return-object p0
.end method

.method public setPosition(IJ)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 8

    .line 191
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v2

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 192
    :goto_12
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    if-ltz p1, :cond_2c

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-ge p1, v0, :cond_2c

    .line 196
    :cond_27
    iput p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->windowIndex:I

    .line 197
    iput-wide p2, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    return-object p0

    .line 194
    :cond_2c
    new-instance v0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    throw v0
.end method

.method public setPosition(J)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 4

    .line 166
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 167
    iput-wide p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    return-object p0
.end method

.method public setType(I)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 3

    .line 111
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 112
    iput p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->type:I

    return-object p0
.end method

###### Class com.google.android.exoplayer2.PlayerMessage.Sender (com.google.android.exoplayer2.PlayerMessage$Sender)
.class public interface abstract Lcom/google/android/exoplayer2/PlayerMessage$Sender;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/PlayerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Sender"
.end annotation


# virtual methods
.method public abstract sendMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V
.end method

###### Class com.google.android.exoplayer2.PlayerMessage.Target (com.google.android.exoplayer2.PlayerMessage$Target)
.class public interface abstract Lcom/google/android/exoplayer2/PlayerMessage$Target;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/PlayerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Target"
.end annotation


# virtual methods
.method public abstract handleMessage(ILjava/lang/Object;)V
.end method
