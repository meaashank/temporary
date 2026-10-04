###### Class com.amazonaws.auth.ChunkContentIterator (com.amazonaws.auth.ChunkContentIterator)
.class Lcom/amazonaws/auth/ChunkContentIterator;
.super Ljava/lang/Object;
.source "ChunkContentIterator.java"


# instance fields
.field private final a:[B

.field private b:I


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazonaws/auth/ChunkContentIterator;->a:[B

    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 6

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 34
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/auth/ChunkContentIterator;->a()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, -0x1

    return p1

    .line 36
    :cond_c
    iget-object v0, p0, Lcom/amazonaws/auth/ChunkContentIterator;->a:[B

    array-length v0, v0

    iget v1, p0, Lcom/amazonaws/auth/ChunkContentIterator;->b:I

    sub-int/2addr v0, v1

    .line 37
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 38
    iget-object v0, p0, Lcom/amazonaws/auth/ChunkContentIterator;->a:[B

    iget v1, p0, Lcom/amazonaws/auth/ChunkContentIterator;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget p1, p0, Lcom/amazonaws/auth/ChunkContentIterator;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazonaws/auth/ChunkContentIterator;->b:I

    return p3
.end method

.method public a()Z
    .registers 3

    .line 28
    iget v0, p0, Lcom/amazonaws/auth/ChunkContentIterator;->b:I

    iget-object v1, p0, Lcom/amazonaws/auth/ChunkContentIterator;->a:[B

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
