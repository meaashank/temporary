###### Class com.gaia.ngallery.f (com.gaia.ngallery.f)
.class public Lcom/gaia/ngallery/f;
.super Lcom/prism/ads/commons2/b;
.source "GalleryMainboarBannerAdManager.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/gaia/ngallery/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/gaia/ngallery/f;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/f;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/prism/ads/commons2/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/prism/ads/commons2/b;
    .registers 2

    .line 15
    sget-object v0, Lcom/gaia/ngallery/f;->c:Lcom/gaia/ngallery/f;

    if-nez v0, :cond_17

    .line 16
    const-class v0, Lcom/gaia/ngallery/f;

    monitor-enter v0

    .line 17
    :try_start_7
    sget-object v1, Lcom/gaia/ngallery/f;->c:Lcom/gaia/ngallery/f;

    if-nez v1, :cond_12

    .line 18
    new-instance v1, Lcom/gaia/ngallery/f;

    invoke-direct {v1}, Lcom/gaia/ngallery/f;-><init>()V

    sput-object v1, Lcom/gaia/ngallery/f;->c:Lcom/gaia/ngallery/f;

    .line 20
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 22
    :cond_17
    :goto_17
    sget-object v0, Lcom/gaia/ngallery/f;->c:Lcom/gaia/ngallery/f;

    return-object v0
.end method


# virtual methods
.method protected b()Ljava/util/ArrayList;
    .registers 5
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

    .line 27
    sget-object v0, Lcom/gaia/ngallery/f;->b:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gallery banner ad config size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaia/ngallery/e;->h()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/e;->h()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
