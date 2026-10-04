###### Class com.amazonaws.mobile.client.internal.ReturningRunnable (com.amazonaws.mobile.client.internal.ReturningRunnable)
.class public abstract Lcom/amazonaws/mobile/client/internal/ReturningRunnable;
.super Ljava/lang/Object;
.source "ReturningRunnable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/internal/ReturningRunnable;)Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobile/client/Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/Callback<",
            "TR;>;)V"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobile/client/internal/ReturningRunnable$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable$1;-><init>(Lcom/amazonaws/mobile/client/internal/ReturningRunnable;Lcom/amazonaws/mobile/client/Callback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public c()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.mobile.client.internal.ReturningRunnable.AnonymousClass1 (com.amazonaws.mobile.client.internal.ReturningRunnable$1)
.class Lcom/amazonaws/mobile/client/internal/ReturningRunnable$1;
.super Ljava/lang/Object;
.source "ReturningRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a(Lcom/amazonaws/mobile/client/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic b:Lcom/amazonaws/mobile/client/internal/ReturningRunnable;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/internal/ReturningRunnable;Lcom/amazonaws/mobile/client/Callback;)V
    .registers 3

    .line 40
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/ReturningRunnable$1;->b:Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/internal/ReturningRunnable$1;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/ReturningRunnable$1;->a:Lcom/amazonaws/mobile/client/Callback;

    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/ReturningRunnable$1;->b:Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_2b

    :catch_c
    move-exception v0

    .line 46
    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/ReturningRunnable$1;->b:Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    invoke-static {v1}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a(Lcom/amazonaws/mobile/client/internal/ReturningRunnable;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 47
    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/ReturningRunnable$1;->a:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {v1, v0}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    goto :goto_2b

    .line 49
    :cond_1b
    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/ReturningRunnable$1;->a:Lcom/amazonaws/mobile/client/Callback;

    new-instance v2, Ljava/lang/Exception;

    iget-object v3, p0, Lcom/amazonaws/mobile/client/internal/ReturningRunnable$1;->b:Lcom/amazonaws/mobile/client/internal/ReturningRunnable;

    invoke-static {v3}, Lcom/amazonaws/mobile/client/internal/ReturningRunnable;->a(Lcom/amazonaws/mobile/client/internal/ReturningRunnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    :goto_2b
    return-void
.end method
