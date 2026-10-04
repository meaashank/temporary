package android.arch.lifecycle;

import android.support.annotation.CallSuper;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: MediatorLiveData.java */
/* JADX INFO: loaded from: classes.dex */
public class i<T> extends k<T> {
    private android.arch.a.b.b<LiveData<?>, a<?>> a = new android.arch.a.b.b<>();

    @MainThread
    public <S> void a(@NonNull LiveData<S> liveData, @NonNull l<S> lVar) {
        a<?> aVar = new a<>(liveData, lVar);
        a<?> aVarA = this.a.a(liveData, aVar);
        if (aVarA != null && aVarA.b != lVar) {
            throw new IllegalArgumentException("This source was already added with the different observer");
        }
        if (aVarA == null && hasActiveObservers()) {
            aVar.a();
        }
    }

    @MainThread
    public <S> void a(@NonNull LiveData<S> liveData) {
        a<?> aVarB = this.a.b(liveData);
        if (aVarB != null) {
            aVarB.b();
        }
    }

    @Override // android.arch.lifecycle.LiveData
    @CallSuper
    protected void onActive() {
        Iterator<Map.Entry<LiveData<?>, a<?>>> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().getValue().a();
        }
    }

    @Override // android.arch.lifecycle.LiveData
    @CallSuper
    protected void onInactive() {
        Iterator<Map.Entry<LiveData<?>, a<?>>> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().getValue().b();
        }
    }

    /* JADX INFO: compiled from: MediatorLiveData.java */
    private static class a<V> implements l<V> {
        final LiveData<V> a;
        final l<V> b;
        int c = -1;

        a(LiveData<V> liveData, l<V> lVar) {
            this.a = liveData;
            this.b = lVar;
        }

        void a() {
            this.a.observeForever(this);
        }

        void b() {
            this.a.removeObserver(this);
        }

        @Override // android.arch.lifecycle.l
        public void onChanged(@Nullable V v) {
            if (this.c != this.a.getVersion()) {
                this.c = this.a.getVersion();
                this.b.onChanged(v);
            }
        }
    }
}
