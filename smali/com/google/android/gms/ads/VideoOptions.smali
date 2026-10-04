###### Class com.google.android.gms.ads.VideoOptions (com.google.android.gms.ads.VideoOptions)
.class public final Lcom/google/android/gms/ads/VideoOptions;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzark;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/VideoOptions$Builder;
    }
.end annotation


# instance fields
.field private final zzwd:Z

.field private final zzwe:Z

.field private final zzwf:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/VideoOptions$Builder;)V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->zza(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzwd:Z

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzb(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzwe:Z

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzc(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions;->zzwf:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/VideoOptions$Builder;Lcom/google/android/gms/ads/zzd;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/VideoOptions;-><init>(Lcom/google/android/gms/ads/VideoOptions$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzzw;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzzw;->zzcnf:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzwd:Z

    .line 3
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzzw;->zzcng:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzwe:Z

    .line 4
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzzw;->zzcnh:Z

    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions;->zzwf:Z

    return-void
.end method


# virtual methods
.method public final getClickToExpandRequested()Z
    .registers 2

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzwf:Z

    return v0
.end method

.method public final getCustomControlsRequested()Z
    .registers 2

    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzwe:Z

    return v0
.end method

.method public final getStartMuted()Z
    .registers 2

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzwd:Z

    return v0
.end method

###### Class com.google.android.gms.ads.VideoOptions.Builder (com.google.android.gms.ads.VideoOptions$Builder)
.class public final Lcom/google/android/gms/ads/VideoOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/VideoOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzwd:Z

.field private zzwe:Z

.field private zzwf:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzwd:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzwe:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzwf:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z
    .registers 1

    .line 12
    iget-boolean p0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzwd:Z

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z
    .registers 1

    .line 13
    iget-boolean p0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzwe:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z
    .registers 1

    .line 14
    iget-boolean p0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzwf:Z

    return p0
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/ads/VideoOptions;
    .registers 3

    .line 11
    new-instance v0, Lcom/google/android/gms/ads/VideoOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/VideoOptions;-><init>(Lcom/google/android/gms/ads/VideoOptions$Builder;Lcom/google/android/gms/ads/zzd;)V

    return-object v0
.end method

.method public final setClickToExpandRequested(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .registers 2

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzwf:Z

    return-object p0
.end method

.method public final setCustomControlsRequested(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .registers 2

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzwe:Z

    return-object p0
.end method

.method public final setStartMuted(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .registers 2

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzwd:Z

    return-object p0
.end method
