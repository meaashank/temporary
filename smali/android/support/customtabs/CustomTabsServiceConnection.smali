###### Class android.support.customtabs.CustomTabsServiceConnection (android.support.customtabs.CustomTabsServiceConnection)
.class public abstract Landroid/support/customtabs/CustomTabsServiceConnection;
.super Ljava/lang/Object;
.source "CustomTabsServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/CustomTabsClient;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 32
    new-instance v0, Landroid/support/customtabs/CustomTabsServiceConnection$1;

    .line 33
    invoke-static {p2}, Landroid/support/customtabs/ICustomTabsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsService;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, Landroid/support/customtabs/CustomTabsServiceConnection$1;-><init>(Landroid/support/customtabs/CustomTabsServiceConnection;Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V

    .line 32
    invoke-virtual {p0, p1, v0}, Landroid/support/customtabs/CustomTabsServiceConnection;->onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/CustomTabsClient;)V

    return-void
.end method

###### Class android.support.customtabs.CustomTabsServiceConnection.AnonymousClass1 (android.support.customtabs.CustomTabsServiceConnection$1)
.class Landroid/support/customtabs/CustomTabsServiceConnection$1;
.super Landroid/support/customtabs/CustomTabsClient;
.source "CustomTabsServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/CustomTabsServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/customtabs/CustomTabsServiceConnection;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsServiceConnection;Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V
    .registers 4

    .line 33
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsServiceConnection$1;->this$0:Landroid/support/customtabs/CustomTabsServiceConnection;

    invoke-direct {p0, p2, p3}, Landroid/support/customtabs/CustomTabsClient;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V

    return-void
.end method
