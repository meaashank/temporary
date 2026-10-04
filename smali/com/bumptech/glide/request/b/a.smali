###### Class com.bumptech.glide.request.b.a (com.bumptech.glide.request.b.a)
.class public abstract Lcom/bumptech/glide/request/b/a;
.super Ljava/lang/Object;
.source "BitmapContainerTransitionFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/b/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/b/g<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/request/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/b/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/b/g;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/b/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bumptech/glide/request/b/a;->a:Lcom/bumptech/glide/request/b/g;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method public a(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/b/f;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lcom/bumptech/glide/request/b/f<",
            "TR;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/request/b/a;->a:Lcom/bumptech/glide/request/b/g;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/request/b/g;->a(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/b/f;

    move-result-object p1

    .line 29
    new-instance p2, Lcom/bumptech/glide/request/b/a$a;

    invoke-direct {p2, p0, p1}, Lcom/bumptech/glide/request/b/a$a;-><init>(Lcom/bumptech/glide/request/b/a;Lcom/bumptech/glide/request/b/f;)V

    return-object p2
.end method

###### Class com.bumptech.glide.request.b.a.C0045a (com.bumptech.glide.request.b.a$a)
.class final Lcom/bumptech/glide/request/b/a$a;
.super Ljava/lang/Object;
.source "BitmapContainerTransitionFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/b/f<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/request/b/a;

.field private final b:Lcom/bumptech/glide/request/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/b/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/b/a;Lcom/bumptech/glide/request/b/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/b/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/bumptech/glide/request/b/a$a;->a:Lcom/bumptech/glide/request/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/bumptech/glide/request/b/a$a;->b:Lcom/bumptech/glide/request/b/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/request/b/f$a;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/b/f$a;",
            ")Z"
        }
    .end annotation

    .line 51
    invoke-interface {p2}, Lcom/bumptech/glide/request/b/f$a;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/bumptech/glide/request/b/a$a;->a:Lcom/bumptech/glide/request/b/a;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/request/b/a;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 53
    iget-object p1, p0, Lcom/bumptech/glide/request/b/a$a;->b:Lcom/bumptech/glide/request/b/f;

    invoke-interface {p1, v1, p2}, Lcom/bumptech/glide/request/b/f;->a(Ljava/lang/Object;Lcom/bumptech/glide/request/b/f$a;)Z

    move-result p1

    return p1
.end method
