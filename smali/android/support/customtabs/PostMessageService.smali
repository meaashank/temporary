###### Class android.support.customtabs.PostMessageService (android.support.customtabs.PostMessageService)
.class public Landroid/support/customtabs/PostMessageService;
.super Landroid/app/Service;
.source "PostMessageService.java"


# instance fields
.field private mBinder:Landroid/support/customtabs/IPostMessageService$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Landroid/support/customtabs/PostMessageService$1;

    invoke-direct {v0, p0}, Landroid/support/customtabs/PostMessageService$1;-><init>(Landroid/support/customtabs/PostMessageService;)V

    iput-object v0, p0, Landroid/support/customtabs/PostMessageService;->mBinder:Landroid/support/customtabs/IPostMessageService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 46
    iget-object p1, p0, Landroid/support/customtabs/PostMessageService;->mBinder:Landroid/support/customtabs/IPostMessageService$Stub;

    return-object p1
.end method

###### Class android.support.customtabs.PostMessageService.AnonymousClass1 (android.support.customtabs.PostMessageService$1)
.class Landroid/support/customtabs/PostMessageService$1;
.super Landroid/support/customtabs/IPostMessageService$Stub;
.source "PostMessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/PostMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/customtabs/PostMessageService;


# direct methods
.method constructor <init>(Landroid/support/customtabs/PostMessageService;)V
    .registers 2

    .line 29
    iput-object p1, p0, Landroid/support/customtabs/PostMessageService$1;->this$0:Landroid/support/customtabs/PostMessageService;

    invoke-direct {p0}, Landroid/support/customtabs/IPostMessageService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageChannelReady(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)V
    .registers 3

    .line 34
    invoke-interface {p1, p2}, Landroid/support/customtabs/ICustomTabsCallback;->onMessageChannelReady(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 40
    invoke-interface {p1, p2, p3}, Landroid/support/customtabs/ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
