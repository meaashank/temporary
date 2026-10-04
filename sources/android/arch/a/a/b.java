package android.arch.a.a;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: DefaultTaskExecutor.java */
/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class b extends c {
    private final Object a = new Object();
    private ExecutorService b = Executors.newFixedThreadPool(2);

    @Nullable
    private volatile Handler c;

    @Override // android.arch.a.a.c
    public void a(Runnable runnable) {
        this.b.execute(runnable);
    }

    @Override // android.arch.a.a.c
    public void b(Runnable runnable) {
        if (this.c == null) {
            synchronized (this.a) {
                if (this.c == null) {
                    this.c = new Handler(Looper.getMainLooper());
                }
            }
        }
        this.c.post(runnable);
    }

    @Override // android.arch.a.a.c
    public boolean d() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
