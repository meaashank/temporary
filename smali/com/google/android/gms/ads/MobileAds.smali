###### Class com.google.android.gms.ads.MobileAds (com.google.android.gms.ads.MobileAds)
.class public Lcom/google/android/gms/ads/MobileAds;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/MobileAds$Settings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .registers 2

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzc;->zzqq()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzzc;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object p0

    return-object p0
.end method

.method public static getVersionString()V
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzc;->zzqq()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzc;->zzkl()Ljava/lang/String;

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V
    .registers 4
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzc;->zzqq()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v0

    if-nez p2, :cond_8

    const/4 p2, 0x0

    goto :goto_c

    .line 4
    :cond_8
    invoke-virtual {p2}, Lcom/google/android/gms/ads/MobileAds$Settings;->zzbb()Lcom/google/android/gms/internal/ads/zzzf;

    move-result-object p2

    .line 5
    :goto_c
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzzc;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzzf;)V

    return-void
.end method

.method public static openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzc;->zzqq()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzzc;->openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static registerRtbAdapter(Ljava/lang/Class;)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbit;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzc;->zzqq()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzzc;->registerRtbAdapter(Ljava/lang/Class;)V

    return-void
.end method

.method public static setAppMuted(Z)V
    .registers 2

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzc;->zzqq()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzzc;->setAppMuted(Z)V

    return-void
.end method

.method public static setAppVolume(F)V
    .registers 2

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzc;->zzqq()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzzc;->setAppVolume(F)V

    return-void
.end method

###### Class com.google.android.gms.ads.MobileAds.Settings (com.google.android.gms.ads.MobileAds$Settings)
.class public final Lcom/google/android/gms/ads/MobileAds$Settings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/MobileAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# instance fields
.field private final zzvz:Lcom/google/android/gms/internal/ads/zzzf;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzvz:Lcom/google/android/gms/internal/ads/zzzf;

    return-void
.end method


# virtual methods
.method public final getTrackingId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isGoogleAnalyticsEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final setGoogleAnalyticsEnabled(Z)Lcom/google/android/gms/ads/MobileAds$Settings;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final setTrackingId(Ljava/lang/String;)Lcom/google/android/gms/ads/MobileAds$Settings;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method final zzbb()Lcom/google/android/gms/internal/ads/zzzf;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzvz:Lcom/google/android/gms/internal/ads/zzzf;

    return-object v0
.end method
