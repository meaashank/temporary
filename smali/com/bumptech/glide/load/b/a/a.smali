###### Class com.bumptech.glide.load.b.a.a (com.bumptech.glide.load.b.a.a)
.class public abstract Lcom/bumptech/glide/load/b/a/a;
.super Ljava/lang/Object;
.source "BaseGlideUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/n<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/n<",
            "Lcom/bumptech/glide/load/b/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/b/m;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/m<",
            "TModel;",
            "Lcom/bumptech/glide/load/b/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/bumptech/glide/load/b/n;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/n<",
            "Lcom/bumptech/glide/load/b/g;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/b/a/a;-><init>(Lcom/bumptech/glide/load/b/n;Lcom/bumptech/glide/load/b/m;)V

    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/load/b/n;Lcom/bumptech/glide/load/b/m;)V
    .registers 3
    .param p2    # Lcom/bumptech/glide/load/b/m;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/n<",
            "Lcom/bumptech/glide/load/b/g;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/b/m<",
            "TModel;",
            "Lcom/bumptech/glide/load/b/g;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bumptech/glide/load/b/a/a;->a:Lcom/bumptech/glide/load/b/n;

    .line 35
    iput-object p2, p0, Lcom/bumptech/glide/load/b/a/a;->b:Lcom/bumptech/glide/load/b/m;

    return-void
.end method

.method private static a(Ljava/util/Collection;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    new-instance v2, Lcom/bumptech/glide/load/b/g;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/load/b/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_22
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/b/n$a;
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/bumptech/glide/load/f;",
            ")",
            "Lcom/bumptech/glide/load/b/n$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/a;->b:Lcom/bumptech/glide/load/b/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/a;->b:Lcom/bumptech/glide/load/b/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/b/m;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/g;

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    if-nez v0, :cond_2f

    .line 48
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/b/a/a;->b(Ljava/lang/Object;IILcom/bumptech/glide/load/f;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    .line 53
    :cond_1c
    new-instance v1, Lcom/bumptech/glide/load/b/g;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/b/a/a;->d(Ljava/lang/Object;IILcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/b/h;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/b/g;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/b/h;)V

    .line 55
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/a;->b:Lcom/bumptech/glide/load/b/m;

    if-eqz v0, :cond_2e

    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/a;->b:Lcom/bumptech/glide/load/b/m;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/bumptech/glide/load/b/m;->a(Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_2e
    move-object v0, v1

    .line 62
    :cond_2f
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/b/a/a;->c(Ljava/lang/Object;IILcom/bumptech/glide/load/f;)Ljava/util/List;

    move-result-object p1

    .line 63
    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/a;->a:Lcom/bumptech/glide/load/b/n;

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/bumptech/glide/load/b/n;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/b/n$a;

    move-result-object p2

    if-eqz p2, :cond_50

    .line 65
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_42

    goto :goto_50

    .line 68
    :cond_42
    new-instance p3, Lcom/bumptech/glide/load/b/n$a;

    iget-object p4, p2, Lcom/bumptech/glide/load/b/n$a;->a:Lcom/bumptech/glide/load/c;

    invoke-static {p1}, Lcom/bumptech/glide/load/b/a/a;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p2, Lcom/bumptech/glide/load/b/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-direct {p3, p4, p1, p2}, Lcom/bumptech/glide/load/b/n$a;-><init>(Lcom/bumptech/glide/load/c;Ljava/util/List;Lcom/bumptech/glide/load/a/d;)V

    return-object p3

    :cond_50
    :goto_50
    return-object p2
.end method

.method protected abstract b(Ljava/lang/Object;IILcom/bumptech/glide/load/f;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/bumptech/glide/load/f;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected c(Ljava/lang/Object;IILcom/bumptech/glide/load/f;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/bumptech/glide/load/f;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected d(Ljava/lang/Object;IILcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/b/h;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/bumptech/glide/load/f;",
            ")",
            "Lcom/bumptech/glide/load/b/h;"
        }
    .end annotation

    .line 120
    sget-object p1, Lcom/bumptech/glide/load/b/h;->b:Lcom/bumptech/glide/load/b/h;

    return-object p1
.end method
