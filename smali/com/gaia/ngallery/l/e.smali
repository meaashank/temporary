###### Class com.gaia.ngallery.l.e (com.gaia.ngallery.l.e)
.class public final Lcom/gaia/ngallery/l/e;
.super Ljava/lang/Object;
.source "FileIOUtils.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "line.separator"

    .line 31
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/l/e;->a:Ljava/lang/String;

    const/16 v0, 0x2000

    .line 33
    sput v0, Lcom/gaia/ngallery/l/e;->b:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/io/File;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 401
    invoke-static {p0, v0, v1, v2}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 452
    invoke-static {p0, p1, p2, v0}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 468
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->h(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    if-le p1, p2, :cond_b

    return-object v1

    :cond_b
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 474
    :try_start_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 475
    invoke-static {p3}, Lcom/gaia/ngallery/l/e;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 476
    new-instance p3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_27
    const/4 p0, 0x1

    goto :goto_3a

    .line 478
    :cond_29
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_38} :catch_59
    .catchall {:try_start_d .. :try_end_38} :catchall_57

    move-object p3, v4

    goto :goto_27

    .line 482
    :goto_3a
    :try_start_3a
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4d

    if-le p0, p2, :cond_43

    goto :goto_4d

    :cond_43
    if-gt p1, p0, :cond_4a

    if-gt p0, p2, :cond_4a

    .line 484
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_4a} :catch_55
    .catchall {:try_start_3a .. :try_end_4a} :catchall_66

    :cond_4a
    add-int/lit8 p0, p0, 0x1

    goto :goto_3a

    .line 492
    :cond_4d
    :goto_4d
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object p3, p0, v0

    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return-object v3

    :catch_55
    move-exception p0

    goto :goto_5b

    :catchall_57
    move-exception p0

    goto :goto_68

    :catch_59
    move-exception p0

    move-object p3, v1

    .line 489
    :goto_5b
    :try_start_5b
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_66

    .line 492
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object p3, p0, v0

    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return-object v1

    :catchall_66
    move-exception p0

    move-object v1, p3

    :goto_68
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 380
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gaia/ngallery/l/e;->b(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 424
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 440
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)V
    .registers 1

    .line 673
    sput p0, Lcom/gaia/ngallery/l/e;->b:I

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/InputStream;)Z
    .registers 3

    const/4 v0, 0x0

    .line 68
    invoke-static {p0, p1, v0}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/File;Ljava/io/InputStream;Z)Z
    .registers 9

    .line 82
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    if-nez p1, :cond_a

    goto :goto_52

    :cond_a
    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 85
    :try_start_d
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_3a
    .catchall {:try_start_d .. :try_end_17} :catchall_38

    .line 86
    :try_start_17
    sget p0, Lcom/gaia/ngallery/l/e;->b:I

    new-array p0, p0, [B

    .line 88
    :goto_1b
    sget p2, Lcom/gaia/ngallery/l/e;->b:I

    invoke-virtual {p1, p0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_28

    .line 89
    invoke-virtual {v4, p0, v1, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_27} :catch_35
    .catchall {:try_start_17 .. :try_end_27} :catchall_32

    goto :goto_1b

    .line 96
    :cond_28
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object p1, p0, v1

    aput-object v4, p0, v3

    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return v3

    :catchall_32
    move-exception p0

    move-object v0, v4

    goto :goto_48

    :catch_35
    move-exception p0

    move-object v0, v4

    goto :goto_3b

    :catchall_38
    move-exception p0

    goto :goto_48

    :catch_3a
    move-exception p0

    .line 93
    :goto_3b
    :try_start_3b
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_38

    .line 96
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object p1, p0, v1

    aput-object v0, p0, v3

    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return v1

    :goto_48
    new-array p2, v2, [Ljava/io/Closeable;

    aput-object p1, p2, v1

    aput-object v0, p2, v3

    invoke-static {p2}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    throw p0

    :cond_52
    :goto_52
    return v1
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 340
    invoke-static {p0, p1, v0}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Z)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_40

    if-nez p1, :cond_6

    goto :goto_40

    .line 355
    :cond_6
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 358
    :try_start_f
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_2c
    .catchall {:try_start_f .. :try_end_19} :catchall_2a

    .line 359
    :try_start_19
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_27
    .catchall {:try_start_19 .. :try_end_1c} :catchall_24

    .line 365
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v3, p0, v0

    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return v2

    :catchall_24
    move-exception p0

    move-object v1, v3

    goto :goto_38

    :catch_27
    move-exception p0

    move-object v1, v3

    goto :goto_2d

    :catchall_2a
    move-exception p0

    goto :goto_38

    :catch_2c
    move-exception p0

    .line 362
    :goto_2d
    :try_start_2d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2a

    .line 365
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v1, p0, v0

    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return v0

    :goto_38
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    throw p0

    :cond_40
    :goto_40
    return v0
.end method

.method public static a(Ljava/io/File;[B)Z
    .registers 3

    const/4 v0, 0x0

    .line 133
    invoke-static {p0, p1, v0}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;[BZ)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/File;[BZ)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    .line 147
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3d

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 150
    :try_start_c
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_29
    .catchall {:try_start_c .. :try_end_16} :catchall_27

    .line 151
    :try_start_16
    invoke-virtual {v3, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_24
    .catchall {:try_start_16 .. :try_end_19} :catchall_21

    .line 157
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v3, p0, v0

    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return v2

    :catchall_21
    move-exception p0

    move-object v1, v3

    goto :goto_35

    :catch_24
    move-exception p0

    move-object v1, v3

    goto :goto_2a

    :catchall_27
    move-exception p0

    goto :goto_35

    :catch_29
    move-exception p0

    .line 154
    :goto_2a
    :try_start_2a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    .line 157
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v1, p0, v0

    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return v0

    :goto_35
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    throw p0

    :cond_3d
    :goto_3d
    return v0
.end method

.method public static a(Ljava/io/File;[BZZ)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 221
    :try_start_6
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_32
    .catchall {:try_start_6 .. :try_end_f} :catchall_2f

    .line 222
    :try_start_f
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 223
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    if-eqz p3, :cond_22

    .line 224
    invoke-virtual {p0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_22} :catch_2c
    .catchall {:try_start_f .. :try_end_22} :catchall_2a

    .line 230
    :cond_22
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return v2

    :catchall_2a
    move-exception p1

    goto :goto_3e

    :catch_2c
    move-exception p1

    move-object v1, p0

    goto :goto_33

    :catchall_2f
    move-exception p1

    move-object p0, v1

    goto :goto_3e

    :catch_32
    move-exception p1

    .line 227
    :goto_33
    :try_start_33
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_2f

    .line 230
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v1, p0, v0

    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return v0

    :goto_3e
    new-array p2, v2, [Ljava/io/Closeable;

    aput-object p0, p2, v0

    invoke-static {p2}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/io/InputStream;)Z
    .registers 3

    .line 43
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/io/InputStream;Z)Z
    .registers 3

    .line 57
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 315
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 3

    .line 329
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;[B)Z
    .registers 3

    .line 108
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;[BZ)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;[BZ)Z
    .registers 3

    .line 122
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;[BZ)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;[BZZ)Z
    .registers 4

    .line 188
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;[BZZ)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 524
    invoke-static {p0, v0}, Lcom/gaia/ngallery/l/e;->c(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 503
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gaia/ngallery/l/e;->c(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 412
    invoke-static {p0, v0, v1, p1}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 391
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gaia/ngallery/l/e;->b(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/io/File;[BZ)Z
    .registers 4

    const/4 v0, 0x0

    .line 202
    invoke-static {p0, p1, v0, p2}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;[BZZ)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/io/File;[BZZ)Z
    .registers 14

    const/4 v0, 0x0

    if-eqz p1, :cond_4e

    .line 291
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4e

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 294
    :try_start_c
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_3a
    .catchall {:try_start_c .. :try_end_15} :catchall_37

    .line 295
    :try_start_15
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    array-length p2, p1

    int-to-long v8, p2

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2

    .line 296
    invoke-virtual {p2, p1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_2a

    .line 297
    invoke-virtual {p2}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2a} :catch_34
    .catchall {:try_start_15 .. :try_end_2a} :catchall_32

    .line 303
    :cond_2a
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return v2

    :catchall_32
    move-exception p1

    goto :goto_46

    :catch_34
    move-exception p1

    move-object v1, p0

    goto :goto_3b

    :catchall_37
    move-exception p1

    move-object p0, v1

    goto :goto_46

    :catch_3a
    move-exception p1

    .line 300
    :goto_3b
    :try_start_3b
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_37

    .line 303
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v1, p0, v0

    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return v0

    :goto_46
    new-array p2, v2, [Ljava/io/Closeable;

    aput-object p0, p2, v0

    invoke-static {p2}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    throw p1

    :cond_4e
    :goto_4e
    return v0
.end method

.method public static b(Ljava/lang/String;[BZ)Z
    .registers 4

    .line 172
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/gaia/ngallery/l/e;->a(Ljava/io/File;[BZZ)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;[BZZ)Z
    .registers 4

    .line 261
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/gaia/ngallery/l/e;->b(Ljava/io/File;[BZZ)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 535
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->h(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 538
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    invoke-static {p1}, Lcom/gaia/ngallery/l/e;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 540
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_35

    .line 542
    :cond_25
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_34} :catch_5d
    .catchall {:try_start_a .. :try_end_34} :catchall_5b

    move-object p1, v4

    .line 547
    :goto_35
    :try_start_35
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4d

    .line 548
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :goto_3e
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4d

    .line 550
    sget-object v4, Lcom/gaia/ngallery/l/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 553
    :cond_4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_51} :catch_59
    .catchall {:try_start_35 .. :try_end_51} :catchall_6a

    .line 558
    new-array v1, v2, [Ljava/io/Closeable;

    aput-object p1, v1, v0

    invoke-static {v1}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return-object p0

    :catch_59
    move-exception p0

    goto :goto_5f

    :catchall_5b
    move-exception p0

    goto :goto_6c

    :catch_5d
    move-exception p0

    move-object p1, v1

    .line 555
    :goto_5f
    :try_start_5f
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_6a

    .line 558
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return-object v1

    :catchall_6a
    move-exception p0

    move-object v1, p1

    :goto_6c
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    throw p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 514
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gaia/ngallery/l/e;->c(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/io/File;[BZ)Z
    .registers 4

    const/4 v0, 0x0

    .line 275
    invoke-static {p0, p1, v0, p2}, Lcom/gaia/ngallery/l/e;->b(Ljava/io/File;[BZZ)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;[BZ)Z
    .registers 4

    const/4 v0, 0x0

    .line 245
    invoke-static {p0, p1, v0, p2}, Lcom/gaia/ngallery/l/e;->b(Ljava/lang/String;[BZZ)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/io/File;)[B
    .registers 10

    .line 579
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->h(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const/4 v0, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 583
    :try_start_b
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_43
    .catchall {:try_start_b .. :try_end_10} :catchall_3e

    .line 584
    :try_start_10
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_3b
    .catchall {:try_start_10 .. :try_end_15} :catchall_36

    .line 585
    :try_start_15
    sget v5, Lcom/gaia/ngallery/l/e;->b:I

    new-array v5, v5, [B

    .line 587
    :goto_19
    sget v6, Lcom/gaia/ngallery/l/e;->b:I

    invoke-virtual {v4, v5, v3, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_26

    .line 588
    invoke-virtual {p0, v5, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_19

    .line 590
    :cond_26
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2a} :catch_34
    .catchall {:try_start_15 .. :try_end_2a} :catchall_53

    .line 595
    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v4, v1, v3

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return-object v5

    :catch_34
    move-exception v5

    goto :goto_46

    :catchall_36
    move-exception p0

    move-object v8, v1

    move-object v1, p0

    move-object p0, v8

    goto :goto_54

    :catch_3b
    move-exception v5

    move-object p0, v1

    goto :goto_46

    :catchall_3e
    move-exception p0

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_54

    :catch_43
    move-exception v5

    move-object p0, v1

    move-object v4, p0

    .line 592
    :goto_46
    :try_start_46
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_53

    .line 595
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v4, v2, v3

    aput-object p0, v2, v0

    invoke-static {v2}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return-object v1

    :catchall_53
    move-exception v1

    :goto_54
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v4, v2, v3

    aput-object p0, v2, v0

    invoke-static {v2}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    throw v1
.end method

.method public static c(Ljava/lang/String;)[B
    .registers 1

    .line 569
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->c(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/io/File;)[B
    .registers 7

    .line 616
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->h(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 619
    :try_start_a
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_15} :catch_37
    .catchall {:try_start_a .. :try_end_15} :catchall_32

    .line 620
    :try_start_15
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 622
    :cond_1e
    invoke-virtual {p0, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    if-gtz v4, :cond_1e

    .line 624
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_28} :catch_30
    .catchall {:try_start_15 .. :try_end_28} :catchall_44

    .line 629
    new-array v1, v2, [Ljava/io/Closeable;

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return-object v3

    :catch_30
    move-exception v3

    goto :goto_39

    :catchall_32
    move-exception p0

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_45

    :catch_37
    move-exception v3

    move-object p0, v1

    .line 626
    :goto_39
    :try_start_39
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 629
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p0, v2, v0

    invoke-static {v2}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return-object v1

    :catchall_44
    move-exception v1

    :goto_45
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p0, v2, v0

    invoke-static {v2}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    throw v1
.end method

.method public static d(Ljava/lang/String;)[B
    .registers 1

    .line 606
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->d(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/io/File;)[B
    .registers 13

    .line 650
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->h(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 653
    :try_start_a
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_15} :catch_3c
    .catchall {:try_start_a .. :try_end_15} :catchall_37

    .line 654
    :try_start_15
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    long-to-int v3, v3

    .line 655
    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v7, 0x0

    int-to-long v9, v3

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    move-result-object v4

    .line 656
    new-array v5, v3, [B

    .line 657
    invoke-virtual {v4, v5, v2, v3}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2d} :catch_35
    .catchall {:try_start_15 .. :try_end_2d} :catchall_49

    .line 663
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return-object v5

    :catch_35
    move-exception v3

    goto :goto_3e

    :catchall_37
    move-exception p0

    move-object v11, v1

    move-object v1, p0

    move-object p0, v11

    goto :goto_4a

    :catch_3c
    move-exception v3

    move-object p0, v1

    .line 660
    :goto_3e
    :try_start_3e
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_49

    .line 663
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    return-object v1

    :catchall_49
    move-exception v1

    :goto_4a
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    throw v1
.end method

.method public static e(Ljava/lang/String;)[B
    .registers 1

    .line 640
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->e(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method private static f(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 677
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_e
    return-object p0
.end method

.method private static f(Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 686
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0

    .line 687
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/gaia/ngallery/l/e;->g(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v0

    .line 689
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    move-exception p0

    .line 691
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method private static g(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_17

    .line 697
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_15

    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_17

    :goto_15
    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method private static g(Ljava/lang/String;)Z
    .registers 1

    .line 681
    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/e;->f(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static h(Ljava/io/File;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 701
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static h(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 706
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_1a

    .line 707
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_17

    return v2

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1a
    return v0
.end method
