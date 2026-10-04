###### Class com.bumptech.glide.e (com.bumptech.glide.e)
.class public final Lcom/bumptech/glide/e;
.super Lcom/bumptech/glide/n;
.source "GenericTransitionOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/n<",
        "Lcom/bumptech/glide/e<",
        "TTranscodeType;>;TTranscodeType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/bumptech/glide/n;-><init>()V

    return-void
.end method

.method public static a()Lcom/bumptech/glide/e;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/e<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/bumptech/glide/e;

    invoke-direct {v0}, Lcom/bumptech/glide/e;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->b()Lcom/bumptech/glide/n;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e;

    return-object v0
.end method

.method public static a(I)Lcom/bumptech/glide/e;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/bumptech/glide/e<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/bumptech/glide/e;

    invoke-direct {v0}, Lcom/bumptech/glide/e;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e;->b(I)Lcom/bumptech/glide/n;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public static a(Lcom/bumptech/glide/request/b/g;)Lcom/bumptech/glide/e;
    .registers 2
    .param p0    # Lcom/bumptech/glide/request/b/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/request/b/g<",
            "-TTranscodeType;>;)",
            "Lcom/bumptech/glide/e<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/bumptech/glide/e;

    invoke-direct {v0}, Lcom/bumptech/glide/e;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/request/b/g;)Lcom/bumptech/glide/n;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public static a(Lcom/bumptech/glide/request/b/j$a;)Lcom/bumptech/glide/e;
    .registers 2
    .param p0    # Lcom/bumptech/glide/request/b/j$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/request/b/j$a;",
            ")",
            "Lcom/bumptech/glide/e<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/bumptech/glide/e;

    invoke-direct {v0}, Lcom/bumptech/glide/e;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/request/b/j$a;)Lcom/bumptech/glide/n;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e;

    return-object p0
.end method
