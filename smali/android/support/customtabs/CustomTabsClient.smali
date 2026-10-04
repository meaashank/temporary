###### Class android.support.customtabs.CustomTabsClient (android.support.customtabs.CustomTabsClient)
.class public Landroid/support/customtabs/CustomTabsClient;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"


# instance fields
.field private final mService:Landroid/support/customtabs/ICustomTabsService;

.field private final mServiceComponentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    .line 52
    iput-object p2, p0, Landroid/support/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroid/support/customtabs/CustomTabsServiceConnection;)Z
    .registers 5

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_10
    const/16 p1, 0x21

    .line 71
    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method public static connectAndInitialize(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 138
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 139
    new-instance v1, Landroid/support/customtabs/CustomTabsClient$1;

    invoke-direct {v1, p0}, Landroid/support/customtabs/CustomTabsClient$1;-><init>(Landroid/content/Context;)V

    .line 154
    :try_start_d
    invoke-static {p0, p1, v1}, Landroid/support/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroid/support/customtabs/CustomTabsServiceConnection;)Z

    move-result p0
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_11} :catch_12

    return p0

    :catch_12
    return v0
.end method

.method public static getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, p1, v0}, Landroid/support/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageName(Landroid/content/Context;Ljava/util/List;Z)Ljava/lang/String;
    .registers 7
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p1, :cond_c

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_d

    :cond_c
    move-object v0, p1

    .line 102
    :goto_d
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x0

    if-nez p2, :cond_3b

    .line 105
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_3b

    .line 107
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3a

    .line 110
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3a
    move-object v0, v1

    .line 114
    :cond_3b
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_46
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_46

    return-object v0

    :cond_5c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 264
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/ICustomTabsService;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public newSession(Landroid/support/customtabs/CustomTabsCallback;)Landroid/support/customtabs/CustomTabsSession;
    .registers 5

    .line 189
    new-instance v0, Landroid/support/customtabs/CustomTabsClient$2;

    invoke-direct {v0, p0, p1}, Landroid/support/customtabs/CustomTabsClient$2;-><init>(Landroid/support/customtabs/CustomTabsClient;Landroid/support/customtabs/CustomTabsCallback;)V

    const/4 p1, 0x0

    .line 255
    :try_start_6
    iget-object v1, p0, Landroid/support/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    invoke-interface {v1, v0}, Landroid/support/customtabs/ICustomTabsService;->newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_19

    if-nez v1, :cond_f

    return-object p1

    .line 259
    :cond_f
    new-instance p1, Landroid/support/customtabs/CustomTabsSession;

    iget-object v1, p0, Landroid/support/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v2, p0, Landroid/support/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    invoke-direct {p1, v1, v0, v2}, Landroid/support/customtabs/CustomTabsSession;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroid/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V

    return-object p1

    :catch_19
    return-object p1
.end method

.method public warmup(J)Z
    .registers 4

    .line 171
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/ICustomTabsService;->warmup(J)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    const/4 p1, 0x0

    return p1
.end method

###### Class android.support.customtabs.CustomTabsClient.AnonymousClass1 (android.support.customtabs.CustomTabsClient$1)
.class final Landroid/support/customtabs/CustomTabsClient$1;
.super Landroid/support/customtabs/CustomTabsServiceConnection;
.source "CustomTabsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/CustomTabsClient;->connectAndInitialize(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 139
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsClient$1;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/support/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/CustomTabsClient;)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 143
    invoke-virtual {p2, v0, v1}, Landroid/support/customtabs/CustomTabsClient;->warmup(J)Z

    .line 147
    iget-object p1, p0, Landroid/support/customtabs/CustomTabsClient$1;->val$applicationContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method

###### Class android.support.customtabs.CustomTabsClient.AnonymousClass2 (android.support.customtabs.CustomTabsClient$2)
.class Landroid/support/customtabs/CustomTabsClient$2;
.super Landroid/support/customtabs/ICustomTabsCallback$Stub;
.source "CustomTabsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/CustomTabsClient;->newSession(Landroid/support/customtabs/CustomTabsCallback;)Landroid/support/customtabs/CustomTabsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/support/customtabs/CustomTabsClient;

.field final synthetic val$callback:Landroid/support/customtabs/CustomTabsCallback;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsClient;Landroid/support/customtabs/CustomTabsCallback;)V
    .registers 3

    .line 189
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsClient$2;->this$0:Landroid/support/customtabs/CustomTabsClient;

    iput-object p2, p0, Landroid/support/customtabs/CustomTabsClient$2;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;-><init>()V

    .line 190
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/support/customtabs/CustomTabsClient$2;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 206
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    if-nez v0, :cond_5

    return-void

    .line 207
    :cond_5
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/customtabs/CustomTabsClient$2$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/customtabs/CustomTabsClient$2$2;-><init>(Landroid/support/customtabs/CustomTabsClient$2;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .registers 4

    .line 218
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    if-nez v0, :cond_5

    return-void

    .line 219
    :cond_5
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/customtabs/CustomTabsClient$2$3;

    invoke-direct {v1, p0, p1}, Landroid/support/customtabs/CustomTabsClient$2$3;-><init>(Landroid/support/customtabs/CustomTabsClient$2;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .registers 5

    .line 194
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    if-nez v0, :cond_5

    return-void

    .line 195
    :cond_5
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/customtabs/CustomTabsClient$2$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/customtabs/CustomTabsClient$2$1;-><init>(Landroid/support/customtabs/CustomTabsClient$2;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 230
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    if-nez v0, :cond_5

    return-void

    .line 231
    :cond_5
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/customtabs/CustomTabsClient$2$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/customtabs/CustomTabsClient$2$4;-><init>(Landroid/support/customtabs/CustomTabsClient$2;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .registers 13
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 243
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    if-nez v0, :cond_5

    return-void

    .line 244
    :cond_5
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/customtabs/CustomTabsClient$2$5;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/support/customtabs/CustomTabsClient$2$5;-><init>(Landroid/support/customtabs/CustomTabsClient$2;ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class android.support.customtabs.CustomTabsClient.AnonymousClass2.AnonymousClass1 (android.support.customtabs.CustomTabsClient$2$1)
.class Landroid/support/customtabs/CustomTabsClient$2$1;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/CustomTabsClient$2;->onNavigationEvent(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/customtabs/CustomTabsClient$2;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$navigationEvent:I


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsClient$2;ILandroid/os/Bundle;)V
    .registers 4

    .line 195
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsClient$2$1;->this$1:Landroid/support/customtabs/CustomTabsClient$2;

    iput p2, p0, Landroid/support/customtabs/CustomTabsClient$2$1;->val$navigationEvent:I

    iput-object p3, p0, Landroid/support/customtabs/CustomTabsClient$2$1;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 198
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2$1;->this$1:Landroid/support/customtabs/CustomTabsClient$2;

    iget-object v0, v0, Landroid/support/customtabs/CustomTabsClient$2;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    iget v1, p0, Landroid/support/customtabs/CustomTabsClient$2$1;->val$navigationEvent:I

    iget-object v2, p0, Landroid/support/customtabs/CustomTabsClient$2$1;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/support/customtabs/CustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V

    return-void
.end method

###### Class android.support.customtabs.CustomTabsClient.AnonymousClass2.RunnableC00022 (android.support.customtabs.CustomTabsClient$2$2)
.class Landroid/support/customtabs/CustomTabsClient$2$2;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/CustomTabsClient$2;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/customtabs/CustomTabsClient$2;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$callbackName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsClient$2;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 207
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsClient$2$2;->this$1:Landroid/support/customtabs/CustomTabsClient$2;

    iput-object p2, p0, Landroid/support/customtabs/CustomTabsClient$2$2;->val$callbackName:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/customtabs/CustomTabsClient$2$2;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 210
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2$2;->this$1:Landroid/support/customtabs/CustomTabsClient$2;

    iget-object v0, v0, Landroid/support/customtabs/CustomTabsClient$2;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    iget-object v1, p0, Landroid/support/customtabs/CustomTabsClient$2$2;->val$callbackName:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/customtabs/CustomTabsClient$2$2;->val$args:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/support/customtabs/CustomTabsCallback;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

###### Class android.support.customtabs.CustomTabsClient.AnonymousClass2.AnonymousClass3 (android.support.customtabs.CustomTabsClient$2$3)
.class Landroid/support/customtabs/CustomTabsClient$2$3;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/CustomTabsClient$2;->onMessageChannelReady(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/customtabs/CustomTabsClient$2;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsClient$2;Landroid/os/Bundle;)V
    .registers 3

    .line 219
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsClient$2$3;->this$1:Landroid/support/customtabs/CustomTabsClient$2;

    iput-object p2, p0, Landroid/support/customtabs/CustomTabsClient$2$3;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 222
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2$3;->this$1:Landroid/support/customtabs/CustomTabsClient$2;

    iget-object v0, v0, Landroid/support/customtabs/CustomTabsClient$2;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    iget-object v1, p0, Landroid/support/customtabs/CustomTabsClient$2$3;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/customtabs/CustomTabsCallback;->onMessageChannelReady(Landroid/os/Bundle;)V

    return-void
.end method

###### Class android.support.customtabs.CustomTabsClient.AnonymousClass2.AnonymousClass4 (android.support.customtabs.CustomTabsClient$2$4)
.class Landroid/support/customtabs/CustomTabsClient$2$4;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/CustomTabsClient$2;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/customtabs/CustomTabsClient$2;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsClient$2;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 231
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsClient$2$4;->this$1:Landroid/support/customtabs/CustomTabsClient$2;

    iput-object p2, p0, Landroid/support/customtabs/CustomTabsClient$2$4;->val$message:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/customtabs/CustomTabsClient$2$4;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 234
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2$4;->this$1:Landroid/support/customtabs/CustomTabsClient$2;

    iget-object v0, v0, Landroid/support/customtabs/CustomTabsClient$2;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    iget-object v1, p0, Landroid/support/customtabs/CustomTabsClient$2$4;->val$message:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/customtabs/CustomTabsClient$2$4;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/support/customtabs/CustomTabsCallback;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

###### Class android.support.customtabs.CustomTabsClient.AnonymousClass2.AnonymousClass5 (android.support.customtabs.CustomTabsClient$2$5)
.class Landroid/support/customtabs/CustomTabsClient$2$5;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/CustomTabsClient$2;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/customtabs/CustomTabsClient$2;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$relation:I

.field final synthetic val$requestedOrigin:Landroid/net/Uri;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsClient$2;ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .registers 6

    .line 244
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsClient$2$5;->this$1:Landroid/support/customtabs/CustomTabsClient$2;

    iput p2, p0, Landroid/support/customtabs/CustomTabsClient$2$5;->val$relation:I

    iput-object p3, p0, Landroid/support/customtabs/CustomTabsClient$2$5;->val$requestedOrigin:Landroid/net/Uri;

    iput-boolean p4, p0, Landroid/support/customtabs/CustomTabsClient$2$5;->val$result:Z

    iput-object p5, p0, Landroid/support/customtabs/CustomTabsClient$2$5;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 247
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2$5;->this$1:Landroid/support/customtabs/CustomTabsClient$2;

    iget-object v0, v0, Landroid/support/customtabs/CustomTabsClient$2;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    iget v1, p0, Landroid/support/customtabs/CustomTabsClient$2$5;->val$relation:I

    iget-object v2, p0, Landroid/support/customtabs/CustomTabsClient$2$5;->val$requestedOrigin:Landroid/net/Uri;

    iget-boolean v3, p0, Landroid/support/customtabs/CustomTabsClient$2$5;->val$result:Z

    iget-object v4, p0, Landroid/support/customtabs/CustomTabsClient$2$5;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/customtabs/CustomTabsCallback;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    return-void
.end method
