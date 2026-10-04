###### Class com.bumptech.glide.d.f (com.bumptech.glide.d.f)
.class public Lcom/bumptech/glide/d/f;
.super Ljava/lang/Object;
.source "DefaultConnectivityMonitorFactory.java"

# interfaces
.implements Lcom/bumptech/glide/d/d;


# static fields
.field private static final a:Ljava/lang/String; = "ConnectivityMonitor"

.field private static final b:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_STATE"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/d/c$a;)Lcom/bumptech/glide/d/c;
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/d/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 24
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v1, "ConnectivityMonitor"

    const/4 v2, 0x3

    .line 26
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "ConnectivityMonitor"

    if-eqz v0, :cond_1b

    const-string v2, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    goto :goto_1d

    :cond_1b
    const-string v2, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    .line 27
    :goto_1d
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    if-eqz v0, :cond_28

    .line 34
    new-instance v0, Lcom/bumptech/glide/d/e;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/d/e;-><init>(Landroid/content/Context;Lcom/bumptech/glide/d/c$a;)V

    goto :goto_2d

    :cond_28
    new-instance v0, Lcom/bumptech/glide/d/j;

    invoke-direct {v0}, Lcom/bumptech/glide/d/j;-><init>()V

    :goto_2d
    return-object v0
.end method
