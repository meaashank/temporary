###### Class android.database.IContentObserver (android.database.IContentObserver)
.class public interface abstract Landroid/database/IContentObserver;
.super Ljava/lang/Object;
.source "IContentObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/IContentObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onChange(ZLandroid/net/Uri;I)V
.end method

###### Class android.database.IContentObserver.Stub (android.database.IContentObserver$Stub)
.class public abstract Landroid/database/IContentObserver$Stub;
.super Landroid/os/Binder;
.source "IContentObserver.java"

# interfaces
.implements Landroid/database/IContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/IContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/IContentObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.database.IContentObserver"

.field static final TRANSACTION_onChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.database.IContentObserver"

    .line 15
    invoke-virtual {p0, p0, v0}, Landroid/database/IContentObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.database.IContentObserver"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 27
    instance-of v1, v0, Landroid/database/IContentObserver;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/database/IContentObserver;

    return-object v0

    .line 30
    :cond_13
    new-instance v0, Landroid/database/IContentObserver$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/database/IContentObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const-string v0, "android.database.IContentObserver"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 43
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 48
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    .line 52
    :goto_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_2e

    .line 53
    sget-object p3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    goto :goto_2f

    :cond_2e
    const/4 p3, 0x0

    .line 59
    :goto_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 60
    invoke-virtual {p0, p1, p3, p2}, Landroid/database/IContentObserver$Stub;->onChange(ZLandroid/net/Uri;I)V

    return v1
.end method

###### Class android.database.IContentObserver.Stub.Proxy (android.database.IContentObserver$Stub$Proxy)
.class Landroid/database/IContentObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IContentObserver.java"

# interfaces
.implements Landroid/database/IContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/IContentObserver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/database/IContentObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/database/IContentObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.database.IContentObserver"

    return-object v0
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 6

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.database.IContentObserver"

    .line 93
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_17

    .line 96
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {p2, v0, p1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 100
    :cond_17
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    :goto_1a
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object p1, p0, Landroid/database/IContentObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    invoke-interface {p1, v1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_27

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_27
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
