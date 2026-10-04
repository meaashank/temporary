###### Class com.bumptech.glide.h.a (com.bumptech.glide.h.a)
.class public final Lcom/bumptech/glide/h/a;
.super Ljava/lang/Object;
.source "ByteBufferUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/h/a$a;,
        Lcom/bumptech/glide/h/a$b;
    }
.end annotation


# static fields
.field private static final a:I = 0x4000

.field private static final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/bumptech/glide/h/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 10
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 33
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v1, 0x7fffffff

    cmp-long v3, v5, v1

    if-gtz v3, :cond_42

    const-wide/16 v1, 0x0

    cmp-long v3, v5, v1

    if-eqz v3, :cond_3a

    .line 43
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v7, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_4a

    .line 44
    :try_start_19
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_38

    .line 45
    :try_start_1d
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_33

    if-eqz p0, :cond_2f

    .line 49
    :try_start_2c
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_2f

    .line 56
    :catch_2f
    :cond_2f
    :try_start_2f
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_32

    :catch_32
    return-object v0

    :catchall_33
    move-exception v0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_4c

    :catchall_38
    move-exception p0

    goto :goto_4c

    .line 40
    :cond_3a
    :try_start_3a
    new-instance p0, Ljava/io/IOException;

    const-string v1, "File unsuitable for memory mapping"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_42
    new-instance p0, Ljava/io/IOException;

    const-string v1, "File too large to map into memory"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p0

    move-object v7, v0

    :goto_4c
    if-eqz v0, :cond_53

    .line 49
    :try_start_4e
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_53

    :catch_52
    nop

    :cond_53
    :goto_53
    if-eqz v7, :cond_58

    .line 56
    :try_start_55
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_58

    .line 59
    :catch_58
    :cond_58
    throw p0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .registers 5
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 138
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 140
    sget-object v2, Lcom/bumptech/glide/h/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_14

    .line 142
    new-array v2, v1, [B

    .line 146
    :cond_14
    :goto_14
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, 0x0

    if-ltz v1, :cond_1f

    .line 147
    invoke-virtual {v0, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_14

    .line 150
    :cond_1f
    sget-object p0, Lcom/bumptech/glide/h/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 155
    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static a(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    .registers 6
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    .line 69
    :try_start_5
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_2a

    .line 70
    :try_start_c
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_27

    .line 71
    :try_start_10
    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 72
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 73
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    .line 74
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_25

    if-eqz p1, :cond_21

    .line 78
    :try_start_1e
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_21

    .line 85
    :catch_21
    :cond_21
    :try_start_21
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_24

    :catch_24
    return-void

    :catchall_25
    move-exception p0

    goto :goto_2d

    :catchall_27
    move-exception p0

    move-object p1, v1

    goto :goto_2d

    :catchall_2a
    move-exception p0

    move-object p1, v1

    move-object v2, p1

    :goto_2d
    if-eqz p1, :cond_34

    .line 78
    :try_start_2f
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    nop

    :cond_34
    :goto_34
    if-eqz v2, :cond_39

    .line 85
    :try_start_36
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_39

    .line 88
    :catch_39
    :cond_39
    throw p0
.end method

.method public static a(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .registers 5
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 95
    invoke-static {p0}, Lcom/bumptech/glide/h/a;->c(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/h/a$b;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 97
    iget-object p0, v0, Lcom/bumptech/glide/h/a$b;->c:[B

    iget v1, v0, Lcom/bumptech/glide/h/a$b;->a:I

    iget v2, v0, Lcom/bumptech/glide/h/a$b;->a:I

    iget v0, v0, Lcom/bumptech/glide/h/a$b;->b:I

    add-int/2addr v2, v0

    invoke-virtual {p1, p0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3e

    .line 99
    :cond_13
    sget-object v0, Lcom/bumptech/glide/h/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_22

    const/16 v0, 0x4000

    .line 101
    new-array v0, v0, [B

    .line 104
    :cond_22
    :goto_22
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_39

    .line 105
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    .line 106
    invoke-virtual {p0, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_22

    .line 110
    :cond_39
    sget-object p0, Lcom/bumptech/glide/h/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_3e
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)[B
    .registers 3
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 119
    invoke-static {p0}, Lcom/bumptech/glide/h/a;->c(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/h/a$b;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 120
    iget v1, v0, Lcom/bumptech/glide/h/a$b;->a:I

    if-nez v1, :cond_16

    iget v1, v0, Lcom/bumptech/glide/h/a$b;->b:I

    iget-object v0, v0, Lcom/bumptech/glide/h/a$b;->c:[B

    array-length v0, v0

    if-ne v1, v0, :cond_16

    .line 121
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    goto :goto_28

    .line 123
    :cond_16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object p0, v0

    :goto_28
    return-object p0
.end method

.method public static b(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;
    .registers 2
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 133
    new-instance v0, Lcom/bumptech/glide/h/a$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/h/a$a;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method private static c(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/h/a$b;
    .registers 4
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 160
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 161
    new-instance v0, Lcom/bumptech/glide/h/a$b;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/bumptech/glide/h/a$b;-><init>([BII)V

    return-object v0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

###### Class com.bumptech.glide.h.a.C0031a (com.bumptech.glide.h.a$a)
.class Lcom/bumptech/glide/h/a$a;
.super Ljava/io/InputStream;
.source "ByteBufferUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:I = -0x1


# instance fields
.field private final b:Ljava/nio/ByteBuffer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private c:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 185
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, -0x1

    .line 183
    iput v0, p0, Lcom/bumptech/glide/h/a$a;->c:I

    .line 186
    iput-object p1, p0, Lcom/bumptech/glide/h/a$a;->b:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/bumptech/glide/h/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public declared-synchronized mark(I)V
    .registers 2

    monitor-enter p0

    .line 204
    :try_start_1
    iget-object p1, p0, Lcom/bumptech/glide/h/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/h/a$a;->c:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 205
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    .line 203
    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/bumptech/glide/h/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, -0x1

    return v0

    .line 199
    :cond_a
    iget-object v0, p0, Lcom/bumptech/glide/h/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 214
    iget-object v0, p0, Lcom/bumptech/glide/h/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, -0x1

    return p1

    .line 217
    :cond_a
    invoke-virtual {p0}, Lcom/bumptech/glide/h/a$a;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 218
    iget-object v0, p0, Lcom/bumptech/glide/h/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3
.end method

.method public declared-synchronized reset()V
    .registers 3

    monitor-enter p0

    .line 224
    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/h/a$a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 228
    iget-object v0, p0, Lcom/bumptech/glide/h/a$a;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/bumptech/glide/h/a$a;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_17

    .line 229
    monitor-exit p0

    return-void

    .line 225
    :cond_f
    :try_start_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reset to unset mark position"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    .line 223
    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 6

    .line 233
    iget-object v0, p0, Lcom/bumptech/glide/h/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_b

    const-wide/16 p1, -0x1

    return-wide p1

    .line 237
    :cond_b
    invoke-virtual {p0}, Lcom/bumptech/glide/h/a$a;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 238
    iget-object v0, p0, Lcom/bumptech/glide/h/a$a;->b:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/bumptech/glide/h/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-wide p1
.end method

###### Class com.bumptech.glide.h.a.b (com.bumptech.glide.h.a$b)
.class final Lcom/bumptech/glide/h/a$b;
.super Ljava/lang/Object;
.source "ByteBufferUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:[B


# direct methods
.method constructor <init>([BII)V
    .registers 4
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/bumptech/glide/h/a$b;->c:[B

    .line 175
    iput p2, p0, Lcom/bumptech/glide/h/a$b;->a:I

    .line 176
    iput p3, p0, Lcom/bumptech/glide/h/a$b;->b:I

    return-void
.end method
