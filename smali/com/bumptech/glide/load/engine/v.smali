###### Class com.bumptech.glide.load.engine.v (com.bumptech.glide.load.engine.v)
.class Lcom/bumptech/glide/load/engine/v;
.super Ljava/lang/Object;
.source "ResourceRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/v$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/os/Handler;

    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/v$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/v$a;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/v;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/engine/s;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/s<",
            "*>;)V"
        }
    .end annotation

    .line 18
    invoke-static {}, Lcom/bumptech/glide/h/l;->a()V

    .line 20
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/v;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 25
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/v;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1a

    .line 27
    :cond_12
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/v;->a:Z

    .line 28
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/s;->f()V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/v;->a:Z

    :goto_1a
    return-void
.end method

###### Class com.bumptech.glide.load.engine.v.a (com.bumptech.glide.load.engine.v$a)
.class final Lcom/bumptech/glide/load/engine/v$a;
.super Ljava/lang/Object;
.source "ResourceRecycler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field static final a:I = 0x1


# direct methods
.method constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 42
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/engine/s;

    .line 43
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/s;->f()V

    return v1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method
