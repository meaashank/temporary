###### Class com.google.android.exoplayer2.audio.AudioCapabilitiesReceiver (com.google.android.exoplayer2.audio.AudioCapabilitiesReceiver)
.class public final Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;,
        Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;
    }
.end annotation


# instance fields
.field audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

.field private final context:Landroid/content/Context;

.field private final listener:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    .line 58
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->listener:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

    .line 59
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 p2, 0x0

    const/16 v0, 0x15

    if-lt p1, v0, :cond_20

    new-instance p1, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$1;)V

    goto :goto_21

    :cond_20
    move-object p1, p2

    :goto_21
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;)Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->listener:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

    return-object p0
.end method


# virtual methods
.method public register()Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_15

    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    :goto_15
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Intent;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    return-object v0
.end method

.method public unregister()V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_b

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_b
    return-void
.end method

###### Class com.google.android.exoplayer2.audio.AudioCapabilitiesReceiver.AnonymousClass1 (com.google.android.exoplayer2.audio.AudioCapabilitiesReceiver$1)
.class synthetic Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$1;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.audio.AudioCapabilitiesReceiver.HdmiAudioPlugBroadcastReceiver (com.google.android.exoplayer2.audio.AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver)
.class final Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HdmiAudioPlugBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$1;)V
    .registers 3

    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 91
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_21

    .line 92
    invoke-static {p2}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Intent;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object p1

    .line 93
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    iget-object p2, p2, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    .line 94
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    iput-object p1, p2, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 95
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    invoke-static {p2}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->access$100(Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;)Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;->onAudioCapabilitiesChanged(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V

    :cond_21
    return-void
.end method

###### Class com.google.android.exoplayer2.audio.AudioCapabilitiesReceiver.Listener (com.google.android.exoplayer2.audio.AudioCapabilitiesReceiver$Listener)
.class public interface abstract Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAudioCapabilitiesChanged(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V
.end method
