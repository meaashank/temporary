###### Class android.support.design.internal.ParcelableSparseArray (android.support.design.internal.ParcelableSparseArray)
.class public Landroid/support/design/internal/ParcelableSparseArray;
.super Landroid/util/SparseArray;
.source "ParcelableSparseArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Landroid/os/Parcelable;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/design/internal/ParcelableSparseArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    new-instance v0, Landroid/support/design/internal/ParcelableSparseArray$1;

    invoke-direct {v0}, Landroid/support/design/internal/ParcelableSparseArray$1;-><init>()V

    sput-object v0, Landroid/support/design/internal/ParcelableSparseArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 7

    .line 35
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 37
    new-array v1, v0, [I

    .line 38
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p1

    const/4 p2, 0x0

    :goto_11
    if-ge p2, v0, :cond_1d

    .line 41
    aget v2, v1, p2

    aget-object v3, p1, p2

    invoke-virtual {p0, v2, v3}, Landroid/support/design/internal/ParcelableSparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_11

    :cond_1d
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 52
    invoke-virtual {p0}, Landroid/support/design/internal/ParcelableSparseArray;->size()I

    move-result v0

    .line 53
    new-array v1, v0, [I

    .line 54
    new-array v2, v0, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_1c

    .line 56
    invoke-virtual {p0, v3}, Landroid/support/design/internal/ParcelableSparseArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 57
    invoke-virtual {p0, v3}, Landroid/support/design/internal/ParcelableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 59
    :cond_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 61
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method

###### Class android.support.design.internal.ParcelableSparseArray.AnonymousClass1 (android.support.design.internal.ParcelableSparseArray$1)
.class final Landroid/support/design/internal/ParcelableSparseArray$1;
.super Ljava/lang/Object;
.source "ParcelableSparseArray.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/ParcelableSparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/support/design/internal/ParcelableSparseArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/design/internal/ParcelableSparseArray;
    .registers 4

    .line 73
    new-instance v0, Landroid/support/design/internal/ParcelableSparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/design/internal/ParcelableSparseArray;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/internal/ParcelableSparseArray;
    .registers 4

    .line 68
    new-instance v0, Landroid/support/design/internal/ParcelableSparseArray;

    invoke-direct {v0, p1, p2}, Landroid/support/design/internal/ParcelableSparseArray;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Landroid/support/design/internal/ParcelableSparseArray$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/design/internal/ParcelableSparseArray;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    .line 65
    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/ParcelableSparseArray$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/internal/ParcelableSparseArray;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/support/design/internal/ParcelableSparseArray;
    .registers 2

    .line 78
    new-array p1, p1, [Landroid/support/design/internal/ParcelableSparseArray;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Landroid/support/design/internal/ParcelableSparseArray$1;->newArray(I)[Landroid/support/design/internal/ParcelableSparseArray;

    move-result-object p1

    return-object p1
.end method
