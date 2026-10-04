###### Class com.gaia.ngallery.k.d (com.gaia.ngallery.k.d)
.class public Lcom/gaia/ngallery/k/d;
.super Ljava/lang/Object;
.source "GaiaHideMediaReader.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/gaia/ngallery/k/d;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/k/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/gaia/ngallery/model/AlbumFolder;)V
    .registers 2

    const/4 v0, -0x1

    .line 23
    invoke-static {p0, v0}, Lcom/gaia/ngallery/k/d;->a(Lcom/gaia/ngallery/model/AlbumFolder;I)V

    return-void
.end method

.method public static a(Lcom/gaia/ngallery/model/AlbumFolder;I)V
    .registers 4

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFolder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/k/d;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    .line 32
    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/model/AlbumFolder;->addAlbumFiles(Ljava/util/ArrayList;)V

    :cond_15
    return-void
.end method

.method public static a(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 46
    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_28

    .line 48
    sget-object p0, Lcom/gaia/ngallery/k/d;->a:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 52
    :cond_28
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 54
    invoke-static {v2}, Lcom/gaia/ngallery/k/d;->a(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3f

    goto :goto_2c

    .line 58
    :cond_3f
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_2c

    .line 62
    :cond_4c
    new-instance v3, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-direct {v3}, Lcom/gaia/ngallery/model/AlbumFile;-><init>()V

    .line 63
    invoke-static {v2}, Lcom/gaia/ngallery/k/d;->b(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 64
    invoke-virtual {v3, v1}, Lcom/gaia/ngallery/model/AlbumFile;->setMediaType(I)V

    goto :goto_5f

    :cond_5b
    const/4 v4, 0x2

    .line 66
    invoke-virtual {v3, v4}, Lcom/gaia/ngallery/model/AlbumFile;->setMediaType(I)V

    .line 68
    :goto_5f
    invoke-virtual {v3, v2}, Lcom/gaia/ngallery/model/AlbumFile;->setPath(Ljava/io/File;)V

    .line 69
    invoke-static {v2}, Lcom/gaia/ngallery/l/f;->v(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gaia/ngallery/model/AlbumFile;->setName(Ljava/lang/String;)V

    .line 70
    invoke-static {v2}, Lcom/gaia/ngallery/l/f;->w(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gaia/ngallery/model/AlbumFile;->setTitle(Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gaia/ngallery/model/AlbumFile;->setBucketName(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/gaia/ngallery/model/AlbumFile;->setModifyDate(J)V

    const/4 v4, 0x0

    .line 73
    invoke-virtual {v3, v4}, Lcom/gaia/ngallery/model/AlbumFile;->setLatitude(F)V

    .line 74
    invoke-virtual {v3, v4}, Lcom/gaia/ngallery/model/AlbumFile;->setLongitude(F)V

    .line 75
    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/gaia/ngallery/model/AlbumFile;->setSize(J)V

    .line 76
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gaia/ngallery/g/g;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 78
    invoke-virtual {v3, v0}, Lcom/gaia/ngallery/model/AlbumFile;->setEncript(Z)V

    goto :goto_9d

    .line 80
    :cond_9a
    invoke-virtual {v3, v1}, Lcom/gaia/ngallery/model/AlbumFile;->setEncript(Z)V

    .line 83
    :goto_9d
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_a1
    return-void
.end method

.method public static a(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 90
    invoke-static {p1}, Lcom/gaia/ngallery/l/f;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 99
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_b

    .line 104
    :cond_1e
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_b

    .line 108
    :cond_2b
    new-instance v1, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-direct {v1}, Lcom/gaia/ngallery/model/AlbumFolder;-><init>()V

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaia/ngallery/model/AlbumFolder;->setId(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gaia/ngallery/model/AlbumFolder;->setName(Ljava/lang/String;)V

    if-eqz p2, :cond_43

    .line 113
    invoke-static {v1}, Lcom/gaia/ngallery/k/d;->a(Lcom/gaia/ngallery/model/AlbumFolder;)V

    .line 115
    :cond_43
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_47
    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .registers 2

    .line 37
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/g/g;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static b(Ljava/io/File;)Z
    .registers 2

    .line 41
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gaia/ngallery/g/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 42
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/g/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gaia/ngallery/l/h;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method
