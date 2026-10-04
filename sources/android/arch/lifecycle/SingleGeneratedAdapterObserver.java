package android.arch.lifecycle;

import android.arch.lifecycle.Lifecycle;
import android.support.annotation.RestrictTo;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class SingleGeneratedAdapterObserver implements GenericLifecycleObserver {
    private final c a;

    SingleGeneratedAdapterObserver(c cVar) {
        this.a = cVar;
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    public void a(e eVar, Lifecycle.Event event) {
        this.a.a(eVar, event, false, null);
        this.a.a(eVar, event, true, null);
    }
}
