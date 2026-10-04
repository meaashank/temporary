###### Class com.gaia.ngallery.sync.model.ParcelableWithVersion (com.gaia.ngallery.sync.model.ParcelableWithVersion)
.class public abstract Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;
.super Ljava/lang/Object;
.source "ParcelableWithVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a;
    }
.end annotation


# instance fields
.field private dataVersion:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0}, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;->getDefaultDataVersion()I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;->dataVersion:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDataVersion()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;->dataVersion:I

    return v0
.end method

.method abstract getDefaultDataVersion()I
.end method

.method abstract readDataFromParcel(Landroid/os/Parcel;I)V
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;->dataVersion:I

    .line 32
    iget v0, p0, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;->dataVersion:I

    invoke-virtual {p0, p1, v0}, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;->readDataFromParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method abstract writeDataToParcel(Landroid/os/Parcel;I)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 53
    iget p2, p0, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;->dataVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget p2, p0, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;->dataVersion:I

    invoke-virtual {p0, p1, p2}, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;->writeDataToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.model.ParcelableWithVersion.a (com.gaia.ngallery.sync.model.ParcelableWithVersion$a)
.class public abstract Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a;
.super Ljava/lang/Object;
.source "ParcelableWithVersion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a;->b()Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method abstract b()Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a;->a(Landroid/os/Parcel;)Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;

    move-result-object p1

    return-object p1
.end method
