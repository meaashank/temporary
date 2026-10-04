###### Class com.amazonaws.util.CountingInputStream (com.amazonaws.util.CountingInputStream)
.class public Lcom/amazonaws/util/CountingInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "CountingInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .line 37
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/amazonaws/util/CountingInputStream;->a:J

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 46
    iget-wide v0, p0, Lcom/amazonaws/util/CountingInputStream;->a:J

    return-wide v0
.end method

.method public read()I
    .registers 7

    .line 51
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    .line 52
    iget-wide v1, p0, Lcom/amazonaws/util/CountingInputStream;->a:J

    if-ltz v0, :cond_b

    const-wide/16 v3, 0x1

    goto :goto_d

    :cond_b
    const-wide/16 v3, 0x0

    :goto_d
    const/4 v5, 0x0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazonaws/util/CountingInputStream;->a:J

    return v0
.end method

.method public read([BII)I
    .registers 7

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result p1

    .line 59
    iget-wide p2, p0, Lcom/amazonaws/util/CountingInputStream;->a:J

    if-ltz p1, :cond_a

    int-to-long v0, p1

    goto :goto_c

    :cond_a
    const-wide/16 v0, 0x0

    :goto_c
    const/4 v2, 0x0

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/amazonaws/util/CountingInputStream;->a:J

    return p1
.end method
