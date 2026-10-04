###### Class android.support.design.stateful.ExtendableSavedState (android.support.design.stateful.ExtendableSavedState)
.class public Landroid/support/design/stateful/ExtendableSavedState;
.super Landroid/support/v4/view/AbsSavedState;
.source "ExtendableSavedState.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/design/stateful/ExtendableSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final extendableStates:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Landroid/support/design/stateful/ExtendableSavedState$1;

    invoke-direct {v0}, Landroid/support/design/stateful/ExtendableSavedState$1;-><init>()V

    sput-object v0, Landroid/support/design/stateful/ExtendableSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 8

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 48
    new-array v0, p2, [Ljava/lang/String;

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 51
    new-array v1, p2, [Landroid/os/Bundle;

    .line 52
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 54
    new-instance p1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {p1, p2}, Landroid/support/v4/util/SimpleArrayMap;-><init>(I)V

    iput-object p1, p0, Landroid/support/design/stateful/ExtendableSavedState;->extendableStates:Landroid/support/v4/util/SimpleArrayMap;

    const/4 p1, 0x0

    :goto_1b
    if-ge p1, p2, :cond_29

    .line 56
    iget-object v2, p0, Landroid/support/design/stateful/ExtendableSavedState;->extendableStates:Landroid/support/v4/util/SimpleArrayMap;

    aget-object v3, v0, p1

    aget-object v4, v1, p1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    :cond_29
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Landroid/support/design/stateful/ExtendableSavedState$1;)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/design/stateful/ExtendableSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 40
    new-instance p1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object p1, p0, Landroid/support/design/stateful/ExtendableSavedState;->extendableStates:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtendableSavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " states="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/design/stateful/ExtendableSavedState;->extendableStates:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 62
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 64
    iget-object p2, p0, Landroid/support/design/stateful/ExtendableSavedState;->extendableStates:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p2}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result p2

    .line 65
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    new-array v0, p2, [Ljava/lang/String;

    .line 68
    new-array v1, p2, [Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, p2, :cond_2b

    .line 71
    iget-object v4, p0, Landroid/support/design/stateful/ExtendableSavedState;->extendableStates:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v3

    .line 72
    iget-object v4, p0, Landroid/support/design/stateful/ExtendableSavedState;->extendableStates:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 75
    :cond_2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method

###### Class android.support.design.stateful.ExtendableSavedState.AnonymousClass1 (android.support.design.stateful.ExtendableSavedState$1)
.class final Landroid/support/design/stateful/ExtendableSavedState$1;
.super Ljava/lang/Object;
.source "ExtendableSavedState.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/stateful/ExtendableSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/support/design/stateful/ExtendableSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/design/stateful/ExtendableSavedState;
    .registers 4

    .line 98
    new-instance v0, Landroid/support/design/stateful/ExtendableSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroid/support/design/stateful/ExtendableSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Landroid/support/design/stateful/ExtendableSavedState$1;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/stateful/ExtendableSavedState;
    .registers 5

    .line 93
    new-instance v0, Landroid/support/design/stateful/ExtendableSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/support/design/stateful/ExtendableSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Landroid/support/design/stateful/ExtendableSavedState$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 89
    invoke-virtual {p0, p1}, Landroid/support/design/stateful/ExtendableSavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/design/stateful/ExtendableSavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    .line 89
    invoke-virtual {p0, p1, p2}, Landroid/support/design/stateful/ExtendableSavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/stateful/ExtendableSavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/support/design/stateful/ExtendableSavedState;
    .registers 2

    .line 103
    new-array p1, p1, [Landroid/support/design/stateful/ExtendableSavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 89
    invoke-virtual {p0, p1}, Landroid/support/design/stateful/ExtendableSavedState$1;->newArray(I)[Landroid/support/design/stateful/ExtendableSavedState;

    move-result-object p1

    return-object p1
.end method
