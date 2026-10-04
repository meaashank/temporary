###### Class com.gaia.ngallery.c.a.a.j (com.gaia.ngallery.c.a.a.j)
.class public Lcom/gaia/ngallery/c/a/a/j;
.super Lcom/bumptech/glide/l;
.source "GlideRequest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/l<",
        "TTranscodeType;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/m;Ljava/lang/Class;Landroid/content/Context;)V
    .registers 5
    .param p1    # Lcom/bumptech/glide/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/m;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/l;-><init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/m;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/l;)V
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/l<",
            "*>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/l;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/l;)V

    return-void
.end method


# virtual methods
.method public synthetic a(F)Lcom/bumptech/glide/l;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c(F)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c(Lcom/bumptech/glide/l;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lcom/bumptech/glide/n;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Lcom/bumptech/glide/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->b(Lcom/bumptech/glide/n;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c(Lcom/bumptech/glide/request/f;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a([Lcom/bumptech/glide/l;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # [Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->b([Lcom/bumptech/glide/l;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 177
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->q(I)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 179
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->q(I)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public a(J)Lcom/gaia/ngallery/c/a/a/j;
    .registers 5
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 373
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1, p2}, Lcom/gaia/ngallery/c/a/a/i;->d(J)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 375
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gaia/ngallery/c/a/a/i;->d(J)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public a(Landroid/content/res/Resources$Theme;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 247
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->b(Landroid/content/res/Resources$Theme;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 249
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->b(Landroid/content/res/Resources$Theme;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap$CompressFormat;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 344
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 345
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->d(Landroid/graphics/Bitmap$CompressFormat;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 347
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->d(Landroid/graphics/Bitmap$CompressFormat;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/Priority;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 149
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->d(Lcom/bumptech/glide/Priority;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 151
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->d(Lcom/bumptech/glide/Priority;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 386
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 387
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->d(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 389
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->d(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/c;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 303
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->d(Lcom/bumptech/glide/load/c;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 305
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->d(Lcom/bumptech/glide/load/c;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 5
    .param p1    # Lcom/bumptech/glide/load/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/e<",
            "TT;>;TT;)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 317
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1, p2}, Lcom/gaia/ngallery/c/a/a/i;->d(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 319
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gaia/ngallery/c/a/a/i;->d(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/h;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/engine/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/h;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 135
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->d(Lcom/bumptech/glide/load/engine/h;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 137
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->d(Lcom/bumptech/glide/load/engine/h;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/i;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 554
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 555
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->e(Lcom/bumptech/glide/load/i;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 557
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->e(Lcom/bumptech/glide/load/i;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 415
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->d(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 417
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->d(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public a(Ljava/lang/Class;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 331
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->d(Ljava/lang/Class;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 333
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->d(Ljava/lang/Class;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public a(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/i<",
            "TT;>;)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 601
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 602
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1, p2}, Lcom/gaia/ngallery/c/a/a/i;->c(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 604
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gaia/ngallery/c/a/a/i;->c(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public a(Z)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 93
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->g(Z)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 95
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->g(Z)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/i;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # [Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 572
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 573
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->b([Lcom/bumptech/glide/load/i;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 575
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->b([Lcom/bumptech/glide/load/i;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public synthetic a(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c(Landroid/graphics/Bitmap;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->f(Landroid/graphics/drawable/Drawable;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/net/Uri;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c(Landroid/net/Uri;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/io/File;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c(Ljava/io/File;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c(Ljava/lang/Integer;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c(Ljava/lang/Object;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c(Ljava/lang/String;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/net/URL;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c(Ljava/net/URL;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a([B)Ljava/lang/Object;
    .registers 2
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c([B)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()Lcom/bumptech/glide/l;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->r()Lcom/gaia/ngallery/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c(Landroid/graphics/Bitmap;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->f(Landroid/graphics/drawable/Drawable;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/net/Uri;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c(Landroid/net/Uri;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->d(Lcom/bumptech/glide/l;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->d(Lcom/bumptech/glide/request/f;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/io/File;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c(Ljava/io/File;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/Integer;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c(Ljava/lang/Integer;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c(Ljava/lang/Object;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/String;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c(Ljava/lang/String;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/net/URL;)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c(Ljava/net/URL;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b([B)Lcom/bumptech/glide/l;
    .registers 2
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/j;->c([B)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public b(F)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 79
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->d(F)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 81
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->d(F)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public b(I)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 205
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->r(I)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 207
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->r(I)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/i;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 586
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 587
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->f(Lcom/bumptech/glide/load/i;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 589
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->f(Lcom/bumptech/glide/load/i;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/n;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .param p1    # Lcom/bumptech/glide/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/n<",
            "*-TTranscodeType;>;)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 663
    invoke-super {p0, p1}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/n;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/c/a/a/j;

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/g;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 656
    invoke-super {p0, p1}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/c/a/a/j;

    return-object p1
.end method

.method public b(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/i<",
            "TT;>;)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 616
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 617
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1, p2}, Lcom/gaia/ngallery/c/a/a/i;->d(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 619
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gaia/ngallery/c/a/a/i;->d(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public b(Z)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 107
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->h(Z)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 109
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->h(Z)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public final varargs b([Lcom/bumptech/glide/l;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .param p1    # [Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 699
    invoke-super {p0, p1}, Lcom/bumptech/glide/l;->a([Lcom/bumptech/glide/l;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/c/a/a/j;

    return-object p1
.end method

.method public c(F)Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 706
    invoke-super {p0, p1}, Lcom/bumptech/glide/l;->a(F)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/c/a/a/j;

    return-object p1
.end method

.method public c(I)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 233
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->s(I)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 235
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->s(I)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public c(Landroid/graphics/Bitmap;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 720
    invoke-super {p0, p1}, Lcom/bumptech/glide/l;->b(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/c/a/a/j;

    return-object p1
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 163
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->h(Landroid/graphics/drawable/Drawable;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 165
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->h(Landroid/graphics/drawable/Drawable;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public c(Landroid/net/Uri;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 741
    invoke-super {p0, p1}, Lcom/bumptech/glide/l;->b(Landroid/net/Uri;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/c/a/a/j;

    return-object p1
.end method

.method public c(Lcom/bumptech/glide/l;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 683
    invoke-super {p0, p1}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/c/a/a/j;

    return-object p1
.end method

.method public c(Lcom/bumptech/glide/request/f;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 670
    invoke-super {p0, p1}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/c/a/a/j;

    return-object p1
.end method

.method public c(Ljava/io/File;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 748
    invoke-super {p0, p1}, Lcom/bumptech/glide/l;->b(Ljava/io/File;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/c/a/a/j;

    return-object p1
.end method

.method public c(Ljava/lang/Integer;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 755
    invoke-super {p0, p1}, Lcom/bumptech/glide/l;->b(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/c/a/a/j;

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 713
    invoke-super {p0, p1}, Lcom/bumptech/glide/l;->b(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/c/a/a/j;

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 734
    invoke-super {p0, p1}, Lcom/bumptech/glide/l;->b(Ljava/lang/String;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/c/a/a/j;

    return-object p1
.end method

.method public c(Ljava/net/URL;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 762
    invoke-super {p0, p1}, Lcom/bumptech/glide/l;->b(Ljava/net/URL;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/c/a/a/j;

    return-object p1
.end method

.method public c(Z)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 121
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->i(Z)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 123
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->i(Z)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public c([B)Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 769
    invoke-super {p0, p1}, Lcom/bumptech/glide/l;->b([B)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/c/a/a/j;

    return-object p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->r()Lcom/gaia/ngallery/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 289
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->t(I)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 291
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->t(I)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public d(Landroid/graphics/drawable/Drawable;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 191
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->i(Landroid/graphics/drawable/Drawable;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 193
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->i(Landroid/graphics/drawable/Drawable;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public d(Lcom/bumptech/glide/l;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/l<",
            "TTranscodeType;>;)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 690
    invoke-super {p0, p1}, Lcom/bumptech/glide/l;->b(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/c/a/a/j;

    return-object p1
.end method

.method public d(Lcom/bumptech/glide/request/f;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 677
    invoke-super {p0, p1}, Lcom/bumptech/glide/l;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/c/a/a/j;

    return-object p1
.end method

.method public d(Z)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 261
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->j(Z)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 263
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->j(Z)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method protected synthetic e()Lcom/bumptech/glide/l;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->f()Lcom/gaia/ngallery/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 359
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->u(I)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 361
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->u(I)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public e(II)Lcom/gaia/ngallery/c/a/a/j;
    .registers 5
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 275
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1, p2}, Lcom/gaia/ngallery/c/a/a/i;->d(II)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 277
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gaia/ngallery/c/a/a/i;->d(II)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public e(Landroid/graphics/drawable/Drawable;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 219
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->j(Landroid/graphics/drawable/Drawable;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 221
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->j(Landroid/graphics/drawable/Drawable;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method protected f()Lcom/gaia/ngallery/c/a/a/j;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/gaia/ngallery/c/a/a/j;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcom/gaia/ngallery/c/a/a/j;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/l;)V

    sget-object v1, Lcom/gaia/ngallery/c/a/a/j;->a:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/j;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public f(I)Lcom/gaia/ngallery/c/a/a/j;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 429
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->v(I)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 431
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/c/a/a/i;->v(I)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public f(Landroid/graphics/drawable/Drawable;)Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 727
    invoke-super {p0, p1}, Lcom/bumptech/glide/l;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/c/a/a/j;

    return-object p1
.end method

.method public g()Lcom/gaia/ngallery/c/a/a/j;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 401
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->af()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 403
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->af()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public h()Lcom/gaia/ngallery/c/a/a/j;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 442
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 443
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->ag()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 445
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->ag()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public i()Lcom/gaia/ngallery/c/a/a/j;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 457
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->ah()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 459
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->ah()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public j()Lcom/gaia/ngallery/c/a/a/j;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 470
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 471
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->ai()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 473
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->ai()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public k()Lcom/gaia/ngallery/c/a/a/j;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 484
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 485
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->aj()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 487
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->aj()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public l()Lcom/gaia/ngallery/c/a/a/j;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 499
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->ak()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 501
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->ak()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public m()Lcom/gaia/ngallery/c/a/a/j;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 512
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 513
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->al()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 515
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->al()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public n()Lcom/gaia/ngallery/c/a/a/j;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 526
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 527
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->am()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 529
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->am()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public o()Lcom/gaia/ngallery/c/a/a/j;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 540
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 541
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->an()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 543
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->an()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public p()Lcom/gaia/ngallery/c/a/a/j;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 630
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 631
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->ao()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 633
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->ao()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public q()Lcom/gaia/ngallery/c/a/a/j;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 644
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/gaia/ngallery/c/a/a/i;

    if-eqz v0, :cond_15

    .line 645
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/a/a/j;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->ap()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    goto :goto_26

    .line 647
    :cond_15
    new-instance v0, Lcom/gaia/ngallery/c/a/a/i;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/i;-><init>()V

    iget-object v1, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/c/a/a/i;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/c/a/a/i;->ap()Lcom/gaia/ngallery/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/a/a/j;->b:Lcom/bumptech/glide/request/g;

    :goto_26
    return-object p0
.end method

.method public r()Lcom/gaia/ngallery/c/a/a/j;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gaia/ngallery/c/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 775
    invoke-super {p0}, Lcom/bumptech/glide/l;->b()Lcom/bumptech/glide/l;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/c/a/a/j;

    return-object v0
.end method
