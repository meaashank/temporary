###### Class com.bumptech.glide.d (com.bumptech.glide.d)
.class final Lcom/bumptech/glide/d;
.super Ljava/lang/Object;
.source "GeneratedRequestManagerFactory.java"

# interfaces
.implements Lcom/bumptech/glide/d/l$a;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/f;Lcom/bumptech/glide/d/h;Lcom/bumptech/glide/d/m;Landroid/content/Context;)Lcom/bumptech/glide/m;
    .registers 6
    .param p1    # Lcom/bumptech/glide/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/d/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/d/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 19
    new-instance v0, Lcom/gaia/ngallery/c/a/a/k;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/gaia/ngallery/c/a/a/k;-><init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/d/h;Lcom/bumptech/glide/d/m;Landroid/content/Context;)V

    return-object v0
.end method
