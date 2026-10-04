###### Class androidx.versionedparcelable.e (androidx.versionedparcelable.e)
.class Landroidx/versionedparcelable/e;
.super Landroidx/versionedparcelable/VersionedParcel;
.source "VersionedParcelParcel.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final a:Z = false

.field private static final b:Ljava/lang/String; = "VersionedParcelParcel"


# instance fields
.field private final c:Landroid/util/SparseIntArray;

.field private final d:Landroid/os/Parcel;

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;

.field private h:I

.field private i:I


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const-string v2, ""

    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/versionedparcelable/e;-><init>(Landroid/os/Parcel;IILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;IILjava/lang/String;)V
    .registers 6

    .line 49
    invoke-direct {p0}, Landroidx/versionedparcelable/VersionedParcel;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/versionedparcelable/e;->c:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Landroidx/versionedparcelable/e;->h:I

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroidx/versionedparcelable/e;->i:I

    .line 50
    iput-object p1, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    .line 51
    iput p2, p0, Landroidx/versionedparcelable/e;->e:I

    .line 52
    iput p3, p0, Landroidx/versionedparcelable/e;->f:I

    .line 53
    iget p1, p0, Landroidx/versionedparcelable/e;->e:I

    iput p1, p0, Landroidx/versionedparcelable/e;->i:I

    .line 54
    iput-object p4, p0, Landroidx/versionedparcelable/e;->g:Ljava/lang/String;

    return-void
.end method

.method private d(I)I
    .registers 5

    .line 58
    :cond_0
    iget v0, p0, Landroidx/versionedparcelable/e;->i:I

    iget v1, p0, Landroidx/versionedparcelable/e;->f:I

    if-ge v0, v1, :cond_27

    .line 59
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    iget v1, p0, Landroidx/versionedparcelable/e;->i:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    iget-object v1, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    iget v2, p0, Landroidx/versionedparcelable/e;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/versionedparcelable/e;->i:I

    if-ne v1, p1, :cond_0

    .line 65
    iget-object p1, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    return p1

    :cond_27
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public a(D)V
    .registers 4

    .line 154
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method

.method public a(F)V
    .registers 3

    .line 149
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method public a(I)V
    .registers 3

    .line 139
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public a(J)V
    .registers 4

    .line 144
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3

    .line 184
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/os/IBinder;)V
    .registers 3

    .line 164
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method public a(Landroid/os/IInterface;)V
    .registers 3

    .line 179
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .registers 4

    .line 169
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 159
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 174
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public a([B)V
    .registers 4

    if-eqz p1, :cond_e

    .line 120
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_14

    .line 123
    :cond_e
    iget-object p1, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_14
    return-void
.end method

.method public a([BII)V
    .registers 6

    if-eqz p1, :cond_e

    .line 130
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Parcel;->writeByteArray([BII)V

    goto :goto_14

    .line 133
    :cond_e
    iget-object p1, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_14
    return-void
.end method

.method public b()V
    .registers 5

    .line 93
    iget v0, p0, Landroidx/versionedparcelable/e;->h:I

    if-ltz v0, :cond_23

    .line 94
    iget-object v0, p0, Landroidx/versionedparcelable/e;->c:Landroid/util/SparseIntArray;

    iget v1, p0, Landroidx/versionedparcelable/e;->h:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 95
    iget-object v1, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    sub-int v2, v1, v0

    .line 101
    iget-object v3, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 102
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_23
    return-void
.end method

.method public b(I)Z
    .registers 3

    .line 72
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/e;->d(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    return p1

    .line 77
    :cond_9
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 p1, 0x1

    return p1
.end method

.method protected c()Landroidx/versionedparcelable/VersionedParcel;
    .registers 7

    .line 113
    new-instance v0, Landroidx/versionedparcelable/e;

    iget-object v1, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    iget-object v2, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    iget v3, p0, Landroidx/versionedparcelable/e;->i:I

    iget v4, p0, Landroidx/versionedparcelable/e;->e:I

    if-ne v3, v4, :cond_13

    iget v3, p0, Landroidx/versionedparcelable/e;->f:I

    goto :goto_15

    :cond_13
    iget v3, p0, Landroidx/versionedparcelable/e;->i:I

    :goto_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroidx/versionedparcelable/e;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/versionedparcelable/e;-><init>(Landroid/os/Parcel;IILjava/lang/String;)V

    return-object v0
.end method

.method public c(I)V
    .registers 4

    .line 83
    invoke-virtual {p0}, Landroidx/versionedparcelable/e;->b()V

    .line 84
    iput p1, p0, Landroidx/versionedparcelable/e;->h:I

    .line 85
    iget-object v0, p0, Landroidx/versionedparcelable/e;->c:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/e;->a(I)V

    .line 88
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/e;->a(I)V

    return-void
.end method

.method public d()I
    .registers 2

    .line 189
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public e()J
    .registers 3

    .line 194
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()F
    .registers 2

    .line 199
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    return v0
.end method

.method public g()D
    .registers 3

    .line 204
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/os/IBinder;
    .registers 2

    .line 214
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public j()[B
    .registers 3

    .line 219
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 223
    :cond_a
    new-array v0, v0, [B

    .line 224
    iget-object v1, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-object v0
.end method

.method public k()Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public l()Landroid/os/Bundle;
    .registers 3

    .line 236
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .registers 2

    .line 241
    iget-object v0, p0, Landroidx/versionedparcelable/e;->d:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
