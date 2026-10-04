###### Class com.google.android.gms.ads.internal.zze (com.google.android.gms.ads.internal.zze)
.class final synthetic Lcom/google/android/gms/ads/internal/zze;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbmc:Lcom/google/android/gms/ads/internal/zzbl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/zzbl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zze;->zzbmc:Lcom/google/android/gms/ads/internal/zzbl;

    return-void
.end method

.method static zza(Lcom/google/android/gms/ads/internal/zzbl;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/ads/internal/zze;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zze;-><init>(Lcom/google/android/gms/ads/internal/zzbl;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzbmc:Lcom/google/android/gms/ads/internal/zzbl;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbl;->resume()V

    return-void
.end method
