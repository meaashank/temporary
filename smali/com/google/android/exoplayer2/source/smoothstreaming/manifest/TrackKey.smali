###### Class com.google.android.exoplayer2.source.smoothstreaming.manifest.TrackKey (com.google.android.exoplayer2.source.smoothstreaming.manifest.TrackKey)
.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;
.super Ljava/lang/Object;
.source "TrackKey.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final streamElementIndex:I

.field public final trackIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->streamElementIndex:I

    .line 32
    iput p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->trackIndex:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;)I
    .registers 4
    .param p1    # Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    iget v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->streamElementIndex:I

    iget v1, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->streamElementIndex:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_c

    .line 71
    iget v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->trackIndex:I

    iget p1, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->trackIndex:I

    sub-int/2addr v0, p1

    :cond_c
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    check-cast p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->compareTo(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->streamElementIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->trackIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 49
    iget p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->streamElementIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->trackIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class com.google.android.exoplayer2.source.smoothstreaming.manifest.TrackKey.AnonymousClass1 (com.google.android.exoplayer2.source.smoothstreaming.manifest.TrackKey$1)
.class final Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey$1;
.super Ljava/lang/Object;
.source "TrackKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;
    .registers 4

    .line 56
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;
    .registers 2

    .line 61
    new-array p1, p1, [Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey$1;->newArray(I)[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    move-result-object p1

    return-object p1
.end method
