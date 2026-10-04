###### Class com.google.android.exoplayer2.trackselection.TrackSelector (com.google.android.exoplayer2.trackselection.TrackSelector)
.class public abstract Lcom/google/android/exoplayer2/trackselection/TrackSelector;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->listener:Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;

    return-void
.end method

.method protected final invalidate()V
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->listener:Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;

    if-eqz v0, :cond_9

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->listener:Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;->onTrackSelectionsInvalidated()V

    :cond_9
    return-void
.end method

.method public abstract onSelectionActivated(Ljava/lang/Object;)V
.end method

.method public abstract selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
.end method

###### Class com.google.android.exoplayer2.trackselection.TrackSelector.InvalidationListener (com.google.android.exoplayer2.trackselection.TrackSelector$InvalidationListener)
.class public interface abstract Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/TrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InvalidationListener"
.end annotation


# virtual methods
.method public abstract onTrackSelectionsInvalidated()V
.end method
