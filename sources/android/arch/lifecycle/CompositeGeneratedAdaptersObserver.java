package android.arch.lifecycle;

import android.arch.lifecycle.Lifecycle;
import android.support.annotation.RestrictTo;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class CompositeGeneratedAdaptersObserver implements GenericLifecycleObserver {
    private final c[] a;

    CompositeGeneratedAdaptersObserver(c[] cVarArr) {
        this.a = cVarArr;
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    public void a(e eVar, Lifecycle.Event event) {
        j jVar = new j();
        for (c cVar : this.a) {
            cVar.a(eVar, event, false, jVar);
        }
        for (c cVar2 : this.a) {
            cVar2.a(eVar, event, true, jVar);
        }
    }
}
