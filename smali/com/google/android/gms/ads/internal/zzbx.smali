###### Class com.google.android.gms.ads.internal.zzbx (com.google.android.gms.ads.internal.zzbx)
.class public final Lcom/google/android/gms/ads/internal/zzbx;
.super Landroid/widget/ViewSwitcher;


# instance fields
.field private final zzbue:Lcom/google/android/gms/internal/ads/zzazc;

.field private final zzbuf:Lcom/google/android/gms/internal/ads/zzbas;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbug:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzazc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbue:Lcom/google/android/gms/internal/ads/zzazc;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbue:Lcom/google/android/gms/internal/ads/zzazc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzazc;->setAdUnitId(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbue:Lcom/google/android/gms/internal/ads/zzazc;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzazc;->zzee(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbug:Z

    .line 6
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_25

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbas;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1, p0, p4, p5}, Lcom/google/android/gms/internal/ads/zzbas;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbuf:Lcom/google/android/gms/internal/ads/zzbas;

    goto :goto_2d

    .line 8
    :cond_25
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbas;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, p4, p5}, Lcom/google/android/gms/internal/ads/zzbas;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbuf:Lcom/google/android/gms/internal/ads/zzbas;

    .line 9
    :goto_2d
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbuf:Lcom/google/android/gms/internal/ads/zzbas;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbas;->zzaam()V

    return-void
.end method


# virtual methods
.method protected final onAttachedToWindow()V
    .registers 2

    .line 36
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onAttachedToWindow()V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbuf:Lcom/google/android/gms/internal/ads/zzbas;

    if-eqz v0, :cond_c

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbuf:Lcom/google/android/gms/internal/ads/zzbas;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbas;->onAttachedToWindow()V

    :cond_c
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .registers 2

    .line 40
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onDetachedFromWindow()V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbuf:Lcom/google/android/gms/internal/ads/zzbas;

    if-eqz v0, :cond_c

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbuf:Lcom/google/android/gms/internal/ads/zzbas;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbas;->onDetachedFromWindow()V

    :cond_c
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbug:Z

    if-eqz v0, :cond_9

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbue:Lcom/google/android/gms/internal/ads/zzazc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzazc;->zze(Landroid/view/MotionEvent;)V

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public final removeAllViews()V
    .registers 6

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 16
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzbx;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 17
    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/zzbx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 18
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzbgg;

    if-eqz v4, :cond_1c

    .line 19
    check-cast v3, Lcom/google/android/gms/internal/ads/zzbgg;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 21
    :cond_1f
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    .line 22
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_28
    if-ge v1, v2, :cond_36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbgg;

    .line 23
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgg;->destroy()V

    goto :goto_28

    :cond_36
    return-void
.end method

.method public final zzmm()Lcom/google/android/gms/internal/ads/zzazc;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbue:Lcom/google/android/gms/internal/ads/zzazc;

    return-object v0
.end method

.method public final zzmn()V
    .registers 2

    const-string v0, "Disable position monitoring on adFrame."

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxz;->v(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbuf:Lcom/google/android/gms/internal/ads/zzbas;

    if-eqz v0, :cond_e

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbuf:Lcom/google/android/gms/internal/ads/zzbas;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbas;->zzaan()V

    :cond_e
    return-void
.end method

.method public final zzmo()V
    .registers 2

    const-string v0, "Enable debug gesture detector on adFrame."

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxz;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbug:Z

    return-void
.end method

.method public final zzmp()V
    .registers 2

    const-string v0, "Disable debug gesture detector on adFrame."

    .line 33
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxz;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbx;->zzbug:Z

    return-void
.end method
