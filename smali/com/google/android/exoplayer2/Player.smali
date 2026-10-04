###### Class com.google.android.exoplayer2.Player (com.google.android.exoplayer2.Player)
.class public interface abstract Lcom/google/android/exoplayer2/Player;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/Player$TimelineChangeReason;,
        Lcom/google/android/exoplayer2/Player$DiscontinuityReason;,
        Lcom/google/android/exoplayer2/Player$RepeatMode;,
        Lcom/google/android/exoplayer2/Player$DefaultEventListener;,
        Lcom/google/android/exoplayer2/Player$EventListener;,
        Lcom/google/android/exoplayer2/Player$TextComponent;,
        Lcom/google/android/exoplayer2/Player$VideoComponent;
    }
.end annotation


# static fields
.field public static final DISCONTINUITY_REASON_AD_INSERTION:I = 0x3

.field public static final DISCONTINUITY_REASON_INTERNAL:I = 0x4

.field public static final DISCONTINUITY_REASON_PERIOD_TRANSITION:I = 0x0

.field public static final DISCONTINUITY_REASON_SEEK:I = 0x1

.field public static final DISCONTINUITY_REASON_SEEK_ADJUSTMENT:I = 0x2

.field public static final REPEAT_MODE_ALL:I = 0x2

.field public static final REPEAT_MODE_OFF:I = 0x0

.field public static final REPEAT_MODE_ONE:I = 0x1

.field public static final STATE_BUFFERING:I = 0x2

.field public static final STATE_ENDED:I = 0x4

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_READY:I = 0x3

.field public static final TIMELINE_CHANGE_REASON_DYNAMIC:I = 0x2

.field public static final TIMELINE_CHANGE_REASON_PREPARED:I = 0x0

.field public static final TIMELINE_CHANGE_REASON_RESET:I = 0x1


# virtual methods
.method public abstract addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
.end method

.method public abstract getBufferedPercentage()I
.end method

.method public abstract getBufferedPosition()J
.end method

.method public abstract getContentPosition()J
.end method

.method public abstract getCurrentAdGroupIndex()I
.end method

.method public abstract getCurrentAdIndexInAdGroup()I
.end method

.method public abstract getCurrentManifest()Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getCurrentPeriodIndex()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
.end method

.method public abstract getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
.end method

.method public abstract getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
.end method

.method public abstract getCurrentWindowIndex()I
.end method

.method public abstract getDuration()J
.end method

.method public abstract getNextWindowIndex()I
.end method

.method public abstract getPlayWhenReady()Z
.end method

.method public abstract getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
.end method

.method public abstract getPlaybackState()I
.end method

.method public abstract getPreviousWindowIndex()I
.end method

.method public abstract getRendererCount()I
.end method

.method public abstract getRendererType(I)I
.end method

.method public abstract getRepeatMode()I
.end method

.method public abstract getShuffleModeEnabled()Z
.end method

.method public abstract getTextComponent()Lcom/google/android/exoplayer2/Player$TextComponent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract isCurrentWindowDynamic()Z
.end method

.method public abstract isCurrentWindowSeekable()Z
.end method

.method public abstract isLoading()Z
.end method

.method public abstract isPlayingAd()Z
.end method

.method public abstract release()V
.end method

.method public abstract removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
.end method

.method public abstract seekTo(IJ)V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract seekToDefaultPosition()V
.end method

.method public abstract seekToDefaultPosition(I)V
.end method

.method public abstract setPlayWhenReady(Z)V
.end method

.method public abstract setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .param p1    # Lcom/google/android/exoplayer2/PlaybackParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setRepeatMode(I)V
.end method

.method public abstract setShuffleModeEnabled(Z)V
.end method

.method public abstract stop()V
.end method

.method public abstract stop(Z)V
.end method

###### Class com.google.android.exoplayer2.Player.DefaultEventListener (com.google.android.exoplayer2.Player$DefaultEventListener)
.class public abstract Lcom/google/android/exoplayer2/Player$DefaultEventListener;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DefaultEventListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingChanged(Z)V
    .registers 2

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 2

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .registers 2

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .registers 3

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .registers 2

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .registers 2

    return-void
.end method

.method public onSeekProcessed()V
    .registers 1

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .registers 2

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .registers 4

    .line 287
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$DefaultEventListener;->onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .registers 3

    return-void
.end method

###### Class com.google.android.exoplayer2.Player.DiscontinuityReason (com.google.android.exoplayer2.Player$DiscontinuityReason)
.class public interface abstract annotation Lcom/google/android/exoplayer2/Player$DiscontinuityReason;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "DiscontinuityReason"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.exoplayer2.Player.EventListener (com.google.android.exoplayer2.Player$EventListener)
.class public interface abstract Lcom/google/android/exoplayer2/Player$EventListener;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onLoadingChanged(Z)V
.end method

.method public abstract onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
.end method

.method public abstract onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
.end method

.method public abstract onPlayerStateChanged(ZI)V
.end method

.method public abstract onPositionDiscontinuity(I)V
.end method

.method public abstract onRepeatModeChanged(I)V
.end method

.method public abstract onSeekProcessed()V
.end method

.method public abstract onShuffleModeEnabledChanged(Z)V
.end method

.method public abstract onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
.end method

.method public abstract onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
.end method

###### Class com.google.android.exoplayer2.Player.RepeatMode (com.google.android.exoplayer2.Player$RepeatMode)
.class public interface abstract annotation Lcom/google/android/exoplayer2/Player$RepeatMode;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "RepeatMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.exoplayer2.Player.TextComponent (com.google.android.exoplayer2.Player$TextComponent)
.class public interface abstract Lcom/google/android/exoplayer2/Player$TextComponent;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextComponent"
.end annotation


# virtual methods
.method public abstract addTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V
.end method

.method public abstract removeTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V
.end method

###### Class com.google.android.exoplayer2.Player.TimelineChangeReason (com.google.android.exoplayer2.Player$TimelineChangeReason)
.class public interface abstract annotation Lcom/google/android/exoplayer2/Player$TimelineChangeReason;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TimelineChangeReason"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.exoplayer2.Player.VideoComponent (com.google.android.exoplayer2.Player$VideoComponent)
.class public interface abstract Lcom/google/android/exoplayer2/Player$VideoComponent;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoComponent"
.end annotation


# virtual methods
.method public abstract addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V
.end method

.method public abstract clearVideoSurface()V
.end method

.method public abstract clearVideoSurface(Landroid/view/Surface;)V
.end method

.method public abstract clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract clearVideoSurfaceView(Landroid/view/SurfaceView;)V
.end method

.method public abstract clearVideoTextureView(Landroid/view/TextureView;)V
.end method

.method public abstract getVideoScalingMode()I
.end method

.method public abstract removeVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V
.end method

.method public abstract setVideoScalingMode(I)V
.end method

.method public abstract setVideoSurface(Landroid/view/Surface;)V
.end method

.method public abstract setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract setVideoSurfaceView(Landroid/view/SurfaceView;)V
.end method

.method public abstract setVideoTextureView(Landroid/view/TextureView;)V
.end method
