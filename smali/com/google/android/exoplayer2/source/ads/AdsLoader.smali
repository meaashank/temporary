###### Class com.google.android.exoplayer2.source.ads.AdsLoader (com.google.android.exoplayer2.source.ads.AdsLoader)
.class public interface abstract Lcom/google/android/exoplayer2/source/ads/AdsLoader;
.super Ljava/lang/Object;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;
    }
.end annotation


# virtual methods
.method public abstract attachPlayer(Lcom/google/android/exoplayer2/ExoPlayer;Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;Landroid/view/ViewGroup;)V
.end method

.method public abstract detachPlayer()V
.end method

.method public abstract handlePrepareError(IILjava/io/IOException;)V
.end method

.method public abstract release()V
.end method

.method public varargs abstract setSupportedContentTypes([I)V
.end method

###### Class com.google.android.exoplayer2.source.ads.AdsLoader.EventListener (com.google.android.exoplayer2.source.ads.AdsLoader$EventListener)
.class public interface abstract Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;
.super Ljava/lang/Object;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onAdClicked()V
.end method

.method public abstract onAdLoadError(Ljava/io/IOException;)V
.end method

.method public abstract onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
.end method

.method public abstract onAdTapped()V
.end method

.method public abstract onInternalAdLoadError(Ljava/lang/RuntimeException;)V
.end method
