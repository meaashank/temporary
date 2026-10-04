###### Class com.google.android.exoplayer2.source.MediaSourceEventListener (com.google.android.exoplayer2.source.MediaSourceEventListener)
.class public interface abstract Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public abstract onDownstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V
.end method

.method public abstract onLoadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
.end method

.method public abstract onLoadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
.end method

.method public abstract onLoadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
.end method

.method public abstract onLoadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
.end method

.method public abstract onUpstreamDiscarded(IJJ)V
.end method

###### Class com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher (com.google.android.exoplayer2.source.MediaSourceEventListener$EventDispatcher)
.class public final Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mediaTimeOffsetMs:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .registers 5
    .param p1    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    .line 221
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;J)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;J)V
    .registers 5
    .param p1    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_c

    .line 228
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    .line 229
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 230
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaTimeOffsetMs:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;J)J
    .registers 3

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    return-object p0
.end method

.method private adjustMediaTime(J)J
    .registers 6

    .line 487
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_e

    goto :goto_11

    .line 488
    :cond_e
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaTimeOffsetMs:J

    add-long/2addr v0, p1

    :goto_11
    return-wide v0
.end method


# virtual methods
.method public copyWithMediaTimeOffsetMs(J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .registers 6

    .line 234
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;J)V

    return-object v0
.end method

.method public downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V
    .registers 18

    move-object v8, p0

    .line 470
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    if-eqz v0, :cond_1b

    iget-object v0, v8, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    .line 471
    iget-object v9, v8, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v10, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    return-void
.end method

.method public loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .registers 37

    move-object/from16 v14, p0

    .line 366
    iget-object v0, v14, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    if-eqz v0, :cond_35

    iget-object v0, v14, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_35

    .line 367
    iget-object v15, v14, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v12, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v18, v12

    move-wide/from16 v12, p11

    move-object/from16 v19, v15

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    invoke-direct/range {v0 .. v17}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    move-object/from16 v1, v18

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_35
    return-void
.end method

.method public loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 340
    invoke-virtual/range {v0 .. v16}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method public loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .registers 37

    move-object/from16 v14, p0

    .line 312
    iget-object v0, v14, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    if-eqz v0, :cond_35

    iget-object v0, v14, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_35

    .line 313
    iget-object v15, v14, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v12, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v18, v12

    move-wide/from16 v12, p11

    move-object/from16 v19, v15

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    invoke-direct/range {v0 .. v17}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    move-object/from16 v1, v18

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_35
    return-void
.end method

.method public loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 286
    invoke-virtual/range {v0 .. v16}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method public loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .registers 41

    move-object/from16 v14, p0

    .line 426
    iget-object v0, v14, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    if-eqz v0, :cond_39

    iget-object v0, v14, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_39

    .line 427
    iget-object v15, v14, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v12, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v20, v12

    move-wide/from16 v12, p11

    move-object/from16 v21, v15

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-object/from16 v18, p17

    move/from16 v19, p18

    invoke-direct/range {v0 .. v19}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    move-object/from16 v1, v20

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_39
    return-void
.end method

.method public loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    move-object/from16 v17, p9

    move/from16 v18, p10

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 396
    invoke-virtual/range {v0 .. v18}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-void
.end method

.method public loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
    .registers 29

    move-object/from16 v14, p0

    .line 260
    iget-object v0, v14, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    if-eqz v0, :cond_2a

    iget-object v0, v14, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2a

    .line 261
    iget-object v15, v14, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v12, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object v14, v12

    move-wide/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    invoke-virtual {v15, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2a
    return-void
.end method

.method public loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJ)V
    .registers 18

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v11, p3

    .line 238
    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method public upstreamDiscarded(IJJ)V
    .registers 15

    .line 452
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_17

    .line 453
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;-><init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    return-void
.end method

###### Class com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.AnonymousClass1 (com.google.android.exoplayer2.source.MediaSourceEventListener$EventDispatcher$1)
.class Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field final synthetic val$dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field final synthetic val$dataType:I

.field final synthetic val$elapsedRealtimeMs:J

.field final synthetic val$mediaEndTimeUs:J

.field final synthetic val$mediaStartTimeUs:J

.field final synthetic val$trackFormat:Lcom/google/android/exoplayer2/Format;

.field final synthetic val$trackSelectionData:Ljava/lang/Object;

.field final synthetic val$trackSelectionReason:I

.field final synthetic val$trackType:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
    .registers 14

    .line 262
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iput p3, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$dataType:I

    iput p4, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$trackType:I

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$trackFormat:Lcom/google/android/exoplayer2/Format;

    iput p6, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$trackSelectionReason:I

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$trackSelectionData:Ljava/lang/Object;

    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$mediaStartTimeUs:J

    iput-wide p10, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$mediaEndTimeUs:J

    iput-wide p12, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$elapsedRealtimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 265
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$100(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v3, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$dataType:I

    iget v4, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$trackType:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v6, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$trackSelectionReason:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$trackSelectionData:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$mediaStartTimeUs:J

    .line 272
    invoke-static {v0, v8, v9}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;J)J

    move-result-wide v8

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-wide v10, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$mediaEndTimeUs:J

    .line 273
    invoke-static {v0, v10, v11}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;J)J

    move-result-wide v10

    iget-wide v12, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$elapsedRealtimeMs:J

    .line 265
    invoke-interface/range {v1 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onLoadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    return-void
.end method

###### Class com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.AnonymousClass2 (com.google.android.exoplayer2.source.MediaSourceEventListener$EventDispatcher$2)
.class Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field final synthetic val$bytesLoaded:J

.field final synthetic val$dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field final synthetic val$dataType:I

.field final synthetic val$elapsedRealtimeMs:J

.field final synthetic val$loadDurationMs:J

.field final synthetic val$mediaEndTimeUs:J

.field final synthetic val$mediaStartTimeUs:J

.field final synthetic val$trackFormat:Lcom/google/android/exoplayer2/Format;

.field final synthetic val$trackSelectionData:Ljava/lang/Object;

.field final synthetic val$trackSelectionReason:I

.field final synthetic val$trackType:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .registers 21

    move-object v0, p0

    move-object v1, p1

    .line 314
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move v1, p3

    iput v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$dataType:I

    move v1, p4

    iput v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$trackType:I

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$trackFormat:Lcom/google/android/exoplayer2/Format;

    move v1, p6

    iput v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$trackSelectionReason:I

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$trackSelectionData:Ljava/lang/Object;

    move-wide v1, p8

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$mediaStartTimeUs:J

    move-wide v1, p10

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$mediaEndTimeUs:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$elapsedRealtimeMs:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$loadDurationMs:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$bytesLoaded:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    move-object/from16 v0, p0

    .line 317
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$100(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v4, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$dataType:I

    iget v5, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$trackType:I

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v7, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$trackSelectionReason:I

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$trackSelectionData:Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$mediaStartTimeUs:J

    .line 324
    invoke-static {v1, v9, v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;J)J

    move-result-wide v9

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$mediaEndTimeUs:J

    .line 325
    invoke-static {v1, v11, v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;J)J

    move-result-wide v11

    iget-wide v13, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$elapsedRealtimeMs:J

    move-object/from16 v19, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$loadDurationMs:J

    move-wide v15, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$2;->val$bytesLoaded:J

    move-wide/from16 v17, v1

    move-object/from16 v2, v19

    .line 317
    invoke-interface/range {v2 .. v18}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onLoadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

###### Class com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.AnonymousClass3 (com.google.android.exoplayer2.source.MediaSourceEventListener$EventDispatcher$3)
.class Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field final synthetic val$bytesLoaded:J

.field final synthetic val$dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field final synthetic val$dataType:I

.field final synthetic val$elapsedRealtimeMs:J

.field final synthetic val$loadDurationMs:J

.field final synthetic val$mediaEndTimeUs:J

.field final synthetic val$mediaStartTimeUs:J

.field final synthetic val$trackFormat:Lcom/google/android/exoplayer2/Format;

.field final synthetic val$trackSelectionData:Ljava/lang/Object;

.field final synthetic val$trackSelectionReason:I

.field final synthetic val$trackType:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .registers 21

    move-object v0, p0

    move-object v1, p1

    .line 368
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move v1, p3

    iput v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$dataType:I

    move v1, p4

    iput v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$trackType:I

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$trackFormat:Lcom/google/android/exoplayer2/Format;

    move v1, p6

    iput v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$trackSelectionReason:I

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$trackSelectionData:Ljava/lang/Object;

    move-wide v1, p8

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$mediaStartTimeUs:J

    move-wide v1, p10

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$mediaEndTimeUs:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$elapsedRealtimeMs:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$loadDurationMs:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$bytesLoaded:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    move-object/from16 v0, p0

    .line 371
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$100(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v4, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$dataType:I

    iget v5, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$trackType:I

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v7, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$trackSelectionReason:I

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$trackSelectionData:Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$mediaStartTimeUs:J

    .line 378
    invoke-static {v1, v9, v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;J)J

    move-result-wide v9

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$mediaEndTimeUs:J

    .line 379
    invoke-static {v1, v11, v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;J)J

    move-result-wide v11

    iget-wide v13, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$elapsedRealtimeMs:J

    move-object/from16 v19, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$loadDurationMs:J

    move-wide v15, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$3;->val$bytesLoaded:J

    move-wide/from16 v17, v1

    move-object/from16 v2, v19

    .line 371
    invoke-interface/range {v2 .. v18}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onLoadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

###### Class com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.AnonymousClass4 (com.google.android.exoplayer2.source.MediaSourceEventListener$EventDispatcher$4)
.class Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field final synthetic val$bytesLoaded:J

.field final synthetic val$dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field final synthetic val$dataType:I

.field final synthetic val$elapsedRealtimeMs:J

.field final synthetic val$error:Ljava/io/IOException;

.field final synthetic val$loadDurationMs:J

.field final synthetic val$mediaEndTimeUs:J

.field final synthetic val$mediaStartTimeUs:J

.field final synthetic val$trackFormat:Lcom/google/android/exoplayer2/Format;

.field final synthetic val$trackSelectionData:Ljava/lang/Object;

.field final synthetic val$trackSelectionReason:I

.field final synthetic val$trackType:I

.field final synthetic val$wasCanceled:Z


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .registers 23

    move-object v0, p0

    move-object v1, p1

    .line 428
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move v1, p3

    iput v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$dataType:I

    move v1, p4

    iput v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$trackType:I

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$trackFormat:Lcom/google/android/exoplayer2/Format;

    move v1, p6

    iput v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$trackSelectionReason:I

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$trackSelectionData:Ljava/lang/Object;

    move-wide v1, p8

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$mediaStartTimeUs:J

    move-wide v1, p10

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$mediaEndTimeUs:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$elapsedRealtimeMs:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$loadDurationMs:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$bytesLoaded:J

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$error:Ljava/io/IOException;

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$wasCanceled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    move-object/from16 v0, p0

    .line 431
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$100(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v4, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$dataType:I

    iget v5, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$trackType:I

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v7, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$trackSelectionReason:I

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$trackSelectionData:Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$mediaStartTimeUs:J

    .line 438
    invoke-static {v1, v9, v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;J)J

    move-result-wide v9

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$mediaEndTimeUs:J

    .line 439
    invoke-static {v1, v11, v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;J)J

    move-result-wide v11

    iget-wide v13, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$elapsedRealtimeMs:J

    move-object/from16 v21, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$loadDurationMs:J

    move-wide v15, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$bytesLoaded:J

    move-wide/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$error:Ljava/io/IOException;

    move-object/from16 v19, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$4;->val$wasCanceled:Z

    move/from16 v20, v1

    move-object/from16 v2, v21

    .line 431
    invoke-interface/range {v2 .. v20}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onLoadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-void
.end method

###### Class com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.AnonymousClass5 (com.google.android.exoplayer2.source.MediaSourceEventListener$EventDispatcher$5)
.class Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field final synthetic val$mediaEndTimeUs:J

.field final synthetic val$mediaStartTimeUs:J

.field final synthetic val$trackType:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;IJJ)V
    .registers 7

    .line 454
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput p2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->val$trackType:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->val$mediaStartTimeUs:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->val$mediaEndTimeUs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 457
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$100(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->val$trackType:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->val$mediaStartTimeUs:J

    .line 458
    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;J)J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$5;->val$mediaEndTimeUs:J

    invoke-static {v0, v5, v6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;J)J

    move-result-wide v5

    .line 457
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onUpstreamDiscarded(IJJ)V

    return-void
.end method

###### Class com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.AnonymousClass6 (com.google.android.exoplayer2.source.MediaSourceEventListener$EventDispatcher$6)
.class Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field final synthetic val$mediaTimeUs:J

.field final synthetic val$trackFormat:Lcom/google/android/exoplayer2/Format;

.field final synthetic val$trackSelectionData:Ljava/lang/Object;

.field final synthetic val$trackSelectionReason:I

.field final synthetic val$trackType:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V
    .registers 8

    .line 472
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput p2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->val$trackType:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->val$trackFormat:Lcom/google/android/exoplayer2/Format;

    iput p4, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->val$trackSelectionReason:I

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->val$trackSelectionData:Ljava/lang/Object;

    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->val$mediaTimeUs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$100(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->val$trackType:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->val$trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v4, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->val$trackSelectionReason:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->val$trackSelectionData:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$6;->val$mediaTimeUs:J

    .line 480
    invoke-static {v0, v6, v7}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;J)J

    move-result-wide v6

    .line 475
    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onDownstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    return-void
.end method
