###### Class com.google.android.exoplayer2.source.ExtractorMediaSource (com.google.android.exoplayer2.source.ExtractorMediaSource)
.class public final Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
.super Ljava/lang/Object;
.source "ExtractorMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOADING_CHECK_INTERVAL_BYTES:I = 0x100000

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE:I = 0x6

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_ON_DEMAND:I = 0x3

.field public static final MIN_RETRY_COUNT_DEFAULT_FOR_MEDIA:I = -0x1


# instance fields
.field private final continueLoadingCheckIntervalBytes:I

.field private final customCacheKey:Ljava/lang/String;

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private final minLoadableRetryCount:I

.field private sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private timelineDurationUs:J

.field private timelineIsSeekable:Z

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Ljava/lang/String;I)V
    .registers 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p6

    if-nez v0, :cond_7

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_d

    .line 297
    :cond_7
    new-instance v1, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    move-object v8, v1

    :goto_d
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Ljava/lang/String;I)V
    .registers 9
    .param p5    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->uri:Landroid/net/Uri;

    .line 318
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 319
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 320
    iput p4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->minLoadableRetryCount:I

    .line 321
    new-instance p1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p1, p5, p6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 322
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->customCacheKey:Ljava/lang/String;

    .line 323
    iput p8, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->continueLoadingCheckIntervalBytes:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Ljava/lang/String;ILcom/google/android/exoplayer2/source/ExtractorMediaSource$1;)V
    .registers 10

    .line 47
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 245
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Ljava/lang/String;)V
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, -0x1

    const/high16 v8, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 268
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Ljava/lang/String;I)V

    return-void
.end method

.method private notifySourceInfoRefreshed(JZ)V
    .registers 7

    .line 378
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineDurationUs:J

    .line 379
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineIsSeekable:Z

    .line 381
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    new-instance p2, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineDurationUs:J

    iget-boolean p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineIsSeekable:Z

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, p3, v2}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZ)V

    const/4 p3, 0x0

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 13

    .line 339
    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 340
    new-instance p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->uri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 342
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 343
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;->createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v3

    iget v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->minLoadableRetryCount:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->customCacheKey:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->continueLoadingCheckIntervalBytes:I

    move-object v0, p1

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;[Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V

    return-object p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 1

    return-void
.end method

.method public onSourceInfoRefreshed(JZ)V
    .registers 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_b

    .line 367
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineDurationUs:J

    .line 368
    :cond_b
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineDurationUs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_16

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineIsSeekable:Z

    if-ne v0, p3, :cond_16

    return-void

    .line 372
    :cond_16
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->notifySourceInfoRefreshed(JZ)V

    return-void
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .registers 4

    .line 328
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p3, 0x0

    .line 329
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->notifySourceInfoRefreshed(JZ)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 2

    .line 354
    check-cast p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->release()V

    return-void
.end method

.method public releaseSource()V
    .registers 2

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    return-void
.end method

###### Class com.google.android.exoplayer2.source.ExtractorMediaSource.AnonymousClass1 (com.google.android.exoplayer2.source.ExtractorMediaSource$1)
.class synthetic Lcom/google/android/exoplayer2/source/ExtractorMediaSource$1;
.super Ljava/lang/Object;
.source "ExtractorMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.source.ExtractorMediaSource.EventListener (com.google.android.exoplayer2.source.ExtractorMediaSource$EventListener)
.class public interface abstract Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;
.super Ljava/lang/Object;
.source "ExtractorMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onLoadError(Ljava/io/IOException;)V
.end method

###### Class com.google.android.exoplayer2.source.ExtractorMediaSource.EventListenerWrapper (com.google.android.exoplayer2.source.ExtractorMediaSource$EventListenerWrapper)
.class final Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;
.super Ljava/lang/Object;
.source "ExtractorMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventListenerWrapper"
.end annotation


# instance fields
.field private final eventListener:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V
    .registers 2

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;->eventListener:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;

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
    .registers 22

    move-object v0, p0

    .line 457
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;->eventListener:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;

    move-object/from16 v2, p17

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;->onLoadError(Ljava/io/IOException;)V

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

###### Class com.google.android.exoplayer2.source.ExtractorMediaSource.Factory (com.google.android.exoplayer2.source.ExtractorMediaSource$Factory)
.class public final Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;
.super Ljava/lang/Object;
.source "ExtractorMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private continueLoadingCheckIntervalBytes:I

.field private customCacheKey:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private isCreateCalled:Z

.field private minLoadableRetryCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    const/4 p1, -0x1

    .line 125
    iput p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->minLoadableRetryCount:I

    const/high16 p1, 0x100000

    .line 126
    iput p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    return-void
.end method


# virtual methods
.method public createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
    .registers 3

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
    .registers 15
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    if-nez v0, :cond_e

    .line 215
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 217
    :cond_e
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    iget v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->minLoadableRetryCount:I

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Ljava/lang/String;ILcom/google/android/exoplayer2/source/ExtractorMediaSource$1;)V

    return-object v0
.end method

.method public bridge synthetic createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/MediaSource;
    .registers 4
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedTypes()[I
    .registers 4

    const/4 v0, 0x1

    .line 224
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    return-object v0
.end method

.method public setContinueLoadingCheckIntervalBytes(I)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;
    .registers 3

    .line 186
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 187
    iput p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    return-object p0
.end method

.method public setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;
    .registers 3

    .line 155
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 156
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;
    .registers 3

    .line 140
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 141
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-object p0
.end method

.method public setMinLoadableRetryCount(I)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;
    .registers 3

    .line 169
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 170
    iput p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->minLoadableRetryCount:I

    return-object p0
.end method
