###### Class android.support.customtabs.CustomTabsService (android.support.customtabs.CustomTabsService)
.class public abstract Landroid/support/customtabs/CustomTabsService;
.super Landroid/app/Service;
.source "CustomTabsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/customtabs/CustomTabsService$Relation;,
        Landroid/support/customtabs/CustomTabsService$Result;
    }
.end annotation


# static fields
.field public static final ACTION_CUSTOM_TABS_CONNECTION:Ljava/lang/String; = "android.support.customtabs.action.CustomTabsService"

.field public static final KEY_URL:Ljava/lang/String; = "android.support.customtabs.otherurls.URL"

.field public static final RELATION_HANDLE_ALL_URLS:I = 0x2

.field public static final RELATION_USE_AS_ORIGIN:I = 0x1

.field public static final RESULT_FAILURE_DISALLOWED:I = -0x1

.field public static final RESULT_FAILURE_MESSAGING_ERROR:I = -0x3

.field public static final RESULT_FAILURE_REMOTE_ERROR:I = -0x2

.field public static final RESULT_SUCCESS:I


# instance fields
.field private mBinder:Landroid/support/customtabs/ICustomTabsService$Stub;

.field private final mDeathRecipientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 98
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    .line 100
    new-instance v0, Landroid/support/customtabs/CustomTabsService$1;

    invoke-direct {v0, p0}, Landroid/support/customtabs/CustomTabsService$1;-><init>(Landroid/support/customtabs/CustomTabsService;)V

    iput-object v0, p0, Landroid/support/customtabs/CustomTabsService;->mBinder:Landroid/support/customtabs/ICustomTabsService$Stub;

    return-void
.end method

.method static synthetic access$000(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;
    .registers 1

    .line 41
    iget-object p0, p0, Landroid/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method protected cleanUpSession(Landroid/support/customtabs/CustomTabsSessionToken;)Z
    .registers 5

    const/4 v0, 0x0

    .line 182
    :try_start_1
    iget-object v1, p0, Landroid/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    monitor-enter v1
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_4} :catch_1e

    .line 183
    :try_start_4
    invoke-virtual {p1}, Landroid/support/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 184
    iget-object v2, p0, Landroid/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    .line 185
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder$DeathRecipient;

    .line 186
    invoke-interface {p1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 187
    iget-object v2, p0, Landroid/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :catchall_1b
    move-exception p1

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p1
    :try_end_1e
    .catch Ljava/util/NoSuchElementException; {:try_start_1d .. :try_end_1e} :catch_1e

    :catch_1e
    return v0
.end method

.method protected abstract extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method protected abstract mayLaunchUrl(Landroid/support/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/customtabs/CustomTabsSessionToken;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation
.end method

.method protected abstract newSession(Landroid/support/customtabs/CustomTabsSessionToken;)Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 168
    iget-object p1, p0, Landroid/support/customtabs/CustomTabsService;->mBinder:Landroid/support/customtabs/ICustomTabsService$Stub;

    return-object p1
.end method

.method protected abstract postMessage(Landroid/support/customtabs/CustomTabsSessionToken;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method protected abstract requestPostMessageChannel(Landroid/support/customtabs/CustomTabsSessionToken;Landroid/net/Uri;)Z
.end method

.method protected abstract updateVisuals(Landroid/support/customtabs/CustomTabsSessionToken;Landroid/os/Bundle;)Z
.end method

.method protected abstract validateRelationship(Landroid/support/customtabs/CustomTabsSessionToken;ILandroid/net/Uri;Landroid/os/Bundle;)Z
.end method

.method protected abstract warmup(J)Z
.end method

###### Class android.support.customtabs.CustomTabsService.AnonymousClass1 (android.support.customtabs.CustomTabsService$1)
.class Landroid/support/customtabs/CustomTabsService$1;
.super Landroid/support/customtabs/ICustomTabsService$Stub;
.source "CustomTabsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/customtabs/CustomTabsService;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsService;)V
    .registers 2

    .line 100
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 136
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Landroid/support/customtabs/CustomTabsService;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/customtabs/ICustomTabsCallback;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/customtabs/CustomTabsService;->mayLaunchUrl(Landroid/support/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z
    .registers 7

    .line 109
    new-instance v0, Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v0, p1}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    const/4 v1, 0x0

    .line 111
    :try_start_6
    new-instance v2, Landroid/support/customtabs/CustomTabsService$1$1;

    invoke-direct {v2, p0, v0}, Landroid/support/customtabs/CustomTabsService$1$1;-><init>(Landroid/support/customtabs/CustomTabsService$1;Landroid/support/customtabs/CustomTabsSessionToken;)V

    .line 117
    iget-object v3, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    invoke-static {v3}, Landroid/support/customtabs/CustomTabsService;->access$000(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_31

    .line 118
    :try_start_12
    invoke-interface {p1}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 119
    iget-object v4, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    invoke-static {v4}, Landroid/support/customtabs/CustomTabsService;->access$000(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {p1}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2e

    .line 121
    :try_start_27
    iget-object p1, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {p1, v0}, Landroid/support/customtabs/CustomTabsService;->newSession(Landroid/support/customtabs/CustomTabsSessionToken;)Z

    move-result p1
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2d} :catch_31

    return p1

    :catchall_2e
    move-exception p1

    .line 120
    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw p1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_31} :catch_31

    :catch_31
    return v1
.end method

.method public postMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 6

    .line 154
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/customtabs/CustomTabsService;->postMessage(Landroid/support/customtabs/CustomTabsSessionToken;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public requestPostMessageChannel(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;)Z
    .registers 5

    .line 148
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2}, Landroid/support/customtabs/CustomTabsService;->requestPostMessageChannel(Landroid/support/customtabs/CustomTabsSessionToken;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    .registers 5

    .line 141
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2}, Landroid/support/customtabs/CustomTabsService;->updateVisuals(Landroid/support/customtabs/CustomTabsSessionToken;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public validateRelationship(Landroid/support/customtabs/ICustomTabsCallback;ILandroid/net/Uri;Landroid/os/Bundle;)Z
    .registers 7

    .line 161
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/customtabs/CustomTabsService;->validateRelationship(Landroid/support/customtabs/CustomTabsSessionToken;ILandroid/net/Uri;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public warmup(J)Z
    .registers 4

    .line 104
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Landroid/support/customtabs/CustomTabsService;->warmup(J)Z

    move-result p1

    return p1
.end method

###### Class android.support.customtabs.CustomTabsService.AnonymousClass1.C00031 (android.support.customtabs.CustomTabsService$1$1)
.class Landroid/support/customtabs/CustomTabsService$1$1;
.super Ljava/lang/Object;
.source "CustomTabsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/CustomTabsService$1;->newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/customtabs/CustomTabsService$1;

.field final synthetic val$sessionToken:Landroid/support/customtabs/CustomTabsSessionToken;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsService$1;Landroid/support/customtabs/CustomTabsSessionToken;)V
    .registers 3

    .line 111
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsService$1$1;->this$1:Landroid/support/customtabs/CustomTabsService$1;

    iput-object p2, p0, Landroid/support/customtabs/CustomTabsService$1$1;->val$sessionToken:Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 114
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1$1;->this$1:Landroid/support/customtabs/CustomTabsService$1;

    iget-object v0, v0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    iget-object v1, p0, Landroid/support/customtabs/CustomTabsService$1$1;->val$sessionToken:Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-virtual {v0, v1}, Landroid/support/customtabs/CustomTabsService;->cleanUpSession(Landroid/support/customtabs/CustomTabsSessionToken;)Z

    return-void
.end method

###### Class android.support.customtabs.CustomTabsService.Relation (android.support.customtabs.CustomTabsService$Relation)
.class public interface abstract annotation Landroid/support/customtabs/CustomTabsService$Relation;
.super Ljava/lang/Object;
.source "CustomTabsService.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Relation"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class android.support.customtabs.CustomTabsService.Result (android.support.customtabs.CustomTabsService$Result)
.class public interface abstract annotation Landroid/support/customtabs/CustomTabsService$Result;
.super Ljava/lang/Object;
.source "CustomTabsService.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Result"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
