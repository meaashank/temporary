###### Class androidx.versionedparcelable.f (androidx.versionedparcelable.f)
.class Landroidx/versionedparcelable/f;
.super Landroidx/versionedparcelable/VersionedParcel;
.source "VersionedParcelStream.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/versionedparcelable/f$b;,
        Landroidx/versionedparcelable/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;

.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3

.field private static final f:I = 0x4

.field private static final g:I = 0x5

.field private static final h:I = 0x6

.field private static final i:I = 0x7

.field private static final j:I = 0x8

.field private static final k:I = 0x9

.field private static final l:I = 0xa

.field private static final m:I = 0xb

.field private static final n:I = 0xc

.field private static final o:I = 0xd

.field private static final p:I = 0xe


# instance fields
.field private final q:Ljava/io/DataInputStream;

.field private final r:Ljava/io/DataOutputStream;

.field private final s:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/versionedparcelable/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/io/DataInputStream;

.field private u:Ljava/io/DataOutputStream;

.field private v:Landroidx/versionedparcelable/f$a;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-16"

    .line 43
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroidx/versionedparcelable/f;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    .line 71
    invoke-direct {p0}, Landroidx/versionedparcelable/VersionedParcel;-><init>()V

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/versionedparcelable/f;->s:Landroid/util/SparseArray;

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 72
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_14

    :cond_13
    move-object v1, v0

    :goto_14
    iput-object v1, p0, Landroidx/versionedparcelable/f;->q:Ljava/io/DataInputStream;

    if-eqz p2, :cond_1d

    .line 73
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :cond_1d
    iput-object v0, p0, Landroidx/versionedparcelable/f;->r:Ljava/io/DataOutputStream;

    .line 74
    iget-object p1, p0, Landroidx/versionedparcelable/f;->q:Ljava/io/DataInputStream;

    iput-object p1, p0, Landroidx/versionedparcelable/f;->t:Ljava/io/DataInputStream;

    .line 75
    iget-object p1, p0, Landroidx/versionedparcelable/f;->r:Ljava/io/DataOutputStream;

    iput-object p1, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    return-void
.end method

.method private a(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    packed-switch p1, :pswitch_data_96

    .line 475
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 472
    :pswitch_1a
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->q()[F

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_95

    .line 469
    :pswitch_23
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->f()F

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_95

    .line 466
    :pswitch_2c
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->p()[J

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_95

    .line 463
    :pswitch_34
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->e()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_95

    .line 460
    :pswitch_3c
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->o()[I

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_95

    .line 457
    :pswitch_44
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->d()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_95

    .line 454
    :pswitch_4c
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->r()[D

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_95

    .line 451
    :pswitch_54
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->g()D

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_95

    .line 448
    :pswitch_5c
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->n()[Z

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_95

    .line 445
    :pswitch_64
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->m()Z

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_95

    :pswitch_6c
    const/4 p1, 0x0

    .line 442
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/f;->b([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_95

    .line 439
    :pswitch_79
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_95

    .line 436
    :pswitch_81
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->l()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_95

    .line 433
    :pswitch_89
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->l()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_95

    :pswitch_91
    const/4 p1, 0x0

    .line 430
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_95
    return-void

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_91
        :pswitch_89
        :pswitch_81
        :pswitch_79
        :pswitch_6c
        :pswitch_64
        :pswitch_5c
        :pswitch_54
        :pswitch_4c
        :pswitch_44
        :pswitch_3c
        :pswitch_34
        :pswitch_2c
        :pswitch_23
        :pswitch_1a
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;)V
    .registers 5

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 382
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/f;->a(I)V

    goto/16 :goto_de

    .line 383
    :cond_8
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    .line 384
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/f;->a(I)V

    .line 385
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/f;->a(Landroid/os/Bundle;)V

    goto/16 :goto_de

    .line 386
    :cond_17
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_26

    const/4 v0, 0x3

    .line 387
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/f;->a(I)V

    .line 388
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/f;->a(Ljava/lang/String;)V

    goto/16 :goto_de

    .line 389
    :cond_26
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_35

    const/4 v0, 0x4

    .line 390
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/f;->a(I)V

    .line 391
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/f;->a([Ljava/lang/Object;)V

    goto/16 :goto_de

    .line 392
    :cond_35
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_48

    const/4 v0, 0x5

    .line 393
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/f;->a(I)V

    .line 394
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/f;->a(Z)V

    goto/16 :goto_de

    .line 395
    :cond_48
    instance-of v0, p1, [Z

    if-eqz v0, :cond_57

    const/4 v0, 0x6

    .line 396
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/f;->a(I)V

    .line 397
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/f;->a([Z)V

    goto/16 :goto_de

    .line 398
    :cond_57
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6a

    const/4 v0, 0x7

    .line 399
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/f;->a(I)V

    .line 400
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/f;->a(D)V

    goto/16 :goto_de

    .line 401
    :cond_6a
    instance-of v0, p1, [D

    if-eqz v0, :cond_79

    const/16 v0, 0x8

    .line 402
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/f;->a(I)V

    .line 403
    check-cast p1, [D

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/f;->a([D)V

    goto :goto_de

    .line 404
    :cond_79
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_8c

    const/16 v0, 0x9

    .line 405
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/f;->a(I)V

    .line 406
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/f;->a(I)V

    goto :goto_de

    .line 407
    :cond_8c
    instance-of v0, p1, [I

    if-eqz v0, :cond_9b

    const/16 v0, 0xa

    .line 408
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/f;->a(I)V

    .line 409
    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/f;->a([I)V

    goto :goto_de

    .line 410
    :cond_9b
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_ae

    const/16 v0, 0xb

    .line 411
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/f;->a(I)V

    .line 412
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/f;->a(J)V

    goto :goto_de

    .line 413
    :cond_ae
    instance-of v0, p1, [J

    if-eqz v0, :cond_bd

    const/16 v0, 0xc

    .line 414
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/f;->a(I)V

    .line 415
    check-cast p1, [J

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/f;->a([J)V

    goto :goto_de

    .line 416
    :cond_bd
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_d0

    const/16 v0, 0xd

    .line 417
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/f;->a(I)V

    .line 418
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/f;->a(F)V

    goto :goto_de

    .line 419
    :cond_d0
    instance-of v0, p1, [F

    if-eqz v0, :cond_df

    const/16 v0, 0xe

    .line 420
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/f;->a(I)V

    .line 421
    check-cast p1, [F

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/f;->a([F)V

    :goto_de
    return-void

    .line 423
    :cond_df
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(D)V
    .registers 4

    .line 207
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 209
    new-instance p2, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {p2, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(F)V
    .registers 3

    .line 197
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 199
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(I)V
    .registers 3

    .line 177
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 179
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(J)V
    .registers 4

    .line 187
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 189
    new-instance p2, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {p2, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5

    if-eqz p1, :cond_2c

    .line 351
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 352
    iget-object v1, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 353
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 354
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/f;->a(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 356
    invoke-direct {p0, v1}, Landroidx/versionedparcelable/f;->a(Ljava/lang/Object;)V

    goto :goto_13

    :catch_2a
    move-exception p1

    goto :goto_33

    .line 359
    :cond_2c
    iget-object p1, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_32} :catch_2a

    :cond_32
    return-void

    .line 362
    :goto_33
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Landroid/os/IBinder;)V
    .registers 3

    .line 240
    iget-boolean p1, p0, Landroidx/versionedparcelable/f;->w:Z

    if-eqz p1, :cond_5

    return-void

    .line 241
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Binders cannot be written to an OutputStream"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/os/IInterface;)V
    .registers 3

    .line 254
    iget-boolean p1, p0, Landroidx/versionedparcelable/f;->w:Z

    if-eqz p1, :cond_5

    return-void

    .line 255
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Binders cannot be written to an OutputStream"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/os/Parcelable;)V
    .registers 3

    .line 247
    iget-boolean p1, p0, Landroidx/versionedparcelable/f;->w:Z

    if-eqz p1, :cond_5

    return-void

    .line 248
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Parcelables cannot be written to an OutputStream"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_16

    .line 218
    :try_start_2
    sget-object v0, Landroidx/versionedparcelable/f;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 219
    iget-object v0, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 220
    iget-object v0, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_1c

    :catch_14
    move-exception p1

    goto :goto_1d

    .line 222
    :cond_16
    iget-object p1, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1c} :catch_14

    :goto_1c
    return-void

    .line 225
    :goto_1d
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Z)V
    .registers 3

    .line 232
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 234
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(ZZ)V
    .registers 3

    if-eqz p1, :cond_5

    .line 90
    iput-boolean p2, p0, Landroidx/versionedparcelable/f;->w:Z

    return-void

    .line 88
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serialization of this object is not allowed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([B)V
    .registers 4

    if-eqz p1, :cond_10

    .line 150
    :try_start_2
    iget-object v0, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    iget-object v0, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_16

    :catch_e
    move-exception p1

    goto :goto_17

    .line 153
    :cond_10
    iget-object p1, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_16} :catch_e

    :goto_16
    return-void

    .line 156
    :goto_17
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a([BII)V
    .registers 5

    if-eqz p1, :cond_f

    .line 164
    :try_start_2
    iget-object v0, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 165
    iget-object v0, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_15

    :catch_d
    move-exception p1

    goto :goto_16

    .line 167
    :cond_f
    iget-object p1, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_15} :catch_d

    :goto_15
    return-void

    .line 170
    :goto_16
    new-instance p2, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {p2, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 3

    .line 95
    iget-object v0, p0, Landroidx/versionedparcelable/f;->v:Landroidx/versionedparcelable/f$a;

    if-eqz v0, :cond_1e

    .line 97
    :try_start_4
    iget-object v0, p0, Landroidx/versionedparcelable/f;->v:Landroidx/versionedparcelable/f$a;

    iget-object v0, v0, Landroidx/versionedparcelable/f$a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-eqz v0, :cond_13

    .line 98
    iget-object v0, p0, Landroidx/versionedparcelable/f;->v:Landroidx/versionedparcelable/f$a;

    invoke-virtual {v0}, Landroidx/versionedparcelable/f$a;->a()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_17

    :cond_13
    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Landroidx/versionedparcelable/f;->v:Landroidx/versionedparcelable/f$a;

    goto :goto_1e

    :catch_17
    move-exception v0

    .line 101
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1e
    :goto_1e
    return-void
.end method

.method public b(I)Z
    .registers 7

    .line 114
    iget-object v0, p0, Landroidx/versionedparcelable/f;->s:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/f$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 116
    iget-object v2, p0, Landroidx/versionedparcelable/f;->s:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 117
    iget-object p1, v0, Landroidx/versionedparcelable/f$b;->a:Ljava/io/DataInputStream;

    iput-object p1, p0, Landroidx/versionedparcelable/f;->t:Ljava/io/DataInputStream;

    return v1

    .line 122
    :cond_15
    :goto_15
    :try_start_15
    iget-object v0, p0, Landroidx/versionedparcelable/f;->q:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v2, 0xffff

    and-int v3, v0, v2

    if-ne v3, v2, :cond_28

    .line 125
    iget-object v3, p0, Landroidx/versionedparcelable/f;->q:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 127
    :cond_28
    new-instance v4, Landroidx/versionedparcelable/f$b;

    shr-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v2

    iget-object v2, p0, Landroidx/versionedparcelable/f;->q:Ljava/io/DataInputStream;

    invoke-direct {v4, v0, v3, v2}, Landroidx/versionedparcelable/f$b;-><init>(IILjava/io/DataInputStream;)V

    .line 128
    iget v0, v4, Landroidx/versionedparcelable/f$b;->b:I

    if-ne v0, p1, :cond_3b

    .line 129
    iget-object p1, v4, Landroidx/versionedparcelable/f$b;->a:Ljava/io/DataInputStream;

    iput-object p1, p0, Landroidx/versionedparcelable/f;->t:Ljava/io/DataInputStream;

    return v1

    .line 132
    :cond_3b
    iget-object v0, p0, Landroidx/versionedparcelable/f;->s:Landroid/util/SparseArray;

    iget v2, v4, Landroidx/versionedparcelable/f$b;->b:I

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_42} :catch_43

    goto :goto_15

    :catch_43
    const/4 p1, 0x0

    return p1
.end method

.method protected c()Landroidx/versionedparcelable/VersionedParcel;
    .registers 4

    .line 109
    new-instance v0, Landroidx/versionedparcelable/f;

    iget-object v1, p0, Landroidx/versionedparcelable/f;->t:Ljava/io/DataInputStream;

    iget-object v2, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    invoke-direct {v0, v1, v2}, Landroidx/versionedparcelable/f;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public c(I)V
    .registers 4

    .line 141
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->b()V

    .line 142
    new-instance v0, Landroidx/versionedparcelable/f$a;

    iget-object v1, p0, Landroidx/versionedparcelable/f;->r:Ljava/io/DataOutputStream;

    invoke-direct {v0, p1, v1}, Landroidx/versionedparcelable/f$a;-><init>(ILjava/io/DataOutputStream;)V

    iput-object v0, p0, Landroidx/versionedparcelable/f;->v:Landroidx/versionedparcelable/f$a;

    .line 143
    iget-object p1, p0, Landroidx/versionedparcelable/f;->v:Landroidx/versionedparcelable/f$a;

    iget-object p1, p1, Landroidx/versionedparcelable/f$a;->b:Ljava/io/DataOutputStream;

    iput-object p1, p0, Landroidx/versionedparcelable/f;->u:Ljava/io/DataOutputStream;

    return-void
.end method

.method public d()I
    .registers 3

    .line 273
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/f;->t:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 275
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e()J
    .registers 3

    .line 282
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/f;->t:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    :catch_7
    move-exception v0

    .line 284
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public f()F
    .registers 3

    .line 291
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/f;->t:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 293
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public g()D
    .registers 3

    .line 300
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/f;->t:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    :catch_7
    move-exception v0

    .line 302
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public h()Ljava/lang/String;
    .registers 4

    .line 309
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/f;->t:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-lez v0, :cond_17

    .line 311
    new-array v0, v0, [B

    .line 312
    iget-object v1, p0, Landroidx/versionedparcelable/f;->t:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 313
    new-instance v1, Ljava/lang/String;

    sget-object v2, Landroidx/versionedparcelable/f;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_19

    return-object v1

    :cond_17
    const/4 v0, 0x0

    return-object v0

    :catch_19
    move-exception v0

    .line 318
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public i()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()[B
    .registers 3

    .line 325
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/f;->t:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-lez v0, :cond_10

    .line 327
    new-array v0, v0, [B

    .line 328
    iget-object v1, p0, Landroidx/versionedparcelable/f;->t:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_12

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0

    :catch_12
    move-exception v0

    .line 334
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public k()Landroid/os/Parcelable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Landroid/os/Bundle;
    .registers 6

    .line 368
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->d()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 372
    :cond_8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_1e

    .line 374
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->h()Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->d()I

    move-result v4

    invoke-direct {p0, v4, v3, v1}, Landroidx/versionedparcelable/f;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    return-object v1
.end method

.method public m()Z
    .registers 3

    .line 341
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/f;->t:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 343
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class androidx.versionedparcelable.f.a (androidx.versionedparcelable.f$a)
.class Landroidx/versionedparcelable/f$a;
.super Ljava/lang/Object;
.source "VersionedParcelStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/versionedparcelable/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/io/ByteArrayOutputStream;

.field final b:Ljava/io/DataOutputStream;

.field private final c:I

.field private final d:Ljava/io/DataOutputStream;


# direct methods
.method constructor <init>(ILjava/io/DataOutputStream;)V
    .registers 5

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroidx/versionedparcelable/f$a;->a:Ljava/io/ByteArrayOutputStream;

    .line 484
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Landroidx/versionedparcelable/f$a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Landroidx/versionedparcelable/f$a;->b:Ljava/io/DataOutputStream;

    .line 489
    iput p1, p0, Landroidx/versionedparcelable/f$a;->c:I

    .line 490
    iput-object p2, p0, Landroidx/versionedparcelable/f$a;->d:Ljava/io/DataOutputStream;

    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    .line 494
    iget-object v0, p0, Landroidx/versionedparcelable/f$a;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 495
    iget-object v0, p0, Landroidx/versionedparcelable/f$a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 496
    iget v1, p0, Landroidx/versionedparcelable/f$a;->c:I

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    if-lt v0, v2, :cond_18

    const v3, 0xffff

    goto :goto_19

    :cond_18
    move v3, v0

    :goto_19
    or-int/2addr v1, v3

    .line 497
    iget-object v3, p0, Landroidx/versionedparcelable/f$a;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-lt v0, v2, :cond_26

    .line 499
    iget-object v1, p0, Landroidx/versionedparcelable/f$a;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 501
    :cond_26
    iget-object v0, p0, Landroidx/versionedparcelable/f$a;->a:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Landroidx/versionedparcelable/f$a;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

###### Class androidx.versionedparcelable.f.b (androidx.versionedparcelable.f$b)
.class Landroidx/versionedparcelable/f$b;
.super Ljava/lang/Object;
.source "VersionedParcelStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/versionedparcelable/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/io/DataInputStream;

.field final b:I

.field private final c:I


# direct methods
.method constructor <init>(IILjava/io/DataInputStream;)V
    .registers 4

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    iput p2, p0, Landroidx/versionedparcelable/f$b;->c:I

    .line 512
    iput p1, p0, Landroidx/versionedparcelable/f$b;->b:I

    .line 513
    iget p1, p0, Landroidx/versionedparcelable/f$b;->c:I

    new-array p1, p1, [B

    .line 514
    invoke-virtual {p3, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 515
    new-instance p2, Ljava/io/DataInputStream;

    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, p3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Landroidx/versionedparcelable/f$b;->a:Ljava/io/DataInputStream;

    return-void
.end method
