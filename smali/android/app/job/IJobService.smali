###### Class android.app.job.IJobService (android.app.job.IJobService)
.class public interface abstract Landroid/app/job/IJobService;
.super Ljava/lang/Object;
.source "IJobService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IJobService$Stub;
    }
.end annotation


# virtual methods
.method public abstract startJob(Landroid/app/job/JobParameters;)V
.end method

.method public abstract stopJob(Landroid/app/job/JobParameters;)V
.end method

###### Class android.app.job.IJobService.Stub (android.app.job.IJobService$Stub)
.class public abstract Landroid/app/job/IJobService$Stub;
.super Landroid/os/Binder;
.source "IJobService.java"

# interfaces
.implements Landroid/app/job/IJobService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IJobService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.job.IJobService"

.field static final TRANSACTION_startJob:I = 0x1

.field static final TRANSACTION_stopJob:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.job.IJobService"

    .line 20
    invoke-virtual {p0, p0, v0}, Landroid/app/job/IJobService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.app.job.IJobService"

    .line 31
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 32
    instance-of v1, v0, Landroid/app/job/IJobService;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/app/job/IJobService;

    return-object v0

    .line 35
    :cond_13
    new-instance v0, Landroid/app/job/IJobService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/job/IJobService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const-string v0, "android.app.job.IJobService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3d

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_42

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 66
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_23

    .line 69
    sget-object p1, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/job/JobParameters;

    .line 74
    :cond_23
    invoke-virtual {p0, v1}, Landroid/app/job/IJobService$Stub;->stopJob(Landroid/app/job/JobParameters;)V

    return v2

    .line 53
    :pswitch_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_39

    .line 56
    sget-object p1, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/job/JobParameters;

    .line 61
    :cond_39
    invoke-virtual {p0, v1}, Landroid/app/job/IJobService$Stub;->startJob(Landroid/app/job/JobParameters;)V

    return v2

    .line 48
    :cond_3d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_27
        :pswitch_11
    .end packed-switch
.end method

###### Class android.app.job.IJobService.Stub.Proxy (android.app.job.IJobService$Stub$Proxy)
.class Landroid/app/job/IJobService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IJobService.java"

# interfaces
.implements Landroid/app/job/IJobService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobService$Stub;
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

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/app/job/IJobService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/app/job/IJobService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.app.job.IJobService"

    return-object v0
.end method

.method public startJob(Landroid/app/job/JobParameters;)V
    .registers 5

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.job.IJobService"

    .line 103
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    .line 105
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobParameters;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 109
    :cond_14
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    :goto_17
    iget-object p1, p0, Landroid/app/job/IJobService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p1, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_21

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_21
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public stopJob(Landroid/app/job/JobParameters;)V
    .registers 6

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.job.IJobService"

    .line 122
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    .line 124
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobParameters;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 128
    :cond_14
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    :goto_17
    iget-object p1, p0, Landroid/app/job/IJobService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v1, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_22

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
