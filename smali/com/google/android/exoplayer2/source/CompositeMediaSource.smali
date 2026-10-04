###### Class com.google.android.exoplayer2.source.CompositeMediaSource (com.google.android.exoplayer2.source.CompositeMediaSource)
.class public abstract Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/MediaSource;"
    }
.end annotation


# instance fields
.field private final childSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private player:Lcom/google/android/exoplayer2/ExoPlayer;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public maybeThrowSourceInfoRefreshError()V
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource;

    .line 51
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method protected abstract onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ")V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/CompositeMediaSource;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    invoke-interface {p2, v0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    return-void
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .registers 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    return-void
.end method

.method protected releaseChildSource(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource;

    .line 111
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    return-void
.end method

.method public releaseSource()V
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource;

    .line 59
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    goto :goto_a

    .line 61
    :cond_1a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    return-void
.end method

###### Class com.google.android.exoplayer2.source.CompositeMediaSource.AnonymousClass1 (com.google.android.exoplayer2.source.CompositeMediaSource$1)
.class Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

.field final synthetic val$id:Ljava/lang/Object;

.field final synthetic val$mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/CompositeMediaSource;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 4

    .line 95
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;->val$id:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;->val$mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .registers 6
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 99
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;->val$id:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;->val$mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method
