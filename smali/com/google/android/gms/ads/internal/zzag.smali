###### Class com.google.android.gms.ads.internal.zzag (com.google.android.gms.ads.internal.zzag)
.class public final Lcom/google/android/gms/ads/internal/zzag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcq;
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzark;
.end annotation


# instance fields
.field private final zzbnj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbnk:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzcq;",
            ">;"
        }
    .end annotation
.end field

.field private zzbnl:Lcom/google/android/gms/internal/ads/zzbbi;

.field private zzbnm:Ljava/util/concurrent/CountDownLatch;

.field private zzsp:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnj:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnk:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnm:Ljava/util/concurrent/CountDownLatch;

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzag;->zzsp:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnl:Lcom/google/android/gms/internal/ads/zzbbi;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwu;->zzpv()Lcom/google/android/gms/internal/ads/zzbat;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbat;->zzaar()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzayf;->zzc(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzbcb;

    return-void

    .line 13
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzag;->run()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzbw;)V
    .registers 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzsp:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzbsp:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/internal/zzag;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V

    return-void
.end method

.method private static zze(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    return-object v0
.end method

.method private final zzjy()Z
    .registers 3

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnm:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    move-exception v0

    const-string v1, "Interrupted during GADSignals creation."

    .line 18
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxz;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private final zzjz()V
    .registers 7

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 22
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 23
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_30

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnk:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcq;

    aget-object v1, v1, v3

    check-cast v1, Landroid/view/MotionEvent;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzcq;->zza(Landroid/view/MotionEvent;)V

    goto :goto_f

    .line 25
    :cond_30
    array-length v2, v1

    const/4 v5, 0x3

    if-ne v2, v5, :cond_f

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnk:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcq;

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzcq;->zza(III)V

    goto :goto_f

    .line 28
    :cond_59
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnl:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->zzeow:Z

    .line 69
    sget-object v3, Lcom/google/android/gms/internal/ads/zzaan;->zzcrq:Lcom/google/android/gms/internal/ads/zzaac;

    .line 70
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwu;->zzpz()Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzaak;->zzd(Lcom/google/android/gms/internal/ads/zzaac;)Ljava/lang/Object;

    move-result-object v3

    .line 71
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1b

    if-eqz v2, :cond_1b

    const/4 v0, 0x1

    .line 73
    :cond_1b
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnl:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->zzdp:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzag;->zzsp:Landroid/content/Context;

    .line 74
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzag;->zze(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    .line 76
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzct;->zza(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v0

    .line 78
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnk:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_38

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnm:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 80
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzag;->zzsp:Landroid/content/Context;

    .line 81
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnl:Lcom/google/android/gms/internal/ads/zzbbi;

    return-void

    :catchall_38
    move-exception v0

    .line 83
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnm:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 84
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzag;->zzsp:Landroid/content/Context;

    .line 85
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnl:Lcom/google/android/gms/internal/ads/zzbbi;

    throw v0
.end method

.method public final zza(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzag;->zzjy()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnk:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcq;

    if-eqz v0, :cond_1c

    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzag;->zzjz()V

    .line 37
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzag;->zze(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcq;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1c
    const-string p1, ""

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/zzag;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 6

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzag;->zzjy()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnk:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcq;

    if-eqz v0, :cond_1c

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzag;->zzjz()V

    .line 46
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzag;->zze(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 47
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcq;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1c
    const-string p1, ""

    return-object p1
.end method

.method public final zza(III)V
    .registers 7

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnk:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcq;

    if-eqz v0, :cond_11

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzag;->zzjz()V

    .line 62
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcq;->zza(III)V

    return-void

    .line 63
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnj:Ljava/util/List;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Landroid/view/MotionEvent;)V
    .registers 5

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnk:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcq;

    if-eqz v0, :cond_11

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzag;->zzjz()V

    .line 56
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcq;->zza(Landroid/view/MotionEvent;)V

    return-void

    .line 57
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnj:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb(Landroid/view/View;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzbnk:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcq;

    if-eqz v0, :cond_d

    .line 51
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcq;->zzb(Landroid/view/View;)V

    :cond_d
    return-void
.end method
