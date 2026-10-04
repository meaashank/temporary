###### Class com.gaia.ngallery.model.AlbumFile (com.gaia.ngallery.model.AlbumFile)
.class public Lcom/gaia/ngallery/model/AlbumFile;
.super Ljava/lang/Object;
.source "AlbumFile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/model/AlbumFile$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/gaia/ngallery/model/AlbumFile;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ROTATE_CW180:I = 0x2

.field public static final FLAG_ROTATE_CW270:I = 0x3

.field public static final FLAG_ROTATE_CW90:I = 0x1

.field public static final FLAG_ROTATE_NONE:I = 0x0

.field private static final MASK_ROTATION:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_IMAGE:I = 0x1

.field public static final TYPE_INVALID:I = 0x0

.field public static final TYPE_VIDEO:I = 0x2


# instance fields
.field private albumFileId:Lcom/gaia/ngallery/model/a;

.field private fileFlags:B

.field private isChecked:Z

.field private isEnable:Z

.field private isEncript:Z

.field private mAddDate:J

.field private mBucketId:I

.field private mBucketName:Ljava/lang/String;

.field private mDuration:J

.field private mHeight:I

.field private mLatitude:F

.field private mLongitude:F

.field private mMediaType:I

.field private mMimeType:Ljava/lang/String;

.field private mModifyDate:J

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mSize:J

.field private mThumbPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/model/AlbumFile;->TAG:Ljava/lang/String;

    .line 411
    new-instance v0, Lcom/gaia/ngallery/model/AlbumFile$1;

    invoke-direct {v0}, Lcom/gaia/ngallery/model/AlbumFile$1;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/model/AlbumFile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEnable:Z

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEncript:Z

    .line 130
    iput-byte v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->fileFlags:B

    const/4 v0, 0x0

    .line 449
    iput-object v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->albumFileId:Lcom/gaia/ngallery/model/a;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEnable:Z

    const/4 v1, 0x0

    .line 123
    iput-boolean v1, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEncript:Z

    .line 130
    iput-byte v1, p0, Lcom/gaia/ngallery/model/AlbumFile;->fileFlags:B

    const/4 v2, 0x0

    .line 449
    iput-object v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->albumFileId:Lcom/gaia/ngallery/model/a;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mPath:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mName:Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mTitle:Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mBucketId:I

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mBucketName:Ljava/lang/String;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mMimeType:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mAddDate:J

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mModifyDate:J

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mLatitude:F

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mLongitude:F

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mSize:J

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mDuration:J

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mThumbPath:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mWidth:I

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mHeight:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mMediaType:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_76

    const/4 v2, 0x1

    goto :goto_77

    :cond_76
    const/4 v2, 0x0

    :goto_77
    iput-boolean v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->isChecked:Z

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_81

    const/4 v2, 0x1

    goto :goto_82

    :cond_81
    const/4 v2, 0x0

    :goto_82
    iput-boolean v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEnable:Z

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_8b

    goto :goto_8c

    :cond_8b
    const/4 v0, 0x0

    :goto_8c
    iput-boolean v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEncript:Z

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->fileFlags:B

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEnable:Z

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEncript:Z

    .line 130
    iput-byte v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->fileFlags:B

    const/4 v0, 0x0

    .line 449
    iput-object v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->albumFileId:Lcom/gaia/ngallery/model/a;

    .line 331
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/model/AlbumFile;->setPath(Ljava/io/File;)V

    .line 332
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/model/AlbumFile;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asAlbumFileId()Lcom/gaia/ngallery/model/a;
    .registers 2

    .line 451
    iget-object v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->albumFileId:Lcom/gaia/ngallery/model/a;

    if-nez v0, :cond_b

    .line 452
    new-instance v0, Lcom/gaia/ngallery/model/a;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/model/a;-><init>(Lcom/gaia/ngallery/model/AlbumFile;)V

    iput-object v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->albumFileId:Lcom/gaia/ngallery/model/a;

    .line 453
    :cond_b
    iget-object v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->albumFileId:Lcom/gaia/ngallery/model/a;

    return-object v0
.end method

.method public compareTo(Lcom/gaia/ngallery/model/AlbumFile;)I
    .registers 6

    .line 137
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getAddDate()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFile;->getAddDate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-lez p1, :cond_14

    const p1, 0x7fffffff

    return p1

    :cond_14
    const-wide/32 v2, -0x7fffffff

    cmp-long p1, v0, v2

    if-gez p1, :cond_1f

    const p1, -0x7fffffff

    return p1

    :cond_1f
    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 32
    check-cast p1, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/model/AlbumFile;->compareTo(Lcom/gaia/ngallery/model/AlbumFile;)I

    move-result p1

    return p1
.end method

.method public copy(Lcom/gaia/ngallery/model/AlbumFile;)Lcom/gaia/ngallery/model/AlbumFile;
    .registers 4

    .line 359
    iget-object v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mPath:Ljava/lang/String;

    .line 360
    iget-object v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mName:Ljava/lang/String;

    .line 361
    iget-object v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mTitle:Ljava/lang/String;

    .line 362
    iget v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->mBucketId:I

    iput v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mBucketId:I

    .line 363
    iget-object v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->mBucketName:Ljava/lang/String;

    iput-object v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mBucketName:Ljava/lang/String;

    .line 364
    iget-object v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->mMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mMimeType:Ljava/lang/String;

    .line 365
    iget-wide v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->mAddDate:J

    iput-wide v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mAddDate:J

    .line 366
    iget-wide v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->mModifyDate:J

    iput-wide v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mModifyDate:J

    .line 367
    iget v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->mLatitude:F

    iput v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mLatitude:F

    .line 368
    iget v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->mLongitude:F

    iput v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mLongitude:F

    .line 369
    iget-wide v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->mSize:J

    iput-wide v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mSize:J

    .line 370
    iget-wide v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->mDuration:J

    iput-wide v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mDuration:J

    .line 371
    iget-object v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->mThumbPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mThumbPath:Ljava/lang/String;

    .line 372
    iget v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->mWidth:I

    iput v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mWidth:I

    .line 373
    iget v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->mHeight:I

    iput v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mHeight:I

    .line 374
    iget v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->mMediaType:I

    iput v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mMediaType:I

    .line 375
    iget-boolean v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->isChecked:Z

    iput-boolean v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->isChecked:Z

    .line 376
    iget-boolean v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->isEnable:Z

    iput-boolean v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEnable:Z

    .line 377
    iget-boolean v0, p1, Lcom/gaia/ngallery/model/AlbumFile;->isEncript:Z

    iput-boolean v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEncript:Z

    .line 378
    iget-byte p1, p1, Lcom/gaia/ngallery/model/AlbumFile;->fileFlags:B

    iput-byte p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->fileFlags:B

    return-object p0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_35

    .line 147
    instance-of v0, p1, Lcom/gaia/ngallery/model/AlbumFile;

    if-eqz v0, :cond_35

    .line 148
    move-object v0, p1

    check-cast v0, Lcom/gaia/ngallery/model/AlbumFile;

    .line 149
    iget-object v1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {v0}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 150
    iget-object p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mPath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFile;->getRotation()I

    move-result p1

    invoke-virtual {v0}, Lcom/gaia/ngallery/model/AlbumFile;->getRotation()I

    move-result v0

    if-ne p1, v0, :cond_33

    const/4 p1, 0x1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    return p1

    .line 153
    :cond_35
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getAddDate()J
    .registers 3

    .line 211
    iget-wide v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mAddDate:J

    return-wide v0
.end method

.method public getBucketId()I
    .registers 2

    .line 187
    iget v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mBucketId:I

    return v0
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .line 251
    iget-wide v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mDuration:J

    return-wide v0
.end method

.method public getHeight()I
    .registers 2

    .line 275
    iget v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mHeight:I

    return v0
.end method

.method public getLatitude()F
    .registers 2

    .line 227
    iget v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mLatitude:F

    return v0
.end method

.method public getLongitude()F
    .registers 2

    .line 235
    iget v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mLongitude:F

    return v0
.end method

.method public getMediaType()I
    .registers 2

    .line 284
    iget v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mMediaType:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyDate()J
    .registers 3

    .line 219
    iget-wide v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mModifyDate:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .registers 2

    .line 317
    iget-byte v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->fileFlags:B

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSize()J
    .registers 3

    .line 243
    iget-wide v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mSize:J

    return-wide v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 267
    iget v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mBucketId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .line 292
    iget-boolean v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->isChecked:Z

    return v0
.end method

.method public isEnable()Z
    .registers 2

    .line 300
    iget-boolean v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEnable:Z

    return v0
.end method

.method public isEncript()Z
    .registers 2

    .line 309
    iget-boolean v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEncript:Z

    return v0
.end method

.method public setAddDate(J)V
    .registers 3

    .line 215
    iput-wide p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mAddDate:J

    return-void
.end method

.method public setBucketId(I)V
    .registers 2

    .line 191
    iput p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mBucketId:I

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mBucketName:Ljava/lang/String;

    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    .line 296
    iput-boolean p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->isChecked:Z

    return-void
.end method

.method public setDuration(J)V
    .registers 3

    .line 255
    iput-wide p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mDuration:J

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 304
    iput-boolean p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEnable:Z

    return-void
.end method

.method public setEncript(Z)V
    .registers 2

    .line 313
    iput-boolean p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEncript:Z

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 279
    iput p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mHeight:I

    return-void
.end method

.method public setLatitude(F)V
    .registers 2

    .line 231
    iput p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mLatitude:F

    return-void
.end method

.method public setLongitude(F)V
    .registers 2

    .line 239
    iput p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mLongitude:F

    return-void
.end method

.method public setMediaType(I)V
    .registers 2

    .line 288
    iput p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mMediaType:I

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public setModifyDate(J)V
    .registers 3

    .line 223
    iput-wide p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mModifyDate:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/io/File;)V
    .registers 2

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mPath:Ljava/lang/String;

    return-void
.end method

.method public setRotation(I)V
    .registers 3

    .line 326
    iget-byte v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->fileFlags:B

    and-int/lit8 v0, v0, -0x4

    and-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->fileFlags:B

    return-void
.end method

.method public setSize(J)V
    .registers 3

    .line 247
    iput-wide p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mSize:J

    return-void
.end method

.method public setThumbPath(Ljava/lang/String;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mThumbPath:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 271
    iput p1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlbumFile{mPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mBucketId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mBucketId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBucketName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mBucketName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mMimeType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAddDate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mAddDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mModifyDate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mModifyDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mLatitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mLatitude:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mLongitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mLongitude:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mDuration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mThumbPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mThumbPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gaia/ngallery/model/AlbumFile;->mMediaType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gaia/ngallery/model/AlbumFile;->isChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEncript="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEncript:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 384
    iget-object p2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-object p2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    iget-object p2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget p2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mBucketId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget-object p2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mBucketName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object p2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-wide v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mAddDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 391
    iget-wide v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mModifyDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 392
    iget p2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mLatitude:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 393
    iget p2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mLongitude:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 394
    iget-wide v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 395
    iget-wide v0, p0, Lcom/gaia/ngallery/model/AlbumFile;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 396
    iget-object p2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mThumbPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    iget p2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget p2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget p2, p0, Lcom/gaia/ngallery/model/AlbumFile;->mMediaType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-boolean p2, p0, Lcom/gaia/ngallery/model/AlbumFile;->isChecked:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 401
    iget-boolean p2, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEnable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 402
    iget-boolean p2, p0, Lcom/gaia/ngallery/model/AlbumFile;->isEncript:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 403
    iget-byte p2, p0, Lcom/gaia/ngallery/model/AlbumFile;->fileFlags:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

###### Class com.gaia.ngallery.model.AlbumFile.AnonymousClass1 (com.gaia.ngallery.model.AlbumFile$1)
.class final Lcom/gaia/ngallery/model/AlbumFile$1;
.super Ljava/lang/Object;
.source "AlbumFile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/model/AlbumFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/gaia/ngallery/model/AlbumFile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/gaia/ngallery/model/AlbumFile;
    .registers 3

    .line 414
    new-instance v0, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-direct {v0, p1}, Lcom/gaia/ngallery/model/AlbumFile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/gaia/ngallery/model/AlbumFile;
    .registers 2

    .line 419
    new-array p1, p1, [Lcom/gaia/ngallery/model/AlbumFile;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 411
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/model/AlbumFile$1;->a(Landroid/os/Parcel;)Lcom/gaia/ngallery/model/AlbumFile;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 411
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/model/AlbumFile$1;->a(I)[Lcom/gaia/ngallery/model/AlbumFile;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.model.AlbumFile.a (com.gaia.ngallery.model.AlbumFile$a)
.class public interface abstract annotation Lcom/gaia/ngallery/model/AlbumFile$a;
.super Ljava/lang/Object;
.source "AlbumFile.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/model/AlbumFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "a"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
