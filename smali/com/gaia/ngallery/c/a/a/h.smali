###### Class com.gaia.ngallery.c.a.a.h (com.gaia.ngallery.c.a.a.h)
.class public final Lcom/gaia/ngallery/c/a/a/h;
.super Ljava/lang/Object;
.source "GlideApp.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/gaia/ngallery/c/a/a/k;
    .registers 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 96
    invoke-static {p0}, Lcom/bumptech/glide/f;->a(Landroid/app/Activity;)Lcom/bumptech/glide/m;

    move-result-object p0

    check-cast p0, Lcom/gaia/ngallery/c/a/a/k;

    return-object p0
.end method

.method public static a(Landroid/app/Fragment;)Lcom/gaia/ngallery/c/a/a/k;
    .registers 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    invoke-static {p0}, Lcom/bumptech/glide/f;->a(Landroid/app/Fragment;)Lcom/bumptech/glide/m;

    move-result-object p0

    check-cast p0, Lcom/gaia/ngallery/c/a/a/k;

    return-object p0
.end method

.method public static a(Landroid/support/v4/app/Fragment;)Lcom/gaia/ngallery/c/a/a/k;
    .registers 1
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 112
    invoke-static {p0}, Lcom/bumptech/glide/f;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/m;

    move-result-object p0

    check-cast p0, Lcom/gaia/ngallery/c/a/a/k;

    return-object p0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Lcom/gaia/ngallery/c/a/a/k;
    .registers 1
    .param p0    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 104
    invoke-static {p0}, Lcom/bumptech/glide/f;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/m;

    move-result-object p0

    check-cast p0, Lcom/gaia/ngallery/c/a/a/k;

    return-object p0
.end method

.method public static a(Landroid/view/View;)Lcom/gaia/ngallery/c/a/a/k;
    .registers 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 129
    invoke-static {p0}, Lcom/bumptech/glide/f;->a(Landroid/view/View;)Lcom/bumptech/glide/m;

    move-result-object p0

    check-cast p0, Lcom/gaia/ngallery/c/a/a/k;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 36
    invoke-static {p0}, Lcom/bumptech/glide/f;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 44
    invoke-static {p0, p1}, Lcom/bumptech/glide/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .registers 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 80
    invoke-static {}, Lcom/bumptech/glide/f;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bumptech/glide/g;)V
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 71
    invoke-static {p0, p1}, Lcom/bumptech/glide/f;->a(Landroid/content/Context;Lcom/bumptech/glide/g;)V

    return-void
.end method

.method public static a(Lcom/bumptech/glide/f;)V
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-static {p0}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/f;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/f;
    .registers 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 52
    invoke-static {p0}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Lcom/gaia/ngallery/c/a/a/k;
    .registers 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 88
    invoke-static {p0}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p0

    check-cast p0, Lcom/gaia/ngallery/c/a/a/k;

    return-object p0
.end method
