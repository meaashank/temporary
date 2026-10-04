###### Class android.content.pm.IPackageInstallObserver (android.content.pm.IPackageInstallObserver)
.class public interface abstract Landroid/content/pm/IPackageInstallObserver;
.super Ljava/lang/Object;
.source "IPackageInstallObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstallObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract packageInstalled(Ljava/lang/String;I)V
.end method

###### Class android.content.pm.IPackageInstallObserver.Stub (android.content.pm.IPackageInstallObserver$Stub)
.class public abstract Landroid/content/pm/IPackageInstallObserver$Stub;
.super Landroid/os/Binder;
.source "IPackageInstallObserver.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstallObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstallObserver"

.field static final TRANSACTION_packageInstalled:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.content.pm.IPackageInstallObserver"

    .line 18
    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstallObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.content.pm.IPackageInstallObserver"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 30
    instance-of v1, v0, Landroid/content/pm/IPackageInstallObserver;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/content/pm/IPackageInstallObserver;

    return-object v0

    .line 33
    :cond_13
    new-instance v0, Landroid/content/pm/IPackageInstallObserver$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/pm/IPackageInstallObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const-string v0, "android.content.pm.IPackageInstallObserver"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 46
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 51
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 56
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/IPackageInstallObserver$Stub;->packageInstalled(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method

###### Class android.content.pm.IPackageInstallObserver.Stub.Proxy (android.content.pm.IPackageInstallObserver$Stub$Proxy)
.class Landroid/content/pm/IPackageInstallObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPackageInstallObserver.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallObserver$Stub;
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

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/content/pm/IPackageInstallObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/content/pm/IPackageInstallObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.content.pm.IPackageInstallObserver"

    return-object v0
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .registers 6

    .line 83
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 84
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.content.pm.IPackageInstallObserver"

    .line 86
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object p1, p0, Landroid/content/pm/IPackageInstallObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 90
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_24
    move-exception p1

    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
