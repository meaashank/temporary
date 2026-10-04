###### Class com.gaia.ngallery.i.a (com.gaia.ngallery.i.a)
.class public Lcom/gaia/ngallery/i/a;
.super Ljava/lang/Object;
.source "NetworkTypeMonitor.java"


# static fields
.field private static a:Lcom/gaia/ngallery/i/a; = null

.field private static final b:I = -0x1


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lcom/gaia/ngallery/i/a;

    invoke-direct {v0}, Lcom/gaia/ngallery/i/a;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/i/a;->a:Lcom/gaia/ngallery/i/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/gaia/ngallery/i/a;->c:I

    return-void
.end method

.method public static a()Lcom/gaia/ngallery/i/a;
    .registers 1

    .line 24
    sget-object v0, Lcom/gaia/ngallery/i/a;->a:Lcom/gaia/ngallery/i/a;

    return-object v0
.end method

.method static synthetic a(Lcom/gaia/ngallery/i/a;Landroid/content/Context;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/i/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 3

    const-string v0, "connectivity"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 43
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-nez p1, :cond_12

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lcom/gaia/ngallery/i/a;->c:I

    goto :goto_18

    .line 47
    :cond_12
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    iput p1, p0, Lcom/gaia/ngallery/i/a;->c:I

    :goto_18
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/i/a;->b(Landroid/content/Context;)V

    .line 32
    new-instance v1, Lcom/gaia/ngallery/i/a$1;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/i/a$1;-><init>(Lcom/gaia/ngallery/i/a;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public b()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/gaia/ngallery/i/a;->c:I

    return v0
.end method

.method public c()Z
    .registers 3

    .line 54
    iget v0, p0, Lcom/gaia/ngallery/i/a;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

###### Class com.gaia.ngallery.i.a.AnonymousClass1 (com.gaia.ngallery.i.a$1)
.class Lcom/gaia/ngallery/i/a$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTypeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/i/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/i/a;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/i/a;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/gaia/ngallery/i/a$1;->a:Lcom/gaia/ngallery/i/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 35
    iget-object p2, p0, Lcom/gaia/ngallery/i/a$1;->a:Lcom/gaia/ngallery/i/a;

    invoke-static {p2, p1}, Lcom/gaia/ngallery/i/a;->a(Lcom/gaia/ngallery/i/a;Landroid/content/Context;)V

    return-void
.end method
