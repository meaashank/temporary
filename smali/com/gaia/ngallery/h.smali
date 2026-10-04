###### Class com.gaia.ngallery.h (com.gaia.ngallery.h)
.class public Lcom/gaia/ngallery/h;
.super Lcom/prism/ads/commons2/d/a;
.source "ImportPhotoVideoAdManager.java"


# static fields
.field private static f:Lcom/gaia/ngallery/h;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/prism/ads/commons2/d/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/gaia/ngallery/h;
    .registers 2

    .line 13
    sget-object v0, Lcom/gaia/ngallery/h;->f:Lcom/gaia/ngallery/h;

    if-nez v0, :cond_17

    .line 14
    const-class v0, Lcom/gaia/ngallery/h;

    monitor-enter v0

    .line 15
    :try_start_7
    sget-object v1, Lcom/gaia/ngallery/h;->f:Lcom/gaia/ngallery/h;

    if-nez v1, :cond_12

    .line 16
    new-instance v1, Lcom/gaia/ngallery/h;

    invoke-direct {v1}, Lcom/gaia/ngallery/h;-><init>()V

    sput-object v1, Lcom/gaia/ngallery/h;->f:Lcom/gaia/ngallery/h;

    .line 18
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 20
    :cond_17
    :goto_17
    sget-object v0, Lcom/gaia/ngallery/h;->f:Lcom/gaia/ngallery/h;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/ArrayList;
    .registers 3
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

    .line 25
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/e;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 30
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/e;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
