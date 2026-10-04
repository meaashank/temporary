###### Class com.google.android.gms.ads.internal.gmsg.zzl (com.google.android.gms.ads.internal.gmsg.zzl)
.class final Lcom/google/android/gms/ads/internal/gmsg/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzu<",
        "Lcom/google/android/gms/internal/ads/zzbgg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgg;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgg;->zzadh()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->close()V

    return-void

    .line 6
    :cond_c
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgg;->zzadi()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->close()V

    return-void

    :cond_16
    const-string p1, "A GMSG tried to close something that wasn\'t an overlay."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxz;->zzeo(Ljava/lang/String;)V

    return-void
.end method
