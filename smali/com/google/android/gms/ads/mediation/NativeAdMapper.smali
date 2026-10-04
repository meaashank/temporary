###### Class com.google.android.gms.ads.mediation.NativeAdMapper (com.google.android.gms.ads.mediation.NativeAdMapper)
.class public Lcom/google/android/gms/ads/mediation/NativeAdMapper;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzark;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mAdChoicesContent:Landroid/view/View;

.field protected mExtras:Landroid/os/Bundle;

.field protected mOverrideClickHandling:Z

.field protected mOverrideImpressionRecording:Z

.field private zzcml:Lcom/google/android/gms/ads/VideoController;

.field private zzfbm:Landroid/view/View;

.field private zzfbn:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getAdChoicesContent()Landroid/view/View;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->mAdChoicesContent:Landroid/view/View;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getOverrideClickHandling()Z
    .registers 2

    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->mOverrideClickHandling:Z

    return v0
.end method

.method public final getOverrideImpressionRecording()Z
    .registers 2

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->mOverrideImpressionRecording:Z

    return v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->zzcml:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public hasVideoContent()Z
    .registers 2

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->zzfbn:Z

    return v0
.end method

.method public recordImpression()V
    .registers 1

    return-void
.end method

.method public setAdChoicesContent(Landroid/view/View;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->mAdChoicesContent:Landroid/view/View;

    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .registers 2

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public setHasVideoContent(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->zzfbn:Z

    return-void
.end method

.method public setMediaView(Landroid/view/View;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->zzfbm:Landroid/view/View;

    return-void
.end method

.method public final setOverrideClickHandling(Z)V
    .registers 2

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->mOverrideClickHandling:Z

    return-void
.end method

.method public final setOverrideImpressionRecording(Z)V
    .registers 2

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->mOverrideImpressionRecording:Z

    return-void
.end method

.method public trackView(Landroid/view/View;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public untrackView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/VideoController;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->zzcml:Lcom/google/android/gms/ads/VideoController;

    return-void
.end method

.method public final zzafh()Landroid/view/View;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->zzfbm:Landroid/view/View;

    return-object v0
.end method
