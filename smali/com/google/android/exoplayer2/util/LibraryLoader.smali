###### Class com.google.android.exoplayer2.util.LibraryLoader (com.google.android.exoplayer2.util.LibraryLoader)
.class public final Lcom/google/android/exoplayer2/util/LibraryLoader;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# instance fields
.field private isAvailable:Z

.field private loadAttempted:Z

.field private nativeLibraries:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized isAvailable()Z
    .registers 6

    monitor-enter p0

    .line 47
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->loadAttempted:Z

    if-eqz v0, :cond_9

    .line 48
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_20

    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x1

    .line 50
    :try_start_a
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->loadAttempted:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_20

    .line 52
    :try_start_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1a

    aget-object v4, v1, v3

    .line 53
    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 55
    :cond_1a
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable:Z
    :try_end_1c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c .. :try_end_1c} :catch_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_20

    .line 59
    :catch_1c
    :try_start_1c
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable:Z
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_20

    monitor-exit p0

    return v0

    :catchall_20
    move-exception v0

    .line 46
    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized setLibraries([Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 39
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->loadAttempted:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot set libraries after loading"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 41
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    .line 38
    monitor-exit p0

    throw p1
.end method
