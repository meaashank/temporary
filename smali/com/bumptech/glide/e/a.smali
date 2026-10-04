###### Class com.bumptech.glide.e.a (com.bumptech.glide.e.a)
.class public abstract Lcom/bumptech/glide/e/a;
.super Lcom/bumptech/glide/e/d;
.source "AppGlideModule.java"

# interfaces
.implements Lcom/bumptech/glide/e/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/bumptech/glide/e/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/g;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
