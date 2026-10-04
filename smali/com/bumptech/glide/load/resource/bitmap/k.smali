###### Class com.bumptech.glide.load.resource.bitmap.k (com.bumptech.glide.load.resource.bitmap.k)
.class public Lcom/bumptech/glide/load/resource/bitmap/k;
.super Lcom/bumptech/glide/load/resource/bitmap/g;
.source "CenterInside.java"


# static fields
.field private static final c:Ljava/lang/String; = "com.bumptech.glide.load.resource.bitmap.CenterInside"

.field private static final d:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "com.bumptech.glide.load.resource.bitmap.CenterInside"

    .line 17
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/k;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->d:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    invoke-static {p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/x;->c(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/security/MessageDigest;)V
    .registers 3
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->d:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 27
    instance-of p1, p1, Lcom/bumptech/glide/load/resource/bitmap/k;

    return p1
.end method

.method public hashCode()I
    .registers 2

    const-string v0, "com.bumptech.glide.load.resource.bitmap.CenterInside"

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
