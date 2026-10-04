###### Class com.gaia.ngallery.sync.a (com.gaia.ngallery.sync.a)
.class public Lcom/gaia/ngallery/sync/a;
.super Ljava/lang/Object;
.source "FileLastSyncedInfoStore.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/gaia/ngallery/sync/a; = null

.field private static final c:Ljava/lang/String; = "SYNC_STATE_ROOT"

.field private static final d:Ljava/lang/String; = ".sync_state"


# instance fields
.field private e:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/gaia/ngallery/sync/a;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/sync/a;->a:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/gaia/ngallery/sync/a;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/a;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/sync/a;->b:Lcom/gaia/ngallery/sync/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/gaia/ngallery/sync/a;->e:Ljava/io/File;

    return-void
.end method

.method public static a()Lcom/gaia/ngallery/sync/a;
    .registers 1

    .line 28
    sget-object v0, Lcom/gaia/ngallery/sync/a;->b:Lcom/gaia/ngallery/sync/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/io/File;Z)Ljava/io/File;
    .registers 6

    .line 42
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/e;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_18
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_3c

    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".sync_state"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 53
    :cond_3c
    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p3
.end method

.method private a(Landroid/content/Context;Ljava/io/File;Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;Z)V
    .registers 5

    .line 79
    invoke-direct {p0, p1, p2, p4}, Lcom/gaia/ngallery/sync/a;->a(Landroid/content/Context;Ljava/io/File;Z)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    const/4 p4, 0x0

    .line 84
    :try_start_b
    invoke-virtual {p3, p2, p4}, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    invoke-static {p1}, Lcom/prism/commons/f/g;->b(Ljava/io/File;)V

    .line 86
    invoke-static {p2, p1}, Lcom/prism/commons/f/g;->b(Landroid/os/Parcel;Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_1a
    .catchall {:try_start_b .. :try_end_14} :catchall_18

    .line 92
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    goto :goto_27

    :catchall_18
    move-exception p1

    goto :goto_23

    :catch_1a
    move-exception p1

    .line 90
    :try_start_1b
    sget-object p3, Lcom/gaia/ngallery/sync/a;->a:Ljava/lang/String;

    const-string p4, "loadGalleryAsync sync state failed "

    invoke-static {p3, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    goto :goto_14

    .line 92
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    throw p1

    :cond_27
    :goto_27
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/io/File;Z)Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;
    .registers 6

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/sync/a;->a(Landroid/content/Context;Ljava/io/File;Z)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_32

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_32

    .line 61
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    .line 63
    :try_start_11
    invoke-static {p3, p1}, Lcom/prism/commons/f/g;->a(Landroid/os/Parcel;Ljava/io/File;)V

    .line 64
    sget-object p1, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->CREATOR:Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a;

    invoke-virtual {p1, p3}, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a;->a(Landroid/os/Parcel;)Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_22
    .catchall {:try_start_11 .. :try_end_1c} :catchall_20

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_20
    move-exception p1

    goto :goto_2e

    :catch_22
    move-exception p1

    .line 69
    :try_start_23
    sget-object v0, Lcom/gaia/ngallery/sync/a;->a:Ljava/lang/String;

    const-string v1, "loadGalleryAsync sync state failed "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->recycle()V

    return-object p2

    :goto_2e
    invoke-virtual {p3}, Landroid/os/Parcel;->recycle()V

    throw p1

    :cond_32
    return-object p2
.end method

.method private b(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .line 34
    iget-object v0, p0, Lcom/gaia/ngallery/sync/a;->e:Ljava/io/File;

    if-nez v0, :cond_13

    .line 35
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v1, "SYNC_STATE_ROOT"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gaia/ngallery/sync/a;->e:Ljava/io/File;

    .line 37
    :cond_13
    iget-object p1, p0, Lcom/gaia/ngallery/sync/a;->e:Ljava/io/File;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 2

    .line 133
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prism/commons/f/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/io/File;Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;)V
    .registers 5

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gaia/ngallery/sync/a;->a(Landroid/content/Context;Ljava/io/File;Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;Z)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lcom/gaia/ngallery/sync/a;->a(Landroid/content/Context;Ljava/io/File;Z)Ljava/io/File;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;Ljava/io/File;)Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;
    .registers 4

    const/4 v0, 0x1

    .line 103
    invoke-direct {p0, p1, p2, v0}, Lcom/gaia/ngallery/sync/a;->b(Landroid/content/Context;Ljava/io/File;Z)Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;Ljava/io/File;Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;)V
    .registers 5

    const/4 v0, 0x1

    .line 117
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gaia/ngallery/sync/a;->a(Landroid/content/Context;Ljava/io/File;Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;Z)V

    return-void
.end method

.method public c(Landroid/content/Context;Ljava/io/File;)Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;
    .registers 4

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, v0}, Lcom/gaia/ngallery/sync/a;->b(Landroid/content/Context;Ljava/io/File;Z)Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/content/Context;Ljava/io/File;)V
    .registers 4

    const/4 v0, 0x1

    .line 121
    invoke-direct {p0, p1, p2, v0}, Lcom/gaia/ngallery/sync/a;->a(Landroid/content/Context;Ljava/io/File;Z)Ljava/io/File;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_e
    return-void
.end method

.method public e(Landroid/content/Context;Ljava/io/File;)V
    .registers 4

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2, v0}, Lcom/gaia/ngallery/sync/a;->a(Landroid/content/Context;Ljava/io/File;Z)Ljava/io/File;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_e
    return-void
.end method
