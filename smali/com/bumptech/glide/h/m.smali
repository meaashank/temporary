###### Class com.bumptech.glide.h.m (com.bumptech.glide.h.m)
.class public Lcom/bumptech/glide/h/m;
.super Ljava/lang/Object;
.source "ViewPreloadSizeProvider.java"

# interfaces
.implements Lcom/bumptech/glide/i$b;
.implements Lcom/bumptech/glide/request/a/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/h/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/i$b<",
        "TT;>;",
        "Lcom/bumptech/glide/request/a/n;"
    }
.end annotation


# instance fields
.field private a:[I

.field private b:Lcom/bumptech/glide/h/m$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/bumptech/glide/h/m$a;

    invoke-direct {v0, p1, p0}, Lcom/bumptech/glide/h/m$a;-><init>(Landroid/view/View;Lcom/bumptech/glide/request/a/n;)V

    iput-object v0, p0, Lcom/bumptech/glide/h/m;->b:Lcom/bumptech/glide/h/m$a;

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 5

    const/4 v0, 0x2

    .line 60
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    iput-object v0, p0, Lcom/bumptech/glide/h/m;->a:[I

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/bumptech/glide/h/m;->b:Lcom/bumptech/glide/h/m$a;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    iget-object v0, p0, Lcom/bumptech/glide/h/m;->a:[I

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/bumptech/glide/h/m;->b:Lcom/bumptech/glide/h/m$a;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 77
    :cond_9
    new-instance v0, Lcom/bumptech/glide/h/m$a;

    invoke-direct {v0, p1, p0}, Lcom/bumptech/glide/h/m$a;-><init>(Landroid/view/View;Lcom/bumptech/glide/request/a/n;)V

    iput-object v0, p0, Lcom/bumptech/glide/h/m;->b:Lcom/bumptech/glide/h/m$a;

    return-void

    :cond_11
    :goto_11
    return-void
.end method

.method public a(Ljava/lang/Object;II)[I
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation

    .line 51
    iget-object p1, p0, Lcom/bumptech/glide/h/m;->a:[I

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 54
    :cond_6
    iget-object p1, p0, Lcom/bumptech/glide/h/m;->a:[I

    iget-object p2, p0, Lcom/bumptech/glide/h/m;->a:[I

    array-length p2, p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    return-object p1
.end method

###### Class com.bumptech.glide.h.m.a (com.bumptech.glide.h.m$a)
.class final Lcom/bumptech/glide/h/m$a;
.super Lcom/bumptech/glide/request/a/q;
.source "ViewPreloadSizeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/h/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/a/q<",
        "Landroid/view/View;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/bumptech/glide/request/a/n;)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a/q;-><init>(Landroid/view/View;)V

    .line 83
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/h/m$a;->a(Lcom/bumptech/glide/request/a/n;)V

    return-void
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
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/b/f<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
