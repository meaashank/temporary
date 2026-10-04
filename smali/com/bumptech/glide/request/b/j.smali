###### Class com.bumptech.glide.request.b.j (com.bumptech.glide.request.b.j)
.class public Lcom/bumptech/glide/request/b/j;
.super Ljava/lang/Object;
.source "ViewPropertyTransition.java"

# interfaces
.implements Lcom/bumptech/glide/request/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/b/j$a;
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
.field private final a:Lcom/bumptech/glide/request/b/j$a;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/b/j$a;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/request/b/j;->a:Lcom/bumptech/glide/request/b/j$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/request/b/f$a;)Z
    .registers 3
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

    if-eqz p1, :cond_f

    .line 41
    iget-object p1, p0, Lcom/bumptech/glide/request/b/j;->a:Lcom/bumptech/glide/request/b/j$a;

    invoke-interface {p2}, Lcom/bumptech/glide/request/b/f$a;->j()Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bumptech/glide/request/b/j$a;->a(Landroid/view/View;)V

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

###### Class com.bumptech.glide.request.b.j.a (com.bumptech.glide.request.b.j$a)
.class public interface abstract Lcom/bumptech/glide/request/b/j$a;
.super Ljava/lang/Object;
.source "ViewPropertyTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method
