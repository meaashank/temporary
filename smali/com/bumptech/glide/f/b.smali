###### Class com.bumptech.glide.f.b (com.bumptech.glide.f.b)
.class public final Lcom/bumptech/glide/f/b;
.super Ljava/lang/Object;
.source "ImageHeaderParserRegistry.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 16
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/f/b;->a:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/load/ImageHeaderParser;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/ImageHeaderParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/f/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 21
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    .line 19
    monitor-exit p0

    throw p1
.end method
