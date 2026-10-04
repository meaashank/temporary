###### Class com.gaia.ngallery.sync.g (com.gaia.ngallery.sync.g)
.class public Lcom/gaia/ngallery/sync/g;
.super Ljava/lang/Object;
.source "SyncStateChannelManager.java"


# static fields
.field private static a:Lcom/gaia/ngallery/sync/g;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/gaia/ngallery/sync/h;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gaia/ngallery/sync/h;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/gaia/ngallery/sync/g;->b:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/gaia/ngallery/sync/g;->c:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/gaia/ngallery/sync/g;->d:Ljava/util/Map;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/gaia/ngallery/model/AlbumFile;)I
    .registers 6

    .line 39
    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFile;->asAlbumFileId()Lcom/gaia/ngallery/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/model/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/gaia/ngallery/sync/g;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_37

    .line 42
    invoke-static {}, Lcom/gaia/ngallery/sync/a;->a()Lcom/gaia/ngallery/sync/a;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    .line 43
    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, p1, v2}, Lcom/gaia/ngallery/sync/a;->a(Landroid/content/Context;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_2c

    const/4 p1, 0x2

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_2a
    move-object v1, p1

    goto :goto_32

    :cond_2c
    const/4 p1, 0x0

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2a

    .line 48
    :goto_32
    iget-object p1, p0, Lcom/gaia/ngallery/sync/g;->d:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_37
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public static a()Lcom/gaia/ngallery/sync/g;
    .registers 2

    .line 25
    sget-object v0, Lcom/gaia/ngallery/sync/g;->a:Lcom/gaia/ngallery/sync/g;

    if-nez v0, :cond_17

    .line 26
    const-class v0, Lcom/gaia/ngallery/sync/g;

    monitor-enter v0

    .line 27
    :try_start_7
    sget-object v1, Lcom/gaia/ngallery/sync/g;->a:Lcom/gaia/ngallery/sync/g;

    if-nez v1, :cond_12

    .line 28
    new-instance v1, Lcom/gaia/ngallery/sync/g;

    invoke-direct {v1}, Lcom/gaia/ngallery/sync/g;-><init>()V

    sput-object v1, Lcom/gaia/ngallery/sync/g;->a:Lcom/gaia/ngallery/sync/g;

    .line 29
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 31
    :cond_17
    :goto_17
    sget-object v0, Lcom/gaia/ngallery/sync/g;->a:Lcom/gaia/ngallery/sync/g;

    return-object v0
.end method

.method private a(Landroid/content/Context;I)V
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/gaia/ngallery/sync/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1, v1, p2}, Lcom/gaia/ngallery/sync/g;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .line 73
    iget-object p1, p0, Lcom/gaia/ngallery/sync/g;->d:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p1, p0, Lcom/gaia/ngallery/sync/g;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_24

    .line 76
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/sync/h;

    if-eqz p1, :cond_1f

    .line 78
    invoke-interface {p1, p3}, Lcom/gaia/ngallery/sync/h;->a(I)V

    goto :goto_24

    .line 80
    :cond_1f
    iget-object p1, p0, Lcom/gaia/ngallery/sync/g;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    :goto_24
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/gaia/ngallery/sync/g;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/gaia/ngallery/model/AlbumFile;I)V
    .registers 4

    .line 67
    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFile;->asAlbumFileId()Lcom/gaia/ngallery/model/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gaia/ngallery/model/a;->a()Ljava/lang/String;

    move-result-object p2

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/sync/g;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/gaia/ngallery/model/AlbumFile;Lcom/gaia/ngallery/sync/h;)V
    .registers 7

    .line 55
    iget-object v0, p0, Lcom/gaia/ngallery/sync/g;->c:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 57
    iget-object v1, p0, Lcom/gaia/ngallery/sync/g;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_f
    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFile;->asAlbumFileId()Lcom/gaia/ngallery/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/model/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/gaia/ngallery/sync/g;->b:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Lcom/gaia/ngallery/sync/g;->c:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/sync/g;->a(Landroid/content/Context;Lcom/gaia/ngallery/model/AlbumFile;)I

    move-result p1

    invoke-interface {p3, p1}, Lcom/gaia/ngallery/sync/h;->a(I)V

    return-void
.end method
