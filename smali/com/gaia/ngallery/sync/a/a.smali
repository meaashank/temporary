###### Class com.gaia.ngallery.sync.a.a (com.gaia.ngallery.sync.a.a)
.class public Lcom/gaia/ngallery/sync/a/a;
.super Ljava/lang/Object;
.source "LocalComparableFile.java"


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/gaia/ngallery/sync/a/a;->a:Ljava/io/File;

    .line 18
    iput-object p2, p0, Lcom/gaia/ngallery/sync/a/a;->b:Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/gaia/ngallery/sync/a/a;->a:Ljava/io/File;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/gaia/ngallery/sync/a/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public b()Z
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/gaia/ngallery/sync/a/a;->b:Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public c()J
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/gaia/ngallery/sync/a/a;->a:Ljava/io/File;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/gaia/ngallery/sync/a/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .registers 3

    .line 37
    invoke-virtual {p0}, Lcom/gaia/ngallery/sync/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    return-wide v0

    .line 39
    :cond_9
    iget-object v0, p0, Lcom/gaia/ngallery/sync/a/a;->b:Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    invoke-virtual {v0}, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->getLastSyncedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .registers 3

    .line 44
    invoke-virtual {p0}, Lcom/gaia/ngallery/sync/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    return-wide v0

    .line 46
    :cond_9
    iget-object v0, p0, Lcom/gaia/ngallery/sync/a/a;->b:Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    invoke-virtual {v0}, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->getLastModifedFromServer()J

    move-result-wide v0

    return-wide v0
.end method
