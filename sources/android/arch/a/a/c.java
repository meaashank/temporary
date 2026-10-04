package android.arch.a.a;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;

/* JADX INFO: compiled from: TaskExecutor.java */
/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public abstract class c {
    public abstract void a(@NonNull Runnable runnable);

    public abstract void b(@NonNull Runnable runnable);

    public abstract boolean d();

    public void c(@NonNull Runnable runnable) {
        if (d()) {
            runnable.run();
        } else {
            b(runnable);
        }
    }
}
