###### Class com.gaia.ngallery.sync.b.a (com.gaia.ngallery.sync.b.a)
.class public Lcom/gaia/ngallery/sync/b/a;
.super Lcom/gaia/ngallery/sync/c/b;
.source "GDriveFilePairMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gaia/ngallery/sync/c/b<",
        "Lcom/google/android/gms/drive/Metadata;",
        "Lcom/gaia/ngallery/model/AlbumFile;",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/gaia/ngallery/sync/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/gaia/ngallery/model/AlbumFile;)Ljava/lang/String;
    .registers 2

    .line 21
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/google/android/gms/drive/Metadata;)Ljava/lang/String;
    .registers 2

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 13
    check-cast p1, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/sync/b/a;->a(Lcom/gaia/ngallery/model/AlbumFile;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 13
    check-cast p1, Lcom/google/android/gms/drive/Metadata;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/sync/b/a;->a(Lcom/google/android/gms/drive/Metadata;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
