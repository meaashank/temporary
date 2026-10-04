###### Class com.gaia.ngallery.sync.b.d (com.gaia.ngallery.sync.b.d)
.class public Lcom/gaia/ngallery/sync/b/d;
.super Ljava/lang/Object;
.source "GDriveSynchronizer.java"

# interfaces
.implements Lcom/gaia/ngallery/sync/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/sync/b/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gaia/ngallery/sync/i<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String; = "APP_FOLDER_"

.field private static j:Lcom/google/android/gms/tasks/Task;

.field private static k:Lcom/gaia/ngallery/sync/b/d;


# instance fields
.field private d:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private e:Lcom/google/android/gms/drive/DriveClient;

.field private f:Lcom/google/android/gms/drive/DriveResourceClient;

.field private g:Lcom/google/android/gms/drive/DriveFolder;

.field private h:Lcom/google/android/gms/drive/DriveFolder;

.field private i:Landroid/content/Context;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/Object;

.field private q:Lcom/gaia/ngallery/sync/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const-class v0, Lcom/gaia/ngallery/sync/b/d;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    const-string v0, "SYNC_CHANGE"

    .line 66
    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/sync/b/d;->b:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$lAZbKi51Hc11vMUPwp539FeuWMs;->INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$lAZbKi51Hc11vMUPwp539FeuWMs;

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/sync/b/d;->j:Lcom/google/android/gms/tasks/Task;

    .line 106
    new-instance v0, Lcom/gaia/ngallery/sync/b/d;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/b/d;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/sync/b/d;->k:Lcom/gaia/ngallery/sync/b/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/gaia/ngallery/sync/b/d;->l:I

    .line 109
    iput v0, p0, Lcom/gaia/ngallery/sync/b/d;->m:I

    .line 110
    iput v0, p0, Lcom/gaia/ngallery/sync/b/d;->n:I

    .line 111
    iput v0, p0, Lcom/gaia/ngallery/sync/b/d;->o:I

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->p:Ljava/lang/Object;

    .line 173
    new-instance v0, Lcom/gaia/ngallery/sync/a/c;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/a/c;-><init>()V

    iput-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->q:Lcom/gaia/ngallery/sync/a/c;

    return-void
.end method

.method private a(Lcom/google/android/gms/drive/MetadataBuffer;)I
    .registers 7

    .line 189
    invoke-virtual {p1}, Lcom/google/android/gms/drive/MetadataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/drive/Metadata;

    .line 190
    sget-object v2, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countMetadataBuffer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_36
    return v0
.end method

.method public static a()Lcom/gaia/ngallery/sync/b/d;
    .registers 1

    .line 179
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->k:Lcom/gaia/ngallery/sync/b/d;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFile;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;
    .registers 6

    if-eqz p3, :cond_14

    .line 452
    invoke-static {}, Lcom/gaia/ngallery/sync/a;->a()Lcom/gaia/ngallery/sync/a;

    move-result-object p2

    new-instance p4, Ljava/io/File;

    invoke-virtual {p3}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, p4}, Lcom/gaia/ngallery/sync/a;->c(Landroid/content/Context;Ljava/io/File;)Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    move-result-object p1

    return-object p1

    :cond_14
    if-eqz p2, :cond_2c

    .line 454
    invoke-static {}, Lcom/gaia/ngallery/sync/a;->a()Lcom/gaia/ngallery/sync/a;

    move-result-object p3

    new-instance v0, Ljava/io/File;

    .line 455
    invoke-virtual {p4}, Lcom/gaia/ngallery/model/AlbumFolder;->getFile()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p3, p1, v0}, Lcom/gaia/ngallery/sync/a;->c(Landroid/content/Context;Ljava/io/File;)Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    move-result-object p1

    return-object p1

    :cond_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;
    .registers 6

    if-eqz p3, :cond_f

    .line 443
    invoke-static {}, Lcom/gaia/ngallery/sync/a;->a()Lcom/gaia/ngallery/sync/a;

    move-result-object p2

    invoke-virtual {p3}, Lcom/gaia/ngallery/model/AlbumFolder;->getFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/gaia/ngallery/sync/a;->b(Landroid/content/Context;Ljava/io/File;)Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    move-result-object p1

    return-object p1

    :cond_f
    if-eqz p2, :cond_2b

    .line 445
    invoke-static {}, Lcom/gaia/ngallery/sync/a;->a()Lcom/gaia/ngallery/sync/a;

    move-result-object p3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaia/ngallery/e;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3, p1, v0}, Lcom/gaia/ngallery/sync/a;->b(Landroid/content/Context;Ljava/io/File;)Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    move-result-object p1

    return-object p1

    :cond_2b
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic a(Landroid/content/Context;Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    .line 369
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    const-string v1, "get app folder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {p1}, Lcom/gaia/ngallery/l/g;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-static {}, Lcom/gaia/ngallery/i/a;->a()Lcom/gaia/ngallery/i/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gaia/ngallery/i/a;->c()Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_20

    .line 371
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SYNC OVER WIFI ONLY AND NETWORK is NOT WIFI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 372
    :cond_20
    :goto_20
    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/d;->g:Lcom/google/android/gms/drive/DriveFolder;

    .line 373
    iget-object p1, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/drive/DriveResourceClient;->listChildren(Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 6

    .line 726
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TASK Add remote file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/gaia/ngallery/l/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/gaia/ngallery/i/a;->a()Lcom/gaia/ngallery/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/i/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_35

    .line 730
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SYNC OVER WIFI ONLY AND NETWORK is NOT WIFI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 731
    :cond_35
    :goto_35
    invoke-static {}, Lcom/gaia/ngallery/sync/g;->a()Lcom/gaia/ngallery/sync/g;

    move-result-object v0

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/gaia/ngallery/sync/g;->a(Landroid/content/Context;Lcom/gaia/ngallery/model/AlbumFile;I)V

    .line 732
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/DriveResourceClient;->createContents()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$SqDJy0PzJZaPi2ZlrP7-LFO4tS4;

    invoke-direct {v2, p0, p1, p2}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$SqDJy0PzJZaPi2ZlrP7-LFO4tS4;-><init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/DriveFolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$X9wlzMXcWRZ5XOd9hByeHgNCIlc;

    invoke-direct {v0, p0, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$X9wlzMXcWRZ5XOd9hByeHgNCIlc;-><init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;)V

    .line 738
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$IlasxX5dDBC3c58fqmaSDMSJKpE;

    invoke-direct {v0, p0, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$IlasxX5dDBC3c58fqmaSDMSJKpE;-><init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;)V

    .line 741
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/tasks/Task;
    .registers 7

    .line 733
    invoke-interface {p3}, Lcom/google/android/gms/drive/DriveContents;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 734
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 735
    invoke-direct {p0, v1, v0}, Lcom/gaia/ngallery/sync/b/d;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 736
    new-instance v0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->build()Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object p1

    .line 737
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {v0, p2, p1, p3}, Lcom/google/android/gms/drive/DriveResourceClient;->createFile(Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$WEx0B_RCZ_G0H9ZRmmL_lOfqgd4;

    invoke-direct {p2, p0}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$WEx0B_RCZ_G0H9ZRmmL_lOfqgd4;-><init>(Lcom/gaia/ngallery/sync/b/d;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/tasks/Task;
    .registers 6

    .line 742
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 743
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRemoteFileTask upload success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/gaia/ngallery/model/AlbumFile;)V

    .line 745
    invoke-direct {p0}, Lcom/gaia/ngallery/sync/b/d;->b()V

    .line 746
    invoke-static {}, Lcom/gaia/ngallery/sync/g;->a()Lcom/gaia/ngallery/sync/g;

    move-result-object v0

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2}, Lcom/gaia/ngallery/sync/g;->a(Landroid/content/Context;Lcom/gaia/ngallery/model/AlbumFile;I)V

    .line 747
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getModifiedDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->b(Landroid/content/Context;Ljava/io/File;J)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 750
    :cond_50
    invoke-static {}, Lcom/gaia/ngallery/sync/g;->a()Lcom/gaia/ngallery/sync/g;

    move-result-object v0

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/gaia/ngallery/sync/g;->a(Landroid/content/Context;Lcom/gaia/ngallery/model/AlbumFile;I)V

    .line 751
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRemoteFileTask failed inconsistent name remove remote: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object p1, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/drive/DriveId;->asDriveResource()Lcom/google/android/gms/drive/DriveResource;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/drive/DriveResourceClient;->delete(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/tasks/Task;
    .registers 7

    .line 658
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRemoteFolderTask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " == metadata.getTitle() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 660
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getModifiedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/gaia/ngallery/sync/b/d;->a(Landroid/content/Context;Lcom/gaia/ngallery/model/AlbumFolder;J)V

    const/4 v0, 0x1

    .line 661
    invoke-direct {p0, p2, p1, v0}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$YqEXU9qs7SznIw3MoO0mPDCZOmI;

    invoke-direct {v0, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$YqEXU9qs7SznIw3MoO0mPDCZOmI;-><init>(Lcom/gaia/ngallery/model/AlbumFolder;)V

    .line 662
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$agycZe9vt-OJ4MD7O902DypJmMs;

    invoke-direct {v0, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$agycZe9vt-OJ4MD7O902DypJmMs;-><init>(Lcom/gaia/ngallery/model/AlbumFolder;)V

    .line 664
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 669
    :cond_61
    sget-object p1, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove error new remote folder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object p1, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/drive/DriveId;->asDriveFolder()Lcom/google/android/gms/drive/DriveFolder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/drive/DriveResourceClient;->delete(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(Lcom/google/android/gms/drive/DriveFile;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    .line 737
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/DriveResourceClient;->getMetadata(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    .line 656
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/DriveResourceClient;->getMetadata(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(Lcom/google/android/gms/drive/DriveFolder;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFile;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    .line 553
    invoke-direct {p0, p3, p1, p4, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/google/android/gms/drive/Metadata;Lcom/google/android/gms/drive/DriveFolder;Lcom/gaia/ngallery/model/AlbumFile;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 8

    .line 464
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    invoke-direct {p0, v0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Landroid/content/Context;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    move-result-object v0

    if-eqz p2, :cond_d

    .line 467
    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getFile()Ljava/io/File;

    move-result-object v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 468
    :goto_e
    iget-object v2, p0, Lcom/gaia/ngallery/sync/b/d;->q:Lcom/gaia/ngallery/sync/a/c;

    new-instance v3, Lcom/gaia/ngallery/sync/b/c;

    invoke-direct {v3, p1}, Lcom/gaia/ngallery/sync/b/c;-><init>(Lcom/google/android/gms/drive/Metadata;)V

    new-instance v4, Lcom/gaia/ngallery/sync/a/a;

    invoke-direct {v4, v1, v0}, Lcom/gaia/ngallery/sync/a/a;-><init>(Ljava/io/File;Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;)V

    invoke-virtual {v2, v3, v4}, Lcom/gaia/ngallery/sync/a/c;->a(Lcom/gaia/ngallery/sync/a/b;Lcom/gaia/ngallery/sync/a/a;)I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    .line 483
    :pswitch_21
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN Compara result: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_38
    const/4 v0, 0x0

    .line 479
    invoke-direct {p0, p1, p2, v0}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$TwP5zlXMZZnZyhNmSfQIW8Xtjrk;

    invoke-direct {v1, p0, p2, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$TwP5zlXMZZnZyhNmSfQIW8Xtjrk;-><init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 477
    :pswitch_47
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->b(Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 475
    :pswitch_4c
    invoke-direct {p0, p2}, Lcom/gaia/ngallery/sync/b/d;->d(Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 473
    :pswitch_51
    invoke-direct {p0, p2}, Lcom/gaia/ngallery/sync/b/d;->c(Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 471
    :pswitch_56
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->c(Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_56
        :pswitch_51
        :pswitch_21
        :pswitch_21
        :pswitch_4c
        :pswitch_47
        :pswitch_21
        :pswitch_21
        :pswitch_38
    .end packed-switch
.end method

.method private a(Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;Z)Lcom/google/android/gms/tasks/Task;
    .registers 7

    .line 520
    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/DriveId;->asDriveFolder()Lcom/google/android/gms/drive/DriveFolder;

    move-result-object v0

    if-eqz p3, :cond_14

    .line 523
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Ljava/util/List;Lcom/google/android/gms/drive/DriveFolder;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_25

    .line 525
    :cond_14
    iget-object p3, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/drive/DriveResourceClient;->listChildren(Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$941ewgvRNSdCUaOcruwG2XWK2sw;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$941ewgvRNSdCUaOcruwG2XWK2sw;-><init>(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;Lcom/google/android/gms/drive/DriveFolder;Lcom/gaia/ngallery/model/AlbumFolder;)V

    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 533
    :goto_25
    sget-object p3, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$Q_tMQGSmqOBhRuTvdxWFbk8Xx1M;

    invoke-direct {v0, p2}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$Q_tMQGSmqOBhRuTvdxWFbk8Xx1M;-><init>(Lcom/gaia/ngallery/model/AlbumFolder;)V

    invoke-virtual {p1, p3, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$7hO5bdMwT40ET9WjjjgJb3OiEpo;

    invoke-direct {p3, p2}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$7hO5bdMwT40ET9WjjjgJb3OiEpo;-><init>(Lcom/gaia/ngallery/model/AlbumFolder;)V

    .line 535
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/google/android/gms/drive/Metadata;Lcom/google/android/gms/drive/DriveFolder;Lcom/gaia/ngallery/model/AlbumFile;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 10

    .line 562
    new-instance v0, Lcom/gaia/ngallery/sync/b/c;

    invoke-direct {v0, p1}, Lcom/gaia/ngallery/sync/b/c;-><init>(Lcom/google/android/gms/drive/Metadata;)V

    .line 563
    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    invoke-direct {p0, v1, p1, p3, p4}, Lcom/gaia/ngallery/sync/b/d;->a(Landroid/content/Context;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFile;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    move-result-object v1

    if-eqz p3, :cond_17

    .line 566
    new-instance v2, Ljava/io/File;

    invoke-virtual {p3}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 567
    :goto_18
    iget-object v3, p0, Lcom/gaia/ngallery/sync/b/d;->q:Lcom/gaia/ngallery/sync/a/c;

    new-instance v4, Lcom/gaia/ngallery/sync/a/a;

    invoke-direct {v4, v2, v1}, Lcom/gaia/ngallery/sync/a/a;-><init>(Ljava/io/File;Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;)V

    invoke-virtual {v3, v0, v4}, Lcom/gaia/ngallery/sync/a/c;->a(Lcom/gaia/ngallery/sync/a/b;Lcom/gaia/ngallery/sync/a/a;)I

    move-result v0

    packed-switch v0, :pswitch_data_60

    .line 585
    :pswitch_26
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UNKNOWN Compara result: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 578
    :pswitch_3d
    sget-object p2, Lcom/gaia/ngallery/sync/b/d;->j:Lcom/google/android/gms/tasks/Task;

    sget-object p4, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ioHSDZqHxA52qkYq_ahj5aXqjjQ;

    invoke-direct {v0, p0, p3, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ioHSDZqHxA52qkYq_ahj5aXqjjQ;-><init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/Metadata;)V

    invoke-virtual {p2, p4, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 576
    :pswitch_4b
    invoke-direct {p0, p1, p4}, Lcom/gaia/ngallery/sync/b/d;->b(Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 574
    :pswitch_50
    invoke-direct {p0, p3, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 572
    :pswitch_55
    invoke-direct {p0, p3}, Lcom/gaia/ngallery/sync/b/d;->e(Lcom/gaia/ngallery/model/AlbumFile;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 570
    :pswitch_5a
    invoke-direct {p0, p1, p4}, Lcom/gaia/ngallery/sync/b/d;->c(Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_55
        :pswitch_26
        :pswitch_26
        :pswitch_50
        :pswitch_4b
        :pswitch_26
        :pswitch_26
        :pswitch_3d
    .end packed-switch
.end method

.method private synthetic a(Lcom/google/android/gms/drive/Metadata;Lcom/google/android/gms/drive/DriveFolder;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/MetadataBuffer;)Lcom/google/android/gms/tasks/Task;
    .registers 8

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 527
    invoke-virtual {p4}, Lcom/google/android/gms/drive/MetadataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_9
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/drive/Metadata;

    .line 528
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 529
    :cond_19
    sget-object p4, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list remote album: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " children:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-direct {p0, v0, p2, p3}, Lcom/gaia/ngallery/sync/b/d;->a(Ljava/util/List;Lcom/google/android/gms/drive/DriveFolder;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/google/android/gms/drive/Metadata;Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/Metadata;",
            "Lcom/google/android/gms/drive/Metadata;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 198
    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object p2, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/drive/DriveId;->asDriveFolder()Lcom/google/android/gms/drive/DriveFolder;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/drive/DriveResourceClient;->listChildren(Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$jvLo2zdL22NBifwyom0bs3LZNXc;

    invoke-direct {v1, p0, v0, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$jvLo2zdL22NBifwyom0bs3LZNXc;-><init>(Lcom/gaia/ngallery/sync/b/d;Ljava/util/Set;Lcom/google/android/gms/drive/Metadata;)V

    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(Ljava/io/File;Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    .line 711
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 712
    invoke-interface {p2}, Lcom/google/android/gms/drive/DriveContents;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 713
    invoke-direct {p0, p1, v0}, Lcom/gaia/ngallery/sync/b/d;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 714
    iget-object p1, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/drive/DriveResourceClient;->discardContents(Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(Ljava/lang/String;Lcom/google/android/gms/drive/MetadataBuffer;)Lcom/google/android/gms/tasks/Task;
    .registers 6

    .line 302
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ROOT Children: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/google/android/gms/drive/MetadataBuffer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_23
    :goto_23
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/drive/Metadata;

    .line 306
    invoke-virtual {v1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Lcom/google/android/gms/drive/Metadata;->isFolder()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 307
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 310
    :cond_43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_66

    .line 311
    sget-object p2, Lcom/gaia/ngallery/sync/b/d;->b:Ljava/lang/String;

    const-string v0, "NOT erFOUND APP FOLDER"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance p2, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;-><init>()V

    .line 313
    invoke-virtual {p2, p1}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    move-result-object p1

    .line 314
    invoke-virtual {p1}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->build()Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object p1

    .line 315
    iget-object p2, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->h:Lcom/google/android/gms/drive/DriveFolder;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/drive/DriveResourceClient;->createFolder(Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 317
    :cond_66
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/sync/b/d;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->b(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object p2, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$lLn-dz69KZoVez_vo3t25OMcYH8;->INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$lLn-dz69KZoVez_vo3t25OMcYH8;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(Ljava/util/ArrayList;Lcom/gaia/ngallery/sync/b/b;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .registers 7

    .line 401
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "match folders left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$07qlBYWSAIM-eJJYlRqAhOQUcOA;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$07qlBYWSAIM-eJJYlRqAhOQUcOA;-><init>(Lcom/gaia/ngallery/sync/b/d;)V

    invoke-virtual {p2, p3, p1, v0}, Lcom/gaia/ngallery/sync/b/b;->a(Ljava/lang/Iterable;Ljava/lang/Iterable;Lcom/gaia/ngallery/sync/c/a;)Ljava/util/List;

    move-result-object p1

    .line 407
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->whenAll(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object p2, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$e8Cbq2mm43JeIifKESLrQ2Epa54;->INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$e8Cbq2mm43JeIifKESLrQ2Epa54;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/drive/Metadata;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/Metadata;",
            ">;"
        }
    .end annotation

    .line 210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c8

    .line 212
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MERGE FOLDER or FILE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/drive/Metadata;

    invoke-virtual {v3}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/Metadata;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Metadata;->isFolder()Z

    move-result v0

    .line 214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/drive/Metadata;

    .line 215
    invoke-virtual {v3}, Lcom/google/android/gms/drive/Metadata;->isFolder()Z

    move-result v3

    if-ne v3, v0, :cond_55

    goto :goto_42

    .line 216
    :cond_55
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not merge file and folder : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/drive/Metadata;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 220
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7d
    :goto_7d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_98

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/drive/Metadata;

    .line 221
    invoke-virtual {v5}, Lcom/google/android/gms/drive/Metadata;->getModifiedDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-lez v8, :cond_7d

    move-object v1, v5

    move-wide v2, v6

    goto :goto_7d

    .line 227
    :cond_98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_ba

    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/Metadata;

    if-ne v0, v1, :cond_b2

    goto :goto_a3

    .line 232
    :cond_b2
    invoke-direct {p0, v0, v1}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/google/android/gms/drive/Metadata;Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 236
    :cond_ba
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->whenAll(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$WWAqIg06Ru-hG7MDl4CiQafSKPI;

    invoke-direct {v0, v1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$WWAqIg06Ru-hG7MDl4CiQafSKPI;-><init>(Lcom/google/android/gms/drive/Metadata;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 211
    :cond_c8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "merge files less then 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/util/List;Lcom/google/android/gms/drive/DriveFolder;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/drive/Metadata;",
            ">;",
            "Lcom/google/android/gms/drive/DriveFolder;",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ")",
            "Lcom/google/android/gms/tasks/Task;"
        }
    .end annotation

    .line 542
    invoke-virtual {p3}, Lcom/gaia/ngallery/model/AlbumFolder;->getAlbumFiles()Ljava/util/ArrayList;

    move-result-object v0

    .line 543
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 544
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaia/ngallery/model/AlbumFile;

    .line 545
    invoke-virtual {v2}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    goto :goto_d

    .line 547
    :cond_21
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 551
    :cond_25
    new-instance v0, Lcom/gaia/ngallery/sync/b/a;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/b/a;-><init>()V

    .line 552
    new-instance v2, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$-h2Ht6hiI53JPrxAlSZqYnS2xVo;

    invoke-direct {v2, p0, p2, p3}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$-h2Ht6hiI53JPrxAlSZqYnS2xVo;-><init>(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/DriveFolder;Lcom/gaia/ngallery/model/AlbumFolder;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/gaia/ngallery/sync/b/a;->a(Ljava/lang/Iterable;Ljava/lang/Iterable;Lcom/gaia/ngallery/sync/c/a;)Ljava/util/List;

    move-result-object p1

    .line 555
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->whenAll(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$S3oZhw0u_rHmg2lJ3MxS7-n4DSo;

    invoke-direct {p2, p3}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$S3oZhw0u_rHmg2lJ3MxS7-n4DSo;-><init>(Lcom/gaia/ngallery/model/AlbumFolder;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$J_6GRowqNpCEMC32cJFWg8aFuIQ;

    invoke-direct {p2, p3}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$J_6GRowqNpCEMC32cJFWg8aFuIQ;-><init>(Lcom/gaia/ngallery/model/AlbumFolder;)V

    .line 557
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic a(Ljava/util/List;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    .line 261
    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$j95Sru1HH-5f_-dhC2w4ZKh0fRE;

    invoke-direct {v0, p1, p0}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$j95Sru1HH-5f_-dhC2w4ZKh0fRE;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Ljava/util/Set;Lcom/google/android/gms/drive/Metadata;Lcom/google/android/gms/drive/MetadataBuffer;)Lcom/google/android/gms/tasks/Task;
    .registers 7

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-virtual {p3}, Lcom/google/android/gms/drive/MetadataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/drive/Metadata;

    .line 202
    iget-object v2, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {v1}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/drive/DriveId;->asDriveResource()Lcom/google/android/gms/drive/DriveResource;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/drive/DriveResourceClient;->setParents(Lcom/google/android/gms/drive/DriveResource;Ljava/util/Set;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 203
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 205
    :cond_27
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->whenAll(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$8XnuW3doTXy3Ge4NbK_E4YXzMf0;

    invoke-direct {p3, p0, p2}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$8XnuW3doTXy3Ge4NbK_E4YXzMf0;-><init>(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APP_FOLDER_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/google/android/gms/drive/Metadata;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_24

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metadata isFolder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->isFolder()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method

.method private static synthetic a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 4

    .line 416
    invoke-static {p0}, Lcom/gaia/ngallery/a/a;->p(Landroid/content/Context;)V

    .line 417
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    const-string v1, "SYNC COMPLETE ################################# FAILED:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 419
    invoke-static {}, Lcom/gaia/ngallery/sync/c;->a()Lcom/gaia/ngallery/sync/c;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/sync/c;->a(I)V

    .line 420
    invoke-static {p0, p1}, Lcom/gaia/ngallery/d;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Ljava/lang/Void;)V
    .registers 2

    .line 412
    invoke-static {p0}, Lcom/gaia/ngallery/a/a;->o(Landroid/content/Context;)V

    .line 413
    invoke-static {}, Lcom/gaia/ngallery/sync/c;->a()Lcom/gaia/ngallery/sync/c;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/sync/c;->a(I)V

    return-void
.end method

.method private a(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_3
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_10

    .line 122
    iget p1, p0, Lcom/gaia/ngallery/sync/b/d;->l:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/gaia/ngallery/sync/b/d;->l:I

    goto :goto_18

    :cond_10
    const/4 v2, 0x2

    if-ne p1, v2, :cond_18

    .line 124
    iget p1, p0, Lcom/gaia/ngallery/sync/b/d;->m:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/gaia/ngallery/sync/b/d;->m:I

    .line 125
    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private synthetic a(Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Object;)V
    .registers 5

    .line 580
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/gaia/ngallery/model/AlbumFile;)V

    .line 581
    invoke-direct {p0}, Lcom/gaia/ngallery/sync/b/d;->b()V

    .line 582
    iget-object p3, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getModifiedDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Landroid/content/Context;Ljava/io/File;J)V

    return-void
.end method

.method private synthetic a(Lcom/gaia/ngallery/model/AlbumFile;Ljava/io/File;)V
    .registers 5

    .line 626
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->c(Lcom/gaia/ngallery/model/AlbumFile;)V

    .line 627
    invoke-direct {p0}, Lcom/gaia/ngallery/sync/b/d;->b()V

    .line 628
    invoke-static {}, Lcom/gaia/ngallery/sync/a;->a()Lcom/gaia/ngallery/sync/a;

    move-result-object v0

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/gaia/ngallery/sync/a;->e(Landroid/content/Context;Ljava/io/File;)V

    .line 629
    sget-object p2, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove Local file success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic a(Lcom/gaia/ngallery/model/AlbumFile;Ljava/lang/Exception;)V
    .registers 6

    .line 739
    invoke-static {}, Lcom/gaia/ngallery/sync/g;->a()Lcom/gaia/ngallery/sync/g;

    move-result-object v0

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/gaia/ngallery/sync/g;->a(Landroid/content/Context;Lcom/gaia/ngallery/model/AlbumFile;I)V

    .line 740
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRemoteFileTask upload failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private a(Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getAlbumFiles()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaia/ngallery/model/AlbumFile;

    .line 158
    invoke-direct {p0, v1}, Lcom/gaia/ngallery/sync/b/d;->c(Lcom/gaia/ngallery/model/AlbumFile;)V

    goto :goto_b

    .line 159
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method private static synthetic a(Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Exception;)V
    .registers 6

    .line 722
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download file Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic a(Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Object;)V
    .registers 6

    .line 480
    iget-object p3, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getModifiedDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p3, p1, v0, v1}, Lcom/gaia/ngallery/sync/b/d;->a(Landroid/content/Context;Lcom/gaia/ngallery/model/AlbumFolder;J)V

    return-void
.end method

.method private synthetic a(Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Void;)V
    .registers 7

    .line 641
    invoke-static {}, Lcom/gaia/ngallery/sync/a;->a()Lcom/gaia/ngallery/sync/a;

    move-result-object p3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3, v0, v1}, Lcom/gaia/ngallery/sync/a;->e(Landroid/content/Context;Ljava/io/File;)V

    .line 642
    sget-object p1, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remote remote file success "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic a(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Boolean;)V
    .registers 5

    .line 596
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/gaia/ngallery/model/AlbumFolder;)V

    .line 597
    invoke-direct {p0}, Lcom/gaia/ngallery/sync/b/d;->b()V

    .line 598
    invoke-static {}, Lcom/gaia/ngallery/sync/a;->a()Lcom/gaia/ngallery/sync/a;

    move-result-object p2

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/gaia/ngallery/sync/a;->d(Landroid/content/Context;Ljava/io/File;)V

    .line 599
    sget-object p2, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove Local folder success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic a(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Exception;)V
    .registers 5

    .line 665
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRemoteFolderTask upload folder failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic a(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Object;)V
    .registers 4

    .line 663
    sget-object p1, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRemoteFolderTask upload folder success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic a(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Void;)V
    .registers 4

    .line 556
    sget-object p1, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync album success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic a(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Exception;)V
    .registers 5

    .line 694
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add local File folder failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic a(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Void;)V
    .registers 7

    .line 610
    invoke-static {}, Lcom/gaia/ngallery/sync/a;->a()Lcom/gaia/ngallery/sync/a;

    move-result-object p2

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    .line 611
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaia/ngallery/e;->b()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 610
    invoke-virtual {p2, v0, v1}, Lcom/gaia/ngallery/sync/a;->d(Landroid/content/Context;Ljava/io/File;)V

    .line 612
    sget-object p2, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remote remote folder success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic a(Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    .line 408
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYNC COMPLETE ################################# isSuccessful:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic a(Ljava/io/File;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Void;)V
    .registers 7

    .line 716
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/gaia/ngallery/sync/b/d;->a(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/gaia/ngallery/sync/b/d;->b(Ljava/lang/String;)V

    .line 718
    invoke-direct {p0}, Lcom/gaia/ngallery/sync/b/d;->b()V

    .line 719
    iget-object p4, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getModifiedDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p4, p1, v0, v1}, Lcom/gaia/ngallery/sync/b/d;->a(Landroid/content/Context;Ljava/io/File;J)V

    .line 720
    sget-object p1, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download file success: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " / "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6

    const/16 v0, 0x400

    .line 760
    new-array v0, v0, [B

    .line 762
    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_f

    const/4 v2, 0x0

    .line 763
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_f
    return-void
.end method

.method private static synthetic a(Ljava/lang/Exception;)V
    .registers 3

    .line 328
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    const-string v1, "getAppFolder not successful"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_3
    invoke-static {p1}, Lcom/gaia/ngallery/g/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 142
    iget p1, p0, Lcom/gaia/ngallery/sync/b/d;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gaia/ngallery/sync/b/d;->l:I

    goto :goto_1c

    .line 143
    :cond_10
    invoke-static {p1}, Lcom/gaia/ngallery/g/g;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 144
    iget p1, p0, Lcom/gaia/ngallery/sync/b/d;->m:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gaia/ngallery/sync/b/d;->m:I

    .line 145
    :cond_1c
    :goto_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method private b(Landroid/content/Context;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/DriveFolder;",
            ">;"
        }
    .end annotation

    .line 288
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 289
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    const-string v1, "getAppFolderTaskB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/DriveResourceClient;->getRootFolder()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$iC-FcukGX_9omdU_usImNv-8Qko;->INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$iC-FcukGX_9omdU_usImNv-8Qko;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ZrQXW7eEZLDL-ImDDVxYrlRE44w;->INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ZrQXW7eEZLDL-ImDDVxYrlRE44w;

    .line 292
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$1JCO-GwsuJH69bhfQT9NIaP49WE;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$1JCO-GwsuJH69bhfQT9NIaP49WE;-><init>(Lcom/gaia/ngallery/sync/b/d;)V

    .line 295
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$kG58icVNs99BYmzRiscz1l6dsik;->INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$kG58icVNs99BYmzRiscz1l6dsik;

    .line 299
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$AGSXKZQR5V83EFl8bKT4uhIkGls;

    invoke-direct {v1, p0, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$AGSXKZQR5V83EFl8bKT4uhIkGls;-><init>(Lcom/gaia/ngallery/sync/b/d;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$l-fxWQ_he9fT8k6pI3JHAIa_7D0;->INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$l-fxWQ_he9fT8k6pI3JHAIa_7D0;

    .line 320
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private synthetic b(Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    .line 296
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    const-string v1, "get root children"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/d;->h:Lcom/google/android/gms/drive/DriveFolder;

    .line 298
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/DriveResourceClient;->listChildren(Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    .line 605
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TASK Remove RemoteFolder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/drive/DriveId;->asDriveFolder()Lcom/google/android/gms/drive/DriveFolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/DriveResourceClient;->delete(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$cDM-WSmiafOOhmdoSYVAGloZmN0;

    invoke-direct {v2, p0, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$cDM-WSmiafOOhmdoSYVAGloZmN0;-><init>(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;)V

    .line 609
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$oHuYDD7WuPv61jt35DF6NEK9t4o;

    invoke-direct {v1, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$oHuYDD7WuPv61jt35DF6NEK9t4o;-><init>(Lcom/google/android/gms/drive/Metadata;)V

    .line 613
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 6

    .line 636
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TASK Remove remote file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/drive/DriveId;->asDriveFile()Lcom/google/android/gms/drive/DriveFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/DriveResourceClient;->delete(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$nfAFu1RQXryyArMRiqvH69lH7pE;

    invoke-direct {v2, p0, p2, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$nfAFu1RQXryyArMRiqvH69lH7pE;-><init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;)V

    .line 640
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$AHfWAVfZVHDNFj3eV92qYjb-Kak;

    invoke-direct {v0, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$AHfWAVfZVHDNFj3eV92qYjb-Kak;-><init>(Lcom/google/android/gms/drive/Metadata;)V

    .line 643
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic b(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .registers 2

    .line 236
    new-instance p1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$2KR8cuX91i-qSY5AA-PCiaXAPOM;

    invoke-direct {p1, p0}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$2KR8cuX91i-qSY5AA-PCiaXAPOM;-><init>(Lcom/google/android/gms/drive/Metadata;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b(Lcom/google/android/gms/drive/MetadataBuffer;)Lcom/google/android/gms/tasks/Task;
    .registers 11

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaia/ngallery/e;->b()Ljava/io/File;

    move-result-object v1

    .line 377
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/gaia/ngallery/k/d;->a(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    .line 379
    iput v1, p0, Lcom/gaia/ngallery/sync/b/d;->l:I

    .line 380
    iput v1, p0, Lcom/gaia/ngallery/sync/b/d;->m:I

    .line 381
    iput v1, p0, Lcom/gaia/ngallery/sync/b/d;->n:I

    .line 382
    iput v1, p0, Lcom/gaia/ngallery/sync/b/d;->o:I

    .line 383
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gaia/ngallery/model/AlbumFolder;

    .line 384
    invoke-virtual {v4}, Lcom/gaia/ngallery/model/AlbumFolder;->getAlbumFiles()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaia/ngallery/model/AlbumFile;

    .line 385
    invoke-direct {p0, v5}, Lcom/gaia/ngallery/sync/b/d;->b(Lcom/gaia/ngallery/model/AlbumFile;)V

    goto :goto_36

    .line 388
    :cond_46
    sget-object v3, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync count local images:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/gaia/ngallery/sync/b/d;->n:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " videos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/gaia/ngallery/sync/b/d;->o:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-direct {p0}, Lcom/gaia/ngallery/sync/b/d;->b()V

    .line 392
    new-instance v3, Lcom/gaia/ngallery/sync/b/b;

    invoke-direct {v3}, Lcom/gaia/ngallery/sync/b/b;-><init>()V

    .line 394
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 395
    invoke-virtual {p1}, Lcom/google/android/gms/drive/MetadataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_79
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/drive/Metadata;

    add-int/2addr v1, v2

    .line 397
    sget-object v6, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remote "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/google/android/gms/drive/Metadata;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 400
    :cond_ac
    invoke-direct {p0, v4}, Lcom/gaia/ngallery/sync/b/d;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->b(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$qdr9LdLpQa9wX-NIQ2OPiG4vh9I;

    invoke-direct {v1, p0, v0, v3}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$qdr9LdLpQa9wX-NIQ2OPiG4vh9I;-><init>(Lcom/gaia/ngallery/sync/b/d;Ljava/util/ArrayList;Lcom/gaia/ngallery/sync/b/b;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/drive/Metadata;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/drive/Metadata;",
            ">;>;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/drive/Metadata;

    .line 244
    invoke-virtual {v1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_29

    .line 247
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_29
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 252
    :cond_2d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3f
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 255
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5a

    .line 256
    invoke-direct {p0, v2}, Lcom/gaia/ngallery/sync/b/d;->a(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 257
    :cond_5a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_3f

    const/4 v3, 0x0

    .line 258
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 260
    :cond_69
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->whenAllSuccess(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 261
    new-instance v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$JhGH6MN0bY9dkl929mKAFKcTGTY;

    invoke-direct {v1, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$JhGH6MN0bY9dkl929mKAFKcTGTY;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/gaia/ngallery/model/AlbumFolder;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_18

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlbumFolder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method private static synthetic b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 2

    if-eqz p0, :cond_5

    .line 263
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-object p1
.end method

.method private b()V
    .registers 6

    .line 115
    invoke-static {}, Lcom/gaia/ngallery/sync/c;->a()Lcom/gaia/ngallery/sync/c;

    move-result-object v0

    iget v1, p0, Lcom/gaia/ngallery/sync/b/d;->m:I

    iget v2, p0, Lcom/gaia/ngallery/sync/b/d;->o:I

    iget v3, p0, Lcom/gaia/ngallery/sync/b/d;->l:I

    iget v4, p0, Lcom/gaia/ngallery/sync/b/d;->n:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gaia/ngallery/sync/c;->a(IIII)V

    return-void
.end method

.method private b(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 5

    .line 128
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_3
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_10

    .line 131
    iget p1, p0, Lcom/gaia/ngallery/sync/b/d;->n:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/gaia/ngallery/sync/b/d;->n:I

    goto :goto_18

    :cond_10
    const/4 v2, 0x2

    if-ne p1, v2, :cond_18

    .line 133
    iget p1, p0, Lcom/gaia/ngallery/sync/b/d;->o:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/gaia/ngallery/sync/b/d;->o:I

    .line 135
    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private static synthetic b(Lcom/gaia/ngallery/model/AlbumFile;Ljava/lang/Exception;)V
    .registers 5

    .line 631
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove Local file failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFile;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic b(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Exception;)V
    .registers 5

    .line 601
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove Local folder failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic b(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Object;)V
    .registers 4

    .line 534
    sget-object p1, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync files for album success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic b(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Exception;)V
    .registers 5

    .line 644
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove remote file failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic b(Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    .line 291
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRootFolder oncomplete success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic b(Ljava/lang/Exception;)V
    .registers 3

    .line 321
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    const-string v1, "get app folder failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_3
    invoke-static {p1}, Lcom/gaia/ngallery/g/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 150
    iget p1, p0, Lcom/gaia/ngallery/sync/b/d;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gaia/ngallery/sync/b/d;->n:I

    goto :goto_1c

    .line 151
    :cond_10
    invoke-static {p1}, Lcom/gaia/ngallery/g/g;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 152
    iget p1, p0, Lcom/gaia/ngallery/sync/b/d;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gaia/ngallery/sync/b/d;->o:I

    .line 153
    :cond_1c
    :goto_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method private c(Landroid/content/Context;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/drive/DriveFolder;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object p1, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/DriveResourceClient;->getAppFolder()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$79fW_WV6ytMNJUZzGiMOHe7FWnY;->INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$79fW_WV6ytMNJUZzGiMOHe7FWnY;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    .line 590
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TASK Remove LocalFolder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    sget-object v0, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$LCXMxJLIqvvjAes-NBwP-ngfVnQ;

    invoke-direct {v1, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$LCXMxJLIqvvjAes-NBwP-ngfVnQ;-><init>(Lcom/gaia/ngallery/model/AlbumFolder;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$vEEq7jCQv4K6hui9MupQPUKVKCM;

    invoke-direct {v2, p0, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$vEEq7jCQv4K6hui9MupQPUKVKCM;-><init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFolder;)V

    .line 595
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$myAHQL5j1kZPJbspde_daQUjK0Q;

    invoke-direct {v1, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$myAHQL5j1kZPJbspde_daQUjK0Q;-><init>(Lcom/gaia/ngallery/model/AlbumFolder;)V

    .line 600
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    .line 678
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TASK Add local folder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    sget-object v0, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$4NPgF4nZazGQKKhgfdLn9SUCUk0;

    invoke-direct {v1, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$4NPgF4nZazGQKKhgfdLn9SUCUk0;-><init>(Lcom/google/android/gms/drive/Metadata;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$aPUyJ78Ig5VVAxX3eLGSA7hohEw;

    invoke-direct {v2, p0, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$aPUyJ78Ig5VVAxX3eLGSA7hohEw;-><init>(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;)V

    .line 690
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$WpoT-C6PjoM3ST7A1RmK6x1jJOQ;

    invoke-direct {v1, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$WpoT-C6PjoM3ST7A1RmK6x1jJOQ;-><init>(Lcom/google/android/gms/drive/Metadata;)V

    .line 693
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$3vl81BtEzfB4lZRxinQHzSQritU;

    invoke-direct {v2, p0, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$3vl81BtEzfB4lZRxinQHzSQritU;-><init>(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;)V

    .line 695
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 7

    .line 702
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TASK Add local file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/gaia/ngallery/l/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/gaia/ngallery/i/a;->a()Lcom/gaia/ngallery/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaia/ngallery/i/a;->c()Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_41

    .line 706
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SYNC OVER WIFI ONLY AND NETWORK is NOT WIFI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 707
    :cond_41
    :goto_41
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/drive/DriveId;->asDriveFile()Lcom/google/android/gms/drive/DriveFile;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/drive/DriveResourceClient;->openFile(Lcom/google/android/gms/drive/DriveFile;I)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    sget-object v2, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$q_XTXylk7sMA7-fxZNTy7pkcC0Y;

    invoke-direct {v3, p0, v0}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$q_XTXylk7sMA7-fxZNTy7pkcC0Y;-><init>(Lcom/gaia/ngallery/sync/b/d;Ljava/io/File;)V

    .line 710
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    sget-object v2, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$9J9VyUMVIdlsqjNg-aItLzlMluY;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$9J9VyUMVIdlsqjNg-aItLzlMluY;-><init>(Lcom/gaia/ngallery/sync/b/d;Ljava/io/File;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)V

    .line 715
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$s5AQrC-50AIwgPNhFEDGBIIFZqQ;

    invoke-direct {v1, p2, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$s5AQrC-50AIwgPNhFEDGBIIFZqQ;-><init>(Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;)V

    .line 721
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private synthetic c(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    .line 205
    iget-object p2, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/drive/DriveId;->asDriveResource()Lcom/google/android/gms/drive/DriveResource;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/drive/DriveResourceClient;->delete(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private synthetic c(Landroid/content/Context;Ljava/io/File;J)Ljava/lang/Void;
    .registers 5

    .line 504
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gaia/ngallery/sync/b/d;->a(Landroid/content/Context;Ljava/io/File;J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/drive/Metadata;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/drive/Metadata;",
            ">;"
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/drive/Metadata;

    .line 271
    invoke-virtual {v1}, Lcom/google/android/gms/drive/Metadata;->isFolder()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 272
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-object v0
.end method

.method private c(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_3
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_10

    .line 167
    iget p1, p0, Lcom/gaia/ngallery/sync/b/d;->n:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/gaia/ngallery/sync/b/d;->n:I

    goto :goto_18

    :cond_10
    const/4 v2, 0x2

    if-ne p1, v2, :cond_18

    .line 169
    iget p1, p0, Lcom/gaia/ngallery/sync/b/d;->o:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/gaia/ngallery/sync/b/d;->o:I

    .line 170
    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private static synthetic c(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Exception;)V
    .registers 5

    .line 558
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync album failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic c(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Exception;)V
    .registers 5

    .line 614
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove remote folder failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic c(Ljava/lang/Exception;)V
    .registers 3

    .line 300
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    const-string v1, "get app folder failed 1"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private c()Z
    .registers 3

    .line 768
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static synthetic d(Lcom/google/android/gms/drive/Metadata;)Lcom/gaia/ngallery/model/AlbumFolder;
    .registers 3

    .line 682
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaia/ngallery/e;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 683
    invoke-static {v0}, Lcom/gaia/ngallery/l/f;->d(Ljava/io/File;)Z

    .line 684
    new-instance p0, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-direct {p0}, Lcom/gaia/ngallery/model/AlbumFolder;-><init>()V

    .line 685
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/model/AlbumFolder;->setName(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/model/AlbumFolder;->setId(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 687
    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/model/AlbumFolder;->setImgCount(I)V

    .line 688
    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/model/AlbumFolder;->setVidCount(I)V

    return-object p0
.end method

.method private d(Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    .line 649
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TASK Add remote folder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    new-instance v0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;-><init>()V

    .line 653
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->build()Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object v0

    .line 655
    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    iget-object v2, p0, Lcom/gaia/ngallery/sync/b/d;->g:Lcom/google/android/gms/drive/DriveFolder;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/drive/DriveResourceClient;->createFolder(Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$YdYQMp8kJQjF0xnZsuvHp1X3ayg;

    invoke-direct {v2, p0}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$YdYQMp8kJQjF0xnZsuvHp1X3ayg;-><init>(Lcom/gaia/ngallery/sync/b/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$TsZ0DQ2kbv6HAB4o2Z-S3P7u3J0;

    invoke-direct {v2, p0, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$TsZ0DQ2kbv6HAB4o2Z-S3P7u3J0;-><init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFolder;)V

    .line 657
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private synthetic d(Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    const/4 v0, 0x0

    .line 696
    invoke-direct {p0, p1, p2, v0}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic d()Ljava/lang/Object;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private d(Lcom/gaia/ngallery/model/AlbumFile;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_18

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlbumFile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/drive/Metadata;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/drive/Metadata;",
            ">;"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/drive/Metadata;

    .line 279
    invoke-virtual {v1}, Lcom/google/android/gms/drive/Metadata;->isFolder()Z

    move-result v2

    if-nez v2, :cond_9

    .line 280
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-object v0
.end method

.method private static synthetic d(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Exception;)V
    .registers 5

    .line 536
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync files for album failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic d(Ljava/lang/Exception;)V
    .registers 3

    .line 294
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    const-string v1, "get app folder failed 0"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic e(Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/drive/Metadata;
    .registers 1

    return-object p0
.end method

.method private e(Lcom/gaia/ngallery/model/AlbumFile;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    .line 618
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TASK Remove LocalFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    sget-object v0, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$JAl2Cu2hGFVfYgvQhHGHZw-24-0;

    invoke-direct {v1, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$JAl2Cu2hGFVfYgvQhHGHZw-24-0;-><init>(Lcom/gaia/ngallery/model/AlbumFile;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$rLf63CnBAbJbiom4cydQuNEelAc;

    invoke-direct {v2, p0, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$rLf63CnBAbJbiom4cydQuNEelAc;-><init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;)V

    .line 625
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ix77G23W4uoduO930cDCa7cqdyM;

    invoke-direct {v1, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ix77G23W4uoduO930cDCa7cqdyM;-><init>(Lcom/gaia/ngallery/model/AlbumFile;)V

    .line 630
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic e(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .registers 2

    .line 318
    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$p3MjKwSuyZum7VBtuhe-gyevZps;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$p3MjKwSuyZum7VBtuhe-gyevZps;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e(Lcom/gaia/ngallery/model/AlbumFolder;)Ljava/lang/Boolean;
    .registers 1

    .line 594
    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFolder;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/f;->g(Ljava/io/File;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic e(Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 6

    .line 691
    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getModifiedDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/gaia/ngallery/sync/b/d;->a(Landroid/content/Context;Lcom/gaia/ngallery/model/AlbumFolder;J)V

    .line 692
    sget-object p1, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add local folder success : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic f(Ljava/util/List;)Lcom/google/android/gms/drive/DriveFolder;
    .registers 2

    const/4 v0, 0x0

    .line 318
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/drive/Metadata;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->asDriveFolder()Lcom/google/android/gms/drive/DriveFolder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic f(Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 6

    .line 403
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folder pair: left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/google/android/gms/drive/Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/gaia/ngallery/sync/b/d;->b(Lcom/gaia/ngallery/model/AlbumFolder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic f(Lcom/gaia/ngallery/model/AlbumFile;)Ljava/io/File;
    .registers 2

    .line 622
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v0
.end method

.method public static synthetic lambda$-h2Ht6hiI53JPrxAlSZqYnS2xVo(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/DriveFolder;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFile;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/google/android/gms/drive/DriveFolder;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFile;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$07qlBYWSAIM-eJJYlRqAhOQUcOA(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->f(Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$1JCO-GwsuJH69bhfQT9NIaP49WE(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->b(Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$2KR8cuX91i-qSY5AA-PCiaXAPOM(Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/drive/Metadata;
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/sync/b/d;->e(Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/drive/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$3vl81BtEzfB4lZRxinQHzSQritU(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->d(Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$4NPgF4nZazGQKKhgfdLn9SUCUk0(Lcom/google/android/gms/drive/Metadata;)Lcom/gaia/ngallery/model/AlbumFolder;
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/sync/b/d;->d(Lcom/google/android/gms/drive/Metadata;)Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$79fW_WV6ytMNJUZzGiMOHe7FWnY(Ljava/lang/Exception;)V
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/sync/b/d;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$7hO5bdMwT40ET9WjjjgJb3OiEpo(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->d(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$8XnuW3doTXy3Ge4NbK_E4YXzMf0(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->c(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$941ewgvRNSdCUaOcruwG2XWK2sw(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;Lcom/google/android/gms/drive/DriveFolder;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/MetadataBuffer;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/google/android/gms/drive/Metadata;Lcom/google/android/gms/drive/DriveFolder;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/MetadataBuffer;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$9J9VyUMVIdlsqjNg-aItLzlMluY(Lcom/gaia/ngallery/sync/b/d;Ljava/io/File;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Void;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gaia/ngallery/sync/b/d;->a(Ljava/io/File;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic lambda$AGSXKZQR5V83EFl8bKT4uhIkGls(Lcom/gaia/ngallery/sync/b/d;Ljava/lang/String;Lcom/google/android/gms/drive/MetadataBuffer;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Ljava/lang/String;Lcom/google/android/gms/drive/MetadataBuffer;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$AHfWAVfZVHDNFj3eV92qYjb-Kak(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->b(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$BJl9gQSrcLlJ8PieUfU7Ai41oJo(Landroid/content/Context;Ljava/lang/Void;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic lambda$IlasxX5dDBC3c58fqmaSDMSJKpE(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$JAl2Cu2hGFVfYgvQhHGHZw-24-0(Lcom/gaia/ngallery/model/AlbumFile;)Ljava/io/File;
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/sync/b/d;->f(Lcom/gaia/ngallery/model/AlbumFile;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$J_6GRowqNpCEMC32cJFWg8aFuIQ(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->c(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$JhGH6MN0bY9dkl929mKAFKcTGTY(Ljava/util/List;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->a(Ljava/util/List;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$LCXMxJLIqvvjAes-NBwP-ngfVnQ(Lcom/gaia/ngallery/model/AlbumFolder;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/sync/b/d;->e(Lcom/gaia/ngallery/model/AlbumFolder;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Q_tMQGSmqOBhRuTvdxWFbk8Xx1M(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->b(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$S3oZhw0u_rHmg2lJ3MxS7-n4DSo(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Void;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic lambda$SqDJy0PzJZaPi2ZlrP7-LFO4tS4(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$TsZ0DQ2kbv6HAB4o2Z-S3P7u3J0(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$TwP5zlXMZZnZyhNmSfQIW8Xtjrk(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$WEx0B_RCZ_G0H9ZRmmL_lOfqgd4(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/DriveFile;)Lcom/google/android/gms/tasks/Task;
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/google/android/gms/drive/DriveFile;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$WWAqIg06Ru-hG7MDl4CiQafSKPI(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->b(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$WpoT-C6PjoM3ST7A1RmK6x1jJOQ(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$X9wlzMXcWRZ5XOd9hByeHgNCIlc(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/gaia/ngallery/model/AlbumFile;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$XMJ35O_dQcn-ZekDzxUfuF7FQY0(Lcom/gaia/ngallery/sync/b/d;Landroid/content/Context;Ljava/io/File;J)Ljava/lang/Void;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gaia/ngallery/sync/b/d;->c(Landroid/content/Context;Ljava/io/File;J)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$YdYQMp8kJQjF0xnZsuvHp1X3ayg(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$YqEXU9qs7SznIw3MoO0mPDCZOmI(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$ZrQXW7eEZLDL-ImDDVxYrlRE44w(Ljava/lang/Exception;)V
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/sync/b/d;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$aPUyJ78Ig5VVAxX3eLGSA7hohEw(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->e(Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)V

    return-void
.end method

.method public static synthetic lambda$agycZe9vt-OJ4MD7O902DypJmMs(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$cDM-WSmiafOOhmdoSYVAGloZmN0(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Void;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic lambda$e8Cbq2mm43JeIifKESLrQ2Epa54(Lcom/google/android/gms/tasks/Task;)V
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic lambda$iC-FcukGX_9omdU_usImNv-8Qko(Lcom/google/android/gms/tasks/Task;)V
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/sync/b/d;->b(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic lambda$ioHSDZqHxA52qkYq_ahj5aXqjjQ(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$ix77G23W4uoduO930cDCa7cqdyM(Lcom/gaia/ngallery/model/AlbumFile;Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->b(Lcom/gaia/ngallery/model/AlbumFile;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$j95Sru1HH-5f_-dhC2w4ZKh0fRE(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$jvLo2zdL22NBifwyom0bs3LZNXc(Lcom/gaia/ngallery/sync/b/d;Ljava/util/Set;Lcom/google/android/gms/drive/Metadata;Lcom/google/android/gms/drive/MetadataBuffer;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/sync/b/d;->a(Ljava/util/Set;Lcom/google/android/gms/drive/Metadata;Lcom/google/android/gms/drive/MetadataBuffer;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$kG58icVNs99BYmzRiscz1l6dsik(Ljava/lang/Exception;)V
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/sync/b/d;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$l-fxWQ_he9fT8k6pI3JHAIa_7D0(Ljava/lang/Exception;)V
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/sync/b/d;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$lAZbKi51Hc11vMUPwp539FeuWMs()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lcom/gaia/ngallery/sync/b/d;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$lLn-dz69KZoVez_vo3t25OMcYH8(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/sync/b/d;->e(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$myAHQL5j1kZPJbspde_daQUjK0Q(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->b(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$nfAFu1RQXryyArMRiqvH69lH7pE(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Void;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic lambda$oHuYDD7WuPv61jt35DF6NEK9t4o(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->c(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$p3MjKwSuyZum7VBtuhe-gyevZps(Ljava/util/List;)Lcom/google/android/gms/drive/DriveFolder;
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/sync/b/d;->f(Ljava/util/List;)Lcom/google/android/gms/drive/DriveFolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$q6gLkB8vN6NWC1C46Q56e8UIvzU(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/MetadataBuffer;)Lcom/google/android/gms/tasks/Task;
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->b(Lcom/google/android/gms/drive/MetadataBuffer;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$q_XTXylk7sMA7-fxZNTy7pkcC0Y(Lcom/gaia/ngallery/sync/b/d;Ljava/io/File;Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Ljava/io/File;Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$qdr9LdLpQa9wX-NIQ2OPiG4vh9I(Lcom/gaia/ngallery/sync/b/d;Ljava/util/ArrayList;Lcom/gaia/ngallery/sync/b/b;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gaia/ngallery/sync/b/d;->a(Ljava/util/ArrayList;Lcom/gaia/ngallery/sync/b/b;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$rLf63CnBAbJbiom4cydQuNEelAc(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/gaia/ngallery/model/AlbumFile;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic lambda$s5AQrC-50AIwgPNhFEDGBIIFZqQ(Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Exception;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$sDqslplL0jUUPreUcagjDtKKk48(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->a(Landroid/content/Context;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$vEEq7jCQv4K6hui9MupQPUKVKCM(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$zdWmsOrrow76HeuVPka-MTxG0Jg(Lcom/gaia/ngallery/sync/b/d;Landroid/content/Context;Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Landroid/content/Context;Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/gaia/ngallery/model/AlbumFolder;J)V
    .registers 6

    .line 489
    new-instance v0, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;-><init>()V

    .line 490
    invoke-virtual {v0, p3, p4}, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->setLastModifedFromServer(J)V

    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {v0, p3, p4}, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->setLastSyncedTime(J)V

    .line 493
    invoke-static {}, Lcom/gaia/ngallery/sync/a;->a()Lcom/gaia/ngallery/sync/a;

    move-result-object p3

    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p3, p1, p2, v0}, Lcom/gaia/ngallery/sync/a;->b(Landroid/content/Context;Ljava/io/File;Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .registers 5

    .line 350
    sget-object v0, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    const-string v1, "start syncing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {}, Lcom/gaia/ngallery/sync/c;->a()Lcom/gaia/ngallery/sync/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/sync/c;->a(I)V

    .line 352
    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/d;->i:Landroid/content/Context;

    .line 353
    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/d;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 354
    invoke-static {p1, p2}, Lcom/google/android/gms/drive/Drive;->getDriveClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/drive/DriveClient;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/sync/b/d;->e:Lcom/google/android/gms/drive/DriveClient;

    .line 355
    invoke-static {p1, p2}, Lcom/google/android/gms/drive/Drive;->getDriveResourceClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/drive/DriveResourceClient;

    move-result-object p2

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/d;->f:Lcom/google/android/gms/drive/DriveResourceClient;

    .line 367
    sget-object p2, Lcom/gaia/ngallery/sync/b/d;->a:Ljava/lang/String;

    const-string v0, "get resource client"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/sync/b/d;->b(Landroid/content/Context;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$zdWmsOrrow76HeuVPka-MTxG0Jg;

    invoke-direct {v0, p0, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$zdWmsOrrow76HeuVPka-MTxG0Jg;-><init>(Lcom/gaia/ngallery/sync/b/d;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    sget-object v0, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$q6gLkB8vN6NWC1C46Q56e8UIvzU;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$q6gLkB8vN6NWC1C46Q56e8UIvzU;-><init>(Lcom/gaia/ngallery/sync/b/d;)V

    .line 374
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$BJl9gQSrcLlJ8PieUfU7Ai41oJo;

    invoke-direct {v0, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$BJl9gQSrcLlJ8PieUfU7Ai41oJo;-><init>(Landroid/content/Context;)V

    .line 411
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$sDqslplL0jUUPreUcagjDtKKk48;

    invoke-direct {v0, p1}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$sDqslplL0jUUPreUcagjDtKKk48;-><init>(Landroid/content/Context;)V

    .line 414
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/io/File;J)V
    .registers 6

    .line 496
    new-instance v0, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;-><init>()V

    .line 497
    invoke-virtual {v0, p3, p4}, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->setLastModifedFromServer(J)V

    .line 498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {v0, p3, p4}, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->setLastSyncedTime(J)V

    .line 499
    invoke-static {}, Lcom/gaia/ngallery/sync/a;->a()Lcom/gaia/ngallery/sync/a;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0}, Lcom/gaia/ngallery/sync/a;->a(Landroid/content/Context;Ljava/io/File;Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3

    .line 62
    check-cast p2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/io/File;J)Lcom/google/android/gms/tasks/Task;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "J)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 503
    sget-object v0, Lcom/gaia/ngallery/sync/e;->a:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$XMJ35O_dQcn-ZekDzxUfuF7FQY0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$XMJ35O_dQcn-ZekDzxUfuF7FQY0;-><init>(Lcom/gaia/ngallery/sync/b/d;Landroid/content/Context;Ljava/io/File;J)V

    invoke-static {v0, v7}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.d.a (com.gaia.ngallery.sync.b.d$a)
.class Lcom/gaia/ngallery/sync/b/d$a;
.super Ljava/lang/Object;
.source "GDriveSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/sync/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/sync/b/d$a$a;,
        Lcom/gaia/ngallery/sync/b/d$a$b;
    }
.end annotation


# static fields
.field public static final a:Z = true


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.d.a.C0057a (com.gaia.ngallery.sync.b.d$a$a)
.class public Lcom/gaia/ngallery/sync/b/d$a$a;
.super Ljava/lang/Object;
.source "GDriveSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/sync/b/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/sync/b/d$a$a$a;,
        Lcom/gaia/ngallery/sync/b/d$a$a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.d.a.C0057a.C0058a (com.gaia.ngallery.sync.b.d$a$a$a)
.class public Lcom/gaia/ngallery/sync/b/d$a$a$a;
.super Ljava/lang/Object;
.source "GDriveSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/sync/b/d$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Z = true

.field public static final b:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.d.a.C0057a.b (com.gaia.ngallery.sync.b.d$a$a$b)
.class public Lcom/gaia/ngallery/sync/b/d$a$a$b;
.super Ljava/lang/Object;
.source "GDriveSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/sync/b/d$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Z = true

.field public static final b:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.d.a.b (com.gaia.ngallery.sync.b.d$a$b)
.class public Lcom/gaia/ngallery/sync/b/d$a$b;
.super Ljava/lang/Object;
.source "GDriveSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/sync/b/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/sync/b/d$a$b$a;,
        Lcom/gaia/ngallery/sync/b/d$a$b$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.d.a.b.C0059a (com.gaia.ngallery.sync.b.d$a$b$a)
.class public Lcom/gaia/ngallery/sync/b/d$a$b$a;
.super Ljava/lang/Object;
.source "GDriveSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/sync/b/d$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Z = true

.field public static final b:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.d.a.b.C0060b (com.gaia.ngallery.sync.b.d$a$b$b)
.class public Lcom/gaia/ngallery/sync/b/d$a$b$b;
.super Ljava/lang/Object;
.source "GDriveSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/sync/b/d$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Z = true

.field public static final b:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$h2Ht6hiI53JPrxAlSZqYnS2xVo (com.gaia.ngallery.sync.b.-$$Lambda$d$-h2Ht6hiI53JPrxAlSZqYnS2xVo)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$-h2Ht6hiI53JPrxAlSZqYnS2xVo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/gaia/ngallery/sync/c/a;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Lcom/google/android/gms/drive/DriveFolder;

.field private final synthetic f$2:Lcom/gaia/ngallery/model/AlbumFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/DriveFolder;Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$-h2Ht6hiI53JPrxAlSZqYnS2xVo;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$-h2Ht6hiI53JPrxAlSZqYnS2xVo;->f$1:Lcom/google/android/gms/drive/DriveFolder;

    iput-object p3, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$-h2Ht6hiI53JPrxAlSZqYnS2xVo;->f$2:Lcom/gaia/ngallery/model/AlbumFolder;

    return-void
.end method


# virtual methods
.method public final onPair(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$-h2Ht6hiI53JPrxAlSZqYnS2xVo;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$-h2Ht6hiI53JPrxAlSZqYnS2xVo;->f$1:Lcom/google/android/gms/drive/DriveFolder;

    iget-object v2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$-h2Ht6hiI53JPrxAlSZqYnS2xVo;->f$2:Lcom/gaia/ngallery/model/AlbumFolder;

    check-cast p1, Lcom/google/android/gms/drive/Metadata;

    check-cast p2, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->lambda$-h2Ht6hiI53JPrxAlSZqYnS2xVo(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/DriveFolder;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFile;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$07qlBYWSAIMeJJYlRqAhOQUcOA (com.gaia.ngallery.sync.b.-$$Lambda$d$07qlBYWSAIM-eJJYlRqAhOQUcOA)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$07qlBYWSAIM-eJJYlRqAhOQUcOA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/gaia/ngallery/sync/c/a;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$07qlBYWSAIM-eJJYlRqAhOQUcOA;->f$0:Lcom/gaia/ngallery/sync/b/d;

    return-void
.end method


# virtual methods
.method public final onPair(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$07qlBYWSAIM-eJJYlRqAhOQUcOA;->f$0:Lcom/gaia/ngallery/sync/b/d;

    check-cast p1, Lcom/google/android/gms/drive/Metadata;

    check-cast p2, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/sync/b/d;->lambda$07qlBYWSAIM-eJJYlRqAhOQUcOA(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$1JCOGwsuJH69bhfQT9NIaP49WE (com.gaia.ngallery.sync.b.-$$Lambda$d$1JCO-GwsuJH69bhfQT9NIaP49WE)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$1JCO-GwsuJH69bhfQT9NIaP49WE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$1JCO-GwsuJH69bhfQT9NIaP49WE;->f$0:Lcom/gaia/ngallery/sync/b/d;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$1JCO-GwsuJH69bhfQT9NIaP49WE;->f$0:Lcom/gaia/ngallery/sync/b/d;

    check-cast p1, Lcom/google/android/gms/drive/DriveFolder;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$1JCO-GwsuJH69bhfQT9NIaP49WE(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$2KR8cuX91iqSY5AAPCiaXAPOM (com.gaia.ngallery.sync.b.-$$Lambda$d$2KR8cuX91i-qSY5AA-PCiaXAPOM)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$2KR8cuX91i-qSY5AA-PCiaXAPOM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/drive/Metadata;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$2KR8cuX91i-qSY5AA-PCiaXAPOM;->f$0:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$2KR8cuX91i-qSY5AA-PCiaXAPOM;->f$0:Lcom/google/android/gms/drive/Metadata;

    invoke-static {v0}, Lcom/gaia/ngallery/sync/b/d;->lambda$2KR8cuX91i-qSY5AA-PCiaXAPOM(Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/drive/Metadata;

    move-result-object v0

    return-object v0
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$3vl81BtEzfB4lZRxinQHzSQritU (com.gaia.ngallery.sync.b.-$$Lambda$d$3vl81BtEzfB4lZRxinQHzSQritU)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$3vl81BtEzfB4lZRxinQHzSQritU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$3vl81BtEzfB4lZRxinQHzSQritU;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$3vl81BtEzfB4lZRxinQHzSQritU;->f$1:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$3vl81BtEzfB4lZRxinQHzSQritU;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$3vl81BtEzfB4lZRxinQHzSQritU;->f$1:Lcom/google/android/gms/drive/Metadata;

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$3vl81BtEzfB4lZRxinQHzSQritU(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$4NPgF4nZazGQKKhgfdLn9SUCUk0 (com.gaia.ngallery.sync.b.-$$Lambda$d$4NPgF4nZazGQKKhgfdLn9SUCUk0)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$4NPgF4nZazGQKKhgfdLn9SUCUk0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/drive/Metadata;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$4NPgF4nZazGQKKhgfdLn9SUCUk0;->f$0:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$4NPgF4nZazGQKKhgfdLn9SUCUk0;->f$0:Lcom/google/android/gms/drive/Metadata;

    invoke-static {v0}, Lcom/gaia/ngallery/sync/b/d;->lambda$4NPgF4nZazGQKKhgfdLn9SUCUk0(Lcom/google/android/gms/drive/Metadata;)Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object v0

    return-object v0
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$79fW_WV6ytMNJUZzGiMOHe7FWnY (com.gaia.ngallery.sync.b.-$$Lambda$d$79fW_WV6ytMNJUZzGiMOHe7FWnY)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$79fW_WV6ytMNJUZzGiMOHe7FWnY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$79fW_WV6ytMNJUZzGiMOHe7FWnY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$79fW_WV6ytMNJUZzGiMOHe7FWnY;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$79fW_WV6ytMNJUZzGiMOHe7FWnY;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$79fW_WV6ytMNJUZzGiMOHe7FWnY;->INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$79fW_WV6ytMNJUZzGiMOHe7FWnY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$79fW_WV6ytMNJUZzGiMOHe7FWnY(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$7hO5bdMwT40ET9WjjjgJb3OiEpo (com.gaia.ngallery.sync.b.-$$Lambda$d$7hO5bdMwT40ET9WjjjgJb3OiEpo)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$7hO5bdMwT40ET9WjjjgJb3OiEpo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/model/AlbumFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$7hO5bdMwT40ET9WjjjgJb3OiEpo;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$7hO5bdMwT40ET9WjjjgJb3OiEpo;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$7hO5bdMwT40ET9WjjjgJb3OiEpo(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$8XnuW3doTXy3Ge4NbK_E4YXzMf0 (com.gaia.ngallery.sync.b.-$$Lambda$d$8XnuW3doTXy3Ge4NbK_E4YXzMf0)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$8XnuW3doTXy3Ge4NbK_E4YXzMf0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$8XnuW3doTXy3Ge4NbK_E4YXzMf0;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$8XnuW3doTXy3Ge4NbK_E4YXzMf0;->f$1:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$8XnuW3doTXy3Ge4NbK_E4YXzMf0;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$8XnuW3doTXy3Ge4NbK_E4YXzMf0;->f$1:Lcom/google/android/gms/drive/Metadata;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$8XnuW3doTXy3Ge4NbK_E4YXzMf0(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$941ewgvRNSdCUaOcruwG2XWK2sw (com.gaia.ngallery.sync.b.-$$Lambda$d$941ewgvRNSdCUaOcruwG2XWK2sw)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$941ewgvRNSdCUaOcruwG2XWK2sw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Lcom/google/android/gms/drive/Metadata;

.field private final synthetic f$2:Lcom/google/android/gms/drive/DriveFolder;

.field private final synthetic f$3:Lcom/gaia/ngallery/model/AlbumFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;Lcom/google/android/gms/drive/DriveFolder;Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$941ewgvRNSdCUaOcruwG2XWK2sw;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$941ewgvRNSdCUaOcruwG2XWK2sw;->f$1:Lcom/google/android/gms/drive/Metadata;

    iput-object p3, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$941ewgvRNSdCUaOcruwG2XWK2sw;->f$2:Lcom/google/android/gms/drive/DriveFolder;

    iput-object p4, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$941ewgvRNSdCUaOcruwG2XWK2sw;->f$3:Lcom/gaia/ngallery/model/AlbumFolder;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 6

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$941ewgvRNSdCUaOcruwG2XWK2sw;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$941ewgvRNSdCUaOcruwG2XWK2sw;->f$1:Lcom/google/android/gms/drive/Metadata;

    iget-object v2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$941ewgvRNSdCUaOcruwG2XWK2sw;->f$2:Lcom/google/android/gms/drive/DriveFolder;

    iget-object v3, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$941ewgvRNSdCUaOcruwG2XWK2sw;->f$3:Lcom/gaia/ngallery/model/AlbumFolder;

    check-cast p1, Lcom/google/android/gms/drive/MetadataBuffer;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$941ewgvRNSdCUaOcruwG2XWK2sw(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;Lcom/google/android/gms/drive/DriveFolder;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/MetadataBuffer;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$9J9VyUMVIdlsqjNgaItLzlMluY (com.gaia.ngallery.sync.b.-$$Lambda$d$9J9VyUMVIdlsqjNg-aItLzlMluY)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$9J9VyUMVIdlsqjNg-aItLzlMluY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Ljava/io/File;

.field private final synthetic f$2:Lcom/google/android/gms/drive/Metadata;

.field private final synthetic f$3:Lcom/gaia/ngallery/model/AlbumFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Ljava/io/File;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$9J9VyUMVIdlsqjNg-aItLzlMluY;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$9J9VyUMVIdlsqjNg-aItLzlMluY;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$9J9VyUMVIdlsqjNg-aItLzlMluY;->f$2:Lcom/google/android/gms/drive/Metadata;

    iput-object p4, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$9J9VyUMVIdlsqjNg-aItLzlMluY;->f$3:Lcom/gaia/ngallery/model/AlbumFolder;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$9J9VyUMVIdlsqjNg-aItLzlMluY;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$9J9VyUMVIdlsqjNg-aItLzlMluY;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$9J9VyUMVIdlsqjNg-aItLzlMluY;->f$2:Lcom/google/android/gms/drive/Metadata;

    iget-object v3, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$9J9VyUMVIdlsqjNg-aItLzlMluY;->f$3:Lcom/gaia/ngallery/model/AlbumFolder;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$9J9VyUMVIdlsqjNg-aItLzlMluY(Lcom/gaia/ngallery/sync/b/d;Ljava/io/File;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Void;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$AGSXKZQR5V83EFl8bKT4uhIkGls (com.gaia.ngallery.sync.b.-$$Lambda$d$AGSXKZQR5V83EFl8bKT4uhIkGls)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$AGSXKZQR5V83EFl8bKT4uhIkGls;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$AGSXKZQR5V83EFl8bKT4uhIkGls;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$AGSXKZQR5V83EFl8bKT4uhIkGls;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$AGSXKZQR5V83EFl8bKT4uhIkGls;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$AGSXKZQR5V83EFl8bKT4uhIkGls;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/drive/MetadataBuffer;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$AGSXKZQR5V83EFl8bKT4uhIkGls(Lcom/gaia/ngallery/sync/b/d;Ljava/lang/String;Lcom/google/android/gms/drive/MetadataBuffer;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$AHfWAVfZVHDNFj3eV92qYjbKak (com.gaia.ngallery.sync.b.-$$Lambda$d$AHfWAVfZVHDNFj3eV92qYjb-Kak)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$AHfWAVfZVHDNFj3eV92qYjb-Kak;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic f$0:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/drive/Metadata;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$AHfWAVfZVHDNFj3eV92qYjb-Kak;->f$0:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$AHfWAVfZVHDNFj3eV92qYjb-Kak;->f$0:Lcom/google/android/gms/drive/Metadata;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$AHfWAVfZVHDNFj3eV92qYjb-Kak(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$BJl9gQSrcLlJ8PieUfU7Ai41oJo (com.gaia.ngallery.sync.b.-$$Lambda$d$BJl9gQSrcLlJ8PieUfU7Ai41oJo)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$BJl9gQSrcLlJ8PieUfU7Ai41oJo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$BJl9gQSrcLlJ8PieUfU7Ai41oJo;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$BJl9gQSrcLlJ8PieUfU7Ai41oJo;->f$0:Landroid/content/Context;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$BJl9gQSrcLlJ8PieUfU7Ai41oJo(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$IlasxX5dDBC3c58fqmaSDMSJKpE (com.gaia.ngallery.sync.b.-$$Lambda$d$IlasxX5dDBC3c58fqmaSDMSJKpE)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$IlasxX5dDBC3c58fqmaSDMSJKpE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Lcom/gaia/ngallery/model/AlbumFile;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$IlasxX5dDBC3c58fqmaSDMSJKpE;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$IlasxX5dDBC3c58fqmaSDMSJKpE;->f$1:Lcom/gaia/ngallery/model/AlbumFile;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$IlasxX5dDBC3c58fqmaSDMSJKpE;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$IlasxX5dDBC3c58fqmaSDMSJKpE;->f$1:Lcom/gaia/ngallery/model/AlbumFile;

    check-cast p1, Lcom/google/android/gms/drive/Metadata;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$IlasxX5dDBC3c58fqmaSDMSJKpE(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$JAl2Cu2hGFVfYgvQhHGHZw240 (com.gaia.ngallery.sync.b.-$$Lambda$d$JAl2Cu2hGFVfYgvQhHGHZw-24-0)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$JAl2Cu2hGFVfYgvQhHGHZw-24-0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/model/AlbumFile;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$JAl2Cu2hGFVfYgvQhHGHZw-24-0;->f$0:Lcom/gaia/ngallery/model/AlbumFile;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$JAl2Cu2hGFVfYgvQhHGHZw-24-0;->f$0:Lcom/gaia/ngallery/model/AlbumFile;

    invoke-static {v0}, Lcom/gaia/ngallery/sync/b/d;->lambda$JAl2Cu2hGFVfYgvQhHGHZw-24-0(Lcom/gaia/ngallery/model/AlbumFile;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$J_6GRowqNpCEMC32cJFWg8aFuIQ (com.gaia.ngallery.sync.b.-$$Lambda$d$J_6GRowqNpCEMC32cJFWg8aFuIQ)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$J_6GRowqNpCEMC32cJFWg8aFuIQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/model/AlbumFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$J_6GRowqNpCEMC32cJFWg8aFuIQ;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$J_6GRowqNpCEMC32cJFWg8aFuIQ;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$J_6GRowqNpCEMC32cJFWg8aFuIQ(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$JhGH6MN0bY9dkl929mKAFKcTGTY (com.gaia.ngallery.sync.b.-$$Lambda$d$JhGH6MN0bY9dkl929mKAFKcTGTY)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$JhGH6MN0bY9dkl929mKAFKcTGTY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$JhGH6MN0bY9dkl929mKAFKcTGTY;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$JhGH6MN0bY9dkl929mKAFKcTGTY;->f$0:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$JhGH6MN0bY9dkl929mKAFKcTGTY(Ljava/util/List;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$LCXMxJLIqvvjAesNBwPngfVnQ (com.gaia.ngallery.sync.b.-$$Lambda$d$LCXMxJLIqvvjAes-NBwP-ngfVnQ)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$LCXMxJLIqvvjAes-NBwP-ngfVnQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/model/AlbumFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$LCXMxJLIqvvjAes-NBwP-ngfVnQ;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$LCXMxJLIqvvjAes-NBwP-ngfVnQ;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-static {v0}, Lcom/gaia/ngallery/sync/b/d;->lambda$LCXMxJLIqvvjAes-NBwP-ngfVnQ(Lcom/gaia/ngallery/model/AlbumFolder;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$Q_tMQGSmqOBhRuTvdxWFbk8Xx1M (com.gaia.ngallery.sync.b.-$$Lambda$d$Q_tMQGSmqOBhRuTvdxWFbk8Xx1M)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$Q_tMQGSmqOBhRuTvdxWFbk8Xx1M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/model/AlbumFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$Q_tMQGSmqOBhRuTvdxWFbk8Xx1M;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$Q_tMQGSmqOBhRuTvdxWFbk8Xx1M;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$Q_tMQGSmqOBhRuTvdxWFbk8Xx1M(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$S3oZhw0u_rHmg2lJ3MxS7n4DSo (com.gaia.ngallery.sync.b.-$$Lambda$d$S3oZhw0u_rHmg2lJ3MxS7-n4DSo)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$S3oZhw0u_rHmg2lJ3MxS7-n4DSo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/model/AlbumFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$S3oZhw0u_rHmg2lJ3MxS7-n4DSo;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$S3oZhw0u_rHmg2lJ3MxS7-n4DSo;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$S3oZhw0u_rHmg2lJ3MxS7-n4DSo(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Void;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$SqDJy0PzJZaPi2ZlrP7LFO4tS4 (com.gaia.ngallery.sync.b.-$$Lambda$d$SqDJy0PzJZaPi2ZlrP7-LFO4tS4)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$SqDJy0PzJZaPi2ZlrP7-LFO4tS4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Lcom/gaia/ngallery/model/AlbumFile;

.field private final synthetic f$2:Lcom/google/android/gms/drive/DriveFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/DriveFolder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$SqDJy0PzJZaPi2ZlrP7-LFO4tS4;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$SqDJy0PzJZaPi2ZlrP7-LFO4tS4;->f$1:Lcom/gaia/ngallery/model/AlbumFile;

    iput-object p3, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$SqDJy0PzJZaPi2ZlrP7-LFO4tS4;->f$2:Lcom/google/android/gms/drive/DriveFolder;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$SqDJy0PzJZaPi2ZlrP7-LFO4tS4;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$SqDJy0PzJZaPi2ZlrP7-LFO4tS4;->f$1:Lcom/gaia/ngallery/model/AlbumFile;

    iget-object v2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$SqDJy0PzJZaPi2ZlrP7-LFO4tS4;->f$2:Lcom/google/android/gms/drive/DriveFolder;

    check-cast p1, Lcom/google/android/gms/drive/DriveContents;

    invoke-static {v0, v1, v2, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$SqDJy0PzJZaPi2ZlrP7-LFO4tS4(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$TsZ0DQ2kbv6HAB4o2ZS3P7u3J0 (com.gaia.ngallery.sync.b.-$$Lambda$d$TsZ0DQ2kbv6HAB4o2Z-S3P7u3J0)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$TsZ0DQ2kbv6HAB4o2Z-S3P7u3J0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Lcom/gaia/ngallery/model/AlbumFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$TsZ0DQ2kbv6HAB4o2Z-S3P7u3J0;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$TsZ0DQ2kbv6HAB4o2Z-S3P7u3J0;->f$1:Lcom/gaia/ngallery/model/AlbumFolder;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$TsZ0DQ2kbv6HAB4o2Z-S3P7u3J0;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$TsZ0DQ2kbv6HAB4o2Z-S3P7u3J0;->f$1:Lcom/gaia/ngallery/model/AlbumFolder;

    check-cast p1, Lcom/google/android/gms/drive/Metadata;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$TsZ0DQ2kbv6HAB4o2Z-S3P7u3J0(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$TwP5zlXMZZnZyhNmSfQIW8Xtjrk (com.gaia.ngallery.sync.b.-$$Lambda$d$TwP5zlXMZZnZyhNmSfQIW8Xtjrk)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$TwP5zlXMZZnZyhNmSfQIW8Xtjrk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Lcom/gaia/ngallery/model/AlbumFolder;

.field private final synthetic f$2:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$TwP5zlXMZZnZyhNmSfQIW8Xtjrk;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$TwP5zlXMZZnZyhNmSfQIW8Xtjrk;->f$1:Lcom/gaia/ngallery/model/AlbumFolder;

    iput-object p3, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$TwP5zlXMZZnZyhNmSfQIW8Xtjrk;->f$2:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$TwP5zlXMZZnZyhNmSfQIW8Xtjrk;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$TwP5zlXMZZnZyhNmSfQIW8Xtjrk;->f$1:Lcom/gaia/ngallery/model/AlbumFolder;

    iget-object v2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$TwP5zlXMZZnZyhNmSfQIW8Xtjrk;->f$2:Lcom/google/android/gms/drive/Metadata;

    invoke-static {v0, v1, v2, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$TwP5zlXMZZnZyhNmSfQIW8Xtjrk(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$WEx0B_RCZ_G0H9ZRmmL_lOfqgd4 (com.gaia.ngallery.sync.b.-$$Lambda$d$WEx0B_RCZ_G0H9ZRmmL_lOfqgd4)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$WEx0B_RCZ_G0H9ZRmmL_lOfqgd4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$WEx0B_RCZ_G0H9ZRmmL_lOfqgd4;->f$0:Lcom/gaia/ngallery/sync/b/d;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$WEx0B_RCZ_G0H9ZRmmL_lOfqgd4;->f$0:Lcom/gaia/ngallery/sync/b/d;

    check-cast p1, Lcom/google/android/gms/drive/DriveFile;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$WEx0B_RCZ_G0H9ZRmmL_lOfqgd4(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/DriveFile;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$WWAqIg06RuhG7MDl4CiQafSKPI (com.gaia.ngallery.sync.b.-$$Lambda$d$WWAqIg06Ru-hG7MDl4CiQafSKPI)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$WWAqIg06Ru-hG7MDl4CiQafSKPI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/drive/Metadata;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$WWAqIg06Ru-hG7MDl4CiQafSKPI;->f$0:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$WWAqIg06Ru-hG7MDl4CiQafSKPI;->f$0:Lcom/google/android/gms/drive/Metadata;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$WWAqIg06Ru-hG7MDl4CiQafSKPI(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$WpoTC6PjoM3ST7A1RmK6x1jJOQ (com.gaia.ngallery.sync.b.-$$Lambda$d$WpoT-C6PjoM3ST7A1RmK6x1jJOQ)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$WpoT-C6PjoM3ST7A1RmK6x1jJOQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic f$0:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/drive/Metadata;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$WpoT-C6PjoM3ST7A1RmK6x1jJOQ;->f$0:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$WpoT-C6PjoM3ST7A1RmK6x1jJOQ;->f$0:Lcom/google/android/gms/drive/Metadata;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$WpoT-C6PjoM3ST7A1RmK6x1jJOQ(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$X9wlzMXcWRZ5XOd9hByeHgNCIlc (com.gaia.ngallery.sync.b.-$$Lambda$d$X9wlzMXcWRZ5XOd9hByeHgNCIlc)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$X9wlzMXcWRZ5XOd9hByeHgNCIlc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Lcom/gaia/ngallery/model/AlbumFile;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$X9wlzMXcWRZ5XOd9hByeHgNCIlc;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$X9wlzMXcWRZ5XOd9hByeHgNCIlc;->f$1:Lcom/gaia/ngallery/model/AlbumFile;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$X9wlzMXcWRZ5XOd9hByeHgNCIlc;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$X9wlzMXcWRZ5XOd9hByeHgNCIlc;->f$1:Lcom/gaia/ngallery/model/AlbumFile;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$X9wlzMXcWRZ5XOd9hByeHgNCIlc(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$XMJ35O_dQcnZekDzxUfuF7FQY0 (com.gaia.ngallery.sync.b.-$$Lambda$d$XMJ35O_dQcn-ZekDzxUfuF7FQY0)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$XMJ35O_dQcn-ZekDzxUfuF7FQY0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Ljava/io/File;

.field private final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Landroid/content/Context;Ljava/io/File;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$XMJ35O_dQcn-ZekDzxUfuF7FQY0;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$XMJ35O_dQcn-ZekDzxUfuF7FQY0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$XMJ35O_dQcn-ZekDzxUfuF7FQY0;->f$2:Ljava/io/File;

    iput-wide p4, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$XMJ35O_dQcn-ZekDzxUfuF7FQY0;->f$3:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$XMJ35O_dQcn-ZekDzxUfuF7FQY0;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$XMJ35O_dQcn-ZekDzxUfuF7FQY0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$XMJ35O_dQcn-ZekDzxUfuF7FQY0;->f$2:Ljava/io/File;

    iget-wide v3, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$XMJ35O_dQcn-ZekDzxUfuF7FQY0;->f$3:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/gaia/ngallery/sync/b/d;->lambda$XMJ35O_dQcn-ZekDzxUfuF7FQY0(Lcom/gaia/ngallery/sync/b/d;Landroid/content/Context;Ljava/io/File;J)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$YdYQMp8kJQjF0xnZsuvHp1X3ayg (com.gaia.ngallery.sync.b.-$$Lambda$d$YdYQMp8kJQjF0xnZsuvHp1X3ayg)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$YdYQMp8kJQjF0xnZsuvHp1X3ayg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$YdYQMp8kJQjF0xnZsuvHp1X3ayg;->f$0:Lcom/gaia/ngallery/sync/b/d;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$YdYQMp8kJQjF0xnZsuvHp1X3ayg;->f$0:Lcom/gaia/ngallery/sync/b/d;

    check-cast p1, Lcom/google/android/gms/drive/DriveFolder;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$YdYQMp8kJQjF0xnZsuvHp1X3ayg(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$YqEXU9qs7SznIw3MoO0mPDCZOmI (com.gaia.ngallery.sync.b.-$$Lambda$d$YqEXU9qs7SznIw3MoO0mPDCZOmI)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$YqEXU9qs7SznIw3MoO0mPDCZOmI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/model/AlbumFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$YqEXU9qs7SznIw3MoO0mPDCZOmI;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$YqEXU9qs7SznIw3MoO0mPDCZOmI;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$YqEXU9qs7SznIw3MoO0mPDCZOmI(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$ZrQXW7eEZLDLImDDVxYrlRE44w (com.gaia.ngallery.sync.b.-$$Lambda$d$ZrQXW7eEZLDL-ImDDVxYrlRE44w)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ZrQXW7eEZLDL-ImDDVxYrlRE44w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ZrQXW7eEZLDL-ImDDVxYrlRE44w;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ZrQXW7eEZLDL-ImDDVxYrlRE44w;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ZrQXW7eEZLDL-ImDDVxYrlRE44w;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ZrQXW7eEZLDL-ImDDVxYrlRE44w;->INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ZrQXW7eEZLDL-ImDDVxYrlRE44w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$ZrQXW7eEZLDL-ImDDVxYrlRE44w(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$aPUyJ78Ig5VVAxX3eLGSA7hohEw (com.gaia.ngallery.sync.b.-$$Lambda$d$aPUyJ78Ig5VVAxX3eLGSA7hohEw)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$aPUyJ78Ig5VVAxX3eLGSA7hohEw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$aPUyJ78Ig5VVAxX3eLGSA7hohEw;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$aPUyJ78Ig5VVAxX3eLGSA7hohEw;->f$1:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$aPUyJ78Ig5VVAxX3eLGSA7hohEw;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$aPUyJ78Ig5VVAxX3eLGSA7hohEw;->f$1:Lcom/google/android/gms/drive/Metadata;

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$aPUyJ78Ig5VVAxX3eLGSA7hohEw(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;Lcom/gaia/ngallery/model/AlbumFolder;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$agycZe9vtOJ4MD7O902DypJmMs (com.gaia.ngallery.sync.b.-$$Lambda$d$agycZe9vt-OJ4MD7O902DypJmMs)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$agycZe9vt-OJ4MD7O902DypJmMs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/model/AlbumFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$agycZe9vt-OJ4MD7O902DypJmMs;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$agycZe9vt-OJ4MD7O902DypJmMs;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$agycZe9vt-OJ4MD7O902DypJmMs(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$cDMWSmiafOOhmdoSYVAGloZmN0 (com.gaia.ngallery.sync.b.-$$Lambda$d$cDM-WSmiafOOhmdoSYVAGloZmN0)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$cDM-WSmiafOOhmdoSYVAGloZmN0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$cDM-WSmiafOOhmdoSYVAGloZmN0;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$cDM-WSmiafOOhmdoSYVAGloZmN0;->f$1:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$cDM-WSmiafOOhmdoSYVAGloZmN0;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$cDM-WSmiafOOhmdoSYVAGloZmN0;->f$1:Lcom/google/android/gms/drive/Metadata;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$cDM-WSmiafOOhmdoSYVAGloZmN0(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Void;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$e8Cbq2mm43JeIifKESLrQ2Epa54 (com.gaia.ngallery.sync.b.-$$Lambda$d$e8Cbq2mm43JeIifKESLrQ2Epa54)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$e8Cbq2mm43JeIifKESLrQ2Epa54;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$e8Cbq2mm43JeIifKESLrQ2Epa54;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$e8Cbq2mm43JeIifKESLrQ2Epa54;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$e8Cbq2mm43JeIifKESLrQ2Epa54;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$e8Cbq2mm43JeIifKESLrQ2Epa54;->INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$e8Cbq2mm43JeIifKESLrQ2Epa54;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    invoke-static {p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$e8Cbq2mm43JeIifKESLrQ2Epa54(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$iCFcukGX_9omdU_usImNv8Qko (com.gaia.ngallery.sync.b.-$$Lambda$d$iC-FcukGX_9omdU_usImNv-8Qko)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$iC-FcukGX_9omdU_usImNv-8Qko;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$iC-FcukGX_9omdU_usImNv-8Qko;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$iC-FcukGX_9omdU_usImNv-8Qko;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$iC-FcukGX_9omdU_usImNv-8Qko;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$iC-FcukGX_9omdU_usImNv-8Qko;->INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$iC-FcukGX_9omdU_usImNv-8Qko;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    invoke-static {p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$iC-FcukGX_9omdU_usImNv-8Qko(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$ioHSDZqHxA52qkYq_ahj5aXqjjQ (com.gaia.ngallery.sync.b.-$$Lambda$d$ioHSDZqHxA52qkYq_ahj5aXqjjQ)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ioHSDZqHxA52qkYq_ahj5aXqjjQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Lcom/gaia/ngallery/model/AlbumFile;

.field private final synthetic f$2:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/Metadata;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ioHSDZqHxA52qkYq_ahj5aXqjjQ;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ioHSDZqHxA52qkYq_ahj5aXqjjQ;->f$1:Lcom/gaia/ngallery/model/AlbumFile;

    iput-object p3, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ioHSDZqHxA52qkYq_ahj5aXqjjQ;->f$2:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ioHSDZqHxA52qkYq_ahj5aXqjjQ;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ioHSDZqHxA52qkYq_ahj5aXqjjQ;->f$1:Lcom/gaia/ngallery/model/AlbumFile;

    iget-object v2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ioHSDZqHxA52qkYq_ahj5aXqjjQ;->f$2:Lcom/google/android/gms/drive/Metadata;

    invoke-static {v0, v1, v2, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$ioHSDZqHxA52qkYq_ahj5aXqjjQ(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$ix77G23W4uoduO930cDCa7cqdyM (com.gaia.ngallery.sync.b.-$$Lambda$d$ix77G23W4uoduO930cDCa7cqdyM)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ix77G23W4uoduO930cDCa7cqdyM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/model/AlbumFile;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ix77G23W4uoduO930cDCa7cqdyM;->f$0:Lcom/gaia/ngallery/model/AlbumFile;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$ix77G23W4uoduO930cDCa7cqdyM;->f$0:Lcom/gaia/ngallery/model/AlbumFile;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$ix77G23W4uoduO930cDCa7cqdyM(Lcom/gaia/ngallery/model/AlbumFile;Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$j95Sru1HH5f_dhC2w4ZKh0fRE (com.gaia.ngallery.sync.b.-$$Lambda$d$j95Sru1HH-5f_-dhC2w4ZKh0fRE)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$j95Sru1HH-5f_-dhC2w4ZKh0fRE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$j95Sru1HH-5f_-dhC2w4ZKh0fRE;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$j95Sru1HH-5f_-dhC2w4ZKh0fRE;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$j95Sru1HH-5f_-dhC2w4ZKh0fRE;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$j95Sru1HH-5f_-dhC2w4ZKh0fRE;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/gaia/ngallery/sync/b/d;->lambda$j95Sru1HH-5f_-dhC2w4ZKh0fRE(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$jvLo2zdL22NBifwyom0bs3LZNXc (com.gaia.ngallery.sync.b.-$$Lambda$d$jvLo2zdL22NBifwyom0bs3LZNXc)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$jvLo2zdL22NBifwyom0bs3LZNXc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Ljava/util/Set;

.field private final synthetic f$2:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Ljava/util/Set;Lcom/google/android/gms/drive/Metadata;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$jvLo2zdL22NBifwyom0bs3LZNXc;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$jvLo2zdL22NBifwyom0bs3LZNXc;->f$1:Ljava/util/Set;

    iput-object p3, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$jvLo2zdL22NBifwyom0bs3LZNXc;->f$2:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$jvLo2zdL22NBifwyom0bs3LZNXc;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$jvLo2zdL22NBifwyom0bs3LZNXc;->f$1:Ljava/util/Set;

    iget-object v2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$jvLo2zdL22NBifwyom0bs3LZNXc;->f$2:Lcom/google/android/gms/drive/Metadata;

    check-cast p1, Lcom/google/android/gms/drive/MetadataBuffer;

    invoke-static {v0, v1, v2, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$jvLo2zdL22NBifwyom0bs3LZNXc(Lcom/gaia/ngallery/sync/b/d;Ljava/util/Set;Lcom/google/android/gms/drive/Metadata;Lcom/google/android/gms/drive/MetadataBuffer;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$kG58icVNs99BYmzRiscz1l6dsik (com.gaia.ngallery.sync.b.-$$Lambda$d$kG58icVNs99BYmzRiscz1l6dsik)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$kG58icVNs99BYmzRiscz1l6dsik;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$kG58icVNs99BYmzRiscz1l6dsik;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$kG58icVNs99BYmzRiscz1l6dsik;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$kG58icVNs99BYmzRiscz1l6dsik;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$kG58icVNs99BYmzRiscz1l6dsik;->INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$kG58icVNs99BYmzRiscz1l6dsik;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$kG58icVNs99BYmzRiscz1l6dsik(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$lfxWQ_he9fT8k6pI3JHAIa_7D0 (com.gaia.ngallery.sync.b.-$$Lambda$d$l-fxWQ_he9fT8k6pI3JHAIa_7D0)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$l-fxWQ_he9fT8k6pI3JHAIa_7D0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$l-fxWQ_he9fT8k6pI3JHAIa_7D0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$l-fxWQ_he9fT8k6pI3JHAIa_7D0;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$l-fxWQ_he9fT8k6pI3JHAIa_7D0;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$l-fxWQ_he9fT8k6pI3JHAIa_7D0;->INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$l-fxWQ_he9fT8k6pI3JHAIa_7D0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$l-fxWQ_he9fT8k6pI3JHAIa_7D0(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$lAZbKi51Hc11vMUPwp539FeuWMs (com.gaia.ngallery.sync.b.-$$Lambda$d$lAZbKi51Hc11vMUPwp539FeuWMs)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$lAZbKi51Hc11vMUPwp539FeuWMs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$lAZbKi51Hc11vMUPwp539FeuWMs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$lAZbKi51Hc11vMUPwp539FeuWMs;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$lAZbKi51Hc11vMUPwp539FeuWMs;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$lAZbKi51Hc11vMUPwp539FeuWMs;->INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$lAZbKi51Hc11vMUPwp539FeuWMs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/gaia/ngallery/sync/b/d;->lambda$lAZbKi51Hc11vMUPwp539FeuWMs()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$lLndz69KZoVez_vo3t25OMcYH8 (com.gaia.ngallery.sync.b.-$$Lambda$d$lLn-dz69KZoVez_vo3t25OMcYH8)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$lLn-dz69KZoVez_vo3t25OMcYH8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$lLn-dz69KZoVez_vo3t25OMcYH8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$lLn-dz69KZoVez_vo3t25OMcYH8;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$lLn-dz69KZoVez_vo3t25OMcYH8;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$lLn-dz69KZoVez_vo3t25OMcYH8;->INSTANCE:Lcom/gaia/ngallery/sync/b/-$$Lambda$d$lLn-dz69KZoVez_vo3t25OMcYH8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$lLn-dz69KZoVez_vo3t25OMcYH8(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$myAHQL5j1kZPJbspde_daQUjK0Q (com.gaia.ngallery.sync.b.-$$Lambda$d$myAHQL5j1kZPJbspde_daQUjK0Q)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$myAHQL5j1kZPJbspde_daQUjK0Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/model/AlbumFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$myAHQL5j1kZPJbspde_daQUjK0Q;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$myAHQL5j1kZPJbspde_daQUjK0Q;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$myAHQL5j1kZPJbspde_daQUjK0Q(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$nfAFu1RQXryyArMRiqvH69lH7pE (com.gaia.ngallery.sync.b.-$$Lambda$d$nfAFu1RQXryyArMRiqvH69lH7pE)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$nfAFu1RQXryyArMRiqvH69lH7pE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Lcom/gaia/ngallery/model/AlbumFolder;

.field private final synthetic f$2:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$nfAFu1RQXryyArMRiqvH69lH7pE;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$nfAFu1RQXryyArMRiqvH69lH7pE;->f$1:Lcom/gaia/ngallery/model/AlbumFolder;

    iput-object p3, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$nfAFu1RQXryyArMRiqvH69lH7pE;->f$2:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$nfAFu1RQXryyArMRiqvH69lH7pE;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$nfAFu1RQXryyArMRiqvH69lH7pE;->f$1:Lcom/gaia/ngallery/model/AlbumFolder;

    iget-object v2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$nfAFu1RQXryyArMRiqvH69lH7pE;->f$2:Lcom/google/android/gms/drive/Metadata;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$nfAFu1RQXryyArMRiqvH69lH7pE(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Void;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$oHuYDD7WuPv61jt35DF6NEK9t4o (com.gaia.ngallery.sync.b.-$$Lambda$d$oHuYDD7WuPv61jt35DF6NEK9t4o)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$oHuYDD7WuPv61jt35DF6NEK9t4o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic f$0:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/drive/Metadata;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$oHuYDD7WuPv61jt35DF6NEK9t4o;->f$0:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$oHuYDD7WuPv61jt35DF6NEK9t4o;->f$0:Lcom/google/android/gms/drive/Metadata;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$oHuYDD7WuPv61jt35DF6NEK9t4o(Lcom/google/android/gms/drive/Metadata;Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$p3MjKwSuyZum7VBtuhegyevZps (com.gaia.ngallery.sync.b.-$$Lambda$d$p3MjKwSuyZum7VBtuhe-gyevZps)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$p3MjKwSuyZum7VBtuhe-gyevZps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$p3MjKwSuyZum7VBtuhe-gyevZps;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$p3MjKwSuyZum7VBtuhe-gyevZps;->f$0:Ljava/util/List;

    invoke-static {v0}, Lcom/gaia/ngallery/sync/b/d;->lambda$p3MjKwSuyZum7VBtuhe-gyevZps(Ljava/util/List;)Lcom/google/android/gms/drive/DriveFolder;

    move-result-object v0

    return-object v0
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$q6gLkB8vN6NWC1C46Q56e8UIvzU (com.gaia.ngallery.sync.b.-$$Lambda$d$q6gLkB8vN6NWC1C46Q56e8UIvzU)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$q6gLkB8vN6NWC1C46Q56e8UIvzU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$q6gLkB8vN6NWC1C46Q56e8UIvzU;->f$0:Lcom/gaia/ngallery/sync/b/d;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$q6gLkB8vN6NWC1C46Q56e8UIvzU;->f$0:Lcom/gaia/ngallery/sync/b/d;

    check-cast p1, Lcom/google/android/gms/drive/MetadataBuffer;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$q6gLkB8vN6NWC1C46Q56e8UIvzU(Lcom/gaia/ngallery/sync/b/d;Lcom/google/android/gms/drive/MetadataBuffer;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$q_XTXylk7sMA7fxZNTy7pkcC0Y (com.gaia.ngallery.sync.b.-$$Lambda$d$q_XTXylk7sMA7-fxZNTy7pkcC0Y)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$q_XTXylk7sMA7-fxZNTy7pkcC0Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$q_XTXylk7sMA7-fxZNTy7pkcC0Y;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$q_XTXylk7sMA7-fxZNTy7pkcC0Y;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$q_XTXylk7sMA7-fxZNTy7pkcC0Y;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$q_XTXylk7sMA7-fxZNTy7pkcC0Y;->f$1:Ljava/io/File;

    check-cast p1, Lcom/google/android/gms/drive/DriveContents;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$q_XTXylk7sMA7-fxZNTy7pkcC0Y(Lcom/gaia/ngallery/sync/b/d;Ljava/io/File;Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$qdr9LdLpQa9wXNIQ2OPiG4vh9I (com.gaia.ngallery.sync.b.-$$Lambda$d$qdr9LdLpQa9wX-NIQ2OPiG4vh9I)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$qdr9LdLpQa9wX-NIQ2OPiG4vh9I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Ljava/util/ArrayList;

.field private final synthetic f$2:Lcom/gaia/ngallery/sync/b/b;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Ljava/util/ArrayList;Lcom/gaia/ngallery/sync/b/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$qdr9LdLpQa9wX-NIQ2OPiG4vh9I;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$qdr9LdLpQa9wX-NIQ2OPiG4vh9I;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$qdr9LdLpQa9wX-NIQ2OPiG4vh9I;->f$2:Lcom/gaia/ngallery/sync/b/b;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$qdr9LdLpQa9wX-NIQ2OPiG4vh9I;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$qdr9LdLpQa9wX-NIQ2OPiG4vh9I;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$qdr9LdLpQa9wX-NIQ2OPiG4vh9I;->f$2:Lcom/gaia/ngallery/sync/b/b;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$qdr9LdLpQa9wX-NIQ2OPiG4vh9I(Lcom/gaia/ngallery/sync/b/d;Ljava/util/ArrayList;Lcom/gaia/ngallery/sync/b/b;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$rLf63CnBAbJbiom4cydQuNEelAc (com.gaia.ngallery.sync.b.-$$Lambda$d$rLf63CnBAbJbiom4cydQuNEelAc)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$rLf63CnBAbJbiom4cydQuNEelAc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Lcom/gaia/ngallery/model/AlbumFile;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$rLf63CnBAbJbiom4cydQuNEelAc;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$rLf63CnBAbJbiom4cydQuNEelAc;->f$1:Lcom/gaia/ngallery/model/AlbumFile;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$rLf63CnBAbJbiom4cydQuNEelAc;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$rLf63CnBAbJbiom4cydQuNEelAc;->f$1:Lcom/gaia/ngallery/model/AlbumFile;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$rLf63CnBAbJbiom4cydQuNEelAc(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFile;Ljava/io/File;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$s5AQrC50AIwgPNhFEDGBIIFZqQ (com.gaia.ngallery.sync.b.-$$Lambda$d$s5AQrC-50AIwgPNhFEDGBIIFZqQ)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$s5AQrC-50AIwgPNhFEDGBIIFZqQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/model/AlbumFolder;

.field private final synthetic f$1:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$s5AQrC-50AIwgPNhFEDGBIIFZqQ;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$s5AQrC-50AIwgPNhFEDGBIIFZqQ;->f$1:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$s5AQrC-50AIwgPNhFEDGBIIFZqQ;->f$0:Lcom/gaia/ngallery/model/AlbumFolder;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$s5AQrC-50AIwgPNhFEDGBIIFZqQ;->f$1:Lcom/google/android/gms/drive/Metadata;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$s5AQrC-50AIwgPNhFEDGBIIFZqQ(Lcom/gaia/ngallery/model/AlbumFolder;Lcom/google/android/gms/drive/Metadata;Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$sDqslplL0jUUPreUcagjDtKKk48 (com.gaia.ngallery.sync.b.-$$Lambda$d$sDqslplL0jUUPreUcagjDtKKk48)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$sDqslplL0jUUPreUcagjDtKKk48;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$sDqslplL0jUUPreUcagjDtKKk48;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$sDqslplL0jUUPreUcagjDtKKk48;->f$0:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$sDqslplL0jUUPreUcagjDtKKk48(Landroid/content/Context;Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$vEEq7jCQv4K6hui9MupQPUKVKCM (com.gaia.ngallery.sync.b.-$$Lambda$d$vEEq7jCQv4K6hui9MupQPUKVKCM)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$vEEq7jCQv4K6hui9MupQPUKVKCM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Lcom/gaia/ngallery/model/AlbumFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$vEEq7jCQv4K6hui9MupQPUKVKCM;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$vEEq7jCQv4K6hui9MupQPUKVKCM;->f$1:Lcom/gaia/ngallery/model/AlbumFolder;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$vEEq7jCQv4K6hui9MupQPUKVKCM;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$vEEq7jCQv4K6hui9MupQPUKVKCM;->f$1:Lcom/gaia/ngallery/model/AlbumFolder;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$vEEq7jCQv4K6hui9MupQPUKVKCM(Lcom/gaia/ngallery/sync/b/d;Lcom/gaia/ngallery/model/AlbumFolder;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.b.$$Lambda$d$zdWmsOrrow76HeuVPkaMTxG0Jg (com.gaia.ngallery.sync.b.-$$Lambda$d$zdWmsOrrow76HeuVPka-MTxG0Jg)
.class public final synthetic Lcom/gaia/ngallery/sync/b/-$$Lambda$d$zdWmsOrrow76HeuVPka-MTxG0Jg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/sync/b/d;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/sync/b/d;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$zdWmsOrrow76HeuVPka-MTxG0Jg;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iput-object p2, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$zdWmsOrrow76HeuVPka-MTxG0Jg;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$zdWmsOrrow76HeuVPka-MTxG0Jg;->f$0:Lcom/gaia/ngallery/sync/b/d;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/b/-$$Lambda$d$zdWmsOrrow76HeuVPka-MTxG0Jg;->f$1:Landroid/content/Context;

    check-cast p1, Lcom/google/android/gms/drive/DriveFolder;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/sync/b/d;->lambda$zdWmsOrrow76HeuVPka-MTxG0Jg(Lcom/gaia/ngallery/sync/b/d;Landroid/content/Context;Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
