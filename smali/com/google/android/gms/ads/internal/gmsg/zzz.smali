###### Class com.google.android.gms.ads.internal.gmsg.zzz (com.google.android.gms.ads.internal.gmsg.zzz)
.class public final Lcom/google/android/gms/ads/internal/gmsg/zzz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzu;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzark;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzu<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdga:Ljava/util/HashMap;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbcl<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/zzz;->zzdga:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "request_id"

    .line 14
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "fetched_ad"

    .line 15
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "Received ad from the cache."

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxz;->zzdn(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/zzz;->zzdga:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcl;

    if-nez v0, :cond_25

    const-string p1, "Could not find the ad request for the corresponding ad response."

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxz;->e(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_25
    :try_start_25
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->set(Ljava/lang/Object;)V
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2d} :catch_35
    .catchall {:try_start_25 .. :try_end_2d} :catchall_33

    .line 24
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/zzz;->zzdga:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_33
    move-exception p2

    goto :goto_45

    :catch_35
    move-exception p2

    :try_start_36
    const-string v1, "Failed constructing JSON object from value passed from javascript"

    .line 27
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzaxz;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 28
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbcl;->set(Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_33

    .line 29
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/zzz;->zzdga:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 31
    :goto_45
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/zzz;->zzdga:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p2
.end method

.method public final zzbu(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcl;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzz;->zzdga:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final zzbv(Ljava/lang/String;)V
    .registers 4

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/zzz;->zzdga:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcl;

    if-nez v0, :cond_10

    const-string p1, "Could not find the ad request for the corresponding ad response."

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxz;->e(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcl;->isDone()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->cancel(Z)Z

    .line 12
    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/zzz;->zzdga:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
