###### Class com.gaia.ngallery.sync.model.FileLastSyncedInfo (com.gaia.ngallery.sync.model.FileLastSyncedInfo)
.class public Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;
.super Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;
.source "FileLastSyncedInfo.java"


# static fields
.field public static final CREATOR:Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a<",
            "Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_DATA_VERSION:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lastModifedFromServer:J

.field private lastSyncedTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-class v0, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo$1;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo$1;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->CREATOR:Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->lastSyncedTime:J

    .line 17
    iput-wide v0, p0, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->lastModifedFromServer:J

    return-void
.end method


# virtual methods
.method getDefaultDataVersion()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getLastModifedFromServer()J
    .registers 3

    .line 27
    iget-wide v0, p0, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->lastModifedFromServer:J

    return-wide v0
.end method

.method public getLastSyncedTime()J
    .registers 3

    .line 19
    iget-wide v0, p0, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->lastSyncedTime:J

    return-wide v0
.end method

.method readDataFromParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->lastSyncedTime:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->lastModifedFromServer:J

    return-void
.end method

.method public setLastModifedFromServer(J)V
    .registers 3

    .line 31
    iput-wide p1, p0, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->lastModifedFromServer:J

    return-void
.end method

.method public setLastSyncedTime(J)V
    .registers 3

    .line 23
    iput-wide p1, p0, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->lastSyncedTime:J

    return-void
.end method

.method writeDataToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 66
    iget-wide v0, p0, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->lastSyncedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-wide v0, p0, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;->lastModifedFromServer:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.model.FileLastSyncedInfo.AnonymousClass1 (com.gaia.ngallery.sync.model.FileLastSyncedInfo$1)
.class final Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo$1;
.super Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a;
.source "FileLastSyncedInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a<",
        "Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;
    .registers 2

    .line 47
    new-instance v0, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;-><init>()V

    return-object v0
.end method

.method public a(I)[Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;
    .registers 2

    .line 52
    new-array p1, p1, [Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    return-object p1
.end method

.method synthetic b()Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;
    .registers 2

    .line 43
    invoke-virtual {p0}, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo$1;->a()Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo$1;->a(I)[Lcom/gaia/ngallery/sync/model/FileLastSyncedInfo;

    move-result-object p1

    return-object p1
.end method
