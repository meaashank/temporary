###### Class com.bumptech.glide.c (com.bumptech.glide.c)
.class final Lcom/bumptech/glide/c;
.super Lcom/bumptech/glide/b;
.source "GeneratedAppGlideModuleImpl.java"


# instance fields
.field private final a:Lcom/gaia/ngallery/c/a/a/g;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Lcom/bumptech/glide/b;-><init>()V

    .line 18
    new-instance v0, Lcom/gaia/ngallery/c/a/a/g;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/g;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c;->a:Lcom/gaia/ngallery/c/a/a/g;

    const-string v0, "Glide"

    const/4 v1, 0x3

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "Glide"

    const-string v1, "Discovered AppGlideModule from annotation: com.gaia.ngallery.codecmedia.photo.glidedecrypt.GaiaGlideApp"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/bumptech/glide/f;Lcom/bumptech/glide/Registry;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/Registry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/c;->a:Lcom/gaia/ngallery/c/a/a/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gaia/ngallery/c/a/a/g;->a(Landroid/content/Context;Lcom/bumptech/glide/f;Lcom/bumptech/glide/Registry;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/bumptech/glide/g;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    iget-object v0, p0, Lcom/bumptech/glide/c;->a:Lcom/gaia/ngallery/c/a/a/g;

    invoke-virtual {v0, p1, p2}, Lcom/gaia/ngallery/c/a/a/g;->a(Landroid/content/Context;Lcom/bumptech/glide/g;)V

    return-void
.end method

.method synthetic b()Lcom/bumptech/glide/d/l$a;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->d()Lcom/bumptech/glide/d;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/c;->a:Lcom/gaia/ngallery/c/a/a/g;

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/g;->c()Z

    move-result v0

    return v0
.end method

.method d()Lcom/bumptech/glide/d;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 49
    new-instance v0, Lcom/bumptech/glide/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d;-><init>()V

    return-object v0
.end method
