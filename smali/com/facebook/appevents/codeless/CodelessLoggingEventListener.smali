###### Class com.facebook.appevents.codeless.CodelessLoggingEventListener (com.facebook.appevents.codeless.CodelessLoggingEventListener)
.class public Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;
.super Ljava/lang/Object;
.source "CodelessLoggingEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-class v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 41
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getAccessibilityDelegate(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;
    .registers 4

    .line 46
    new-instance v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;-><init>(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

###### Class com.facebook.appevents.codeless.CodelessLoggingEventListener.AnonymousClass1 (com.facebook.appevents.codeless.CodelessLoggingEventListener$1)
.class synthetic Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;
.super Ljava/lang/Object;
.source "CodelessLoggingEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$appevents$codeless$internal$EventBinding$ActionType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 65
    invoke-static {}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->values()[Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;->$SwitchMap$com$facebook$appevents$codeless$internal$EventBinding$ActionType:[I

    :try_start_9
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;->$SwitchMap$com$facebook$appevents$codeless$internal$EventBinding$ActionType:[I

    sget-object v1, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->CLICK:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    invoke-virtual {v1}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;->$SwitchMap$com$facebook$appevents$codeless$internal$EventBinding$ActionType:[I

    sget-object v1, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->SELECTED:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    invoke-virtual {v1}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;->$SwitchMap$com$facebook$appevents$codeless$internal$EventBinding$ActionType:[I

    sget-object v1, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->TEXT_CHANGED:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    invoke-virtual {v1}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method

###### Class com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingAccessibilityDelegate (com.facebook.appevents.codeless.CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate)
.class public Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "CodelessLoggingEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoLoggingAccessibilityDelegate"
.end annotation


# instance fields
.field private accessibilityEventType:I

.field private existingDelegate:Landroid/view/View$AccessibilityDelegate;

.field private hostView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mapping:Lcom/facebook/appevents/codeless/internal/EventBinding;

.field private rootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected supportButtonIndexing:Z

.field private supportCodelessLogging:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->supportCodelessLogging:Z

    .line 140
    iput-boolean v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->supportButtonIndexing:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 53
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->supportCodelessLogging:Z

    .line 140
    iput-boolean v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->supportButtonIndexing:Z

    if-eqz p1, :cond_62

    if-eqz p2, :cond_62

    if-nez p3, :cond_f

    goto :goto_62

    .line 58
    :cond_f
    invoke-static {p3}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getExistingDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->existingDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 60
    iput-object p1, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->mapping:Lcom/facebook/appevents/codeless/internal/EventBinding;

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->hostView:Ljava/lang/ref/WeakReference;

    .line 62
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->rootView:Ljava/lang/ref/WeakReference;

    .line 63
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getType()Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    move-result-object p2

    .line 65
    sget-object p3, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;->$SwitchMap$com$facebook$appevents$codeless$internal$EventBinding$ActionType:[I

    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getType()Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_64

    .line 76
    new-instance p1, Lcom/facebook/FacebookException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported action type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_54
    const/16 p1, 0x10

    .line 73
    iput p1, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->accessibilityEventType:I

    goto :goto_5f

    :pswitch_59
    const/4 p1, 0x4

    .line 70
    iput p1, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->accessibilityEventType:I

    goto :goto_5f

    .line 67
    :pswitch_5d
    iput p3, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->accessibilityEventType:I

    .line 78
    :goto_5f
    iput-boolean p3, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->supportCodelessLogging:Z

    return-void

    :cond_62
    :goto_62
    return-void

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_59
        :pswitch_54
    .end packed-switch
.end method

.method private logEvent()V
    .registers 7

    .line 99
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->mapping:Lcom/facebook/appevents/codeless/internal/EventBinding;

    invoke-virtual {v0}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getEventName()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->mapping:Lcom/facebook/appevents/codeless/internal/EventBinding;

    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->rootView:Ljava/lang/ref/WeakReference;

    .line 102
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->hostView:Ljava/lang/ref/WeakReference;

    .line 103
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 100
    invoke-static {v1, v2, v3}, Lcom/facebook/appevents/codeless/CodelessMatcher;->getParameters(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "_valueToSum"

    .line 106
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "_valueToSum"

    .line 107
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_valueToSum"

    .line 110
    invoke-static {v2}, Lcom/facebook/appevents/internal/AppEventUtility;->normalizePrice(Ljava/lang/String;)D

    move-result-wide v4

    .line 108
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_33
    const-string v2, "_is_fb_codeless"

    const-string v3, "1"

    .line 113
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate$1;-><init>(Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getSupportButtonIndexing()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->supportButtonIndexing:Z

    return v0
.end method

.method public getSupportCodelessLogging()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->supportCodelessLogging:Z

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    .line 84
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unsupported action type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_c
    iget v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->accessibilityEventType:I

    if-eq p2, v0, :cond_11

    return-void

    .line 90
    :cond_11
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->existingDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->existingDelegate:Landroid/view/View$AccessibilityDelegate;

    instance-of v0, v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;

    if-nez v0, :cond_20

    .line 92
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->existingDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 95
    :cond_20
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->logEvent()V

    return-void
.end method

###### Class com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingAccessibilityDelegate.AnonymousClass1 (com.facebook.appevents.codeless.CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate$1)
.class Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate$1;
.super Ljava/lang/Object;
.source "CodelessLoggingEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->logEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 116
    iput-object p1, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate$1;->this$0:Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate$1;->val$eventName:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate$1;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 119
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate$1;->val$eventName:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate$1;->val$params:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
