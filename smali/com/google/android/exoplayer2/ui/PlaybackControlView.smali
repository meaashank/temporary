###### Class com.google.android.exoplayer2.ui.PlaybackControlView (com.google.android.exoplayer2.ui.PlaybackControlView)
.class public Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.super Lcom/google/android/exoplayer2/ui/PlayerControlView;
.source "PlaybackControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$DefaultControlDispatcher;,
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;,
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_FAST_FORWARD_MS:I = 0x3a98

.field public static final DEFAULT_REPEAT_TOGGLE_MODES:I = 0x0

.field public static final DEFAULT_REWIND_MS:I = 0x1388

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field public static final MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$DefaultControlDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$DefaultControlDispatcher;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;)V

    sput-object v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .registers 5

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.ui.PlaybackControlView.AnonymousClass1 (com.google.android.exoplayer2.ui.PlaybackControlView$1)
.class synthetic Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;
.super Ljava/lang/Object;
.source "PlaybackControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.ui.PlaybackControlView.ControlDispatcher (com.google.android.exoplayer2.ui.PlaybackControlView$ControlDispatcher)
.class public interface abstract Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;
.super Ljava/lang/Object;
.source "PlaybackControlView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ControlDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ControlDispatcher"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

###### Class com.google.android.exoplayer2.ui.PlaybackControlView.DefaultControlDispatcher (com.google.android.exoplayer2.ui.PlaybackControlView$DefaultControlDispatcher)
.class final Lcom/google/android/exoplayer2/ui/PlaybackControlView$DefaultControlDispatcher;
.super Lcom/google/android/exoplayer2/DefaultControlDispatcher;
.source "PlaybackControlView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultControlDispatcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/google/android/exoplayer2/DefaultControlDispatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$DefaultControlDispatcher;-><init>()V

    return-void
.end method

###### Class com.google.android.exoplayer2.ui.PlaybackControlView.VisibilityListener (com.google.android.exoplayer2.ui.PlaybackControlView$VisibilityListener)
.class public interface abstract Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;
.super Ljava/lang/Object;
.source "PlaybackControlView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VisibilityListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation
