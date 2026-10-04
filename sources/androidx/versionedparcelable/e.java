package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.util.SparseIntArray;

/* JADX INFO: compiled from: VersionedParcelParcel.java */
/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY})
class e extends VersionedParcel {
    private static final boolean a = false;
    private static final String b = "VersionedParcelParcel";
    private final SparseIntArray c;
    private final Parcel d;
    private final int e;
    private final int f;
    private final String g;
    private int h;
    private int i;

    e(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "");
    }

    e(Parcel parcel, int i, int i2, String str) {
        this.c = new SparseIntArray();
        this.h = -1;
        this.i = 0;
        this.d = parcel;
        this.e = i;
        this.f = i2;
        this.i = this.e;
        this.g = str;
    }

    private int d(int i) {
        while (this.i < this.f) {
            this.d.setDataPosition(this.i);
            int i2 = this.d.readInt();
            int i3 = this.d.readInt();
            this.i += i2;
            if (i3 == i) {
                return this.d.dataPosition();
            }
        }
        return -1;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean b(int i) {
        int iD = d(i);
        if (iD == -1) {
            return false;
        }
        this.d.setDataPosition(iD);
        return true;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void c(int i) {
        b();
        this.h = i;
        this.c.put(i, this.d.dataPosition());
        a(0);
        a(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void b() {
        if (this.h >= 0) {
            int i = this.c.get(this.h);
            int iDataPosition = this.d.dataPosition();
            this.d.setDataPosition(i);
            this.d.writeInt(iDataPosition - i);
            this.d.setDataPosition(iDataPosition);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected VersionedParcel c() {
        return new e(this.d, this.d.dataPosition(), this.i == this.e ? this.f : this.i, this.g + "  ");
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void a(byte[] bArr) {
        if (bArr != null) {
            this.d.writeInt(bArr.length);
            this.d.writeByteArray(bArr);
        } else {
            this.d.writeInt(-1);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void a(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            this.d.writeInt(bArr.length);
            this.d.writeByteArray(bArr, i, i2);
        } else {
            this.d.writeInt(-1);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void a(int i) {
        this.d.writeInt(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void a(long j) {
        this.d.writeLong(j);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void a(float f) {
        this.d.writeFloat(f);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void a(double d) {
        this.d.writeDouble(d);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void a(String str) {
        this.d.writeString(str);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void a(IBinder iBinder) {
        this.d.writeStrongBinder(iBinder);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void a(Parcelable parcelable) {
        this.d.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void a(boolean z) {
        this.d.writeInt(z ? 1 : 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void a(IInterface iInterface) {
        this.d.writeStrongInterface(iInterface);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void a(Bundle bundle) {
        this.d.writeBundle(bundle);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public int d() {
        return this.d.readInt();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public long e() {
        return this.d.readLong();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public float f() {
        return this.d.readFloat();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public double g() {
        return this.d.readDouble();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public String h() {
        return this.d.readString();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public IBinder i() {
        return this.d.readStrongBinder();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public byte[] j() {
        int i = this.d.readInt();
        if (i < 0) {
            return null;
        }
        byte[] bArr = new byte[i];
        this.d.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public <T extends Parcelable> T k() {
        return (T) this.d.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public Bundle l() {
        return this.d.readBundle(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean m() {
        return this.d.readInt() != 0;
    }
}
