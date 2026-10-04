###### Class com.gaia.ngallery.k.g (com.gaia.ngallery.k.g)
.class public Lcom/gaia/ngallery/k/g;
.super Landroid/os/AsyncTask;
.source "GaiaScanHideMediaTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/k/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/gaia/ngallery/model/AlbumFolder;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "1"

.field public static final b:Ljava/lang/String; = "2"

.field public static final c:Ljava/lang/String; = "FLAG_SCAN_FILES_IN_ALBUM"

.field public static final d:Ljava/lang/String; = "FLAG_SCAN_ALBUM_ONLY"


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcom/gaia/ngallery/k/g$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gaia/ngallery/k/g$a;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/gaia/ngallery/k/g;->e:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/gaia/ngallery/k/g;->f:Lcom/gaia/ngallery/k/g$a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "2"

    .line 43
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    array-length v4, p1

    const/4 v5, 0x1

    if-le v4, v5, :cond_15

    .line 45
    aget-object v1, p1, v5

    .line 48
    :cond_15
    array-length v4, p1

    const/4 v6, 0x2

    if-le v4, v6, :cond_24

    const-string v4, "FLAG_SCAN_ALBUM_ONLY"

    .line 49
    aget-object v6, p1, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 v5, 0x0

    :cond_24
    const-string v4, "1"

    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 54
    new-instance p1, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-direct {p1}, Lcom/gaia/ngallery/model/AlbumFolder;-><init>()V

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/gaia/ngallery/model/AlbumFolder;->setId(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/gaia/ngallery/model/AlbumFolder;->setName(Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Lcom/gaia/ngallery/k/d;->a(Lcom/gaia/ngallery/model/AlbumFolder;)V

    .line 58
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_46
    const-string v2, "2"

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 60
    aget-object p1, p1, v3

    invoke-static {v0, p1, v5}, Lcom/gaia/ngallery/k/d;->a(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 62
    invoke-static {v0}, Lcom/gaia/ngallery/l/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_58
    :goto_58
    return-object v0
.end method

.method protected a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/gaia/ngallery/k/g;->f:Lcom/gaia/ngallery/k/g$a;

    invoke-interface {v0, p1}, Lcom/gaia/ngallery/k/g$a;->a(Ljava/util/List;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/Void;)V
    .registers 2

    .line 80
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected b(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 86
    iget-object p1, p0, Lcom/gaia/ngallery/k/g;->f:Lcom/gaia/ngallery/k/g$a;

    invoke-interface {p1}, Lcom/gaia/ngallery/k/g$a;->a()V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/g;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .registers 2

    .line 91
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 92
    iget-object v0, p0, Lcom/gaia/ngallery/k/g;->f:Lcom/gaia/ngallery/k/g$a;

    invoke-interface {v0}, Lcom/gaia/ngallery/k/g$a;->a()V

    return-void
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    .line 18
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/g;->b(Ljava/util/List;)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 18
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/g;->a(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .line 69
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/k/g;->a([Ljava/lang/Void;)V

    return-void
.end method

###### Class com.gaia.ngallery.k.g.a (com.gaia.ngallery.k.g$a)
.class public interface abstract Lcom/gaia/ngallery/k/g$a;
.super Ljava/lang/Object;
.source "GaiaScanHideMediaTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/k/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;)V"
        }
    .end annotation
.end method
