###### Class com.amazonaws.event.ProgressListenerCallbackExecutor (com.amazonaws.event.ProgressListenerCallbackExecutor)
.class public Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
.super Ljava/lang/Object;
.source "ProgressListenerCallbackExecutor.java"


# static fields
.field static a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final b:Lcom/amazonaws/event/ProgressListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    invoke-static {}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->b:Lcom/amazonaws/event/ProgressListener;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/event/ProgressListener;)V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->b:Lcom/amazonaws/event/ProgressListener;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)Lcom/amazonaws/event/ProgressListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->b:Lcom/amazonaws/event/ProgressListener;

    return-object p0
.end method

.method public static a(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    .line 107
    :cond_4
    new-instance v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-direct {v0, p0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;-><init>(Lcom/amazonaws/event/ProgressListener;)V

    move-object p0, v0

    :goto_a
    return-object p0
.end method

.method public static a(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/event/ProgressEvent;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/event/ProgressListener;",
            "Lcom/amazonaws/event/ProgressEvent;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_4
    sget-object v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;-><init>(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/event/ProgressEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method protected static b()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 97
    sget-object v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static c()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 116
    new-instance v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$3;

    invoke-direct {v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$3;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/amazonaws/event/ProgressListener;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->b:Lcom/amazonaws/event/ProgressListener;

    return-object v0
.end method

.method public a(Lcom/amazonaws/event/ProgressEvent;)V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->b:Lcom/amazonaws/event/ProgressListener;

    if-nez v0, :cond_5

    return-void

    .line 78
    :cond_5
    sget-object v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$2;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$2;-><init>(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;Lcom/amazonaws/event/ProgressEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

###### Class com.amazonaws.event.ProgressListenerCallbackExecutor.AnonymousClass1 (com.amazonaws.event.ProgressListenerCallbackExecutor$1)
.class final Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;
.super Ljava/lang/Object;
.source "ProgressListenerCallbackExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/event/ProgressEvent;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/event/ProgressListener;

.field final synthetic b:Lcom/amazonaws/event/ProgressEvent;


# direct methods
.method constructor <init>(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/event/ProgressEvent;)V
    .registers 3

    .line 47
    iput-object p1, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;->a:Lcom/amazonaws/event/ProgressListener;

    iput-object p2, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;->b:Lcom/amazonaws/event/ProgressEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;->a:Lcom/amazonaws/event/ProgressListener;

    iget-object v1, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;->b:Lcom/amazonaws/event/ProgressEvent;

    invoke-interface {v0, v1}, Lcom/amazonaws/event/ProgressListener;->a(Lcom/amazonaws/event/ProgressEvent;)V

    return-void
.end method

###### Class com.amazonaws.event.ProgressListenerCallbackExecutor.AnonymousClass2 (com.amazonaws.event.ProgressListenerCallbackExecutor$2)
.class Lcom/amazonaws/event/ProgressListenerCallbackExecutor$2;
.super Ljava/lang/Object;
.source "ProgressListenerCallbackExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/event/ProgressEvent;

.field final synthetic b:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;


# direct methods
.method constructor <init>(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;Lcom/amazonaws/event/ProgressEvent;)V
    .registers 3

    .line 78
    iput-object p1, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$2;->b:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    iput-object p2, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$2;->a:Lcom/amazonaws/event/ProgressEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$2;->b:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-static {v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)Lcom/amazonaws/event/ProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$2;->a:Lcom/amazonaws/event/ProgressEvent;

    invoke-interface {v0, v1}, Lcom/amazonaws/event/ProgressListener;->a(Lcom/amazonaws/event/ProgressEvent;)V

    return-void
.end method

###### Class com.amazonaws.event.ProgressListenerCallbackExecutor.AnonymousClass3 (com.amazonaws.event.ProgressListenerCallbackExecutor$3)
.class final Lcom/amazonaws/event/ProgressListenerCallbackExecutor$3;
.super Ljava/lang/Object;
.source "ProgressListenerCallbackExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->c()Ljava/util/concurrent/ExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 119
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "android-sdk-progress-listener-callback-thread"

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
