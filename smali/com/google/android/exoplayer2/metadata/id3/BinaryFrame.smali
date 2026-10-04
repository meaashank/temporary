###### Class com.google.android.exoplayer2.metadata.id3.BinaryFrame (com.google.android.exoplayer2.metadata.id3.BinaryFrame)
.class public final Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;
.super Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
.source "BinaryFrame.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final data:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;->data:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;->data:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 47
    :cond_12
    check-cast p1, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    .line 48
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;->data:[B

    iget-object p1, p1, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;->data:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 61
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;->data:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

###### Class com.google.android.exoplayer2.metadata.id3.BinaryFrame.AnonymousClass1 (com.google.android.exoplayer2.metadata.id3.BinaryFrame$1)
.class final Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame$1;
.super Ljava/lang/Object;
.source "BinaryFrame.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;
    .registers 3

    .line 70
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;
    .registers 2

    .line 75
    new-array p1, p1, [Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame$1;->newArray(I)[Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    move-result-object p1

    return-object p1
.end method
