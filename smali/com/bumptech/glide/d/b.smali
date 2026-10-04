###### Class com.bumptech.glide.d.b (com.bumptech.glide.d.b)
.class Lcom/bumptech/glide/d/b;
.super Ljava/lang/Object;
.source "ApplicationLifecycle.java"

# interfaces
.implements Lcom/bumptech/glide/d/h;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/d/i;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/d/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    invoke-interface {p1}, Lcom/bumptech/glide/d/i;->g()V

    return-void
.end method

.method public b(Lcom/bumptech/glide/d/i;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/d/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
