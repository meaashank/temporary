###### Class com.bumptech.glide.load.engine.a.g (com.bumptech.glide.load.engine.a.g)
.class public final Lcom/bumptech/glide/load/engine/a/g;
.super Lcom/bumptech/glide/load/engine/a/d;
.source "ExternalPreferredCacheDiskCacheFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "image_manager_disk_cache"

    const-wide/32 v1, 0xfa00000

    .line 19
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bumptech/glide/load/engine/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .registers 5

    const-string v0, "image_manager_disk_cache"

    .line 24
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/bumptech/glide/load/engine/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/engine/a/g$1;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/engine/a/g$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/bumptech/glide/load/engine/a/d;-><init>(Lcom/bumptech/glide/load/engine/a/d$a;J)V

    return-void
.end method

###### Class com.bumptech.glide.load.engine.a.g.AnonymousClass1 (com.bumptech.glide.load.engine.a.g$1)
.class Lcom/bumptech/glide/load/engine/a/g$1;
.super Ljava/lang/Object;
.source "ExternalPreferredCacheDiskCacheFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/g$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/a/g$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Ljava/io/File;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/g$1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_a
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/g$1;->b:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 37
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/g$1;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_16
    return-object v0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 4

    .line 44
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/g$1;->b()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    .line 52
    :cond_d
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/g$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_29

    .line 58
    :cond_1c
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/g$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 59
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/g$1;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_28
    return-object v1

    :cond_29
    :goto_29
    return-object v0
.end method
