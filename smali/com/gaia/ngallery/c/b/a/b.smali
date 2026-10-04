###### Class com.gaia.ngallery.c.b.a.b (com.gaia.ngallery.c.b.a.b)
.class public Lcom/gaia/ngallery/c/b/a/b;
.super Ljava/lang/Object;
.source "GaiaDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/c/b/a/b;->a:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/gaia/ngallery/c/b/a/b;->b:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 48
    iput-object p3, p0, Lcom/gaia/ngallery/c/b/a/b;->c:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/gaia/ngallery/c/b/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;)V"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v0, p2, p3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    invoke-direct {p0, p1, p3, v0}, Lcom/gaia/ngallery/c/b/a/b;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/gaia/ngallery/c/b/a/a;
    .registers 5

    .line 53
    new-instance v0, Lcom/gaia/ngallery/c/b/a/a;

    iget-object v1, p0, Lcom/gaia/ngallery/c/b/a/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/gaia/ngallery/c/b/a/b;->b:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v3, p0, Lcom/gaia/ngallery/c/b/a/b;->c:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/gaia/ngallery/c/b/a/a;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-object v0
.end method

.method public synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lcom/gaia/ngallery/c/b/a/b;->a()Lcom/gaia/ngallery/c/b/a/a;

    move-result-object v0

    return-object v0
.end method
