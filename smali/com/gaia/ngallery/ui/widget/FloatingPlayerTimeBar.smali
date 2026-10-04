###### Class com.gaia.ngallery.ui.widget.FloatingPlayerTimeBar (com.gaia.ngallery.ui.widget.FloatingPlayerTimeBar)
.class public Lcom/gaia/ngallery/ui/widget/FloatingPlayerTimeBar;
.super Landroid/widget/ProgressBar;
.source "FloatingPlayerTimeBar.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/TimeBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static a(J)I
    .registers 4

    const-wide/16 v0, 0x3e8

    .line 63
    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public addListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V
    .registers 2

    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V
    .registers 2

    return-void
.end method

.method public setAdGroupTimesMs([J[ZI)V
    .registers 4
    .param p1    # [J
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setBufferedPosition(J)V
    .registers 3

    return-void
.end method

.method public setDuration(J)V
    .registers 3

    .line 69
    invoke-static {p1, p2}, Lcom/gaia/ngallery/ui/widget/FloatingPlayerTimeBar;->a(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/FloatingPlayerTimeBar;->setMax(I)V

    return-void
.end method

.method public setKeyCountIncrement(I)V
    .registers 2

    return-void
.end method

.method public setKeyTimeIncrement(J)V
    .registers 3

    return-void
.end method

.method public setPosition(J)V
    .registers 3

    .line 54
    invoke-static {p1, p2}, Lcom/gaia/ngallery/ui/widget/FloatingPlayerTimeBar;->a(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/widget/FloatingPlayerTimeBar;->setProgress(I)V

    return-void
.end method
