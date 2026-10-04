###### Class com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource (com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource)
.class public interface abstract Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource;
.super Ljava/lang/Object;
.source "SsChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/chunk/ChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract updateManifest(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V
.end method

###### Class com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource.Factory (com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource$Factory)
.class public interface abstract Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;
.super Ljava/lang/Object;
.source "SsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createChunkSource(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;ILcom/google/android/exoplayer2/trackselection/TrackSelection;[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource;
.end method
