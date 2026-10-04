###### Class com.google.android.gms.ads.internal.gmsg.zzo (com.google.android.gms.ads.internal.gmsg.zzo)
.class final Lcom/google/android/gms/ads/internal/gmsg/zzo;
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
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgg;->zzadx()Lcom/google/android/gms/internal/ads/zzacb;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacb;->zzsh()V

    :cond_b
    return-void
.end method
