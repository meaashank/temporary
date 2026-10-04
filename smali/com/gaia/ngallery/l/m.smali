###### Class com.gaia.ngallery.l.m (com.gaia.ngallery.l.m)
.class public final Lcom/gaia/ngallery/l/m;
.super Ljava/lang/Object;
.source "ThumbnailBuilder.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x1

    .line 199
    invoke-static {p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 202
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 204
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 205
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1c
    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 193
    invoke-static {p1}, Lcom/gaia/ngallery/g/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 194
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 146
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 147
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 148
    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    return-object v1

    .line 152
    :cond_13
    :try_start_13
    invoke-static {p0, p1}, Lcom/gaia/ngallery/l/m;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_50
    .catchall {:try_start_13 .. :try_end_17} :catchall_42

    .line 153
    :try_start_17
    invoke-static {p2}, Lcom/gaia/ngallery/l/f;->f(Ljava/io/File;)Z

    move-result p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1b} :catch_40
    .catchall {:try_start_17 .. :try_end_1b} :catchall_3e

    if-nez p1, :cond_29

    if-eqz p0, :cond_28

    .line 160
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_28

    .line 161
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_28
    return-object v1

    .line 156
    :cond_29
    :try_start_29
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p2, p1}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_40
    .catchall {:try_start_29 .. :try_end_2e} :catchall_3e

    if-eqz p0, :cond_39

    .line 160
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_39

    .line 161
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    :cond_39
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_3e
    move-exception p1

    goto :goto_44

    :catch_40
    nop

    goto :goto_51

    :catchall_42
    move-exception p1

    move-object p0, v1

    :goto_44
    if-eqz p0, :cond_4f

    .line 160
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_4f

    .line 161
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4f
    throw p1

    :catch_50
    move-object p0, v1

    :goto_51
    if-eqz p0, :cond_5c

    .line 160
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_5c

    .line 161
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5c
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 172
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 173
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 174
    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    return-object v1

    .line 179
    :cond_13
    :try_start_13
    invoke-static {p0, p1}, Lcom/gaia/ngallery/l/m;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_3a
    .catchall {:try_start_13 .. :try_end_17} :catchall_2c

    .line 180
    :try_start_17
    invoke-static {p0, p2, p3}, Lcom/gaia/ngallery/l/m;->a(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/nio/ByteBuffer;)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_3b
    .catchall {:try_start_17 .. :try_end_1a} :catchall_2a

    if-eqz p0, :cond_25

    .line 184
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_25

    .line 185
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 187
    :cond_25
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_2a
    move-exception p1

    goto :goto_2e

    :catchall_2c
    move-exception p1

    move-object p0, v1

    :goto_2e
    if-eqz p0, :cond_39

    .line 184
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_39

    .line 185
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_39
    throw p1

    :catch_3a
    move-object p0, v1

    :catch_3b
    if-eqz p0, :cond_46

    .line 184
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_46

    .line 185
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_46
    return-object v1
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 8

    .line 102
    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_73

    .line 103
    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->f(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_73

    .line 106
    :cond_e
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x64

    .line 108
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 110
    :goto_1a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    const v4, 0x32000

    if-le v3, v4, :cond_32

    if-gtz v2, :cond_27

    goto :goto_32

    .line 114
    :cond_27
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v2, v2, -0xa

    .line 116
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_1a

    :cond_32
    :goto_32
    const/4 p0, 0x1

    .line 119
    new-array v2, p0, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    .line 123
    :try_start_3b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_40} :catch_5b
    .catchall {:try_start_3b .. :try_end_40} :catchall_58

    .line 124
    :try_start_40
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 125
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4e} :catch_55
    .catchall {:try_start_40 .. :try_end_4e} :catchall_53

    .line 129
    new-array p0, p0, [Ljava/io/Closeable;

    aput-object v2, p0, v3

    goto :goto_63

    :catchall_53
    move-exception p1

    goto :goto_6b

    :catch_55
    move-exception p2

    move-object v1, v2

    goto :goto_5c

    :catchall_58
    move-exception p1

    move-object v2, v1

    goto :goto_6b

    :catch_5b
    move-exception p2

    .line 127
    :goto_5c
    :try_start_5c
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_58

    .line 129
    new-array p0, p0, [Ljava/io/Closeable;

    aput-object v1, p0, v3

    :goto_63
    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    .line 132
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :goto_6b
    new-array p0, p0, [Ljava/io/Closeable;

    aput-object v2, p0, v3

    invoke-static {p0}, Lcom/gaia/ngallery/l/b;->a([Ljava/io/Closeable;)V

    throw p1

    :cond_73
    :goto_73
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 55
    :cond_b
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_13
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    return-object p0

    :cond_1f
    const/16 v0, 0x2d0

    const/16 v1, 0x500

    .line 62
    invoke-static {p0, v0, v1}, Lcom/gaia/ngallery/l/h;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2a

    return-object p0

    .line 65
    :cond_2a
    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->f(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_31

    return-object p0

    .line 69
    :cond_31
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v0, p1, p0}, Lcom/gaia/ngallery/l/h;->a(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 85
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 86
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 88
    :cond_b
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 91
    :cond_13
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    return-object p0

    :cond_1f
    const/16 v0, 0x2d0

    const/16 v1, 0x500

    .line 95
    invoke-static {p0, v0, v1}, Lcom/gaia/ngallery/l/h;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2a

    return-object p0

    .line 98
    :cond_2a
    invoke-static {v0, p2, p1}, Lcom/gaia/ngallery/l/m;->a(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 212
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 213
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p0, 0x18

    .line 214
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
