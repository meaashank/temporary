package android.arch.lifecycle;

import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

/* JADX INFO: compiled from: Transformations.java */
/* JADX INFO: loaded from: classes.dex */
public class p {
    private p() {
    }

    @MainThread
    public static <X, Y> LiveData<Y> a(@NonNull LiveData<X> liveData, @NonNull final android.arch.a.c.a<X, Y> aVar) {
        final i iVar = new i();
        iVar.a(liveData, new l<X>() { // from class: android.arch.lifecycle.p.1
            @Override // android.arch.lifecycle.l
            public void onChanged(@Nullable X x) {
                iVar.setValue(aVar.a(x));
            }
        });
        return iVar;
    }

    @MainThread
    public static <X, Y> LiveData<Y> b(@NonNull LiveData<X> liveData, @NonNull final android.arch.a.c.a<X, LiveData<Y>> aVar) {
        final i iVar = new i();
        iVar.a(liveData, new l<X>() { // from class: android.arch.lifecycle.p.2
            LiveData<Y> a;

            @Override // android.arch.lifecycle.l
            public void onChanged(@Nullable X x) {
                LiveData<Y> liveData2 = (LiveData) aVar.a(x);
                if (this.a == liveData2) {
                    return;
                }
                if (this.a != null) {
                    iVar.a(this.a);
                }
                this.a = liveData2;
                if (this.a != null) {
                    iVar.a(this.a, new l<Y>() { // from class: android.arch.lifecycle.p.2.1
                        @Override // android.arch.lifecycle.l
                        public void onChanged(@Nullable Y y) {
                            iVar.setValue(y);
                        }
                    });
                }
            }
        });
        return iVar;
    }
}
