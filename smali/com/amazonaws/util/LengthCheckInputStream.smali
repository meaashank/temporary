###### Class com.amazonaws.util.LengthCheckInputStream (com.amazonaws.util.LengthCheckInputStream)
.class public Lcom/amazonaws/util/LengthCheckInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "LengthCheckInputStream.java"


# static fields
.field public static final a:Z = true

.field public static final b:Z = false


# instance fields
.field private final c:J

.field private final d:Z

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JZ)V
    .registers 7

    .line 67
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_e

    .line 70
    iput-wide p2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->c:J

    .line 71
    iput-boolean p4, p0, Lcom/amazonaws/util/LengthCheckInputStream;->d:Z

    return-void

    .line 69
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private a(Z)V
    .registers 6

    if-eqz p1, :cond_33

    .line 129
    iget-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->e:J

    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->c:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_b

    goto :goto_3b

    .line 130
    :cond_b
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data read ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazonaws/util/LengthCheckInputStream;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") has a different length than the expected ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazonaws/util/LengthCheckInputStream;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_33
    iget-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->e:J

    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->c:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_3c

    :goto_3b
    return-void

    .line 135
    :cond_3c
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "More data read ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazonaws/util/LengthCheckInputStream;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") than expected ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazonaws/util/LengthCheckInputStream;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public mark(I)V
    .registers 4

    .line 107
    invoke-super {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;->mark(I)V

    .line 108
    iget-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->e:J

    iput-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->f:J

    return-void
.end method

.method public read()I
    .registers 6

    .line 83
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_d

    .line 85
    iget-wide v1, p0, Lcom/amazonaws/util/LengthCheckInputStream;->e:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazonaws/util/LengthCheckInputStream;->e:J

    :cond_d
    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 86
    :goto_13
    invoke-direct {p0, v1}, Lcom/amazonaws/util/LengthCheckInputStream;->a(Z)V

    return v0
.end method

.method public read([BII)I
    .registers 7

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result p1

    .line 100
    iget-wide p2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->e:J

    if-ltz p1, :cond_a

    int-to-long v0, p1

    goto :goto_c

    :cond_a
    const-wide/16 v0, 0x0

    :goto_c
    const/4 v2, 0x0

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->e:J

    const/4 p2, -0x1

    if-ne p1, p2, :cond_15

    const/4 p2, 0x1

    goto :goto_16

    :cond_15
    const/4 p2, 0x0

    .line 101
    :goto_16
    invoke-direct {p0, p2}, Lcom/amazonaws/util/LengthCheckInputStream;->a(Z)V

    return p1
.end method

.method public reset()V
    .registers 3

    .line 113
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V

    .line 114
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 115
    iget-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->f:J

    iput-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->e:J

    :cond_d
    return-void
.end method

.method public skip(J)J
    .registers 6

    .line 148
    invoke-super {p0, p1, p2}, Lcom/amazonaws/internal/SdkFilterInputStream;->skip(J)J

    move-result-wide p1

    .line 149
    iget-boolean v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->d:Z

    if-eqz v0, :cond_17

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_17

    .line 150
    iget-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->e:J

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, v0}, Lcom/amazonaws/util/LengthCheckInputStream;->a(Z)V

    :cond_17
    return-wide p1
.end method
