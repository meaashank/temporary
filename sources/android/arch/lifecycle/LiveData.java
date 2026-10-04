package android.arch.lifecycle;

import android.arch.lifecycle.Lifecycle;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class LiveData<T> {
    private static final Object NOT_SET = new Object();
    static final int START_VERSION = -1;
    private boolean mDispatchInvalidated;
    private boolean mDispatchingValue;
    private final Object mDataLock = new Object();
    private android.arch.a.b.b<l<T>, LiveData<T>.b> mObservers = new android.arch.a.b.b<>();
    private int mActiveCount = 0;
    private volatile Object mData = NOT_SET;
    private volatile Object mPendingData = NOT_SET;
    private int mVersion = -1;
    private final Runnable mPostValueRunnable = new Runnable() { // from class: android.arch.lifecycle.LiveData.1
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.mDataLock) {
                obj = LiveData.this.mPendingData;
                LiveData.this.mPendingData = LiveData.NOT_SET;
            }
            LiveData.this.setValue(obj);
        }
    };

    protected void onActive() {
    }

    protected void onInactive() {
    }

    private void considerNotify(LiveData<T>.b bVar) {
        if (bVar.d) {
            if (!bVar.a()) {
                bVar.a(false);
            } else {
                if (bVar.e >= this.mVersion) {
                    return;
                }
                bVar.e = this.mVersion;
                bVar.c.onChanged((T) this.mData);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchingValue(@Nullable LiveData<T>.b bVar) {
        if (this.mDispatchingValue) {
            this.mDispatchInvalidated = true;
            return;
        }
        this.mDispatchingValue = true;
        do {
            this.mDispatchInvalidated = false;
            if (bVar != null) {
                considerNotify(bVar);
                bVar = null;
            } else {
                android.arch.a.b.b<l<T>, LiveData<T>.b>.d dVarC = this.mObservers.c();
                while (dVarC.hasNext()) {
                    considerNotify((b) dVarC.next().getValue());
                    if (this.mDispatchInvalidated) {
                        break;
                    }
                }
            }
        } while (this.mDispatchInvalidated);
        this.mDispatchingValue = false;
    }

    @MainThread
    public void observe(@NonNull e eVar, @NonNull l<T> lVar) {
        if (eVar.getLifecycle().a() == Lifecycle.State.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(eVar, lVar);
        LiveData<T>.b bVarA = this.mObservers.a(lVar, lifecycleBoundObserver);
        if (bVarA != null && !bVarA.a(eVar)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (bVarA != null) {
            return;
        }
        eVar.getLifecycle().a(lifecycleBoundObserver);
    }

    @MainThread
    public void observeForever(@NonNull l<T> lVar) {
        a aVar = new a(lVar);
        LiveData<T>.b bVarA = this.mObservers.a(lVar, aVar);
        if (bVarA != null && (bVarA instanceof LifecycleBoundObserver)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (bVarA != null) {
            return;
        }
        aVar.a(true);
    }

    @MainThread
    public void removeObserver(@NonNull l<T> lVar) {
        assertMainThread("removeObserver");
        LiveData<T>.b bVarB = this.mObservers.b(lVar);
        if (bVarB == null) {
            return;
        }
        bVarB.b();
        bVarB.a(false);
    }

    @MainThread
    public void removeObservers(@NonNull e eVar) {
        assertMainThread("removeObservers");
        for (Map.Entry<l<T>, LiveData<T>.b> entry : this.mObservers) {
            if (entry.getValue().a(eVar)) {
                removeObserver(entry.getKey());
            }
        }
    }

    protected void postValue(T t) {
        boolean z;
        synchronized (this.mDataLock) {
            z = this.mPendingData == NOT_SET;
            this.mPendingData = t;
        }
        if (z) {
            android.arch.a.a.a.a().b(this.mPostValueRunnable);
        }
    }

    @MainThread
    protected void setValue(T t) {
        assertMainThread("setValue");
        this.mVersion++;
        this.mData = t;
        dispatchingValue(null);
    }

    @Nullable
    public T getValue() {
        T t = (T) this.mData;
        if (t != NOT_SET) {
            return t;
        }
        return null;
    }

    int getVersion() {
        return this.mVersion;
    }

    public boolean hasObservers() {
        return this.mObservers.a() > 0;
    }

    public boolean hasActiveObservers() {
        return this.mActiveCount > 0;
    }

    class LifecycleBoundObserver extends LiveData<T>.b implements GenericLifecycleObserver {

        @NonNull
        final e a;

        LifecycleBoundObserver(e eVar, @NonNull l<T> lVar) {
            super(lVar);
            this.a = eVar;
        }

        @Override // android.arch.lifecycle.LiveData.b
        boolean a() {
            return this.a.getLifecycle().a().isAtLeast(Lifecycle.State.STARTED);
        }

        @Override // android.arch.lifecycle.GenericLifecycleObserver
        public void a(e eVar, Lifecycle.Event event) {
            if (this.a.getLifecycle().a() == Lifecycle.State.DESTROYED) {
                LiveData.this.removeObserver(this.c);
            } else {
                a(a());
            }
        }

        @Override // android.arch.lifecycle.LiveData.b
        boolean a(e eVar) {
            return this.a == eVar;
        }

        @Override // android.arch.lifecycle.LiveData.b
        void b() {
            this.a.getLifecycle().b(this);
        }
    }

    private abstract class b {
        final l<T> c;
        boolean d;
        int e = -1;

        abstract boolean a();

        boolean a(e eVar) {
            return false;
        }

        void b() {
        }

        b(l<T> lVar) {
            this.c = lVar;
        }

        void a(boolean z) {
            if (z == this.d) {
                return;
            }
            this.d = z;
            boolean z2 = LiveData.this.mActiveCount == 0;
            LiveData.this.mActiveCount += this.d ? 1 : -1;
            if (z2 && this.d) {
                LiveData.this.onActive();
            }
            if (LiveData.this.mActiveCount == 0 && !this.d) {
                LiveData.this.onInactive();
            }
            if (this.d) {
                LiveData.this.dispatchingValue(this);
            }
        }
    }

    private class a extends LiveData<T>.b {
        @Override // android.arch.lifecycle.LiveData.b
        boolean a() {
            return true;
        }

        a(l<T> lVar) {
            super(lVar);
        }
    }

    private static void assertMainThread(String str) {
        if (android.arch.a.a.a.a().d()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }
}
