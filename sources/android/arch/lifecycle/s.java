package android.arch.lifecycle;

import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: compiled from: ViewModelStore.java */
/* JADX INFO: loaded from: classes.dex */
public class s {
    private final HashMap<String, q> a = new HashMap<>();

    final void a(String str, q qVar) {
        q qVarPut = this.a.put(str, qVar);
        if (qVarPut != null) {
            qVarPut.onCleared();
        }
    }

    final q a(String str) {
        return this.a.get(str);
    }

    public final void a() {
        Iterator<q> it = this.a.values().iterator();
        while (it.hasNext()) {
            it.next().onCleared();
        }
        this.a.clear();
    }
}
