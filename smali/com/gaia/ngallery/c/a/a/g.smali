###### Class com.gaia.ngallery.c.a.a.g (com.gaia.ngallery.c.a.a.g)
.class public Lcom/gaia/ngallery/c/a/a/g;
.super Lcom/bumptech/glide/e/a;
.source "GaiaGlideApp.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/f;Lcom/bumptech/glide/Registry;)V
    .registers 5

    .line 30
    const-class p1, Lcom/gaia/ngallery/c/a/a/b;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lcom/gaia/ngallery/c/a/a/a$a;

    invoke-direct {v0}, Lcom/gaia/ngallery/c/a/a/a$a;-><init>()V

    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    .line 33
    const-class p1, Lcom/gaia/ngallery/c/a/a/f;

    const-class p2, Landroid/graphics/Bitmap;

    new-instance v0, Lcom/gaia/ngallery/c/a/a/g$1;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/c/a/a/g$1;-><init>(Lcom/gaia/ngallery/c/a/a/g;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    return-void
.end method

###### Class com.gaia.ngallery.c.a.a.g.AnonymousClass1 (com.gaia.ngallery.c.a.a.g$1)
.class Lcom/gaia/ngallery/c/a/a/g$1;
.super Ljava/lang/Object;
.source "GaiaGlideApp.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/c/a/a/g;->a(Landroid/content/Context;Lcom/bumptech/glide/f;Lcom/bumptech/glide/Registry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/o<",
        "Lcom/gaia/ngallery/c/a/a/f;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/c/a/a/g;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/c/a/a/g;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/g$1;->a:Lcom/gaia/ngallery/c/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b/r;)Lcom/bumptech/glide/load/b/n;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/b/r;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/r;",
            ")",
            "Lcom/bumptech/glide/load/b/n<",
            "Lcom/gaia/ngallery/c/a/a/f;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance p1, Lcom/gaia/ngallery/c/a/a/g$1$1;

    invoke-direct {p1, p0}, Lcom/gaia/ngallery/c/a/a/g$1$1;-><init>(Lcom/gaia/ngallery/c/a/a/g$1;)V

    return-object p1
.end method

.method public a()V
    .registers 1

    return-void
.end method

###### Class com.gaia.ngallery.c.a.a.g.AnonymousClass1.C00521 (com.gaia.ngallery.c.a.a.g$1$1)
.class Lcom/gaia/ngallery/c/a/a/g$1$1;
.super Ljava/lang/Object;
.source "GaiaGlideApp.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/c/a/a/g$1;->a(Lcom/bumptech/glide/load/b/r;)Lcom/bumptech/glide/load/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/n<",
        "Lcom/gaia/ngallery/c/a/a/f;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/c/a/a/g$1;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/c/a/a/g$1;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/gaia/ngallery/c/a/a/g$1$1;->a:Lcom/gaia/ngallery/c/a/a/g$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gaia/ngallery/c/a/a/f;IILcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/b/n$a;
    .registers 5
    .param p1    # Lcom/gaia/ngallery/c/a/a/f;
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
            "(",
            "Lcom/gaia/ngallery/c/a/a/f;",
            "II",
            "Lcom/bumptech/glide/load/f;",
            ")",
            "Lcom/bumptech/glide/load/b/n$a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance p2, Lcom/bumptech/glide/load/b/n$a;

    new-instance p3, Lcom/bumptech/glide/g/d;

    invoke-virtual {p1}, Lcom/gaia/ngallery/c/a/a/f;->a()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/bumptech/glide/g/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/gaia/ngallery/c/a/a/e;

    .line 42
    invoke-virtual {p1}, Lcom/gaia/ngallery/c/a/a/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Lcom/gaia/ngallery/c/a/a/e;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/b/n$a;-><init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/a/d;)V

    return-object p2
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/b/n$a;
    .registers 5
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

    .line 37
    check-cast p1, Lcom/gaia/ngallery/c/a/a/f;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gaia/ngallery/c/a/a/g$1$1;->a(Lcom/gaia/ngallery/c/a/a/f;IILcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/b/n$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/gaia/ngallery/c/a/a/f;)Z
    .registers 2
    .param p1    # Lcom/gaia/ngallery/c/a/a/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    check-cast p1, Lcom/gaia/ngallery/c/a/a/f;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/g$1$1;->a(Lcom/gaia/ngallery/c/a/a/f;)Z

    move-result p1

    return p1
.end method
