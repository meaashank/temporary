###### Class com.gaia.ngallery.g (com.gaia.ngallery.g)
.class public Lcom/gaia/ngallery/g;
.super Lcom/prism/ads/commons2/d/a;
.source "GalleryOpenAlbumAdManager.java"


# static fields
.field private static f:Lcom/gaia/ngallery/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/prism/ads/commons2/d/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/gaia/ngallery/g;
    .registers 2

    .line 12
    sget-object v0, Lcom/gaia/ngallery/g;->f:Lcom/gaia/ngallery/g;

    if-nez v0, :cond_17

    .line 13
    const-class v0, Lcom/gaia/ngallery/g;

    monitor-enter v0

    .line 14
    :try_start_7
    sget-object v1, Lcom/gaia/ngallery/g;->f:Lcom/gaia/ngallery/g;

    if-nez v1, :cond_12

    .line 15
    new-instance v1, Lcom/gaia/ngallery/g;

    invoke-direct {v1}, Lcom/gaia/ngallery/g;-><init>()V

    sput-object v1, Lcom/gaia/ngallery/g;->f:Lcom/gaia/ngallery/g;

    .line 17
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 19
    :cond_17
    :goto_17
    sget-object v0, Lcom/gaia/ngallery/g;->f:Lcom/gaia/ngallery/g;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/e;->i()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 28
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/e;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
