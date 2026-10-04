###### Class com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream (com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream)
.class public Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "RecyclableBufferedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;
    }
.end annotation


# instance fields
.field private volatile a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private final f:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V
    .registers 4
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/high16 v0, 0x10000

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;I)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;I)V
    .registers 4
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->d:I

    .line 76
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 77
    const-class p1, [B

    invoke-interface {p2, p3, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B

    return-void
.end method

.method private a(Ljava/io/InputStream;[B)I
    .registers 7

    .line 142
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6b

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->d:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->c:I

    if-lt v0, v3, :cond_10

    goto :goto_6b

    .line 161
    :cond_10
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->d:I

    if-nez v0, :cond_3e

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->c:I

    array-length v1, p2

    if-le v0, v1, :cond_3e

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    array-length v1, p2

    if-ne v0, v1, :cond_3e

    .line 163
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    .line 164
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->c:I

    if-le v0, v1, :cond_27

    .line 165
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->c:I

    .line 167
    :cond_27
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    const-class v3, [B

    invoke-interface {v1, v0, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 168
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B

    .line 173
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    invoke-interface {v1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->a(Ljava/lang/Object;)V

    move-object p2, v0

    goto :goto_4b

    .line 174
    :cond_3e
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->d:I

    if-lez v0, :cond_4b

    .line 175
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->d:I

    array-length v1, p2

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->d:I

    sub-int/2addr v1, v3

    invoke-static {p2, v0, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    :cond_4b
    :goto_4b
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    .line 179
    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->d:I

    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    .line 180
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    array-length v1, p2

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-gtz p1, :cond_65

    .line 181
    iget p2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    goto :goto_68

    :cond_65
    iget p2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    add-int/2addr p2, p1

    :goto_68
    iput p2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    return p1

    .line 144
    :cond_6b
    :goto_6b
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_77

    .line 146
    iput v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->d:I

    .line 147
    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    .line 148
    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    :cond_77
    return p1
.end method

.method private static c()Ljava/io/IOException;
    .registers 2

    .line 99
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B

    array-length v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->c:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 113
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    .line 111
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized available()I
    .registers 4

    monitor-enter p0

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 92
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    .line 95
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1a

    add-int/2addr v1, v0

    monitor-exit p0

    return v1

    .line 93
    :cond_15
    :try_start_15
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->c()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    .line 90
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 3

    monitor-enter p0

    .line 116
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B

    if-eqz v0, :cond_f

    .line 117
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 120
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    .line 115
    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 131
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B

    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->a(Ljava/lang/Object;)V

    .line 132
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B

    .line 134
    :cond_e
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 135
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_17

    .line 137
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_17
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    monitor-enter p0

    .line 200
    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->c:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->c:I

    .line 201
    iget p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->d:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 202
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    .line 199
    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .registers 6

    monitor-enter p0

    .line 230
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B

    .line 231
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_3b

    if-eqz v1, :cond_3b

    .line 237
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    const/4 v4, -0x1

    if-lt v2, v3, :cond_18

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a(Ljava/io/InputStream;[B)I

    move-result v1
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_40

    if-ne v1, v4, :cond_18

    .line 239
    monitor-exit p0

    return v4

    .line 242
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B

    if-eq v0, v1, :cond_26

    .line 243
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B

    if-eqz v0, :cond_21

    goto :goto_26

    .line 245
    :cond_21
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->c()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 250
    :cond_26
    :goto_26
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_39

    .line 251
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    aget-byte v0, v0, v1
    :try_end_35
    .catchall {:try_start_18 .. :try_end_35} :catchall_40

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 253
    :cond_39
    monitor-exit p0

    return v4

    .line 233
    :cond_3b
    :try_start_3b
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->c()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    .line 229
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 9
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 276
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_9e

    if-eqz v0, :cond_99

    if-nez p3, :cond_a

    const/4 p1, 0x0

    .line 282
    monitor-exit p0

    return p1

    .line 284
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_94

    .line 290
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    if-ge v2, v3, :cond_3b

    .line 292
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    sub-int/2addr v2, v3

    if-lt v2, p3, :cond_1d

    move v2, p3

    goto :goto_22

    :cond_1d
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    sub-int/2addr v2, v3

    .line 293
    :goto_22
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    invoke-static {v0, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    if-eq v2, p3, :cond_39

    .line 295
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_9e

    if-nez v3, :cond_35

    goto :goto_39

    :cond_35
    add-int/2addr p2, v2

    sub-int v2, p3, v2

    goto :goto_3c

    .line 296
    :cond_39
    :goto_39
    monitor-exit p0

    return v2

    :cond_3b
    move v2, p3

    .line 308
    :goto_3c
    :try_start_3c
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_51

    array-length v3, v0

    if-lt v2, v3, :cond_51

    .line 309
    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_9e

    if-ne v3, v4, :cond_84

    if-ne v2, p3, :cond_4d

    goto :goto_4f

    :cond_4d
    sub-int v4, p3, v2

    .line 311
    :goto_4f
    monitor-exit p0

    return v4

    .line 314
    :cond_51
    :try_start_51
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a(Ljava/io/InputStream;[B)I

    move-result v3
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_9e

    if-ne v3, v4, :cond_5e

    if-ne v2, p3, :cond_5a

    goto :goto_5c

    :cond_5a
    sub-int v4, p3, v2

    .line 315
    :goto_5c
    monitor-exit p0

    return v4

    .line 318
    :cond_5e
    :try_start_5e
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B

    if-eq v0, v3, :cond_6c

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B

    if-eqz v0, :cond_67

    goto :goto_6c

    .line 321
    :cond_67
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->c()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 325
    :cond_6c
    :goto_6c
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    sub-int/2addr v3, v4

    if-lt v3, v2, :cond_75

    move v3, v2

    goto :goto_7a

    :cond_75
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    sub-int/2addr v3, v4

    .line 326
    :goto_7a
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    invoke-static {v0, v4, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I
    :try_end_84
    .catchall {:try_start_5e .. :try_end_84} :catchall_9e

    :cond_84
    sub-int/2addr v2, v3

    if-nez v2, :cond_89

    .line 331
    monitor-exit p0

    return p3

    .line 333
    :cond_89
    :try_start_89
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4
    :try_end_8d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_9e

    if-nez v4, :cond_92

    sub-int/2addr p3, v2

    .line 334
    monitor-exit p0

    return p3

    :cond_92
    add-int/2addr p2, v3

    goto :goto_3c

    .line 286
    :cond_94
    :try_start_94
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->c()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 278
    :cond_99
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->c()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_9e
    .catchall {:try_start_94 .. :try_end_9e} :catchall_9e

    :catchall_9e
    move-exception p1

    .line 275
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 4

    monitor-enter p0

    .line 350
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B

    if-eqz v0, :cond_33

    const/4 v0, -0x1

    .line 353
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->d:I

    if-eq v0, v1, :cond_10

    .line 357
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->d:I

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_3b

    .line 358
    monitor-exit p0

    return-void

    .line 354
    :cond_10
    :try_start_10
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mark has been invalidated, pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " markLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_33
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v0

    .line 349
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .registers 11

    monitor-enter p0

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-gez v2, :cond_b

    const-wide/16 p1, 0x0

    .line 372
    monitor-exit p0

    return-wide p1

    .line 375
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a:[B

    if-eqz v0, :cond_78

    .line 379
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_73

    .line 384
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v4, v2, p1

    if-ltz v4, :cond_26

    .line 385
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_7d

    .line 386
    monitor-exit p0

    return-wide p1

    .line 389
    :cond_26
    :try_start_26
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    int-to-long v2, v2

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 390
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    .line 392
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->d:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_69

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->c:I

    int-to-long v6, v4

    cmp-long v4, p1, v6

    if-gtz v4, :cond_69

    .line 393
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a(Ljava/io/InputStream;[B)I

    move-result v0
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_7d

    if-ne v0, v5, :cond_45

    .line 394
    monitor-exit p0

    return-wide v2

    .line 396
    :cond_45
    :try_start_45
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long v4, p1, v2

    cmp-long v6, v0, v4

    if-ltz v6, :cond_5b

    .line 398
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I
    :try_end_59
    .catchall {:try_start_45 .. :try_end_59} :catchall_7d

    .line 399
    monitor-exit p0

    return-wide p1

    .line 402
    :cond_5b
    :try_start_5b
    iget p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    int-to-long p1, p1

    add-long/2addr v2, p1

    iget p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I

    int-to-long p1, p1

    sub-long/2addr v2, p1

    .line 403
    iget p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->b:I

    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e:I
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_7d

    .line 404
    monitor-exit p0

    return-wide v2

    :cond_69
    const/4 v0, 0x0

    sub-long/2addr p1, v2

    .line 406
    :try_start_6b
    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_7d

    const/4 v0, 0x0

    add-long/2addr v2, p1

    monitor-exit p0

    return-wide v2

    .line 381
    :cond_73
    :try_start_73
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->c()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 377
    :cond_78
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->c()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_7d
    .catchall {:try_start_73 .. :try_end_7d} :catchall_7d

    :catchall_7d
    move-exception p1

    .line 370
    monitor-exit p0

    throw p1
.end method

###### Class com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream.InvalidMarkException (com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream$InvalidMarkException)
.class Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;
.super Ljava/io/IOException;
.source "RecyclableBufferedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InvalidMarkException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3c350493c899b79dL


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 417
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
