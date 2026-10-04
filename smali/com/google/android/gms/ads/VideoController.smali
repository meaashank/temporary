###### Class com.google.android.gms.ads.VideoController (com.google.android.gms.ads.VideoController)
.class public final Lcom/google/android/gms/ads/VideoController;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzark;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    }
.end annotation


# static fields
.field public static final PLAYBACK_STATE_ENDED:I = 0x3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PLAYBACK_STATE_PAUSED:I = 0x2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PLAYBACK_STATE_PLAYING:I = 0x1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PLAYBACK_STATE_READY:I = 0x5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PLAYBACK_STATE_UNKNOWN:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzwb:Lcom/google/android/gms/internal/ads/zzyp;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private zzwc:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAspectRatio()F
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 86
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    return v2

    .line 87
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzyp;->getAspectRatio()F

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_12
    .catchall {:try_start_a .. :try_end_10} :catchall_1a

    :try_start_10
    monitor-exit v0

    return v1

    :catch_12
    move-exception v1

    const-string v3, "Unable to call getAspectRatio on video controller."

    .line 89
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    monitor-exit v0

    return v2

    :catchall_1a
    move-exception v1

    .line 91
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final getPlaybackState()I
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 46
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    return v2

    .line 47
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzyp;->getPlaybackState()I

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_12
    .catchall {:try_start_a .. :try_end_10} :catchall_1a

    :try_start_10
    monitor-exit v0

    return v1

    :catch_12
    move-exception v1

    const-string v3, "Unable to call getPlaybackState on video controller."

    .line 49
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    monitor-exit v0

    return v2

    :catchall_1a
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final getVideoLifecycleCallbacks()Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwc:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 80
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final hasVideoContent()Z
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    .line 83
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public final isClickToExpandEnabled()Z
    .registers 5

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 62
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    return v2

    .line 63
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzyp;->isClickToExpandEnabled()Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_12
    .catchall {:try_start_a .. :try_end_10} :catchall_1a

    :try_start_10
    monitor-exit v0

    return v1

    :catch_12
    move-exception v1

    const-string v3, "Unable to call isClickToExpandEnabled."

    .line 65
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    monitor-exit v0

    return v2

    :catchall_1a
    move-exception v1

    .line 67
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final isCustomControlsEnabled()Z
    .registers 5

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 54
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    return v2

    .line 55
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzyp;->isCustomControlsEnabled()Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_12
    .catchall {:try_start_a .. :try_end_10} :catchall_1a

    :try_start_10
    monitor-exit v0

    return v1

    :catch_12
    move-exception v1

    const-string v3, "Unable to call isUsingCustomPlayerControls."

    .line 57
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    monitor-exit v0

    return v2

    :catchall_1a
    move-exception v1

    .line 59
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final isMuted()Z
    .registers 5

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    const/4 v2, 0x1

    if-nez v1, :cond_a

    .line 38
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    return v2

    .line 39
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzyp;->isMuted()Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_12
    .catchall {:try_start_a .. :try_end_10} :catchall_1a

    :try_start_10
    monitor-exit v0

    return v1

    :catch_12
    move-exception v1

    const-string v3, "Unable to call isMuted on video controller."

    .line 41
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    monitor-exit v0

    return v2

    :catchall_1a
    move-exception v1

    .line 43
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final mute(Z)V
    .registers 4

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    if-nez v1, :cond_9

    .line 30
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_17

    return-void

    .line 31
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzyp;->mute(Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_17

    goto :goto_15

    :catch_f
    move-exception p1

    :try_start_10
    const-string v1, "Unable to call mute on video controller."

    .line 34
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :goto_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public final pause()V
    .registers 4

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    if-nez v1, :cond_9

    .line 22
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_17

    return-void

    .line 23
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzyp;->pause()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_17

    goto :goto_15

    :catch_f
    move-exception v1

    :try_start_10
    const-string v2, "Unable to call pause on video controller."

    .line 26
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    :goto_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public final play()V
    .registers 4

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    if-nez v1, :cond_9

    .line 14
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_17

    return-void

    .line 15
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzyp;->play()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_17

    goto :goto_15

    :catch_f
    move-exception v1

    :try_start_10
    const-string v2, "Unable to call play on video controller."

    .line 18
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :goto_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public final setVideoLifecycleCallbacks(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V
    .registers 5

    const-string v0, "VideoLifecycleCallbacks may not be null."

    .line 68
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_8
    iput-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzwc:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    if-nez v1, :cond_10

    .line 72
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_23

    return-void

    .line 73
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzzv;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzzv;-><init>(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzyp;->zza(Lcom/google/android/gms/internal/ads/zzys;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1b
    .catchall {:try_start_10 .. :try_end_1a} :catchall_23

    goto :goto_21

    :catch_1b
    move-exception p1

    :try_start_1c
    const-string v1, "Unable to call setVideoLifecycleCallbacks on video controller."

    .line 76
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :goto_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyp;)V
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzwc:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    if-eqz p1, :cond_e

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzwc:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/VideoController;->setVideoLifecycleCallbacks(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    .line 8
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public final zzbc()Lcom/google/android/gms/internal/ads/zzyp;
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzwb:Lcom/google/android/gms/internal/ads/zzyp;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

###### Class com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks (com.google.android.gms.ads.VideoController$VideoLifecycleCallbacks)
.class public Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/VideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoLifecycleCallbacks"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoEnd()V
    .registers 1

    return-void
.end method

.method public onVideoMute(Z)V
    .registers 2

    return-void
.end method

.method public onVideoPause()V
    .registers 1

    return-void
.end method

.method public onVideoPlay()V
    .registers 1

    return-void
.end method

.method public onVideoStart()V
    .registers 1

    return-void
.end method
