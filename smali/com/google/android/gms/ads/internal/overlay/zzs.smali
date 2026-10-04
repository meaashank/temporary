###### Class com.google.android.gms.ads.internal.overlay.zzs (com.google.android.gms.ads.internal.overlay.zzs)
.class public final Lcom/google/android/gms/ads/internal/overlay/zzs;
.super Lcom/google/android/gms/internal/ads/zzaoq;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzark;
.end annotation


# instance fields
.field private zzdsg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private zzdsh:Z

.field private zzdsi:Z

.field private zzug:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaoq;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsh:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsi:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzug:Landroid/app/Activity;

    return-void
.end method

.method private final declared-synchronized zzvy()V
    .registers 2

    monitor-enter p0

    .line 47
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsi:Z

    if-nez v0, :cond_15

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

    if-eqz v0, :cond_12

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zziv()V

    :cond_12
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsi:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 51
    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    .line 46
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public final onBackPressed()V
    .registers 1

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 10
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v1, :cond_13

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzug:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_13
    if-eqz v0, :cond_1b

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzug:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1b
    if-nez p1, :cond_4e

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrt:Lcom/google/android/gms/internal/ads/zzvt;

    if-eqz p1, :cond_2a

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrt:Lcom/google/android/gms/internal/ads/zzvt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzvt;->onAdClicked()V

    .line 19
    :cond_2a
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzug:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzug:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "shouldCallOnOverlayOpened"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

    if-eqz p1, :cond_4e

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zziw()V

    .line 23
    :cond_4e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzlc()Lcom/google/android/gms/ads/internal/overlay/zza;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzug:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrs:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdrz:Lcom/google/android/gms/ads/internal/overlay/zzt;

    .line 24
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/zzt;)Z

    move-result p1

    if-nez p1, :cond_66

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzug:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_66
    return-void
.end method

.method public final onDestroy()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzug:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzvy()V

    :cond_b
    return-void
.end method

.method public final onPause()V
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

    if-eqz v0, :cond_d

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->onPause()V

    .line 38
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzug:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzvy()V

    :cond_18
    return-void
.end method

.method public final onRestart()V
    .registers 1

    return-void
.end method

.method public final onResume()V
    .registers 2

    .line 27
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsh:Z

    if-eqz v0, :cond_a

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzug:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_a
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsh:Z

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

    if-eqz v0, :cond_1a

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->onResume()V

    :cond_1a
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    .line 34
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzdsh:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .registers 1

    return-void
.end method

.method public final onStop()V
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzug:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzvy()V

    :cond_b
    return-void
.end method

.method public final zzay()V
    .registers 1

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    return-void
.end method

.method public final zzvq()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
