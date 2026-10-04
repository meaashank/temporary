###### Class com.google.android.exoplayer2.metadata.id3.ChapterFrame (com.google.android.exoplayer2.metadata.id3.ChapterFrame)
.class public final Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;
.super Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
.source "ChapterFrame.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "CHAP"


# instance fields
.field public final chapterId:Ljava/lang/String;

.field public final endOffset:J

.field public final endTimeMs:I

.field public final startOffset:J

.field public final startTimeMs:I

.field private final subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 128
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    const-string v0, "CHAP"

    .line 55
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    new-array v1, v0, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    iput-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v0, :cond_41

    .line 64
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    const-class v3, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJ[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;)V
    .registers 10

    const-string v0, "CHAP"

    .line 45
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    .line 48
    iput p3, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    .line 49
    iput-wide p4, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    .line 50
    iput-wide p6, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    .line 51
    iput-object p8, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_47

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_47

    .line 90
    :cond_12
    check-cast p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    .line 91
    iget v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    iget v3, p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    if-ne v2, v3, :cond_45

    iget v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    iget v3, p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    if-ne v2, v3, :cond_45

    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_45

    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_45

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 95
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    iget-object p1, p1, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 96
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    return v0

    :cond_47
    :goto_47
    return v1
.end method

.method public getSubFrame(I)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSubFrameCount()I
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 102
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 103
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 104
    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 105
    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    add-int/2addr v1, v0

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 112
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v0, :cond_2e

    aget-object v3, p2, v2

    .line 119
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_2e
    return-void
.end method

###### Class com.google.android.exoplayer2.metadata.id3.ChapterFrame.AnonymousClass1 (com.google.android.exoplayer2.metadata.id3.ChapterFrame$1)
.class final Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame$1;
.super Ljava/lang/Object;
.source "ChapterFrame.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;
    .registers 3

    .line 132
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 128
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;
    .registers 2

    .line 137
    new-array p1, p1, [Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 128
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame$1;->newArray(I)[Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    move-result-object p1

    return-object p1
.end method
