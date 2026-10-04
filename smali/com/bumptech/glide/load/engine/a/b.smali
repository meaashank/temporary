###### Class com.bumptech.glide.load.engine.a.b (com.bumptech.glide.load.engine.a.b)
.class public Lcom/bumptech/glide/load/engine/a/b;
.super Ljava/lang/Object;
.source "DiskCacheAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/a/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/c;)Ljava/io/File;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/a/a$b;)V
    .registers 3

    return-void
.end method

.method public b(Lcom/bumptech/glide/load/c;)V
    .registers 2

    return-void
.end method

###### Class com.bumptech.glide.load.engine.a.b.a (com.bumptech.glide.load.engine.a.b$a)
.class public final Lcom/bumptech/glide/load/engine/a/b$a;
.super Ljava/lang/Object;
.source "DiskCacheAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/a/a;
    .registers 2

    .line 37
    new-instance v0, Lcom/bumptech/glide/load/engine/a/b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/b;-><init>()V

    return-object v0
.end method
