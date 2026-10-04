###### Class com.gaia.ngallery.sync.model.SyncAccount (com.gaia.ngallery.sync.model.SyncAccount)
.class public Lcom/gaia/ngallery/sync/model/SyncAccount;
.super Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;
.source "SyncAccount.java"


# static fields
.field public static final CREATOR:Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a<",
            "Lcom/gaia/ngallery/sync/model/SyncAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_DATA_VERSION:I = 0x0

.field public static final TYPE_GOOGLE_DRIVE:I = 0x1


# instance fields
.field private accountId:Ljava/lang/String;

.field private accountName:Ljava/lang/String;

.field private accountSubTitle:Ljava/lang/String;

.field private accountType:I

.field private profilePhoto:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lcom/gaia/ngallery/sync/model/SyncAccount$1;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/model/SyncAccount$1;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/sync/model/SyncAccount;->CREATOR:Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountSubTitle()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->accountSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->accountType:I

    return v0
.end method

.method getDefaultDataVersion()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getProfilePhoto()Landroid/net/Uri;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->profilePhoto:Landroid/net/Uri;

    return-object v0
.end method

.method readDataFromParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->accountType:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->accountName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->accountId:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->accountSubTitle:Ljava/lang/String;

    .line 87
    const-class p2, Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->profilePhoto:Landroid/net/Uri;

    return-void
.end method

.method public setAccountId(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->accountId:Ljava/lang/String;

    return-void
.end method

.method public setAccountName(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->accountName:Ljava/lang/String;

    return-void
.end method

.method public setAccountSubTitle(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->accountSubTitle:Ljava/lang/String;

    return-void
.end method

.method public setAccountType(I)V
    .registers 2

    .line 36
    iput p1, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->accountType:I

    return-void
.end method

.method public setProfilePhoto(Landroid/net/Uri;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->profilePhoto:Landroid/net/Uri;

    return-void
.end method

.method writeDataToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 92
    iget p2, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->accountType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object p2, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->accountName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->accountId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object p2, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->accountSubTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Lcom/gaia/ngallery/sync/model/SyncAccount;->profilePhoto:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

###### Class com.gaia.ngallery.sync.model.SyncAccount.AnonymousClass1 (com.gaia.ngallery.sync.model.SyncAccount$1)
.class final Lcom/gaia/ngallery/sync/model/SyncAccount$1;
.super Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a;
.source "SyncAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/sync/model/SyncAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a<",
        "Lcom/gaia/ngallery/sync/model/SyncAccount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/gaia/ngallery/sync/model/ParcelableWithVersion$a;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/gaia/ngallery/sync/model/SyncAccount;
    .registers 2

    .line 22
    new-instance v0, Lcom/gaia/ngallery/sync/model/SyncAccount;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/model/SyncAccount;-><init>()V

    return-object v0
.end method

.method public a(I)[Lcom/gaia/ngallery/sync/model/SyncAccount;
    .registers 2

    .line 27
    new-array p1, p1, [Lcom/gaia/ngallery/sync/model/SyncAccount;

    return-object p1
.end method

.method synthetic b()Lcom/gaia/ngallery/sync/model/ParcelableWithVersion;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lcom/gaia/ngallery/sync/model/SyncAccount$1;->a()Lcom/gaia/ngallery/sync/model/SyncAccount;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/sync/model/SyncAccount$1;->a(I)[Lcom/gaia/ngallery/sync/model/SyncAccount;

    move-result-object p1

    return-object p1
.end method
