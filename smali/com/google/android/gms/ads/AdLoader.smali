###### Class com.google.android.gms.ads.AdLoader (com.google.android.gms.ads.AdLoader)
.class public Lcom/google/android/gms/ads/AdLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdLoader$Builder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzvn:Lcom/google/android/gms/internal/ads/zzwe;

.field private final zzvo:Lcom/google/android/gms/internal/ads/zzxd;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzxd;)V
    .registers 4

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwe;->zzckj:Lcom/google/android/gms/internal/ads/zzwe;

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/AdLoader;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzwe;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzwe;)V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/ads/AdLoader;->mContext:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/ads/AdLoader;->zzvo:Lcom/google/android/gms/internal/ads/zzxd;

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/ads/AdLoader;->zzvn:Lcom/google/android/gms/internal/ads/zzwe;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzyx;)V
    .registers 4

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzvo:Lcom/google/android/gms/internal/ads/zzxd;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzwe;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzxd;->zzd(Lcom/google/android/gms/internal/ads/zzwb;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    const-string v0, "Failed to load ad."

    .line 13
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzvo:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxd;->zzje()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to get the mediation adapter class name."

    .line 27
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .registers 3

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzvo:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxd;->isLoading()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to check if ad is loading."

    .line 31
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .registers 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzaz()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdLoader;->zza(Lcom/google/android/gms/internal/ads/zzyx;)V

    return-void
.end method

.method public loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .registers 2

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzaz()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdLoader;->zza(Lcom/google/android/gms/internal/ads/zzyx;)V

    return-void
.end method

.method public loadAds(Lcom/google/android/gms/ads/AdRequest;I)V
    .registers 5
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzaz()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object p1

    .line 18
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzvo:Lcom/google/android/gms/internal/ads/zzxd;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzwe;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzxd;->zza(Lcom/google/android/gms/internal/ads/zzwb;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string p2, "Failed to load ads."

    .line 21
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.google.android.gms.ads.AdLoader.Builder (com.google.android.gms.ads.AdLoader$Builder)
.class public Lcom/google/android/gms/ads/AdLoader$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzvp:Lcom/google/android/gms/internal/ads/zzxg;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzxg;)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->mContext:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzvp:Lcom/google/android/gms/internal/ads/zzxg;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-string v0, "context cannot be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwu;->zzpw()Lcom/google/android/gms/internal/ads/zzwj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzalf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzalf;-><init>()V

    .line 4
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzwj;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalg;)Lcom/google/android/gms/internal/ads/zzxg;

    move-result-object p1

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzxg;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/ads/AdLoader;
    .registers 4

    .line 66
    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/AdLoader;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzvp:Lcom/google/android/gms/internal/ads/zzxg;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzxg;->zzkd()Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzxd;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    const-string v1, "Failed to build AdLoader."

    .line 68
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public forAppInstallAd(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzvp:Lcom/google/android/gms/internal/ads/zzxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzafc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzafc;-><init>(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzaeb;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p1

    const-string v0, "Failed to add app install ad listener"

    .line 19
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    return-object p0
.end method

.method public forContentAd(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzvp:Lcom/google/android/gms/internal/ads/zzxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzafd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzafd;-><init>(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzaee;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p1

    const-string v0, "Failed to add content ad listener"

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    return-object p0
.end method

.method public forCustomTemplateAd(Ljava/lang/String;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 6

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzvp:Lcom/google/android/gms/internal/ads/zzxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaff;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzaff;-><init>(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;)V

    if-nez p3, :cond_b

    const/4 p2, 0x0

    goto :goto_10

    .line 29
    :cond_b
    new-instance p2, Lcom/google/android/gms/internal/ads/zzafe;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzafe;-><init>(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)V

    .line 30
    :goto_10
    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaek;Lcom/google/android/gms/internal/ads/zzaeh;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception p1

    const-string p2, "Failed to add custom template ad listener"

    .line 33
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1a
    return-object p0
.end method

.method public varargs forPublisherAdView(Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;[Lcom/google/android/gms/ads/AdSize;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 5

    if-eqz p2, :cond_1e

    .line 35
    array-length v0, p2

    if-lez v0, :cond_1e

    .line 37
    :try_start_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    .line 38
    iget-object p2, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzvp:Lcom/google/android/gms/internal/ads/zzxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzafg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzafg;-><init>(Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;)V

    invoke-interface {p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzaen;Lcom/google/android/gms/internal/ads/zzwf;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception p1

    const-string p2, "Failed to add publisher banner ad listener"

    .line 41
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1d
    return-object p0

    .line 36
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The supported ad sizes must contain at least one valid ad size."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forUnifiedNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 4

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzvp:Lcom/google/android/gms/internal/ads/zzxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzafi;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzafi;-><init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzaeq;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p1

    const-string v0, "Failed to add google native ad listener"

    .line 24
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    return-object p0
.end method

.method public withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 4

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzvp:Lcom/google/android/gms/internal/ads/zzxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvx;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzvx;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zzb(Lcom/google/android/gms/internal/ads/zzxa;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p1

    const-string v0, "Failed to set AdListener."

    .line 46
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    return-object p0
.end method

.method public withCorrelator(Lcom/google/android/gms/ads/Correlator;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 3
    .param p1    # Lcom/google/android/gms/ads/Correlator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzvp:Lcom/google/android/gms/internal/ads/zzxg;

    .line 60
    iget-object p1, p1, Lcom/google/android/gms/ads/Correlator;->zzvx:Lcom/google/android/gms/internal/ads/zzwv;

    .line 61
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzxg;->zzb(Lcom/google/android/gms/internal/ads/zzxz;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p1

    const-string v0, "Failed to set correlator."

    .line 64
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    return-object p0
.end method

.method public withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 4

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzvp:Lcom/google/android/gms/internal/ads/zzxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzacp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzacp;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzacp;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p1

    const-string v0, "Failed to specify native ad options"

    .line 51
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    return-object p0
.end method

.method public withPublisherAdViewOptions(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .registers 3

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzvp:Lcom/google/android/gms/internal/ads/zzxg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_6
    move-exception p1

    const-string v0, "Failed to specify DFP banner ad options"

    .line 56
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    return-object p0
.end method
