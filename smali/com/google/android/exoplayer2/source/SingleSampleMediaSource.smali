###### Class com.google.android.exoplayer2.source.SingleSampleMediaSource (com.google.android.exoplayer2.source.SingleSampleMediaSource)
.class public final Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListenerWrapper;,
        Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;,
        Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final durationUs:J

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final format:Lcom/google/android/exoplayer2/Format;

.field private final minLoadableRetryCount:I

.field private final timeline:Lcom/google/android/exoplayer2/Timeline;

.field private final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;J)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 172
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JI)V
    .registers 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    .line 191
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Z)V
    .registers 10

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 241
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->format:Lcom/google/android/exoplayer2/Format;

    .line 242
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->durationUs:J

    .line 243
    iput p6, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->minLoadableRetryCount:I

    .line 244
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    .line 245
    new-instance p2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p2, p7, p8}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 246
    new-instance p2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 247
    new-instance p1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-direct {p1, p4, p5, p2, p3}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZ)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ZLcom/google/android/exoplayer2/source/SingleSampleMediaSource$1;)V
    .registers 11

    .line 34
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JILandroid/os/Handler;Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;IZ)V
    .registers 23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p8

    if-nez v0, :cond_7

    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_f

    .line 220
    :cond_7
    new-instance v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListenerWrapper;

    move/from16 v2, p9

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListenerWrapper;-><init>(Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;I)V

    move-object v10, v1

    :goto_f
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v11, p10

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Z)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 12

    .line 264
    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 265
    new-instance p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->format:Lcom/google/android/exoplayer2/Format;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->durationUs:J

    iget v6, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->minLoadableRetryCount:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Z)V

    return-object p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 1

    return-void
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .registers 4

    .line 254
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const/4 p2, 0x0

    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 2

    .line 277
    check-cast p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->release()V

    return-void
.end method

.method public releaseSource()V
    .registers 1

    return-void
.end method

###### Class com.google.android.exoplayer2.source.SingleSampleMediaSource.AnonymousClass1 (com.google.android.exoplayer2.source.SingleSampleMediaSource$1)
.class synthetic Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$1;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.source.SingleSampleMediaSource.EventListener (com.google.android.exoplayer2.source.SingleSampleMediaSource$EventListener)
.class public interface abstract Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onLoadError(ILjava/io/IOException;)V
.end method

###### Class com.google.android.exoplayer2.source.SingleSampleMediaSource.EventListenerWrapper (com.google.android.exoplayer2.source.SingleSampleMediaSource$EventListenerWrapper)
.class final Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListenerWrapper;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventListenerWrapper"
.end annotation


# instance fields
.field private final eventListener:Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;

.field private final eventSourceId:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;I)V
    .registers 3

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListenerWrapper;->eventListener:Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;

    .line 296
    iput p2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListenerWrapper;->eventSourceId:I

    return-void
.end method


# virtual methods
.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V
    .registers 7

    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .registers 17

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .registers 17

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .registers 23

    move-object v0, p0

    .line 360
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListenerWrapper;->eventListener:Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;

    iget v2, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListenerWrapper;->eventSourceId:I

    move-object/from16 v3, p17

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;->onLoadError(ILjava/io/IOException;)V

    return-void
.end method

.method public onLoadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
    .registers 13

    return-void
.end method

.method public onUpstreamDiscarded(IJJ)V
    .registers 6

    return-void
.end method

###### Class com.google.android.exoplayer2.source.SingleSampleMediaSource.Factory (com.google.android.exoplayer2.source.SingleSampleMediaSource$Factory)
.class public final Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private isCreateCalled:Z

.field private minLoadableRetryCount:I

.field private treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    const/4 p1, 0x3

    .line 71
    iput p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->minLoadableRetryCount:I

    return-void
.end method


# virtual methods
.method public createMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 114
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;JLandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;JLandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
    .registers 20
    .param p5    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    const/4 v1, 0x1

    .line 133
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    .line 134
    new-instance v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget v8, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->minLoadableRetryCount:I

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    const/4 v12, 0x0

    move-object v2, v1

    move-object v3, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ZLcom/google/android/exoplayer2/source/SingleSampleMediaSource$1;)V

    return-object v1
.end method

.method public setMinLoadableRetryCount(I)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .registers 3

    .line 83
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 84
    iput p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->minLoadableRetryCount:I

    return-object p0
.end method

.method public setTreatLoadErrorsAsEndOfStream(Z)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .registers 3

    .line 99
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 100
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    return-object p0
.end method
