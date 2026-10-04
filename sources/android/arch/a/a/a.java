package android.arch.a.a;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: ArchTaskExecutor.java */
/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class a extends c {
    private static volatile a a;

    @NonNull
    private static final Executor d = new Executor() { // from class: android.arch.a.a.a.1
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            a.a().b(runnable);
        }
    };

    @NonNull
    private static final Executor e = new Executor() { // from class: android.arch.a.a.a.2
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            a.a().a(runnable);
        }
    };

    @NonNull
    private c c = new b();

    @NonNull
    private c b = this.c;

    private a() {
    }

    @NonNull
    public static a a() {
        if (a != null) {
            return a;
        }
        synchronized (a.class) {
            if (a == null) {
                a = new a();
            }
        }
        return a;
    }

    public void a(@Nullable c cVar) {
        if (cVar == null) {
            cVar = this.c;
        }
        this.b = cVar;
    }

    @Override // android.arch.a.a.c
    public void a(Runnable runnable) {
        this.b.a(runnable);
    }

    @Override // android.arch.a.a.c
    public void b(Runnable runnable) {
        this.b.b(runnable);
    }

    @NonNull
    public static Executor b() {
        return d;
    }

    @NonNull
    public static Executor c() {
        return e;
    }

    @Override // android.arch.a.a.c
    public boolean d() {
        return this.b.d();
    }
}
