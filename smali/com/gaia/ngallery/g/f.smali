###### Class com.gaia.ngallery.g.f (com.gaia.ngallery.g.f)
.class public Lcom/gaia/ngallery/g/f;
.super Ljava/lang/Object;
.source "GlideUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/g/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/gaia/ngallery/g/f;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/g/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 29
    sget-object v0, Lcom/gaia/ngallery/g/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/widget/ImageView;IZ)V
    .registers 5

    .line 92
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    if-eqz p2, :cond_b

    .line 94
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    goto :goto_e

    .line 96
    :cond_b
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->m()Lcom/bumptech/glide/request/g;

    .line 97
    :goto_e
    sget-object p2, Lcom/bumptech/glide/load/engine/h;->b:Lcom/bumptech/glide/load/engine/h;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/g;

    .line 98
    sget p2, Lcom/gaia/ngallery/i$h;->glide_tag_id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/gaia/ngallery/c/a/a/h;->c(Landroid/content/Context;)Lcom/gaia/ngallery/c/a/a/k;

    move-result-object p2

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gaia/ngallery/c/a/a/k;->c(Ljava/lang/Integer;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    .line 101
    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/c/a/a/j;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    .line 102
    invoke-virtual {p1, p0}, Lcom/gaia/ngallery/c/a/a/j;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/q;

    return-void
.end method

.method public static a(Landroid/widget/ImageView;Lcom/gaia/ngallery/model/AlbumFile;ZZ)V
    .registers 5

    .line 54
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    goto :goto_3d

    .line 67
    :pswitch_8
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->isEncript()Z

    move-result p3

    if-eqz p3, :cond_16

    .line 68
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/gaia/ngallery/g/f;->c(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto :goto_3d

    .line 70
    :cond_16
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/gaia/ngallery/g/f;->b(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto :goto_3d

    .line 56
    :pswitch_1e
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->isEncript()Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    if-eqz p3, :cond_2e

    .line 59
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getRotation()I

    move-result p3

    mul-int/lit8 p3, p3, 0x5a

    int-to-float v0, p3

    .line 60
    :cond_2e
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0, p2}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;Ljava/lang/String;FZ)V

    goto :goto_3d

    .line 62
    :cond_36
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/gaia/ngallery/g/f;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    :goto_3d
    return-void

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_8
    .end packed-switch
.end method

.method private static a(Landroid/widget/ImageView;Ljava/lang/String;FZ)V
    .registers 9

    .line 33
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    .line 34
    sget-object v1, Lcom/gaia/ngallery/g/f;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadEncryptImage: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ftcenter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_2f

    .line 36
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    goto :goto_32

    .line 38
    :cond_2f
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->m()Lcom/bumptech/glide/request/g;

    .line 42
    :goto_32
    new-instance p3, Lcom/gaia/ngallery/c/a/a/b;

    invoke-direct {p3, p1}, Lcom/gaia/ngallery/c/a/a/b;-><init>(Ljava/lang/String;)V

    .line 43
    sget v1, Lcom/gaia/ngallery/i$h;->glide_tag_id:I

    invoke-virtual {p0, v1, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 45
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/gaia/ngallery/c/a/a/h;->c(Landroid/content/Context;)Lcom/gaia/ngallery/c/a/a/k;

    move-result-object p1

    .line 46
    invoke-virtual {p1, p3}, Lcom/gaia/ngallery/c/a/a/k;->d(Ljava/lang/Object;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    .line 47
    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/c/a/a/j;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-lez p3, :cond_59

    .line 49
    new-instance p3, Lcom/gaia/ngallery/g/i;

    invoke-direct {p3, p2}, Lcom/gaia/ngallery/g/i;-><init>(F)V

    invoke-virtual {p1, p3}, Lcom/gaia/ngallery/c/a/a/j;->a(Lcom/bumptech/glide/load/i;)Lcom/gaia/ngallery/c/a/a/j;

    .line 50
    :cond_59
    invoke-virtual {p1, p0}, Lcom/gaia/ngallery/c/a/a/j;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/q;

    return-void
.end method

.method public static a(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .registers 9

    .line 130
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    .line 131
    sget-object v1, Lcom/gaia/ngallery/g/f;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadImage: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_27

    .line 133
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    goto :goto_2a

    .line 135
    :cond_27
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->m()Lcom/bumptech/glide/request/g;

    .line 136
    :goto_2a
    sget-object p2, Lcom/bumptech/glide/load/engine/h;->b:Lcom/bumptech/glide/load/engine/h;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/g;

    .line 137
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/g;->e(Z)Lcom/bumptech/glide/request/g;

    .line 138
    sget p2, Lcom/gaia/ngallery/i$h;->glide_tag_id:I

    invoke-virtual {p0, p2, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 139
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/gaia/ngallery/c/a/a/h;->c(Landroid/content/Context;)Lcom/gaia/ngallery/c/a/a/k;

    move-result-object p2

    .line 140
    invoke-virtual {p2, p1}, Lcom/gaia/ngallery/c/a/a/k;->c(Ljava/lang/String;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    .line 141
    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/c/a/a/j;->b(Lcom/bumptech/glide/request/g;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object p1

    .line 142
    invoke-virtual {p1, p0}, Lcom/gaia/ngallery/c/a/a/j;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/q;

    return-void
.end method

.method public static b(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .registers 8

    .line 146
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    .line 147
    sget-object v1, Lcom/gaia/ngallery/g/f;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadVideo: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_27

    .line 149
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    goto :goto_2a

    .line 151
    :cond_27
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->m()Lcom/bumptech/glide/request/g;

    .line 152
    :goto_2a
    sget-object p2, Lcom/bumptech/glide/load/engine/h;->b:Lcom/bumptech/glide/load/engine/h;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/g;

    .line 153
    sget p2, Lcom/gaia/ngallery/i$h;->glide_tag_id:I

    invoke-virtual {p0, p2, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 162
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 163
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p2

    .line 164
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/m;->b(Landroid/net/Uri;)Lcom/bumptech/glide/l;

    move-result-object p1

    .line 165
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;

    move-result-object p1

    .line 166
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/l;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/q;

    return-void
.end method

.method private static c(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .registers 8

    .line 107
    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    .line 108
    sget-object v1, Lcom/gaia/ngallery/g/f;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadEncryptImage: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_27

    .line 110
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    goto :goto_2a

    .line 112
    :cond_27
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->m()Lcom/bumptech/glide/request/g;

    .line 117
    :goto_2a
    new-instance p2, Lcom/gaia/ngallery/c/a/a/f;

    invoke-direct {p2, p1}, Lcom/gaia/ngallery/c/a/a/f;-><init>(Ljava/lang/String;)V

    .line 118
    sget v1, Lcom/gaia/ngallery/i$h;->glide_tag_id:I

    invoke-virtual {p0, v1, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/f;->c(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/m;->j()Lcom/bumptech/glide/l;

    move-result-object p1

    .line 121
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/l;->b(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/l;

    move-result-object p1

    .line 122
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/l;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/q;

    return-void
.end method

###### Class com.gaia.ngallery.g.f.a (com.gaia.ngallery.g.f$a)
.class Lcom/gaia/ngallery/g/f$a;
.super Ljava/lang/Object;
.source "GlideUtils.java"

# interfaces
.implements Lcom/bumptech/glide/request/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/g/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/a/o;Z)Z
    .registers 5
    .param p1    # Lcom/bumptech/glide/load/engine/GlideException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    invoke-static {}, Lcom/gaia/ngallery/g/f;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onLoadFailed "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/a/o;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6

    const/4 p1, 0x0

    return p1
.end method
