###### Class com.google.android.exoplayer2.ui.TimeBar (com.google.android.exoplayer2.ui.TimeBar)
.class public interface abstract Lcom/google/android/exoplayer2/ui/TimeBar;
.super Ljava/lang/Object;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V
.end method

.method public abstract removeListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V
.end method

.method public abstract setAdGroupTimesMs([J[ZI)V
    .param p1    # [J
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setBufferedPosition(J)V
.end method

.method public abstract setDuration(J)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setKeyCountIncrement(I)V
.end method

.method public abstract setKeyTimeIncrement(J)V
.end method

.method public abstract setPosition(J)V
.end method

###### Class com.google.android.exoplayer2.ui.TimeBar.OnScrubListener (com.google.android.exoplayer2.ui.TimeBar$OnScrubListener)
.class public interface abstract Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;
.super Ljava/lang/Object;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/TimeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScrubListener"
.end annotation


# virtual methods
.method public abstract onScrubMove(Lcom/google/android/exoplayer2/ui/TimeBar;J)V
.end method

.method public abstract onScrubStart(Lcom/google/android/exoplayer2/ui/TimeBar;J)V
.end method

.method public abstract onScrubStop(Lcom/google/android/exoplayer2/ui/TimeBar;JZ)V
.end method
