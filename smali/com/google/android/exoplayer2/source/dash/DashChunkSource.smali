###### Class com.google.android.exoplayer2.source.dash.DashChunkSource (com.google.android.exoplayer2.source.dash.DashChunkSource)
.class public interface abstract Lcom/google/android/exoplayer2/source/dash/DashChunkSource;
.super Ljava/lang/Object;
.source "DashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/chunk/ChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V
.end method

###### Class com.google.android.exoplayer2.source.dash.DashChunkSource.Factory (com.google.android.exoplayer2.source.dash.DashChunkSource$Factory)
.class public interface abstract Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
.super Ljava/lang/Object;
.source "DashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createDashChunkSource(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I[ILcom/google/android/exoplayer2/trackselection/TrackSelection;IJZZLcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;)Lcom/google/android/exoplayer2/source/dash/DashChunkSource;
    .param p11    # Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
