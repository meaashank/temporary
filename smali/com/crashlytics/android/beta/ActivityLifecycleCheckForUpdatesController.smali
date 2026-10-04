###### Class com.crashlytics.android.beta.ActivityLifecycleCheckForUpdatesController (com.crashlytics.android.beta.ActivityLifecycleCheckForUpdatesController)
.class Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;
.super Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;
.source "ActivityLifecycleCheckForUpdatesController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final callbacks:Lio/fabric/sdk/android/a$b;

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/a;Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;-><init>()V

    .line 18
    new-instance v0, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1;-><init>(Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;)V

    iput-object v0, p0, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;->callbacks:Lio/fabric/sdk/android/a$b;

    .line 38
    iput-object p2, p0, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 39
    iget-object p2, p0, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;->callbacks:Lio/fabric/sdk/android/a$b;

    invoke-virtual {p1, p2}, Lio/fabric/sdk/android/a;->a(Lio/fabric/sdk/android/a$b;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public isActivityLifecycleTriggered()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class com.crashlytics.android.beta.ActivityLifecycleCheckForUpdatesController.AnonymousClass1 (com.crashlytics.android.beta.ActivityLifecycleCheckForUpdatesController$1)
.class Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1;
.super Lio/fabric/sdk/android/a$b;
.source "ActivityLifecycleCheckForUpdatesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1;->this$0:Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;

    invoke-direct {p0}, Lio/fabric/sdk/android/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 21
    iget-object p1, p0, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1;->this$0:Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;

    invoke-virtual {p1}, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;->signalExternallyReady()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 24
    iget-object p1, p0, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1;->this$0:Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;

    invoke-static {p1}, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;->access$000(Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1$1;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1$1;-><init>(Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_16
    return-void
.end method

###### Class com.crashlytics.android.beta.ActivityLifecycleCheckForUpdatesController.AnonymousClass1.RunnableC00461 (com.crashlytics.android.beta.ActivityLifecycleCheckForUpdatesController$1$1)
.class Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleCheckForUpdatesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1;->onActivityStarted(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1$1;->this$1:Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1$1;->this$1:Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1;

    iget-object v0, v0, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController$1;->this$0:Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;

    invoke-virtual {v0}, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;->checkForUpdates()V

    return-void
.end method
