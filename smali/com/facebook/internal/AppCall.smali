###### Class com.facebook.internal.AppCall (com.facebook.internal.AppCall)
.class public Lcom/facebook/internal/AppCall;
.super Ljava/lang/Object;
.source "AppCall.java"


# static fields
.field private static currentPendingCall:Lcom/facebook/internal/AppCall;


# instance fields
.field private callId:Ljava/util/UUID;

.field private requestCode:I

.field private requestIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 72
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/AppCall;-><init>(ILjava/util/UUID;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/UUID;)V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/facebook/internal/AppCall;->callId:Ljava/util/UUID;

    .line 83
    iput p1, p0, Lcom/facebook/internal/AppCall;->requestCode:I

    return-void
.end method

.method public static declared-synchronized finishPendingCall(Ljava/util/UUID;I)Lcom/facebook/internal/AppCall;
    .registers 6

    const-class v0, Lcom/facebook/internal/AppCall;

    monitor-enter v0

    .line 42
    :try_start_3
    invoke-static {}, Lcom/facebook/internal/AppCall;->getCurrentPendingCall()Lcom/facebook/internal/AppCall;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 44
    invoke-virtual {v1}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 45
    invoke-virtual {v1}, Lcom/facebook/internal/AppCall;->getRequestCode()I

    move-result p0

    if-eq p0, p1, :cond_1b

    goto :goto_20

    .line 49
    :cond_1b
    invoke-static {v2}, Lcom/facebook/internal/AppCall;->setCurrentPendingCall(Lcom/facebook/internal/AppCall;)Z
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_22

    .line 51
    monitor-exit v0

    return-object v1

    .line 46
    :cond_20
    :goto_20
    monitor-exit v0

    return-object v2

    :catchall_22
    move-exception p0

    .line 41
    monitor-exit v0

    throw p0
.end method

.method public static getCurrentPendingCall()Lcom/facebook/internal/AppCall;
    .registers 1

    .line 36
    sget-object v0, Lcom/facebook/internal/AppCall;->currentPendingCall:Lcom/facebook/internal/AppCall;

    return-object v0
.end method

.method private static declared-synchronized setCurrentPendingCall(Lcom/facebook/internal/AppCall;)Z
    .registers 3

    const-class v0, Lcom/facebook/internal/AppCall;

    monitor-enter v0

    .line 56
    :try_start_3
    invoke-static {}, Lcom/facebook/internal/AppCall;->getCurrentPendingCall()Lcom/facebook/internal/AppCall;

    move-result-object v1

    .line 57
    sput-object p0, Lcom/facebook/internal/AppCall;->currentPendingCall:Lcom/facebook/internal/AppCall;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_10

    if-eqz v1, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    .line 59
    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 55
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getCallId()Ljava/util/UUID;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/facebook/internal/AppCall;->callId:Ljava/util/UUID;

    return-object v0
.end method

.method public getRequestCode()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/facebook/internal/AppCall;->requestCode:I

    return v0
.end method

.method public getRequestIntent()Landroid/content/Intent;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/facebook/internal/AppCall;->requestIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setPending()Z
    .registers 2

    .line 129
    invoke-static {p0}, Lcom/facebook/internal/AppCall;->setCurrentPendingCall(Lcom/facebook/internal/AppCall;)Z

    move-result v0

    return v0
.end method

.method public setRequestCode(I)V
    .registers 2

    .line 116
    iput p1, p0, Lcom/facebook/internal/AppCall;->requestCode:I

    return-void
.end method

.method public setRequestIntent(Landroid/content/Intent;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/facebook/internal/AppCall;->requestIntent:Landroid/content/Intent;

    return-void
.end method
