###### Class com.amazonaws.auth.DecodedStreamBuffer (com.amazonaws.auth.DecodedStreamBuffer)
.class Lcom/amazonaws/auth/DecodedStreamBuffer;
.super Ljava/lang/Object;
.source "DecodedStreamBuffer.java"


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;


# instance fields
.field private b:[B

.field private c:I

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/amazonaws/auth/DecodedStreamBuffer;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/DecodedStreamBuffer;->a:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->e:I

    .line 33
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->b:[B

    .line 34
    iput p1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->c:I

    return-void
.end method


# virtual methods
.method public a(B)V
    .registers 5

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->e:I

    .line 39
    iget v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    iget v1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->c:I

    if-lt v0, v1, :cond_32

    .line 40
    sget-object p1, Lcom/amazonaws/auth/DecodedStreamBuffer;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {p1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 41
    sget-object p1, Lcom/amazonaws/auth/DecodedStreamBuffer;->a:Lcom/amazonaws/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has been exceeded and the input stream will not be repeatable. Freeing buffer memory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    :cond_2e
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->f:Z

    goto :goto_3c

    .line 48
    :cond_32
    iget-object v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->b:[B

    iget v1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    aput-byte p1, v0, v1

    :goto_3c
    return-void
.end method

.method public a([BII)V
    .registers 6

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->e:I

    .line 53
    iget v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->c:I

    if-le v0, v1, :cond_33

    .line 54
    sget-object p1, Lcom/amazonaws/auth/DecodedStreamBuffer;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {p1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 55
    sget-object p1, Lcom/amazonaws/auth/DecodedStreamBuffer;->a:Lcom/amazonaws/logging/Log;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Buffer size "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " has been exceeded and the input stream will not be repeatable. Freeing buffer memory"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    :cond_2f
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->f:Z

    goto :goto_3f

    .line 62
    :cond_33
    iget-object v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->b:[B

    iget v1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget p1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    :goto_3f
    return-void
.end method

.method public a()Z
    .registers 3

    .line 68
    iget v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->e:I

    iget v1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public b()B
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->b:[B

    iget v1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->e:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public c()V
    .registers 4

    .line 76
    iget-boolean v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->f:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->e:I

    return-void

    .line 77
    :cond_8
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The input stream is not repeatable since the buffer size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has been exceeded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
