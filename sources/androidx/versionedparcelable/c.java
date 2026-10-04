package androidx.versionedparcelable;

import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: ParcelUtils.java */
/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class c {
    private c() {
    }

    public static Parcelable a(g gVar) {
        return new ParcelImpl(gVar);
    }

    public static <T extends g> T a(Parcelable parcelable) {
        if (!(parcelable instanceof ParcelImpl)) {
            throw new IllegalArgumentException("Invalid parcel");
        }
        return (T) ((ParcelImpl) parcelable).getVersionedParcel();
    }

    public static void a(g gVar, OutputStream outputStream) {
        f fVar = new f(null, outputStream);
        fVar.a(gVar);
        fVar.b();
    }

    public static <T extends g> T a(InputStream inputStream) {
        return (T) new f(inputStream, null).t();
    }
}
