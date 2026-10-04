###### Class com.bumptech.glide.load.b.t (com.bumptech.glide.load.b.t)
.class public Lcom/bumptech/glide/load/b/t;
.super Ljava/lang/Object;
.source "StreamEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "StreamEncoder"


# instance fields
.field private final b:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bumptech/glide/load/b/t;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/io/File;Lcom/bumptech/glide/load/f;)Z
    .registers 7
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    iget-object p3, p0, Lcom/bumptech/glide/load/b/t;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    const-class v0, [B

    const/high16 v1, 0x10000

    invoke-interface {p3, v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    :try_start_e
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_2e
    .catchall {:try_start_e .. :try_end_13} :catchall_2c

    .line 34
    :goto_13
    :try_start_13
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1e

    .line 35
    invoke-virtual {v2, p3, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_13

    .line 37
    :cond_1e
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_21} :catch_29
    .catchall {:try_start_13 .. :try_end_21} :catchall_26

    const/4 v0, 0x1

    .line 46
    :try_start_22
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_44

    goto :goto_44

    :catchall_26
    move-exception p1

    move-object v1, v2

    goto :goto_4a

    :catch_29
    move-exception p1

    move-object v1, v2

    goto :goto_2f

    :catchall_2c
    move-exception p1

    goto :goto_4a

    :catch_2e
    move-exception p1

    :goto_2f
    :try_start_2f
    const-string p2, "StreamEncoder"

    const/4 v2, 0x3

    .line 40
    invoke-static {p2, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3f

    const-string p2, "StreamEncoder"

    const-string v2, "Failed to encode data onto the OutputStream"

    .line 41
    invoke-static {p2, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_2c

    :cond_3f
    if-eqz v1, :cond_44

    .line 46
    :try_start_41
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_44

    .line 51
    :catch_44
    :cond_44
    :goto_44
    iget-object p1, p0, Lcom/bumptech/glide/load/b/t;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    invoke-interface {p1, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->a(Ljava/lang/Object;)V

    return v0

    :goto_4a
    if-eqz v1, :cond_4f

    .line 46
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_4f

    .line 51
    :catch_4f
    :cond_4f
    iget-object p2, p0, Lcom/bumptech/glide/load/b/t;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    invoke-interface {p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->a(Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/f;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/b/t;->a(Ljava/io/InputStream;Ljava/io/File;Lcom/bumptech/glide/load/f;)Z

    move-result p1

    return p1
.end method
