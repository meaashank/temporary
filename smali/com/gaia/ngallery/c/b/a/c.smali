###### Class com.gaia.ngallery.c.b.a.c (com.gaia.ngallery.c.b.a.c)
.class final Lcom/gaia/ngallery/c/b/a/c;
.super Ljava/lang/Object;
.source "GaiaSkipHeaderDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final b:[B

.field private final c:[B

.field private final d:I

.field private e:Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;I)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/gaia/ngallery/c/b/a/c;->a:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 59
    iput p2, p0, Lcom/gaia/ngallery/c/b/a/c;->d:I

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/gaia/ngallery/c/b/a/c;->b:[B

    .line 62
    iput-object p1, p0, Lcom/gaia/ngallery/c/b/a/c;->c:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/gaia/ngallery/c/b/a/c;->a:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 52
    iput-object p2, p0, Lcom/gaia/ngallery/c/b/a/c;->b:[B

    .line 53
    iput-object p3, p0, Lcom/gaia/ngallery/c/b/a/c;->c:[B

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/gaia/ngallery/c/b/a/c;->d:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/gaia/ngallery/c/b/a/c;->e:Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    .line 99
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/c;->a:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/c;->a:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 4

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    iget-object v1, p0, Lcom/gaia/ngallery/c/b/a/c;->a:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    iput-object v0, p0, Lcom/gaia/ngallery/c/b/a/c;->e:Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    .line 92
    iget-object p1, p0, Lcom/gaia/ngallery/c/b/a/c;->e:Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    iget v0, p0, Lcom/gaia/ngallery/c/b/a/c;->d:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->skip(J)J

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public read([BII)I
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/c;->e:Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 105
    iget-object v0, p0, Lcom/gaia/ngallery/c/b/a/c;->e:Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_14

    const/4 p1, -0x1

    return p1

    :cond_14
    return p1
.end method
