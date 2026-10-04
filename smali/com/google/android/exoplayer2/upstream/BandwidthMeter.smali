###### Class com.google.android.exoplayer2.upstream.BandwidthMeter (com.google.android.exoplayer2.upstream.BandwidthMeter)
.class public interface abstract Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;
    }
.end annotation


# static fields
.field public static final NO_ESTIMATE:J = -0x1L


# virtual methods
.method public abstract getBitrateEstimate()J
.end method

###### Class com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener (com.google.android.exoplayer2.upstream.BandwidthMeter$EventListener)
.class public interface abstract Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onBandwidthSample(IJJ)V
.end method
