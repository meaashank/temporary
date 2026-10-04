###### Class com.google.android.exoplayer2.offline.Downloader (com.google.android.exoplayer2.offline.Downloader)
.class public interface abstract Lcom/google/android/exoplayer2/offline/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;
    }
.end annotation


# virtual methods
.method public abstract download(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
    .param p1    # Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getDownloadPercentage()F
.end method

.method public abstract getDownloadedBytes()J
.end method

.method public abstract init()V
.end method

.method public abstract remove()V
.end method

###### Class com.google.android.exoplayer2.offline.Downloader.ProgressListener (com.google.android.exoplayer2.offline.Downloader$ProgressListener)
.class public interface abstract Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressListener"
.end annotation


# virtual methods
.method public abstract onDownloadProgress(Lcom/google/android/exoplayer2/offline/Downloader;FJ)V
.end method
