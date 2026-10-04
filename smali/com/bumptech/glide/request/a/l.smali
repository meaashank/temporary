###### Class com.bumptech.glide.request.a.l (com.bumptech.glide.request.a.l)
.class public final Lcom/bumptech/glide/request/a/l;
.super Lcom/bumptech/glide/request/a/m;
.source "PreloadTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/a/m<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final a:I = 0x1

.field private static final b:Landroid/os/Handler;


# instance fields
.field private final d:Lcom/bumptech/glide/m;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/request/a/l$1;

    invoke-direct {v2}, Lcom/bumptech/glide/request/a/l$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/request/a/l;->b:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/m;II)V
    .registers 4

    .line 46
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/request/a/m;-><init>(II)V

    .line 47
    iput-object p1, p0, Lcom/bumptech/glide/request/a/l;->d:Lcom/bumptech/glide/m;

    return-void
.end method

.method public static a(Lcom/bumptech/glide/m;II)Lcom/bumptech/glide/request/a/l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/m;",
            "II)",
            "Lcom/bumptech/glide/request/a/l<",
            "TZ;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/bumptech/glide/request/a/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/request/a/l;-><init>(Lcom/bumptech/glide/m;II)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/request/b/f;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/b/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/request/b/f<",
            "-TZ;>;)V"
        }
    .end annotation

    .line 52
    sget-object p1, Lcom/bumptech/glide/request/a/l;->b:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method b()V
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/bumptech/glide/request/a/l;->d:Lcom/bumptech/glide/m;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/request/a/o;)V

    return-void
.end method

###### Class com.bumptech.glide.request.a.l.AnonymousClass1 (com.bumptech.glide.request.a.l$1)
.class Lcom/bumptech/glide/request/a/l$1;
.super Ljava/lang/Object;
.source "PreloadTarget.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 24
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/request/a/l;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/a/l;->b()V

    return v1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method
