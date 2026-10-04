###### Class com.bumptech.glide.d.e (com.bumptech.glide.d.e)
.class final Lcom/bumptech/glide/d/e;
.super Ljava/lang/Object;
.source "DefaultConnectivityMonitor.java"

# interfaces
.implements Lcom/bumptech/glide/d/c;


# static fields
.field private static final c:Ljava/lang/String; = "ConnectivityMonitor"


# instance fields
.field final a:Lcom/bumptech/glide/d/c$a;

.field b:Z

.field private final d:Landroid/content/Context;

.field private e:Z

.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/d/c$a;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/d/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/bumptech/glide/d/e$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d/e$1;-><init>(Lcom/bumptech/glide/d/e;)V

    iput-object v0, p0, Lcom/bumptech/glide/d/e;->f:Landroid/content/BroadcastReceiver;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/d/e;->d:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/bumptech/glide/d/e;->a:Lcom/bumptech/glide/d/c$a;

    return-void
.end method

.method private a()V
    .registers 5

    .line 47
    iget-boolean v0, p0, Lcom/bumptech/glide/d/e;->e:Z

    if-eqz v0, :cond_5

    return-void

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/d/e;->d:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/d/e;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bumptech/glide/d/e;->b:Z

    .line 55
    :try_start_d
    iget-object v0, p0, Lcom/bumptech/glide/d/e;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/bumptech/glide/d/e;->f:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/bumptech/glide/d/e;->e:Z
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_1e} :catch_1f

    goto :goto_30

    :catch_1f
    move-exception v0

    const-string v1, "ConnectivityMonitor"

    const/4 v2, 0x5

    .line 60
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "ConnectivityMonitor"

    const-string v2, "Failed to register"

    .line 61
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_30
    :goto_30
    return-void
.end method

.method private b()V
    .registers 3

    .line 67
    iget-boolean v0, p0, Lcom/bumptech/glide/d/e;->e:Z

    if-nez v0, :cond_5

    return-void

    .line 71
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/d/e;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/bumptech/glide/d/e;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/bumptech/glide/d/e;->e:Z

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Z
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "connectivity"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 81
    invoke-static {p1}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    .line 85
    :try_start_f
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_13} :catch_1e

    if-eqz p1, :cond_1c

    .line 96
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0

    :catch_1e
    move-exception p1

    const-string v1, "ConnectivityMonitor"

    const/4 v2, 0x5

    .line 90
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "ConnectivityMonitor"

    const-string v2, "Failed to determine connectivity status when connectivity changed"

    .line 91
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    return v0
.end method

.method public g()V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/bumptech/glide/d/e;->a()V

    return-void
.end method

.method public h()V
    .registers 1

    .line 106
    invoke-direct {p0}, Lcom/bumptech/glide/d/e;->b()V

    return-void
.end method

.method public i()V
    .registers 1

    return-void
.end method

###### Class com.bumptech.glide.d.e.AnonymousClass1 (com.bumptech.glide.d.e$1)
.class Lcom/bumptech/glide/d/e$1;
.super Landroid/content/BroadcastReceiver;
.source "DefaultConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/d/e;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/d/e;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/d/e$1;->a:Lcom/bumptech/glide/d/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    iget-object p2, p0, Lcom/bumptech/glide/d/e$1;->a:Lcom/bumptech/glide/d/e;

    iget-boolean p2, p2, Lcom/bumptech/glide/d/e;->b:Z

    .line 30
    iget-object v0, p0, Lcom/bumptech/glide/d/e$1;->a:Lcom/bumptech/glide/d/e;

    iget-object v1, p0, Lcom/bumptech/glide/d/e$1;->a:Lcom/bumptech/glide/d/e;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/d/e;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/bumptech/glide/d/e;->b:Z

    .line 31
    iget-object p1, p0, Lcom/bumptech/glide/d/e$1;->a:Lcom/bumptech/glide/d/e;

    iget-boolean p1, p1, Lcom/bumptech/glide/d/e;->b:Z

    if-eq p2, p1, :cond_42

    const-string p1, "ConnectivityMonitor"

    const/4 p2, 0x3

    .line 32
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_37

    const-string p1, "ConnectivityMonitor"

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connectivity changed, isConnected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bumptech/glide/d/e$1;->a:Lcom/bumptech/glide/d/e;

    iget-boolean v0, v0, Lcom/bumptech/glide/d/e;->b:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_37
    iget-object p1, p0, Lcom/bumptech/glide/d/e$1;->a:Lcom/bumptech/glide/d/e;

    iget-object p1, p1, Lcom/bumptech/glide/d/e;->a:Lcom/bumptech/glide/d/c$a;

    iget-object p2, p0, Lcom/bumptech/glide/d/e$1;->a:Lcom/bumptech/glide/d/e;

    iget-boolean p2, p2, Lcom/bumptech/glide/d/e;->b:Z

    invoke-interface {p1, p2}, Lcom/bumptech/glide/d/c$a;->a(Z)V

    :cond_42
    return-void
.end method
