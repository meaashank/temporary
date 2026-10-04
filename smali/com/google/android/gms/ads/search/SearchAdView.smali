###### Class com.google.android.gms.ads.search.SearchAdView (com.google.android.gms.ads.search.SearchAdView)
.class public final Lcom/google/android/gms/ads/search/SearchAdView;
.super Landroid/view/ViewGroup;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzark;
.end annotation


# instance fields
.field private final zzvw:Lcom/google/android/gms/internal/ads/zzyz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzyz;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzyz;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zzvw:Lcom/google/android/gms/internal/ads/zzyz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzyz;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzyz;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zzvw:Lcom/google/android/gms/internal/ads/zzyz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzyz;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzyz;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zzvw:Lcom/google/android/gms/internal/ads/zzyz;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zzvw:Lcom/google/android/gms/internal/ads/zzyz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyz;->destroy()V

    return-void
.end method

.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zzvw:Lcom/google/android/gms/internal/ads/zzyz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyz;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public final getAdSize()Lcom/google/android/gms/ads/AdSize;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zzvw:Lcom/google/android/gms/internal/ads/zzyz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyz;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zzvw:Lcom/google/android/gms/internal/ads/zzyz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyz;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final loadAd(Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest;)V
    .registers 4
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 17
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->SEARCH:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/search/SearchAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zzvw:Lcom/google/android/gms/internal/ads/zzyz;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest;->zzaz()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyz;->zza(Lcom/google/android/gms/internal/ads/zzyx;)V

    return-void

    .line 18
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must use AdSize.SEARCH for a DynamicHeightSearchAdRequest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final loadAd(Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .registers 3
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zzvw:Lcom/google/android/gms/internal/ads/zzyz;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzaz()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyz;->zza(Lcom/google/android/gms/internal/ads/zzyx;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .registers 8

    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/search/SearchAdView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_24

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    .line 35
    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    sub-int/2addr p5, v1

    .line 36
    div-int/lit8 p5, p5, 0x2

    add-int/2addr v0, p4

    add-int/2addr v1, p5

    .line 37
    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_24
    return-void
.end method

.method protected final onMeasure(II)V
    .registers 7

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/search/SearchAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1b

    .line 43
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/ads/search/SearchAdView;->measureChild(Landroid/view/View;II)V

    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_3a

    :cond_1b
    const/4 v1, 0x0

    .line 47
    :try_start_1c
    invoke-virtual {p0}, Lcom/google/android/gms/ads/search/SearchAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v2
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_20} :catch_22

    move-object v1, v2

    goto :goto_28

    :catch_22
    move-exception v2

    const-string v3, "Unable to retrieve ad size."

    .line 50
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzbbd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_28
    if-eqz v1, :cond_39

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/ads/search/SearchAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v2

    .line 54
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    move v1, v0

    move v0, v2

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    .line 55
    :goto_3a
    invoke-virtual {p0}, Lcom/google/android/gms/ads/search/SearchAdView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/ads/search/SearchAdView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 58
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/search/SearchAdView;->setMeasuredDimension(II)V

    return-void
.end method

.method public final pause()V
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zzvw:Lcom/google/android/gms/internal/ads/zzyz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyz;->pause()V

    return-void
.end method

.method public final resume()V
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zzvw:Lcom/google/android/gms/internal/ads/zzyz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyz;->resume()V

    return-void
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 3

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zzvw:Lcom/google/android/gms/internal/ads/zzyz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyz;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public final setAdSize(Lcom/google/android/gms/ads/AdSize;)V
    .registers 5

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zzvw:Lcom/google/android/gms/internal/ads/zzyz;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzyz;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zzvw:Lcom/google/android/gms/internal/ads/zzyz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyz;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method
