###### Class com.gaia.ngallery.sync.d (com.gaia.ngallery.sync.d)
.class public Lcom/gaia/ngallery/sync/d;
.super Ljava/lang/Object;
.source "SyncAccountStore.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/gaia/ngallery/sync/d; = null

.field private static final c:Ljava/lang/String; = "SYNC_ACCOUNT_FILE"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/gaia/ngallery/sync/d;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/sync/d;->a:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/gaia/ngallery/sync/d;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/d;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/sync/d;->b:Lcom/gaia/ngallery/sync/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/gaia/ngallery/sync/d;
    .registers 1

    .line 27
    sget-object v0, Lcom/gaia/ngallery/sync/d;->b:Lcom/gaia/ngallery/sync/d;

    return-object v0
.end method

.method private c(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v1, "SYNC_ACCOUNT_FILE"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/gaia/ngallery/sync/model/SyncAccount;
    .registers 6

    .line 35
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/d;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 38
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 40
    :try_start_11
    invoke-static {v1, p1}, Lcom/prism/commons/f/g;->a(Landroid/os/Parcel;Ljava/io/File;)V

    .line 41
    sget-object p1, Lcom/gaia/ngallery/sync/model/SyncAccount;->CREATOR:Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a;

    invoke-virtual {p1, v1}, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a;->a(Landroid/os/Parcel;)Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/sync/model/SyncAccount;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_22
    .catchall {:try_start_11 .. :try_end_1c} :catchall_20

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_20
    move-exception p1

    goto :goto_2e

    :catch_22
    move-exception p1

    .line 46
    :try_start_23
    sget-object v2, Lcom/gaia/ngallery/sync/d;->a:Ljava/lang/String;

    const-string v3, "loadGalleryAsync sync state failed "

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :goto_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1

    :cond_32
    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/gaia/ngallery/sync/model/SyncAccount;)V
    .registers 5

    .line 57
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/d;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 60
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    :try_start_b
    invoke-virtual {p2, v0, v1}, Lcom/gaia/ngallery/sync/model/SyncAccount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 63
    invoke-static {p1}, Lcom/prism/commons/f/g;->b(Ljava/io/File;)V

    .line 64
    invoke-static {v0, p1}, Lcom/prism/commons/f/g;->b(Landroid/os/Parcel;Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_1a
    .catchall {:try_start_b .. :try_end_14} :catchall_18

    .line 70
    :goto_14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_27

    :catchall_18
    move-exception p1

    goto :goto_23

    :catch_1a
    move-exception p1

    .line 68
    :try_start_1b
    sget-object p2, Lcom/gaia/ngallery/sync/d;->a:Ljava/lang/String;

    const-string v1, "loadGalleryAsync sync state failed "

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    goto :goto_14

    .line 70
    :goto_23
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1

    :cond_27
    :goto_27
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/d;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method
