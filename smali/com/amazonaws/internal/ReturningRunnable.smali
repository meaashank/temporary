###### Class com.amazonaws.internal.ReturningRunnable (com.amazonaws.internal.ReturningRunnable)
.class public abstract Lcom/amazonaws/internal/ReturningRunnable;
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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/amazonaws/internal/ReturningRunnable;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/amazonaws/internal/ReturningRunnable;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/internal/ReturningRunnable;)Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/amazonaws/internal/ReturningRunnable;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public a(Lcom/amazonaws/async/Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/async/Callback<",
            "TR;>;)V"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/internal/ReturningRunnable$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/internal/ReturningRunnable$1;-><init>(Lcom/amazonaws/internal/ReturningRunnable;Lcom/amazonaws/async/Callback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/amazonaws/internal/ReturningRunnable;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.internal.ReturningRunnable.AnonymousClass1 (com.amazonaws.internal.ReturningRunnable$1)
.class Lcom/amazonaws/internal/ReturningRunnable$1;
.super Ljava/lang/Object;
.source "ReturningRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/internal/ReturningRunnable;->a(Lcom/amazonaws/async/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/async/Callback;

.field final synthetic b:Lcom/amazonaws/internal/ReturningRunnable;


# direct methods
.method constructor <init>(Lcom/amazonaws/internal/ReturningRunnable;Lcom/amazonaws/async/Callback;)V
    .registers 3

    .line 74
    iput-object p1, p0, Lcom/amazonaws/internal/ReturningRunnable$1;->b:Lcom/amazonaws/internal/ReturningRunnable;

    iput-object p2, p0, Lcom/amazonaws/internal/ReturningRunnable$1;->a:Lcom/amazonaws/async/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/internal/ReturningRunnable$1;->a:Lcom/amazonaws/async/Callback;

    iget-object v1, p0, Lcom/amazonaws/internal/ReturningRunnable$1;->b:Lcom/amazonaws/internal/ReturningRunnable;

    invoke-virtual {v1}, Lcom/amazonaws/internal/ReturningRunnable;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/async/Callback;->a(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_2b

    :catch_c
    move-exception v0

    .line 80
    iget-object v1, p0, Lcom/amazonaws/internal/ReturningRunnable$1;->b:Lcom/amazonaws/internal/ReturningRunnable;

    invoke-static {v1}, Lcom/amazonaws/internal/ReturningRunnable;->a(Lcom/amazonaws/internal/ReturningRunnable;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 81
    iget-object v1, p0, Lcom/amazonaws/internal/ReturningRunnable$1;->a:Lcom/amazonaws/async/Callback;

    invoke-interface {v1, v0}, Lcom/amazonaws/async/Callback;->a(Ljava/lang/Exception;)V

    goto :goto_2b

    .line 83
    :cond_1b
    iget-object v1, p0, Lcom/amazonaws/internal/ReturningRunnable$1;->a:Lcom/amazonaws/async/Callback;

    new-instance v2, Ljava/lang/Exception;

    iget-object v3, p0, Lcom/amazonaws/internal/ReturningRunnable$1;->b:Lcom/amazonaws/internal/ReturningRunnable;

    invoke-static {v3}, Lcom/amazonaws/internal/ReturningRunnable;->a(Lcom/amazonaws/internal/ReturningRunnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/amazonaws/async/Callback;->a(Ljava/lang/Exception;)V

    :goto_2b
    return-void
.end method
