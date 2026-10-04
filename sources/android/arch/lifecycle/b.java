package android.arch.lifecycle;

import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.annotation.WorkerThread;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: ComputableLiveData.java */
/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public abstract class b<T> {

    @VisibleForTesting
    final Runnable a;

    @VisibleForTesting
    final Runnable b;
    private final Executor c;
    private final LiveData<T> d;
    private AtomicBoolean e;
    private AtomicBoolean f;

    @WorkerThread
    protected abstract T c();

    public b() {
        this(android.arch.a.a.a.c());
    }

    public b(@NonNull Executor executor) {
        this.e = new AtomicBoolean(true);
        this.f = new AtomicBoolean(false);
        this.a = new Runnable() { // from class: android.arch.lifecycle.b.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            @WorkerThread
            public void run() {
                boolean z;
                do {
                    if (b.this.f.compareAndSet(false, true)) {
                        Object objC = null;
                        z = false;
                        while (b.this.e.compareAndSet(true, false)) {
                            try {
                                objC = b.this.c();
                                z = true;
                            } finally {
                                b.this.f.set(false);
                            }
                        }
                        if (z) {
                            b.this.d.postValue(objC);
                        }
                    } else {
                        z = false;
                    }
                    if (!z) {
                        return;
                    }
                } while (b.this.e.get());
            }
        };
        this.b = new Runnable() { // from class: android.arch.lifecycle.b.3
            @Override // java.lang.Runnable
            @MainThread
            public void run() {
                boolean zHasActiveObservers = b.this.d.hasActiveObservers();
                if (b.this.e.compareAndSet(false, true) && zHasActiveObservers) {
                    b.this.c.execute(b.this.a);
                }
            }
        };
        this.c = executor;
        this.d = new LiveData<T>() { // from class: android.arch.lifecycle.b.1
            @Override // android.arch.lifecycle.LiveData
            protected void onActive() {
                b.this.c.execute(b.this.a);
            }
        };
    }

    @NonNull
    public LiveData<T> a() {
        return this.d;
    }

    public void b() {
        android.arch.a.a.a.a().c(this.b);
    }
}
