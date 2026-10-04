###### Class com.google.android.gms.ads.internal.zzbq (com.google.android.gms.ads.internal.zzbq)
.class final Lcom/google/android/gms/ads/internal/zzbq;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private final synthetic zzbra:Lcom/google/android/gms/ads/internal/zzbp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzbp;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 4

    .line 45
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzxa;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 46
    :try_start_8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzxa;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzxa;->onAdFailedToLoad(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 49
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxz;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zzkx()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    return v0

    .line 4
    :cond_e
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaan;->zzcvd:Lcom/google/android/gms/internal/ads/zzaac;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwu;->zzpz()Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzaak;->zzd(Lcom/google/android/gms/internal/ads/zzaac;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_40

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzxa;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 8
    :try_start_29
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzxa;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzxa;->onAdFailedToLoad(I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_33} :catch_34

    goto :goto_3a

    :catch_34
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 11
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxz;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    :cond_3a
    :goto_3a
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzbp;->zzbt(I)V

    return v1

    .line 14
    :cond_40
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaan;->zzcve:Lcom/google/android/gms/internal/ads/zzaac;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwu;->zzpz()Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzaak;->zzd(Lcom/google/android/gms/internal/ads/zzaac;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzxa;

    move-result-object p1

    if-eqz p1, :cond_6a

    .line 18
    :try_start_5a
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzxa;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzxa;->onAdFailedToLoad(I)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_63} :catch_64

    goto :goto_6a

    :catch_64
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 21
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxz;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :cond_6a
    :goto_6a
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzbp;->zzbt(I)V

    return v1

    .line 24
    :cond_70
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaan;->zzcvf:Lcom/google/android/gms/internal/ads/zzaac;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwu;->zzpz()Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaak;->zzd(Lcom/google/android/gms/internal/ads/zzaac;)Ljava/lang/Object;

    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzxa;

    move-result-object p1

    if-eqz p1, :cond_9a

    .line 28
    :try_start_8a
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzxa;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxa;->onAdLoaded()V
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_93} :catch_94

    goto :goto_9a

    :catch_94
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 31
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxz;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :cond_9a
    :goto_9a
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzbp;->zzav(Ljava/lang/String;)I

    move-result p1

    .line 33
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/zzbp;->zzbt(I)V

    return v1

    :cond_a6
    const-string p1, "gmsg://"

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_af

    return v1

    .line 37
    :cond_af
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzxa;

    move-result-object p1

    if-eqz p1, :cond_c7

    .line 38
    :try_start_b7
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzxa;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxa;->onAdLeftApplication()V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_c0} :catch_c1

    goto :goto_c7

    :catch_c1
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 41
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxz;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :cond_c7
    :goto_c7
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/zzbp;->zzb(Lcom/google/android/gms/ads/internal/zzbp;Ljava/lang/String;)V

    return v1
.end method
