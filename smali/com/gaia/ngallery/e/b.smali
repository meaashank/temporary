###### Class com.gaia.ngallery.e.b (com.gaia.ngallery.e.b)
.class public Lcom/gaia/ngallery/e/b;
.super Ljava/io/InputStream;
.source "EncryptInputStream.java"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Ljava/nio/ByteBuffer;

.field private c:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .line 23
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/gaia/ngallery/e/b;->c:J

    const/16 v0, 0x20

    .line 24
    invoke-static {v0}, Lcom/gaia/ngallery/g/g;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/e/b;->b:Ljava/nio/ByteBuffer;

    .line 25
    iput-object p1, p0, Lcom/gaia/ngallery/e/b;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/gaia/ngallery/e/b;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .registers 8

    .line 31
    iget-wide v0, p0, Lcom/gaia/ngallery/e/b;->c:J

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x20

    cmp-long v6, v0, v4

    if-gez v6, :cond_1b

    .line 32
    iget-wide v0, p0, Lcom/gaia/ngallery/e/b;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gaia/ngallery/e/b;->c:J

    .line 33
    iget-object v0, p0, Lcom/gaia/ngallery/e/b;->b:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/gaia/ngallery/e/b;->c:J

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0

    .line 35
    :cond_1b
    iget-object v0, p0, Lcom/gaia/ngallery/e/b;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_29

    .line 37
    iget-wide v4, p0, Lcom/gaia/ngallery/e/b;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/gaia/ngallery/e/b;->c:J

    :cond_29
    return v0
.end method

.method public read([BII)I
    .registers 11
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    iget-wide v0, p0, Lcom/gaia/ngallery/e/b;->c:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x20

    cmp-long v5, v0, v3

    if-gez v5, :cond_25

    const/4 v0, 0x0

    :goto_a
    if-ge v2, p3, :cond_26

    .line 48
    iget-wide v3, p0, Lcom/gaia/ngallery/e/b;->c:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    long-to-int v1, v3

    const/16 v3, 0x20

    if-lt v1, v3, :cond_16

    goto :goto_26

    :cond_16
    add-int/lit8 v0, v0, 0x1

    add-int v3, p2, v2

    .line 53
    iget-object v4, p0, Lcom/gaia/ngallery/e/b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    aput-byte v1, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_25
    const/4 v0, 0x0

    :cond_26
    :goto_26
    if-ge v0, p3, :cond_31

    .line 58
    iget-object v1, p0, Lcom/gaia/ngallery/e/b;->a:Ljava/io/InputStream;

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    add-int/2addr v0, p1

    .line 61
    :cond_31
    iget-wide p1, p0, Lcom/gaia/ngallery/e/b;->c:J

    int-to-long v1, v0

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/gaia/ngallery/e/b;->c:J

    return v0
.end method

.method public skip(J)J
    .registers 10

    .line 67
    iget-wide v0, p0, Lcom/gaia/ngallery/e/b;->c:J

    add-long/2addr v0, p1

    const-wide/16 v2, 0x20

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gtz v6, :cond_12

    .line 69
    iget-wide v0, p0, Lcom/gaia/ngallery/e/b;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/gaia/ngallery/e/b;->c:J

    return-wide p1

    .line 72
    :cond_12
    iget-wide v4, p0, Lcom/gaia/ngallery/e/b;->c:J

    cmp-long v6, v4, v2

    if-ltz v6, :cond_24

    .line 73
    iget-object v0, p0, Lcom/gaia/ngallery/e/b;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 74
    iget-wide v0, p0, Lcom/gaia/ngallery/e/b;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/gaia/ngallery/e/b;->c:J

    return-wide p1

    .line 77
    :cond_24
    iget-object p1, p0, Lcom/gaia/ngallery/e/b;->a:Ljava/io/InputStream;

    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 78
    iget-wide v0, p0, Lcom/gaia/ngallery/e/b;->c:J

    add-long/2addr p1, v2

    .line 79
    iput-wide p1, p0, Lcom/gaia/ngallery/e/b;->c:J

    .line 80
    iget-wide p1, p0, Lcom/gaia/ngallery/e/b;->c:J

    sub-long/2addr p1, v0

    return-wide p1
.end method
