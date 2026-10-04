###### Class com.bumptech.glide.load.a.j (com.bumptech.glide.load.a.j)
.class public Lcom/bumptech/glide/load/a/j;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/a/j$a;,
        Lcom/bumptech/glide/load/a/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/d<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/bumptech/glide/load/a/j$b;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final b:Ljava/lang/String; = "HttpUrlFetcher"

.field private static final c:I = 0x5

.field private static final d:I = -0x1


# instance fields
.field private final e:Lcom/bumptech/glide/load/b/g;

.field private final f:I

.field private final g:Lcom/bumptech/glide/load/a/j$b;

.field private h:Ljava/net/HttpURLConnection;

.field private i:Ljava/io/InputStream;

.field private volatile j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/a/j$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/a/j$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/a/j;->a:Lcom/bumptech/glide/load/a/j$b;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b/g;I)V
    .registers 4

    .line 44
    sget-object v0, Lcom/bumptech/glide/load/a/j;->a:Lcom/bumptech/glide/load/a/j$b;

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/a/j;-><init>(Lcom/bumptech/glide/load/b/g;ILcom/bumptech/glide/load/a/j$b;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/b/g;ILcom/bumptech/glide/load/a/j$b;)V
    .registers 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/bumptech/glide/load/a/j;->e:Lcom/bumptech/glide/load/b/g;

    .line 50
    iput p2, p0, Lcom/bumptech/glide/load/a/j;->f:I

    .line 51
    iput-object p3, p0, Lcom/bumptech/glide/load/a/j;->g:Lcom/bumptech/glide/load/a/j$b;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 5

    .line 142
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 143
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 144
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/bumptech/glide/h/c;->a(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/a/j;->i:Ljava/io/InputStream;

    goto :goto_43

    :cond_1a
    const-string v0, "HttpUrlFetcher"

    const/4 v1, 0x3

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "HttpUrlFetcher"

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got non empty content encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_3d
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/a/j;->i:Ljava/io/InputStream;

    .line 151
    :goto_43
    iget-object p1, p0, Lcom/bumptech/glide/load/a/j;->i:Ljava/io/InputStream;

    return-object p1
.end method

.method private a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    const/4 v0, 0x5

    if-ge p2, v0, :cond_ce

    if-eqz p3, :cond_1c

    .line 81
    :try_start_5
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_14

    goto :goto_1c

    .line 82
    :cond_14
    new-instance p3, Lcom/bumptech/glide/load/HttpException;

    const-string v0, "In re-direct loop"

    invoke-direct {p3, v0}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1c
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_1c} :catch_1c

    .line 90
    :catch_1c
    :cond_1c
    :goto_1c
    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->g:Lcom/bumptech/glide/load/a/j$b;

    invoke-interface {p3, p1}, Lcom/bumptech/glide/load/a/j$b;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    .line 91
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    iget-object v1, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 94
    :cond_4a
    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    iget v0, p0, Lcom/bumptech/glide/load/a/j;->f:I

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 95
    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    iget v0, p0, Lcom/bumptech/glide/load/a/j;->f:I

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 96
    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 97
    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 101
    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 104
    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->connect()V

    .line 106
    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/load/a/j;->i:Ljava/io/InputStream;

    .line 107
    iget-boolean p3, p0, Lcom/bumptech/glide/load/a/j;->j:Z

    if-eqz p3, :cond_7c

    const/4 p1, 0x0

    return-object p1

    .line 110
    :cond_7c
    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    .line 111
    invoke-static {p3}, Lcom/bumptech/glide/load/a/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 112
    iget-object p1, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/a/j;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 113
    :cond_8f
    invoke-static {p3}, Lcom/bumptech/glide/load/a/j;->b(I)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 114
    iget-object p3, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    const-string v0, "Location"

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 115
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 118
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, p3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/bumptech/glide/load/a/j;->b()V

    add-int/2addr p2, v1

    .line 122
    invoke-direct {p0, v0, p2, p1, p4}, Lcom/bumptech/glide/load/a/j;->a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 116
    :cond_b1
    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    const-string p2, "Received empty or null redirect url"

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b9
    const/4 p1, -0x1

    if-ne p3, p1, :cond_c2

    .line 124
    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    invoke-direct {p1, p3}, Lcom/bumptech/glide/load/HttpException;-><init>(I)V

    throw p1

    .line 126
    :cond_c2
    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    iget-object p2, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 76
    :cond_ce
    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    const-string p2, "Too many (> 5) redirects!"

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(I)Z
    .registers 2

    .line 132
    div-int/lit8 p0, p0, 0x64

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private static b(I)Z
    .registers 2

    .line 137
    div-int/lit8 p0, p0, 0x64

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 179
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V
    .registers 9
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/a/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/a/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-static {}, Lcom/bumptech/glide/h/f;->a()J

    move-result-wide v0

    const/4 p1, 0x2

    .line 59
    :try_start_5
    iget-object v2, p0, Lcom/bumptech/glide/load/a/j;->e:Lcom/bumptech/glide/load/b/g;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/b/g;->a()Ljava/net/URL;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bumptech/glide/load/a/j;->e:Lcom/bumptech/glide/load/b/g;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/b/g;->c()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/bumptech/glide/load/a/j;->a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v2

    .line 60
    invoke-interface {p2, v2}, Lcom/bumptech/glide/load/a/d$a;->a(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_2c
    .catchall {:try_start_5 .. :try_end_1a} :catchall_2a

    const-string p2, "HttpUrlFetcher"

    .line 67
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_62

    const-string p1, "HttpUrlFetcher"

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4f

    :catchall_2a
    move-exception p2

    goto :goto_63

    :catch_2c
    move-exception v2

    :try_start_2d
    const-string v3, "HttpUrlFetcher"

    const/4 v4, 0x3

    .line 62
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string v3, "HttpUrlFetcher"

    const-string v4, "Failed to load data for url"

    .line 63
    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :cond_3d
    invoke-interface {p2, v2}, Lcom/bumptech/glide/load/a/d$a;->a(Ljava/lang/Exception;)V
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_2a

    const-string p2, "HttpUrlFetcher"

    .line 67
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_62

    const-string p1, "HttpUrlFetcher"

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4f
    const-string v2, "Finished http url fetcher fetch in "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/bumptech/glide/h/f;->a(J)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return-void

    :goto_63
    const-string v2, "HttpUrlFetcher"

    .line 67
    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished http url fetcher fetch in "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/bumptech/glide/h/f;->a(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HttpUrlFetcher"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    throw p2
.end method

.method public b()V
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->i:Ljava/io/InputStream;

    if-eqz v0, :cond_b

    .line 158
    :try_start_4
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->i:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    nop

    .line 163
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_14

    .line 164
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14
    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/bumptech/glide/load/a/j;->h:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/bumptech/glide/load/a/j;->j:Z

    return-void
.end method

.method public d()Lcom/bumptech/glide/load/DataSource;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 185
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

###### Class com.bumptech.glide.load.a.j.a (com.bumptech.glide.load.a.j$a)
.class Lcom/bumptech/glide/load/a/j$a;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/a/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 2

    .line 199
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

###### Class com.bumptech.glide.load.a.j.b (com.bumptech.glide.load.a.j$b)
.class interface abstract Lcom/bumptech/glide/load/a/j$b;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.end method
