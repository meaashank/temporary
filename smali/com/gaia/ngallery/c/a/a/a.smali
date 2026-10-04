###### Class com.gaia.ngallery.c.a.a.a (com.gaia.ngallery.c.a.a.a)
.class public Lcom/gaia/ngallery/c/a/a/a;
.super Ljava/lang/Object;
.source "EncryptedImageLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/c/a/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/n<",
        "Lcom/gaia/ngallery/c/a/a/b;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gaia/ngallery/c/a/a/b;IILcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/b/n$a;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gaia/ngallery/c/a/a/b;",
            "II",
            "Lcom/bumptech/glide/load/f;",
            ")",
            "Lcom/bumptech/glide/load/b/n$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance p2, Lcom/bumptech/glide/load/b/n$a;

    new-instance p3, Lcom/bumptech/glide/g/d;

    invoke-virtual {p1}, Lcom/gaia/ngallery/c/a/a/b;->a()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/bumptech/glide/g/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/gaia/ngallery/c/a/a/c;

    invoke-virtual {p1}, Lcom/gaia/ngallery/c/a/a/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Lcom/gaia/ngallery/c/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/b/n$a;-><init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/a/d;)V

    return-object p2
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/b/n$a;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 18
    check-cast p1, Lcom/gaia/ngallery/c/a/a/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gaia/ngallery/c/a/a/a;->a(Lcom/gaia/ngallery/c/a/a/b;IILcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/b/n$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/gaia/ngallery/c/a/a/b;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 2

    .line 18
    check-cast p1, Lcom/gaia/ngallery/c/a/a/b;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/c/a/a/a;->a(Lcom/gaia/ngallery/c/a/a/b;)Z

    move-result p1

    return p1
.end method

###### Class com.gaia.ngallery.c.a.a.a.C0051a (com.gaia.ngallery.c.a.a.a$a)
.class public Lcom/gaia/ngallery/c/a/a/a$a;
.super Ljava/lang/Object;
.source "EncryptedImageLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/o<",
        "Lcom/gaia/ngallery/c/a/a/b;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b/r;)Lcom/bumptech/glide/load/b/n;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/r;",
            ")",
            "Lcom/bumptech/glide/load/b/n<",
            "Lcom/gaia/ngallery/c/a/a/b;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance p1, Lcom/gaia/ngallery/c/a/a/a;

    invoke-direct {p1}, Lcom/gaia/ngallery/c/a/a/a;-><init>()V

    return-object p1
.end method

.method public a()V
    .registers 1

    return-void
.end method
