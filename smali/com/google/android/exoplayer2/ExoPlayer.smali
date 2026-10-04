###### Class com.google.android.exoplayer2.ExoPlayer (com.google.android.exoplayer2.ExoPlayer)
.class public interface abstract Lcom/google/android/exoplayer2/ExoPlayer;
.super Ljava/lang/Object;
.source "ExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;,
        Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;,
        Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    }
.end annotation


# static fields
.field public static final REPEAT_MODE_ALL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPEAT_MODE_OFF:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPEAT_MODE_ONE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_BUFFERING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_ENDED:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_IDLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_READY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public varargs abstract blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;
.end method

.method public abstract getPlaybackLooper()Landroid/os/Looper;
.end method

.method public abstract prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V
.end method

.method public abstract prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
.end method

.method public varargs abstract sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V
    .param p1    # Lcom/google/android/exoplayer2/SeekParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

###### Class com.google.android.exoplayer2.ExoPlayer.EventListener (com.google.android.exoplayer2.ExoPlayer$EventListener)
.class public interface abstract Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
.super Ljava/lang/Object;
.source "ExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

###### Class com.google.android.exoplayer2.ExoPlayer.ExoPlayerComponent (com.google.android.exoplayer2.ExoPlayer$ExoPlayerComponent)
.class public interface abstract Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;
.super Ljava/lang/Object;
.source "ExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/PlayerMessage$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExoPlayerComponent"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

###### Class com.google.android.exoplayer2.ExoPlayer.ExoPlayerMessage (com.google.android.exoplayer2.ExoPlayer$ExoPlayerMessage)
.class public final Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExoPlayerMessage"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final message:Ljava/lang/Object;

.field public final messageType:I

.field public final target:Lcom/google/android/exoplayer2/PlayerMessage$Target;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/PlayerMessage$Target;ILjava/lang/Object;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->target:Lcom/google/android/exoplayer2/PlayerMessage$Target;

    .line 141
    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->messageType:I

    .line 142
    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    return-void
.end method
