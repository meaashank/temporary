###### Class com.gaia.ngallery.l.a (com.gaia.ngallery.l.a)
.class public Lcom/gaia/ngallery/l/a;
.super Ljava/lang/Object;
.source "AlbumOrderUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaia/ngallery/model/AlbumFolder;

    .line 22
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/gaia/ngallery/e;->a(Lcom/gaia/ngallery/model/AlbumFolder;)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object v1, v3

    goto :goto_b

    .line 24
    :cond_23
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/gaia/ngallery/e;->b(Lcom/gaia/ngallery/model/AlbumFolder;)Z

    move-result v4

    if-eqz v4, :cond_2f

    move-object v2, v3

    goto :goto_b

    .line 27
    :cond_2f
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_33
    if-eqz v1, :cond_4e

    if-eqz v2, :cond_4e

    .line 32
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/gaia/ngallery/l/a$1;

    invoke-direct {v1}, Lcom/gaia/ngallery/l/a$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 40
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 30
    :cond_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mainAlbum:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " trashAlbum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " both build-in albums can not be null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class com.gaia.ngallery.l.a.AnonymousClass1 (com.gaia.ngallery.l.a$1)
.class final Lcom/gaia/ngallery/l/a$1;
.super Ljava/lang/Object;
.source "AlbumOrderUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/l/a;->a(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/gaia/ngallery/model/AlbumFolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gaia/ngallery/model/AlbumFolder;Lcom/gaia/ngallery/model/AlbumFolder;)I
    .registers 3

    .line 37
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 34
    check-cast p1, Lcom/gaia/ngallery/model/AlbumFolder;

    check-cast p2, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/l/a$1;->a(Lcom/gaia/ngallery/model/AlbumFolder;Lcom/gaia/ngallery/model/AlbumFolder;)I

    move-result p1

    return p1
.end method
