###### Class com.gaia.ngallery.j.b (com.gaia.ngallery.j.b)
.class public Lcom/gaia/ngallery/j/b;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/gaia/ngallery/j/b;


# instance fields
.field private c:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private d:Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

.field private e:Lcom/gaia/ngallery/model/AlbumFile;

.field private f:I

.field private g:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private h:Landroid/view/View;

.field private i:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

.field private j:Lcom/google/android/exoplayer2/Player$EventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/gaia/ngallery/j/b;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/j/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/gaia/ngallery/j/b$1;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/j/b$1;-><init>(Lcom/gaia/ngallery/j/b;)V

    iput-object v0, p0, Lcom/gaia/ngallery/j/b;->j:Lcom/google/android/exoplayer2/Player$EventListener;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/gaia/ngallery/j/b;
    .registers 2

    .line 42
    sget-object p0, Lcom/gaia/ngallery/j/b;->b:Lcom/gaia/ngallery/j/b;

    if-nez p0, :cond_17

    .line 43
    const-class p0, Lcom/gaia/ngallery/j/b;

    monitor-enter p0

    .line 44
    :try_start_7
    sget-object v0, Lcom/gaia/ngallery/j/b;->b:Lcom/gaia/ngallery/j/b;

    if-nez v0, :cond_12

    .line 45
    new-instance v0, Lcom/gaia/ngallery/j/b;

    invoke-direct {v0}, Lcom/gaia/ngallery/j/b;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/j/b;->b:Lcom/gaia/ngallery/j/b;

    .line 46
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0

    .line 48
    :cond_17
    :goto_17
    sget-object p0, Lcom/gaia/ngallery/j/b;->b:Lcom/gaia/ngallery/j/b;

    return-object p0
.end method

.method static synthetic a(Lcom/gaia/ngallery/j/b;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/gaia/ngallery/j/b;->c:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic b(Lcom/gaia/ngallery/j/b;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/gaia/ngallery/j/b;->d:Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    return-object p0
.end method

.method static synthetic h()Ljava/lang/String;
    .registers 1

    .line 35
    sget-object v0, Lcom/gaia/ngallery/j/b;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/gaia/ngallery/j/b;->f:I

    return v0
.end method

.method public a(Landroid/content/Context;Lcom/gaia/ngallery/model/AlbumFile;I)V
    .registers 12

    .line 89
    invoke-virtual {p0}, Lcom/gaia/ngallery/j/b;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 90
    invoke-virtual {p0}, Lcom/gaia/ngallery/j/b;->b()V

    .line 92
    :cond_9
    iput-object p2, p0, Lcom/gaia/ngallery/j/b;->e:Lcom/gaia/ngallery/model/AlbumFile;

    .line 93
    iput p3, p0, Lcom/gaia/ngallery/j/b;->f:I

    .line 94
    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 95
    new-instance p3, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0, p3}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 98
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 100
    new-instance v4, Lcom/gaia/ngallery/c/b/a/b;

    const-string v0, "aitrip"

    .line 101
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p1, v0, p3}, Lcom/gaia/ngallery/c/b/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 102
    new-instance v5, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 104
    new-instance p3, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    iput-object p3, p0, Lcom/gaia/ngallery/j/b;->d:Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    .line 106
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/j/b;->c:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 108
    iget-object p1, p0, Lcom/gaia/ngallery/j/b;->c:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object p2, p0, Lcom/gaia/ngallery/j/b;->d:Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 109
    iget-object p1, p0, Lcom/gaia/ngallery/j/b;->c:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 110
    iget-object p1, p0, Lcom/gaia/ngallery/j/b;->c:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object p2, p0, Lcom/gaia/ngallery/j/b;->j:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V
    .registers 5

    .line 134
    sget-object v0, Lcom/gaia/ngallery/j/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setView playerInView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/gaia/ngallery/j/b;->c:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 137
    iput-object p1, p0, Lcom/gaia/ngallery/j/b;->i:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    .line 138
    sget v0, Lcom/gaia/ngallery/i$h;->exo_content_frame:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v0, p0, Lcom/gaia/ngallery/j/b;->g:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 139
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/j/b;->h:Landroid/view/View;

    .line 140
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->showController()V

    return-void
.end method

.method public b()V
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/gaia/ngallery/j/b;->c:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 70
    iget-object v0, p0, Lcom/gaia/ngallery/j/b;->c:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 71
    iget-object v0, p0, Lcom/gaia/ngallery/j/b;->c:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 72
    iput-object v1, p0, Lcom/gaia/ngallery/j/b;->c:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 74
    :cond_11
    iget-object v0, p0, Lcom/gaia/ngallery/j/b;->d:Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    if-eqz v0, :cond_1c

    .line 75
    iget-object v0, p0, Lcom/gaia/ngallery/j/b;->d:Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->releaseSource()V

    .line 76
    iput-object v1, p0, Lcom/gaia/ngallery/j/b;->d:Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    :cond_1c
    return-void
.end method

.method public c()Lcom/gaia/ngallery/model/AlbumFile;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/gaia/ngallery/j/b;->e:Lcom/gaia/ngallery/model/AlbumFile;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/gaia/ngallery/j/b;->c:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public e()J
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/gaia/ngallery/j/b;->c:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()J
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/gaia/ngallery/j/b;->c:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()V
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/gaia/ngallery/j/b;->c:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_a

    .line 291
    iget-object v0, p0, Lcom/gaia/ngallery/j/b;->c:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_a
    return-void
.end method

###### Class com.gaia.ngallery.j.b.AnonymousClass1 (com.gaia.ngallery.j.b$1)
.class Lcom/gaia/ngallery/j/b$1;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/j/b;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/j/b;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/gaia/ngallery/j/b$1;->a:Lcom/gaia/ngallery/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingChanged(Z)V
    .registers 4

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u64ad\u653e: onLoadingChanged  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gaia/ngallery/j/b$1;->a:Lcom/gaia/ngallery/j/b;

    invoke-static {v0}, Lcom/gaia/ngallery/j/b;->a(Lcom/gaia/ngallery/j/b;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 5

    .line 279
    invoke-static {}, Lcom/gaia/ngallery/j/b;->h()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\u64ad\u653e: onPlaybackParametersChanged  "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .registers 5

    .line 264
    invoke-static {}, Lcom/gaia/ngallery/j/b;->h()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\u64ad\u653e: onPlayerError  "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .registers 5

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateChanged: playWhenReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " playbackState = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch p2, :pswitch_data_80

    .line 246
    invoke-static {}, Lcom/gaia/ngallery/j/b;->h()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExoPlayer ========== UNKNOWN STATE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 235
    :pswitch_3f
    iget-object p1, p0, Lcom/gaia/ngallery/j/b$1;->a:Lcom/gaia/ngallery/j/b;

    invoke-static {p1}, Lcom/gaia/ngallery/j/b;->a(Lcom/gaia/ngallery/j/b;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    iget-object p2, p0, Lcom/gaia/ngallery/j/b$1;->a:Lcom/gaia/ngallery/j/b;

    invoke-static {p2}, Lcom/gaia/ngallery/j/b;->b(Lcom/gaia/ngallery/j/b;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 236
    iget-object p1, p0, Lcom/gaia/ngallery/j/b$1;->a:Lcom/gaia/ngallery/j/b;

    invoke-static {p1}, Lcom/gaia/ngallery/j/b;->a(Lcom/gaia/ngallery/j/b;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 237
    invoke-static {}, Lcom/gaia/ngallery/j/b;->h()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExoPlayer ========== STATE_ENDED"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 243
    :pswitch_61
    invoke-static {}, Lcom/gaia/ngallery/j/b;->h()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExoPlayer ========== STATE_READY"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 232
    :pswitch_6b
    invoke-static {}, Lcom/gaia/ngallery/j/b;->h()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExoPlayer ========== STATE_BUFFERING"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 240
    :pswitch_75
    invoke-static {}, Lcom/gaia/ngallery/j/b;->h()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExoPlayer ========== STATE_IDLE"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7e
    return-void

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_75
        :pswitch_6b
        :pswitch_61
        :pswitch_3f
    .end packed-switch
.end method

.method public onPositionDiscontinuity(I)V
    .registers 2

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .registers 5

    .line 254
    invoke-static {}, Lcom/gaia/ngallery/j/b;->h()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\u64ad\u653e: onRepeatModeChanged  "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

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

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .registers 6

    .line 161
    invoke-static {}, Lcom/gaia/ngallery/j/b;->h()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u64ad\u653e: onTimelineChanged \u5468\u671f\u603b\u6570 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .registers 5

    .line 167
    invoke-static {}, Lcom/gaia/ngallery/j/b;->h()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "\u64ad\u653e: TrackGroupArray  "

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
