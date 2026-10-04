###### Class com.gaia.ngallery.e.a (com.gaia.ngallery.e.a)
.class public Lcom/gaia/ngallery/e/a;
.super Ljava/io/InputStream;
.source "DecryptInputStream.java"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/gaia/ngallery/e/a;->b:Z

    .line 22
    iput-object p1, p0, Lcom/gaia/ngallery/e/a;->a:Ljava/io/InputStream;

    return-void
.end method

.method private a()V
    .registers 4

    .line 27
    iget-boolean v0, p0, Lcom/gaia/ngallery/e/a;->b:Z

    if-nez v0, :cond_e

    .line 28
    iget-object v0, p0, Lcom/gaia/ngallery/e/a;->a:Ljava/io/InputStream;

    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/gaia/ngallery/e/a;->b:Z

    :cond_e
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/gaia/ngallery/e/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/gaia/ngallery/e/a;->a()V

    .line 42
    iget-object v0, p0, Lcom/gaia/ngallery/e/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Lcom/gaia/ngallery/e/a;->a()V

    .line 36
    iget-object v0, p0, Lcom/gaia/ngallery/e/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public skip(J)J
    .registers 4

    .line 47
    invoke-direct {p0}, Lcom/gaia/ngallery/e/a;->a()V

    .line 48
    iget-object v0, p0, Lcom/gaia/ngallery/e/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
