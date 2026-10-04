###### Class com.google.android.exoplayer2.upstream.DataSink (com.google.android.exoplayer2.upstream.DataSink)
.class public interface abstract Lcom/google/android/exoplayer2/upstream/DataSink;
.super Ljava/lang/Object;
.source "DataSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/DataSink$Factory;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract open(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
.end method

.method public abstract write([BII)V
.end method

###### Class com.google.android.exoplayer2.upstream.DataSink.Factory (com.google.android.exoplayer2.upstream.DataSink$Factory)
.class public interface abstract Lcom/google/android/exoplayer2/upstream/DataSink$Factory;
.super Ljava/lang/Object;
.source "DataSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/DataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createDataSink()Lcom/google/android/exoplayer2/upstream/DataSink;
.end method
