###### Class com.gaia.ngallery.model.AlbumFolder (com.gaia.ngallery.model.AlbumFolder)
.class public Lcom/gaia/ngallery/model/AlbumFolder;
.super Ljava/lang/Object;
.source "AlbumFolder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIX:I = 0x2

.field public static final TYPE_HEADER:I = 0x3

.field public static final TYPE_NORMAL:I = 0x1


# instance fields
.field private id:Ljava/lang/String;

.field private imgCount:I

.field private isChecked:Z

.field private mAlbumFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private type:I

.field private vidCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 158
    new-instance v0, Lcom/gaia/ngallery/model/AlbumFolder$1;

    invoke-direct {v0}, Lcom/gaia/ngallery/model/AlbumFolder$1;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/model/AlbumFolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->type:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->mAlbumFiles:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->imgCount:I

    .line 53
    iput v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->vidCount:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->type:I

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/gaia/ngallery/model/AlbumFolder;->mAlbumFiles:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/gaia/ngallery/model/AlbumFolder;->imgCount:I

    .line 53
    iput v1, p0, Lcom/gaia/ngallery/model/AlbumFolder;->vidCount:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gaia/ngallery/model/AlbumFolder;->id:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gaia/ngallery/model/AlbumFolder;->name:Ljava/lang/String;

    .line 141
    sget-object v2, Lcom/gaia/ngallery/model/AlbumFile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/gaia/ngallery/model/AlbumFolder;->mAlbumFiles:Ljava/util/ArrayList;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    iput-boolean v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->isChecked:Z

    return-void
.end method

.method public static getDisplayAlbumName(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .line 184
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/e;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 185
    sget p1, Lcom/gaia/ngallery/i$n;->display_name_main_album:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 186
    :cond_11
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/e;->b(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 187
    sget p1, Lcom/gaia/ngallery/i$n;->display_name_trash_album:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 189
    :cond_22
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAlbumFile(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->mAlbumFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 89
    iget-object v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->mAlbumFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    .line 91
    iget p1, p0, Lcom/gaia/ngallery/model/AlbumFolder;->imgCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/gaia/ngallery/model/AlbumFolder;->imgCount:I

    goto :goto_1f

    .line 93
    :cond_1a
    iget p1, p0, Lcom/gaia/ngallery/model/AlbumFolder;->vidCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/gaia/ngallery/model/AlbumFolder;->vidCount:I

    :cond_1f
    :goto_1f
    return-void
.end method

.method public addAlbumFiles(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->mAlbumFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaia/ngallery/model/AlbumFile;

    .line 101
    invoke-virtual {v0}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 102
    iget v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->imgCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->imgCount:I

    goto :goto_9

    .line 104
    :cond_22
    iget v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->vidCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->vidCount:I

    goto :goto_9

    :cond_28
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumFile(I)Lcom/gaia/ngallery/model/AlbumFile;
    .registers 3

    if-ltz p1, :cond_14

    .line 110
    iget-object v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->mAlbumFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_b

    goto :goto_14

    .line 113
    :cond_b
    iget-object v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->mAlbumFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFile;

    return-object p1

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAlbumFiles()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->mAlbumFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 3

    .line 179
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFolder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImgCount()I
    .registers 2

    .line 120
    iget v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->imgCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->type:I

    return v0
.end method

.method public getVidCount()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->vidCount:I

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Lcom/gaia/ngallery/model/AlbumFolder;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .registers 2

    .line 135
    iput-boolean p1, p0, Lcom/gaia/ngallery/model/AlbumFolder;->isChecked:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/gaia/ngallery/model/AlbumFolder;->id:Ljava/lang/String;

    return-void
.end method

.method public setImgCount(I)V
    .registers 2

    .line 117
    iput p1, p0, Lcom/gaia/ngallery/model/AlbumFolder;->imgCount:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/gaia/ngallery/model/AlbumFolder;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/gaia/ngallery/model/AlbumFolder;->type:I

    return-void
.end method

.method public setVidCount(I)V
    .registers 2

    .line 124
    iput p1, p0, Lcom/gaia/ngallery/model/AlbumFolder;->vidCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlbumFolder{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gaia/ngallery/model/AlbumFolder;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gaia/ngallery/model/AlbumFolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 147
    iget-object p2, p0, Lcom/gaia/ngallery/model/AlbumFolder;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/gaia/ngallery/model/AlbumFolder;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/gaia/ngallery/model/AlbumFolder;->mAlbumFiles:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 150
    iget-boolean p2, p0, Lcom/gaia/ngallery/model/AlbumFolder;->isChecked:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

###### Class com.gaia.ngallery.model.AlbumFolder.AnonymousClass1 (com.gaia.ngallery.model.AlbumFolder$1)
.class final Lcom/gaia/ngallery/model/AlbumFolder$1;
.super Ljava/lang/Object;
.source "AlbumFolder.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/model/AlbumFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/gaia/ngallery/model/AlbumFolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/gaia/ngallery/model/AlbumFolder;
    .registers 3

    .line 161
    new-instance v0, Lcom/gaia/ngallery/model/AlbumFolder;

    invoke-direct {v0, p1}, Lcom/gaia/ngallery/model/AlbumFolder;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/gaia/ngallery/model/AlbumFolder;
    .registers 2

    .line 166
    new-array p1, p1, [Lcom/gaia/ngallery/model/AlbumFolder;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/model/AlbumFolder$1;->a(Landroid/os/Parcel;)Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/model/AlbumFolder$1;->a(I)[Lcom/gaia/ngallery/model/AlbumFolder;

    move-result-object p1

    return-object p1
.end method
