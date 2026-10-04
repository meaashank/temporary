###### Class com.gaia.ngallery.c.b.a.a (com.gaia.ngallery.c.b.a.a)
.class public Lcom/gaia/ngallery/c/b/a/a;
.super Ljava/lang/Object;
.source "GaiaDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# static fields
.field private static final a:Ljava/lang/String; = "GaiaDataSource"

.field private static final b:Ljava/lang/String; = "asset"

.field private static final c:Ljava/lang/String; = "content"

.field private static final d:Ljava/lang/String; = "rtmp"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private h:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private i:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private j:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private k:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private l:Lcom/google/android/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ")V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/b/a/a;->e:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/gaia/ngallery/c/b/a/a;->f:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 100
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object p1, p0, Lcom/gaia/ngallery/c/b/a/a;->g:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Ljava/lang/String;IIZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    .line 81
    new-instance v8, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p3

    move-object v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    invoke-direct {p0, p1, p2, v8}, Lcom/gaia/ngallery/c/b/a/a;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Ljava/lang/String;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    .line 61
    invoke-direct/range {v0 .. v6}, Lcom/gaia/ngallery/c/b/a/a;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private a()Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->h:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_d

    .line 152
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    iget-object v1, p0, Lcom/gaia/ngallery/c/b/a/a;->f:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->h:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 154
    :cond_d
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->h:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private b()Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_f

    .line 159
    new-instance v0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;

    iget-object v1, p0, Lcom/gaia/ngallery/c/b/a/a;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/gaia/ngallery/c/b/a/a;->f:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 161
    :cond_f
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->i:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private c()Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_f

    .line 166
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;

    iget-object v1, p0, Lcom/gaia/ngallery/c/b/a/a;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/gaia/ngallery/c/b/a/a;->f:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 168
    :cond_f
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->j:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private d()Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 4

    .line 172
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->k:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_4f

    :try_start_4
    const-string v0, "com.google.android.exoplayer2.ext.rtmp.RtmpDataSource"

    .line 174
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 175
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->k:Lcom/google/android/exoplayer2/upstream/DataSource;
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_1b} :catch_40
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_1b} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_1b} :catch_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_1b} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_47

    :catch_1c
    move-exception v0

    const-string v1, "GaiaDataSource"

    const-string v2, "Error instantiating RtmpDataSource"

    .line 185
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    :catch_25
    move-exception v0

    const-string v1, "GaiaDataSource"

    const-string v2, "Error instantiating RtmpDataSource"

    .line 183
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    :catch_2e
    move-exception v0

    const-string v1, "GaiaDataSource"

    const-string v2, "Error instantiating RtmpDataSource"

    .line 181
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    :catch_37
    move-exception v0

    const-string v1, "GaiaDataSource"

    const-string v2, "Error instantiating RtmpDataSource"

    .line 179
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    :catch_40
    const-string v0, "GaiaDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_47
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->k:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_4f

    .line 188
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->g:Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->k:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 191
    :cond_4f
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->k:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 143
    :try_start_5
    iget-object v1, p0, Lcom/gaia/ngallery/c/b/a/a;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_d

    .line 145
    iput-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_11

    :catchall_d
    move-exception v1

    iput-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    throw v1

    :cond_11
    :goto_11
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 105
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 107
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gaia/ngallery/g/g;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 108
    new-instance v0, Lcom/gaia/ngallery/c/b/a/c;

    invoke-direct {p0}, Lcom/gaia/ngallery/c/b/a/a;->a()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/gaia/ngallery/c/b/a/c;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;I)V

    iput-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_7f

    .line 110
    :cond_32
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 111
    invoke-direct {p0}, Lcom/gaia/ngallery/c/b/a/a;->b()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_7f

    .line 113
    :cond_47
    invoke-direct {p0}, Lcom/gaia/ngallery/c/b/a/a;->a()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_7f

    :cond_4e
    const-string v1, "asset"

    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 117
    invoke-direct {p0}, Lcom/gaia/ngallery/c/b/a/a;->b()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_7f

    :cond_5d
    const-string v1, "content"

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 119
    invoke-direct {p0}, Lcom/gaia/ngallery/c/b/a/a;->c()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_7f

    :cond_6c
    const-string v1, "rtmp"

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 121
    invoke-direct {p0}, Lcom/gaia/ngallery/c/b/a/a;->d()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_7f

    .line 123
    :cond_7b
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->g:Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 126
    :goto_7f
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([BII)I
    .registers 5

    .line 131
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/a;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result p1

    return p1
.end method
