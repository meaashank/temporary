###### Class com.bumptech.glide.request.b.k (com.bumptech.glide.request.b.k)
.class public Lcom/bumptech/glide/request/b/k;
.super Ljava/lang/Object;
.source "ViewTransition.java"

# interfaces
.implements Lcom/bumptech/glide/request/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/b/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/b/f<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/request/b/k$a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/b/k$a;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bumptech/glide/request/b/k;->a:Lcom/bumptech/glide/request/b/k$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/request/b/f$a;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/b/f$a;",
            ")Z"
        }
    .end annotation

    .line 39
    invoke-interface {p2}, Lcom/bumptech/glide/request/b/f$a;->j()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 42
    iget-object p2, p0, Lcom/bumptech/glide/request/b/k;->a:Lcom/bumptech/glide/request/b/k$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/bumptech/glide/request/b/k$a;->a(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

###### Class com.bumptech.glide.request.b.k.a (com.bumptech.glide.request.b.k$a)
.class interface abstract Lcom/bumptech/glide/request/b/k$a;
.super Ljava/lang/Object;
.source "ViewTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Landroid/content/Context;)Landroid/view/animation/Animation;
.end method
