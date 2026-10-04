###### Class com.gaia.ngallery.sync.b.c (com.gaia.ngallery.sync.b.c)
.class public Lcom/gaia/ngallery/sync/b/c;
.super Lcom/gaia/ngallery/sync/a/b;
.source "GDriveRemoteComparableFile.java"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/drive/Metadata;)V
    .registers 5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-nez p1, :cond_a

    const-wide/16 v1, 0x0

    goto :goto_12

    .line 12
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getModifiedDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    :goto_12
    invoke-direct {p0, v0, v1, v2}, Lcom/gaia/ngallery/sync/a/b;-><init>(ZJ)V

    return-void
.end method
