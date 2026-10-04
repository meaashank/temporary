###### Class com.gaia.ngallery.b.b (com.gaia.ngallery.b.b)
.class public Lcom/gaia/ngallery/b/b;
.super Ljava/lang/Object;
.source "GalleryCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/b/b$a;,
        Lcom/gaia/ngallery/b/b$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/gaia/ngallery/b/b;


# instance fields
.field private b:Lcom/gaia/ngallery/b/c$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/b/c$b<",
            "Lcom/gaia/ngallery/b/a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/gaia/ngallery/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/gaia/ngallery/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/b/c<",
            "Lcom/gaia/ngallery/b/a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/gaia/ngallery/b/b;

    invoke-direct {v0}, Lcom/gaia/ngallery/b/b;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/b/b;->a:Lcom/gaia/ngallery/b/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/gaia/ngallery/b/-$$Lambda$b$zLur3X5mnGKUzWMDzYcWU4zE0x8;->INSTANCE:Lcom/gaia/ngallery/b/-$$Lambda$b$zLur3X5mnGKUzWMDzYcWU4zE0x8;

    iput-object v0, p0, Lcom/gaia/ngallery/b/b;->b:Lcom/gaia/ngallery/b/c$b;

    .line 33
    sget-object v0, Lcom/gaia/ngallery/b/-$$Lambda$b$4MB-3P1i9SUyewvuYFmo5ZW13PI;->INSTANCE:Lcom/gaia/ngallery/b/-$$Lambda$b$4MB-3P1i9SUyewvuYFmo5ZW13PI;

    iput-object v0, p0, Lcom/gaia/ngallery/b/b;->c:Ljava/util/Comparator;

    .line 44
    new-instance v0, Lcom/gaia/ngallery/b/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/gaia/ngallery/b/b;->b:Lcom/gaia/ngallery/b/c$b;

    iget-object v3, p0, Lcom/gaia/ngallery/b/b;->c:Ljava/util/Comparator;

    const-class v4, Lcom/gaia/ngallery/b/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gaia/ngallery/b/c;-><init>(Ljava/util/List;Lcom/gaia/ngallery/b/c$b;Ljava/util/Comparator;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/gaia/ngallery/b/b;->d:Lcom/gaia/ngallery/b/c;

    return-void
.end method

.method private static synthetic a(Lcom/gaia/ngallery/b/a;Lcom/gaia/ngallery/b/a;)I
    .registers 4

    .line 34
    invoke-virtual {p0}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p0

    .line 35
    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p1

    .line 36
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p0}, Lcom/gaia/ngallery/e;->a(Lcom/gaia/ngallery/model/AlbumFolder;)Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/e;->b(Lcom/gaia/ngallery/model/AlbumFolder;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_3d

    .line 39
    :cond_19
    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/e;->a(Lcom/gaia/ngallery/model/AlbumFolder;)Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/e;->b(Lcom/gaia/ngallery/model/AlbumFolder;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_3b

    .line 42
    :cond_26
    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3b
    :goto_3b
    const/4 p0, 0x1

    return p0

    :cond_3d
    :goto_3d
    const/4 p0, -0x1

    return p0
.end method

.method private a(Lcom/gaia/ngallery/b/a;Ljava/lang/String;)Lcom/gaia/ngallery/b/a;
    .registers 9

    .line 116
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v1, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-direct {v1}, Lcom/gaia/ngallery/model/AlbumFolder;-><init>()V

    .line 118
    invoke-virtual {v1, p2}, Lcom/gaia/ngallery/model/AlbumFolder;->setId(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/gaia/ngallery/model/AlbumFolder;->setName(Ljava/lang/String;)V

    .line 120
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 121
    :goto_1a
    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->f()I

    move-result v2

    if-ge v0, v2, :cond_54

    .line 122
    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/b/a;->a(I)Lcom/gaia/ngallery/model/AlbumFile;

    move-result-object v2

    .line 123
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lcom/gaia/ngallery/model/AlbumFolder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/gaia/ngallery/model/AlbumFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v4, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-direct {v4}, Lcom/gaia/ngallery/model/AlbumFile;-><init>()V

    .line 125
    invoke-virtual {v2}, Lcom/gaia/ngallery/model/AlbumFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/gaia/ngallery/model/AlbumFile;->setName(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v4, v3}, Lcom/gaia/ngallery/model/AlbumFile;->setPath(Ljava/io/File;)V

    .line 127
    invoke-virtual {v2}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/gaia/ngallery/model/AlbumFile;->setMediaType(I)V

    .line 128
    invoke-virtual {v2}, Lcom/gaia/ngallery/model/AlbumFile;->isEncript()Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/gaia/ngallery/model/AlbumFile;->setEncript(Z)V

    .line 129
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 131
    :cond_54
    invoke-virtual {v1, p2}, Lcom/gaia/ngallery/model/AlbumFolder;->addAlbumFiles(Ljava/util/ArrayList;)V

    .line 132
    new-instance p1, Lcom/gaia/ngallery/b/a;

    invoke-direct {p1, v1, p2}, Lcom/gaia/ngallery/b/a;-><init>(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/util/List;)V

    return-object p1
.end method

.method public static a()Lcom/gaia/ngallery/b/b;
    .registers 1

    .line 26
    sget-object v0, Lcom/gaia/ngallery/b/b;->a:Lcom/gaia/ngallery/b/b;

    return-object v0
.end method

.method static synthetic a(Lcom/gaia/ngallery/b/b;)Lcom/gaia/ngallery/b/c$b;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/gaia/ngallery/b/b;->b:Lcom/gaia/ngallery/b/c$b;

    return-object p0
.end method

.method static synthetic a(Lcom/gaia/ngallery/b/b;Lcom/gaia/ngallery/b/c;)Lcom/gaia/ngallery/b/c;
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/gaia/ngallery/b/b;->d:Lcom/gaia/ngallery/b/c;

    return-object p1
.end method

.method private static synthetic b(Lcom/gaia/ngallery/b/a;)Ljava/lang/String;
    .registers 1

    .line 32
    invoke-virtual {p0}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFolder;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/gaia/ngallery/b/b;)Ljava/util/Comparator;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/gaia/ngallery/b/b;->c:Ljava/util/Comparator;

    return-object p0
.end method

.method public static synthetic lambda$4MB-3P1i9SUyewvuYFmo5ZW13PI(Lcom/gaia/ngallery/b/a;Lcom/gaia/ngallery/b/a;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/b/b;->a(Lcom/gaia/ngallery/b/a;Lcom/gaia/ngallery/b/a;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$zLur3X5mnGKUzWMDzYcWU4zE0x8(Lcom/gaia/ngallery/b/a;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/b/b;->b(Lcom/gaia/ngallery/b/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/gaia/ngallery/model/AlbumFile;)Lcom/gaia/ngallery/b/a;
    .registers 3

    .line 195
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/b/b;->b(Ljava/lang/String;)Lcom/gaia/ngallery/b/a;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .registers 3

    .line 84
    monitor-enter p0

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/gaia/ngallery/b/b;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/b/c;->b(I)V

    .line 86
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public a(ILjava/lang/String;)V
    .registers 4

    .line 96
    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/gaia/ngallery/b/b;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/b/a;

    .line 99
    invoke-direct {p0, v0, p2}, Lcom/gaia/ngallery/b/b;->a(Lcom/gaia/ngallery/b/a;Ljava/lang/String;)Lcom/gaia/ngallery/b/a;

    move-result-object p2

    .line 100
    iget-object v0, p0, Lcom/gaia/ngallery/b/b;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/b/c;->b(I)V

    .line 101
    iget-object p1, p0, Lcom/gaia/ngallery/b/b;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {p1, p2}, Lcom/gaia/ngallery/b/c;->b(Ljava/lang/Object;)V

    .line 102
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public a(Landroid/content/Context;Lcom/gaia/ngallery/b/b$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/gaia/ngallery/b/b$b<",
            "Lcom/gaia/ngallery/b/b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, p2, v0}, Lcom/gaia/ngallery/b/b;->a(Landroid/content/Context;Lcom/gaia/ngallery/b/b$b;Lcom/gaia/ngallery/b/b$a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/gaia/ngallery/b/b$b;Lcom/gaia/ngallery/b/b$a;)V
    .registers 6
    .param p2    # Lcom/gaia/ngallery/b/b$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/gaia/ngallery/b/b$b<",
            "Lcom/gaia/ngallery/b/b;",
            ">;",
            "Lcom/gaia/ngallery/b/b$a;",
            ")V"
        }
    .end annotation

    .line 139
    new-instance v0, Lcom/gaia/ngallery/k/g;

    new-instance v1, Lcom/gaia/ngallery/b/b$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/gaia/ngallery/b/b$1;-><init>(Lcom/gaia/ngallery/b/b;Lcom/gaia/ngallery/b/b$b;Lcom/gaia/ngallery/b/b$a;)V

    invoke-direct {v0, p1, v1}, Lcom/gaia/ngallery/k/g;-><init>(Landroid/content/Context;Lcom/gaia/ngallery/k/g$a;)V

    .line 156
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gaia/ngallery/e;->b()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, p2, v1

    const-string p3, "2"

    const/4 v1, 0x1

    aput-object p3, p2, v1

    .line 156
    invoke-virtual {v0, p1, p2}, Lcom/gaia/ngallery/k/g;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/gaia/ngallery/b/b$b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/gaia/ngallery/b/b$b<",
            "Lcom/gaia/ngallery/b/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/gaia/ngallery/b/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/gaia/ngallery/b/b$b;Lcom/gaia/ngallery/b/b$a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/gaia/ngallery/b/b$b;Lcom/gaia/ngallery/b/b$a;)V
    .registers 7
    .param p3    # Lcom/gaia/ngallery/b/b$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/gaia/ngallery/b/b$b<",
            "Lcom/gaia/ngallery/b/a;",
            ">;",
            "Lcom/gaia/ngallery/b/b$a;",
            ")V"
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/gaia/ngallery/k/g;

    new-instance v1, Lcom/gaia/ngallery/b/b$2;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/gaia/ngallery/b/b$2;-><init>(Lcom/gaia/ngallery/b/b;Ljava/lang/String;Lcom/gaia/ngallery/b/b$b;Lcom/gaia/ngallery/b/b$a;)V

    invoke-direct {v0, p1, v1}, Lcom/gaia/ngallery/k/g;-><init>(Landroid/content/Context;Lcom/gaia/ngallery/k/g$a;)V

    .line 183
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    aput-object p2, p3, p4

    const-string p2, "1"

    const/4 p4, 0x1

    aput-object p2, p3, p4

    invoke-virtual {v0, p1, p3}, Lcom/gaia/ngallery/k/g;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Lcom/gaia/ngallery/b/a;)V
    .registers 3

    .line 78
    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/gaia/ngallery/b/b;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/b/c;->b(Ljava/lang/Object;)V

    .line 80
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public a(Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 4

    .line 70
    monitor-enter p0

    .line 72
    :try_start_1
    new-instance v0, Lcom/gaia/ngallery/b/a;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getAlbumFiles()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/gaia/ngallery/b/a;-><init>(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/util/List;)V

    .line 73
    iget-object p1, p0, Lcom/gaia/ngallery/b/b;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/b/c;->b(Ljava/lang/Object;)V

    .line 74
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 89
    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/gaia/ngallery/b/b;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/b/a;

    .line 91
    iget-object v0, p0, Lcom/gaia/ngallery/b/b;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/b/c;->c(Ljava/lang/Object;)V

    .line 92
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 105
    monitor-enter p0

    .line 107
    :try_start_1
    iget-object v0, p0, Lcom/gaia/ngallery/b/b;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/b/a;

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/b/b;->a(Lcom/gaia/ngallery/b/a;Ljava/lang/String;)Lcom/gaia/ngallery/b/a;

    move-result-object p2

    .line 109
    iget-object v0, p0, Lcom/gaia/ngallery/b/b;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/b/c;->c(Ljava/lang/Object;)V

    .line 110
    iget-object p1, p0, Lcom/gaia/ngallery/b/b;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {p1, p2}, Lcom/gaia/ngallery/b/c;->b(Ljava/lang/Object;)V

    .line 111
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/gaia/ngallery/b/a;
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/gaia/ngallery/b/b;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/b/a;

    return-object p1
.end method

.method public b(I)Lcom/gaia/ngallery/model/AlbumFolder;
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/gaia/ngallery/b/b;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/b/c;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/b/a;

    invoke-virtual {p1}, Lcom/gaia/ngallery/b/a;->e()Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/b/a;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/gaia/ngallery/b/b;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0}, Lcom/gaia/ngallery/b/c;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/gaia/ngallery/b/b;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0}, Lcom/gaia/ngallery/b/c;->b()I

    move-result v0

    return v0
.end method

###### Class com.gaia.ngallery.b.b.AnonymousClass1 (com.gaia.ngallery.b.b$1)
.class Lcom/gaia/ngallery/b/b$1;
.super Ljava/lang/Object;
.source "GalleryCache.java"

# interfaces
.implements Lcom/gaia/ngallery/k/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/b/b;->a(Landroid/content/Context;Lcom/gaia/ngallery/b/b$b;Lcom/gaia/ngallery/b/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/b/b$b;

.field final synthetic b:Lcom/gaia/ngallery/b/b$a;

.field final synthetic c:Lcom/gaia/ngallery/b/b;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/b/b;Lcom/gaia/ngallery/b/b$b;Lcom/gaia/ngallery/b/b$a;)V
    .registers 4

    .line 139
    iput-object p1, p0, Lcom/gaia/ngallery/b/b$1;->c:Lcom/gaia/ngallery/b/b;

    iput-object p2, p0, Lcom/gaia/ngallery/b/b$1;->a:Lcom/gaia/ngallery/b/b$b;

    iput-object p3, p0, Lcom/gaia/ngallery/b/b$1;->b:Lcom/gaia/ngallery/b/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/gaia/ngallery/b/b$1;->b:Lcom/gaia/ngallery/b/b$a;

    if-eqz v0, :cond_10

    .line 153
    iget-object v0, p0, Lcom/gaia/ngallery/b/b$1;->b:Lcom/gaia/ngallery/b/b$a;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "UNKNOWN ASYNC TASK ERROR"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/gaia/ngallery/b/b$a;->onLoadFailed(Ljava/lang/Throwable;)V

    :cond_10
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;)V"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaia/ngallery/model/AlbumFolder;

    .line 144
    new-instance v2, Lcom/gaia/ngallery/b/a;

    invoke-virtual {v1}, Lcom/gaia/ngallery/model/AlbumFolder;->getAlbumFiles()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/gaia/ngallery/b/a;-><init>(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 145
    :cond_22
    iget-object p1, p0, Lcom/gaia/ngallery/b/b$1;->c:Lcom/gaia/ngallery/b/b;

    new-instance v1, Lcom/gaia/ngallery/b/c;

    iget-object v2, p0, Lcom/gaia/ngallery/b/b$1;->c:Lcom/gaia/ngallery/b/b;

    invoke-static {v2}, Lcom/gaia/ngallery/b/b;->a(Lcom/gaia/ngallery/b/b;)Lcom/gaia/ngallery/b/c$b;

    move-result-object v2

    iget-object v3, p0, Lcom/gaia/ngallery/b/b$1;->c:Lcom/gaia/ngallery/b/b;

    invoke-static {v3}, Lcom/gaia/ngallery/b/b;->b(Lcom/gaia/ngallery/b/b;)Ljava/util/Comparator;

    move-result-object v3

    const-class v4, Lcom/gaia/ngallery/b/a;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/gaia/ngallery/b/c;-><init>(Ljava/util/List;Lcom/gaia/ngallery/b/c$b;Ljava/util/Comparator;Ljava/lang/Class;)V

    invoke-static {p1, v1}, Lcom/gaia/ngallery/b/b;->a(Lcom/gaia/ngallery/b/b;Lcom/gaia/ngallery/b/c;)Lcom/gaia/ngallery/b/c;

    .line 146
    iget-object p1, p0, Lcom/gaia/ngallery/b/b$1;->a:Lcom/gaia/ngallery/b/b$b;

    if-eqz p1, :cond_45

    .line 147
    iget-object p1, p0, Lcom/gaia/ngallery/b/b$1;->a:Lcom/gaia/ngallery/b/b$b;

    iget-object v0, p0, Lcom/gaia/ngallery/b/b$1;->c:Lcom/gaia/ngallery/b/b;

    invoke-interface {p1, v0}, Lcom/gaia/ngallery/b/b$b;->onLoadSuccess(Ljava/lang/Object;)V

    :cond_45
    return-void
.end method

###### Class com.gaia.ngallery.b.b.AnonymousClass2 (com.gaia.ngallery.b.b$2)
.class Lcom/gaia/ngallery/b/b$2;
.super Ljava/lang/Object;
.source "GalleryCache.java"

# interfaces
.implements Lcom/gaia/ngallery/k/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/b/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/gaia/ngallery/b/b$b;Lcom/gaia/ngallery/b/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/gaia/ngallery/b/b$b;

.field final synthetic c:Lcom/gaia/ngallery/b/b$a;

.field final synthetic d:Lcom/gaia/ngallery/b/b;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/b/b;Ljava/lang/String;Lcom/gaia/ngallery/b/b$b;Lcom/gaia/ngallery/b/b$a;)V
    .registers 5

    .line 162
    iput-object p1, p0, Lcom/gaia/ngallery/b/b$2;->d:Lcom/gaia/ngallery/b/b;

    iput-object p2, p0, Lcom/gaia/ngallery/b/b$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gaia/ngallery/b/b$2;->b:Lcom/gaia/ngallery/b/b$b;

    iput-object p4, p0, Lcom/gaia/ngallery/b/b$2;->c:Lcom/gaia/ngallery/b/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 179
    iget-object v0, p0, Lcom/gaia/ngallery/b/b$2;->c:Lcom/gaia/ngallery/b/b$a;

    if-eqz v0, :cond_10

    .line 180
    iget-object v0, p0, Lcom/gaia/ngallery/b/b$2;->c:Lcom/gaia/ngallery/b/b$a;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LOAD ALBUM FAILED DUE TO AsyncTask.onFailure"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/gaia/ngallery/b/b$a;->onLoadFailed(Ljava/lang/Throwable;)V

    :cond_10
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2a

    .line 166
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2a

    const/4 v0, 0x0

    .line 167
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFolder;

    .line 168
    new-instance v0, Lcom/gaia/ngallery/b/a;

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getAlbumFiles()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/gaia/ngallery/b/a;-><init>(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/util/List;)V

    .line 169
    iget-object p1, p0, Lcom/gaia/ngallery/b/b$2;->d:Lcom/gaia/ngallery/b/b;

    iget-object v1, p0, Lcom/gaia/ngallery/b/b$2;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/gaia/ngallery/b/b;->a(Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/gaia/ngallery/b/b$2;->d:Lcom/gaia/ngallery/b/b;

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/b/b;->a(Lcom/gaia/ngallery/b/a;)V

    .line 171
    iget-object p1, p0, Lcom/gaia/ngallery/b/b$2;->b:Lcom/gaia/ngallery/b/b$b;

    invoke-interface {p1, v0}, Lcom/gaia/ngallery/b/b$b;->onLoadSuccess(Ljava/lang/Object;)V

    goto :goto_4b

    .line 172
    :cond_2a
    iget-object p1, p0, Lcom/gaia/ngallery/b/b$2;->c:Lcom/gaia/ngallery/b/b$a;

    if-eqz p1, :cond_4b

    .line 173
    iget-object p1, p0, Lcom/gaia/ngallery/b/b$2;->c:Lcom/gaia/ngallery/b/b$a;

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NO folder loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gaia/ngallery/b/b$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/gaia/ngallery/b/b$a;->onLoadFailed(Ljava/lang/Throwable;)V

    :cond_4b
    :goto_4b
    return-void
.end method

###### Class com.gaia.ngallery.b.b.a (com.gaia.ngallery.b.b$a)
.class public interface abstract Lcom/gaia/ngallery/b/b$a;
.super Ljava/lang/Object;
.source "GalleryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract onLoadFailed(Ljava/lang/Throwable;)V
.end method

###### Class com.gaia.ngallery.b.b.InterfaceC0050b (com.gaia.ngallery.b.b$b)
.class public interface abstract Lcom/gaia/ngallery/b/b$b;
.super Ljava/lang/Object;
.source "GalleryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onLoadSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

###### Class com.gaia.ngallery.b.$$Lambda$b$4MB3P1i9SUyewvuYFmo5ZW13PI (com.gaia.ngallery.b.-$$Lambda$b$4MB-3P1i9SUyewvuYFmo5ZW13PI)
.class public final synthetic Lcom/gaia/ngallery/b/-$$Lambda$b$4MB-3P1i9SUyewvuYFmo5ZW13PI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/b/-$$Lambda$b$4MB-3P1i9SUyewvuYFmo5ZW13PI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/b/-$$Lambda$b$4MB-3P1i9SUyewvuYFmo5ZW13PI;

    invoke-direct {v0}, Lcom/gaia/ngallery/b/-$$Lambda$b$4MB-3P1i9SUyewvuYFmo5ZW13PI;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/b/-$$Lambda$b$4MB-3P1i9SUyewvuYFmo5ZW13PI;->INSTANCE:Lcom/gaia/ngallery/b/-$$Lambda$b$4MB-3P1i9SUyewvuYFmo5ZW13PI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/gaia/ngallery/b/a;

    check-cast p2, Lcom/gaia/ngallery/b/a;

    invoke-static {p1, p2}, Lcom/gaia/ngallery/b/b;->lambda$4MB-3P1i9SUyewvuYFmo5ZW13PI(Lcom/gaia/ngallery/b/a;Lcom/gaia/ngallery/b/a;)I

    move-result p1

    return p1
.end method

###### Class com.gaia.ngallery.b.$$Lambda$b$zLur3X5mnGKUzWMDzYcWU4zE0x8 (com.gaia.ngallery.b.-$$Lambda$b$zLur3X5mnGKUzWMDzYcWU4zE0x8)
.class public final synthetic Lcom/gaia/ngallery/b/-$$Lambda$b$zLur3X5mnGKUzWMDzYcWU4zE0x8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/gaia/ngallery/b/c$b;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/b/-$$Lambda$b$zLur3X5mnGKUzWMDzYcWU4zE0x8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/b/-$$Lambda$b$zLur3X5mnGKUzWMDzYcWU4zE0x8;

    invoke-direct {v0}, Lcom/gaia/ngallery/b/-$$Lambda$b$zLur3X5mnGKUzWMDzYcWU4zE0x8;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/b/-$$Lambda$b$zLur3X5mnGKUzWMDzYcWU4zE0x8;->INSTANCE:Lcom/gaia/ngallery/b/-$$Lambda$b$zLur3X5mnGKUzWMDzYcWU4zE0x8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/gaia/ngallery/b/a;

    invoke-static {p1}, Lcom/gaia/ngallery/b/b;->lambda$zLur3X5mnGKUzWMDzYcWU4zE0x8(Lcom/gaia/ngallery/b/a;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
