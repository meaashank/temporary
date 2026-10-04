package androidx.versionedparcelable;

import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.NetworkOnMainThreadException;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.util.ArraySet;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseBooleanArray;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public abstract class VersionedParcel {
    private static final String a = "VersionedParcel";
    private static final int b = -1;
    private static final int c = -2;
    private static final int d = -3;
    private static final int e = -4;
    private static final int f = -5;
    private static final int g = -6;
    private static final int h = -7;
    private static final int i = -9;
    private static final int j = 1;
    private static final int k = 2;
    private static final int l = 3;
    private static final int m = 4;
    private static final int n = 5;

    protected abstract void a(double d2);

    protected abstract void a(float f2);

    protected abstract void a(int i2);

    protected abstract void a(long j2);

    protected abstract void a(Bundle bundle);

    protected abstract void a(IBinder iBinder);

    protected abstract void a(IInterface iInterface);

    protected abstract void a(Parcelable parcelable);

    protected abstract void a(String str);

    protected abstract void a(boolean z);

    public void a(boolean z, boolean z2) {
    }

    protected abstract void a(byte[] bArr);

    protected abstract void a(byte[] bArr, int i2, int i3);

    public boolean a() {
        return false;
    }

    protected abstract void b();

    protected abstract boolean b(int i2);

    protected abstract VersionedParcel c();

    protected abstract void c(int i2);

    protected abstract int d();

    protected abstract long e();

    protected abstract float f();

    protected abstract double g();

    protected abstract String h();

    protected abstract IBinder i();

    protected abstract byte[] j();

    protected abstract <T extends Parcelable> T k();

    protected abstract Bundle l();

    protected abstract boolean m();

    public void a(IInterface iInterface, int i2) {
        c(i2);
        a(iInterface);
    }

    public void a(Bundle bundle, int i2) {
        c(i2);
        a(bundle);
    }

    public void a(boolean z, int i2) {
        c(i2);
        a(z);
    }

    public void a(byte[] bArr, int i2) {
        c(i2);
        a(bArr);
    }

    public void a(byte[] bArr, int i2, int i3, int i4) {
        c(i4);
        a(bArr, i2, i3);
    }

    public void a(int i2, int i3) {
        c(i3);
        a(i2);
    }

    public void a(long j2, int i2) {
        c(i2);
        a(j2);
    }

    public void a(float f2, int i2) {
        c(i2);
        a(f2);
    }

    public void a(double d2, int i2) {
        c(i2);
        a(d2);
    }

    public void a(String str, int i2) {
        c(i2);
        a(str);
    }

    public void a(IBinder iBinder, int i2) {
        c(i2);
        a(iBinder);
    }

    public void a(Parcelable parcelable, int i2) {
        c(i2);
        a(parcelable);
    }

    public boolean b(boolean z, int i2) {
        return !b(i2) ? z : m();
    }

    public int b(int i2, int i3) {
        return !b(i3) ? i2 : d();
    }

    public long b(long j2, int i2) {
        return !b(i2) ? j2 : e();
    }

    public float b(float f2, int i2) {
        return !b(i2) ? f2 : f();
    }

    public double b(double d2, int i2) {
        return !b(i2) ? d2 : g();
    }

    public String b(String str, int i2) {
        return !b(i2) ? str : h();
    }

    public IBinder b(IBinder iBinder, int i2) {
        return !b(i2) ? iBinder : i();
    }

    public byte[] b(byte[] bArr, int i2) {
        return !b(i2) ? bArr : j();
    }

    public <T extends Parcelable> T b(T t, int i2) {
        return !b(i2) ? t : (T) k();
    }

    public Bundle b(Bundle bundle, int i2) {
        return !b(i2) ? bundle : l();
    }

    public void a(byte b2, int i2) {
        c(i2);
        a((int) b2);
    }

    @RequiresApi(api = 21)
    public void a(Size size, int i2) {
        c(i2);
        a(size != null);
        if (size != null) {
            a(size.getWidth());
            a(size.getHeight());
        }
    }

    @RequiresApi(api = 21)
    public void a(SizeF sizeF, int i2) {
        c(i2);
        a(sizeF != null);
        if (sizeF != null) {
            a(sizeF.getWidth());
            a(sizeF.getHeight());
        }
    }

    public void a(SparseBooleanArray sparseBooleanArray, int i2) {
        c(i2);
        if (sparseBooleanArray == null) {
            a(-1);
            return;
        }
        int size = sparseBooleanArray.size();
        a(size);
        for (int i3 = 0; i3 < size; i3++) {
            a(sparseBooleanArray.keyAt(i3));
            a(sparseBooleanArray.valueAt(i3));
        }
    }

    public void a(boolean[] zArr, int i2) {
        c(i2);
        a(zArr);
    }

    protected void a(boolean[] zArr) {
        if (zArr != null) {
            a(zArr.length);
            for (boolean z : zArr) {
                a(z ? 1 : 0);
            }
            return;
        }
        a(-1);
    }

    public boolean[] b(boolean[] zArr, int i2) {
        return !b(i2) ? zArr : n();
    }

    protected boolean[] n() {
        int iD = d();
        if (iD < 0) {
            return null;
        }
        boolean[] zArr = new boolean[iD];
        for (int i2 = 0; i2 < iD; i2++) {
            zArr[i2] = d() != 0;
        }
        return zArr;
    }

    public void a(char[] cArr, int i2) {
        c(i2);
        if (cArr != null) {
            a(cArr.length);
            for (char c2 : cArr) {
                a((int) c2);
            }
            return;
        }
        a(-1);
    }

    public char[] b(char[] cArr, int i2) {
        if (!b(i2)) {
            return cArr;
        }
        int iD = d();
        if (iD < 0) {
            return null;
        }
        char[] cArr2 = new char[iD];
        for (int i3 = 0; i3 < iD; i3++) {
            cArr2[i3] = (char) d();
        }
        return cArr2;
    }

    public void a(int[] iArr, int i2) {
        c(i2);
        a(iArr);
    }

    protected void a(int[] iArr) {
        if (iArr != null) {
            a(iArr.length);
            for (int i2 : iArr) {
                a(i2);
            }
            return;
        }
        a(-1);
    }

    public int[] b(int[] iArr, int i2) {
        return !b(i2) ? iArr : o();
    }

    protected int[] o() {
        int iD = d();
        if (iD < 0) {
            return null;
        }
        int[] iArr = new int[iD];
        for (int i2 = 0; i2 < iD; i2++) {
            iArr[i2] = d();
        }
        return iArr;
    }

    public void a(long[] jArr, int i2) {
        c(i2);
        a(jArr);
    }

    protected void a(long[] jArr) {
        if (jArr != null) {
            a(jArr.length);
            for (long j2 : jArr) {
                a(j2);
            }
            return;
        }
        a(-1);
    }

    public long[] b(long[] jArr, int i2) {
        return !b(i2) ? jArr : p();
    }

    protected long[] p() {
        int iD = d();
        if (iD < 0) {
            return null;
        }
        long[] jArr = new long[iD];
        for (int i2 = 0; i2 < iD; i2++) {
            jArr[i2] = e();
        }
        return jArr;
    }

    public void a(float[] fArr, int i2) {
        c(i2);
        a(fArr);
    }

    protected void a(float[] fArr) {
        if (fArr != null) {
            a(fArr.length);
            for (float f2 : fArr) {
                a(f2);
            }
            return;
        }
        a(-1);
    }

    public float[] b(float[] fArr, int i2) {
        return !b(i2) ? fArr : q();
    }

    protected float[] q() {
        int iD = d();
        if (iD < 0) {
            return null;
        }
        float[] fArr = new float[iD];
        for (int i2 = 0; i2 < iD; i2++) {
            fArr[i2] = f();
        }
        return fArr;
    }

    public void a(double[] dArr, int i2) {
        c(i2);
        a(dArr);
    }

    protected void a(double[] dArr) {
        if (dArr != null) {
            a(dArr.length);
            for (double d2 : dArr) {
                a(d2);
            }
            return;
        }
        a(-1);
    }

    public double[] b(double[] dArr, int i2) {
        return !b(i2) ? dArr : r();
    }

    protected double[] r() {
        int iD = d();
        if (iD < 0) {
            return null;
        }
        double[] dArr = new double[iD];
        for (int i2 = 0; i2 < iD; i2++) {
            dArr[i2] = g();
        }
        return dArr;
    }

    public <T> void a(Set<T> set, int i2) {
        a((Collection) set, i2);
    }

    public <T> void a(List<T> list, int i2) {
        a((Collection) list, i2);
    }

    private <T> void a(Collection<T> collection, int i2) {
        c(i2);
        if (collection == null) {
            a(-1);
        }
        int size = collection.size();
        a(size);
        if (size > 0) {
            int iA = a(collection.iterator().next());
            a(iA);
            switch (iA) {
                case 1:
                    Iterator<T> it = collection.iterator();
                    while (it.hasNext()) {
                        a((g) it.next());
                    }
                    break;
                case 2:
                    Iterator<T> it2 = collection.iterator();
                    while (it2.hasNext()) {
                        a((Parcelable) it2.next());
                    }
                    break;
                case 3:
                    Iterator<T> it3 = collection.iterator();
                    while (it3.hasNext()) {
                        a((Serializable) it3.next());
                    }
                    break;
                case 4:
                    Iterator<T> it4 = collection.iterator();
                    while (it4.hasNext()) {
                        a((String) it4.next());
                    }
                    break;
                case 5:
                    Iterator<T> it5 = collection.iterator();
                    while (it5.hasNext()) {
                        a((IBinder) it5.next());
                    }
                    break;
            }
        }
    }

    public <T> void a(T[] tArr, int i2) {
        c(i2);
        a((Object[]) tArr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    protected <T> void a(T[] tArr) {
        if (tArr == 0) {
            a(-1);
        }
        int length = tArr.length;
        a(length);
        if (length > 0) {
            int i2 = 0;
            int iA = a(tArr[0]);
            a(iA);
            switch (iA) {
                case 1:
                    while (i2 < length) {
                        a((g) tArr[i2]);
                        i2++;
                    }
                    break;
                case 2:
                    while (i2 < length) {
                        a((Parcelable) tArr[i2]);
                        i2++;
                    }
                    break;
                case 3:
                    while (i2 < length) {
                        a((Serializable) tArr[i2]);
                        i2++;
                    }
                    break;
                case 4:
                    while (i2 < length) {
                        a((String) tArr[i2]);
                        i2++;
                    }
                    break;
                case 5:
                    while (i2 < length) {
                        a((IBinder) tArr[i2]);
                        i2++;
                    }
                    break;
            }
        }
    }

    private <T> int a(T t) {
        if (t instanceof String) {
            return 4;
        }
        if (t instanceof Parcelable) {
            return 2;
        }
        if (t instanceof g) {
            return 1;
        }
        if (t instanceof Serializable) {
            return 3;
        }
        if (t instanceof IBinder) {
            return 5;
        }
        throw new IllegalArgumentException(t.getClass().getName() + " cannot be VersionedParcelled");
    }

    public void a(g gVar, int i2) {
        c(i2);
        a(gVar);
    }

    protected void a(g gVar) {
        if (gVar == null) {
            a((String) null);
            return;
        }
        b(gVar);
        VersionedParcel versionedParcelC = c();
        a(gVar, versionedParcelC);
        versionedParcelC.b();
    }

    private void b(g gVar) {
        try {
            a(a((Class<? extends g>) gVar.getClass()).getName());
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException(gVar.getClass().getSimpleName() + " does not have a Parcelizer", e2);
        }
    }

    public void a(Serializable serializable, int i2) {
        c(i2);
        a(serializable);
    }

    private void a(Serializable serializable) {
        if (serializable == null) {
            a((String) null);
            return;
        }
        String name = serializable.getClass().getName();
        a(name);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            a(byteArrayOutputStream.toByteArray());
        } catch (IOException e2) {
            throw new RuntimeException("VersionedParcelable encountered IOException writing serializable object (name = " + name + ")", e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(Exception exc, int i2) {
        c(i2);
        if (exc == 0) {
            s();
            return;
        }
        int i3 = 0;
        if ((exc instanceof Parcelable) && exc.getClass().getClassLoader() == Parcelable.class.getClassLoader()) {
            i3 = -9;
        } else if (exc instanceof SecurityException) {
            i3 = -1;
        } else if (exc instanceof BadParcelableException) {
            i3 = -2;
        } else if (exc instanceof IllegalArgumentException) {
            i3 = -3;
        } else if (exc instanceof NullPointerException) {
            i3 = -4;
        } else if (exc instanceof IllegalStateException) {
            i3 = -5;
        } else if (exc instanceof NetworkOnMainThreadException) {
            i3 = -6;
        } else if (exc instanceof UnsupportedOperationException) {
            i3 = -7;
        }
        a(i3);
        if (i3 == 0) {
            if (exc instanceof RuntimeException) {
                throw ((RuntimeException) exc);
            }
            throw new RuntimeException(exc);
        }
        a(exc.getMessage());
        if (i3 != -9) {
            return;
        }
        a((Parcelable) exc);
    }

    protected void s() {
        a(0);
    }

    public Exception b(Exception exc, int i2) {
        int iV;
        return (b(i2) && (iV = v()) != 0) ? a(iV, h()) : exc;
    }

    private int v() {
        return d();
    }

    private Exception a(int i2, String str) {
        return b(i2, str);
    }

    @NonNull
    protected static Throwable a(@NonNull Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    private Exception b(int i2, String str) {
        switch (i2) {
            case -9:
                return (Exception) k();
            case -8:
            default:
                return new RuntimeException("Unknown exception code: " + i2 + " msg " + str);
            case -7:
                return new UnsupportedOperationException(str);
            case -6:
                return new NetworkOnMainThreadException();
            case -5:
                return new IllegalStateException(str);
            case -4:
                return new NullPointerException(str);
            case -3:
                return new IllegalArgumentException(str);
            case -2:
                return new BadParcelableException(str);
            case -1:
                return new SecurityException(str);
        }
    }

    public byte b(byte b2, int i2) {
        return !b(i2) ? b2 : (byte) (d() & 255);
    }

    @RequiresApi(api = 21)
    public Size b(Size size, int i2) {
        if (!b(i2)) {
            return size;
        }
        if (m()) {
            return new Size(d(), d());
        }
        return null;
    }

    @RequiresApi(api = 21)
    public SizeF b(SizeF sizeF, int i2) {
        if (!b(i2)) {
            return sizeF;
        }
        if (m()) {
            return new SizeF(f(), f());
        }
        return null;
    }

    public SparseBooleanArray b(SparseBooleanArray sparseBooleanArray, int i2) {
        if (!b(i2)) {
            return sparseBooleanArray;
        }
        int iD = d();
        if (iD < 0) {
            return null;
        }
        SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray(iD);
        for (int i3 = 0; i3 < iD; i3++) {
            sparseBooleanArray2.put(d(), m());
        }
        return sparseBooleanArray2;
    }

    public <T> Set<T> b(Set<T> set, int i2) {
        return !b(i2) ? set : (Set) a(i2, new ArraySet());
    }

    public <T> List<T> b(List<T> list, int i2) {
        return !b(i2) ? list : (List) a(i2, new ArrayList());
    }

    private <T, S extends Collection<T>> S a(int i2, S s) {
        int iD = d();
        if (iD < 0) {
            return null;
        }
        if (iD != 0) {
            int iD2 = d();
            if (iD >= 0) {
                switch (iD2) {
                    case 1:
                        while (iD > 0) {
                            s.add(t());
                            iD--;
                        }
                        break;
                    case 2:
                        while (iD > 0) {
                            s.add(k());
                            iD--;
                        }
                        break;
                    case 3:
                        while (iD > 0) {
                            s.add(u());
                            iD--;
                        }
                        break;
                    case 4:
                        while (iD > 0) {
                            s.add(h());
                            iD--;
                        }
                        break;
                    case 5:
                        while (iD > 0) {
                            s.add(i());
                            iD--;
                        }
                        break;
                }
            } else {
                return null;
            }
        }
        return s;
    }

    public <T> T[] b(T[] tArr, int i2) {
        return !b(i2) ? tArr : (T[]) b(tArr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected <T> T[] b(T[] tArr) {
        int iD = d();
        if (iD < 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(iD);
        if (iD != 0) {
            int iD2 = d();
            if (iD >= 0) {
                switch (iD2) {
                    case 1:
                        while (iD > 0) {
                            arrayList.add(t());
                            iD--;
                        }
                        break;
                    case 2:
                        while (iD > 0) {
                            arrayList.add(k());
                            iD--;
                        }
                        break;
                    case 3:
                        while (iD > 0) {
                            arrayList.add(u());
                            iD--;
                        }
                        break;
                    case 4:
                        while (iD > 0) {
                            arrayList.add(h());
                            iD--;
                        }
                        break;
                    case 5:
                        while (iD > 0) {
                            arrayList.add(i());
                            iD--;
                        }
                        break;
                }
            } else {
                return null;
            }
        }
        return (T[]) arrayList.toArray(tArr);
    }

    public <T extends g> T b(T t, int i2) {
        return !b(i2) ? t : (T) t();
    }

    protected <T extends g> T t() {
        String strH = h();
        if (strH == null) {
            return null;
        }
        return (T) a(strH, c());
    }

    protected Serializable u() {
        String strH = h();
        if (strH == null) {
            return null;
        }
        try {
            return (Serializable) new ObjectInputStream(new ByteArrayInputStream(j())) { // from class: androidx.versionedparcelable.VersionedParcel.1
                @Override // java.io.ObjectInputStream
                protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws ClassNotFoundException {
                    Class<?> cls = Class.forName(objectStreamClass.getName(), false, getClass().getClassLoader());
                    return cls != null ? cls : super.resolveClass(objectStreamClass);
                }
            }.readObject();
        } catch (IOException e2) {
            throw new RuntimeException("VersionedParcelable encountered IOException reading a Serializable object (name = " + strH + ")", e2);
        } catch (ClassNotFoundException e3) {
            throw new RuntimeException("VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = " + strH + ")", e3);
        }
    }

    protected static <T extends g> T a(String str, VersionedParcel versionedParcel) {
        try {
            return (T) Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class).invoke(null, versionedParcel);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
        } catch (InvocationTargetException e5) {
            if (e5.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e5.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e5);
        }
    }

    protected static <T extends g> void a(T t, VersionedParcel versionedParcel) {
        try {
            c(t).getDeclaredMethod("write", t.getClass(), VersionedParcel.class).invoke(null, t, versionedParcel);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
        } catch (InvocationTargetException e5) {
            if (e5.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e5.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e5);
        }
    }

    private static <T extends g> Class c(T t) {
        return a((Class<? extends g>) t.getClass());
    }

    private static Class a(Class<? extends g> cls) {
        return Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
    }

    public static class ParcelException extends RuntimeException {
        public ParcelException(Throwable th) {
            super(th);
        }
    }
}
