###### Class com.gaia.ngallery.sync.b.b (com.gaia.ngallery.sync.b.b)
.class public Lcom/gaia/ngallery/sync/b/b;
.super Lcom/gaia/ngallery/sync/c/b;
.source "GDriveFolderPairMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gaia/ngallery/sync/c/b<",
        "Lcom/google/android/gms/drive/Metadata;",
        "Lcom/gaia/ngallery/model/AlbumFolder;",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/gaia/ngallery/sync/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/gaia/ngallery/model/AlbumFolder;)Ljava/lang/String;
    .registers 2

    .line 20
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFolder;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/google/android/gms/drive/Metadata;)Ljava/lang/String;
    .registers 2

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 12
    check-cast p1, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/sync/b/b;->a(Lcom/gaia/ngallery/model/AlbumFolder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 12
    check-cast p1, Lcom/google/android/gms/drive/Metadata;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/sync/b/b;->a(Lcom/google/android/gms/drive/Metadata;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
