###### Class com.google.android.exoplayer2.source.SequenceableLoader (com.google.android.exoplayer2.source.SequenceableLoader)
.class public interface abstract Lcom/google/android/exoplayer2/source/SequenceableLoader;
.super Ljava/lang/Object;
.source "SequenceableLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;
    }
.end annotation


# virtual methods
.method public abstract continueLoading(J)Z
.end method

.method public abstract getBufferedPositionUs()J
.end method

.method public abstract getNextLoadPositionUs()J
.end method

.method public abstract reevaluateBuffer(J)V
.end method

###### Class com.google.android.exoplayer2.source.SequenceableLoader.Callback (com.google.android.exoplayer2.source.SequenceableLoader$Callback)
.class public interface abstract Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;
.super Ljava/lang/Object;
.source "SequenceableLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SequenceableLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
