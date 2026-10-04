package android.arch.lifecycle;

import android.arch.lifecycle.Lifecycle;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: LifecycleRegistry.java */
/* JADX INFO: loaded from: classes.dex */
public class f extends Lifecycle {
    private static final String a = "LifecycleRegistry";
    private final WeakReference<e> d;
    private android.arch.a.b.a<d, a> b = new android.arch.a.b.a<>();
    private int e = 0;
    private boolean f = false;
    private boolean g = false;
    private ArrayList<Lifecycle.State> h = new ArrayList<>();
    private Lifecycle.State c = Lifecycle.State.INITIALIZED;

    public f(@NonNull e eVar) {
        this.d = new WeakReference<>(eVar);
    }

    @MainThread
    public void a(@NonNull Lifecycle.State state) {
        b(state);
    }

    public void a(@NonNull Lifecycle.Event event) {
        b(b(event));
    }

    private void b(Lifecycle.State state) {
        if (this.c == state) {
            return;
        }
        this.c = state;
        if (this.f || this.e != 0) {
            this.g = true;
            return;
        }
        this.f = true;
        e();
        this.f = false;
    }

    private boolean c() {
        if (this.b.a() == 0) {
            return true;
        }
        Lifecycle.State state = this.b.d().getValue().a;
        Lifecycle.State state2 = this.b.e().getValue().a;
        return state == state2 && this.c == state2;
    }

    private Lifecycle.State c(d dVar) {
        Map.Entry<d, a> entryD = this.b.d(dVar);
        return a(a(this.c, entryD != null ? entryD.getValue().a : null), this.h.isEmpty() ? null : this.h.get(this.h.size() - 1));
    }

    @Override // android.arch.lifecycle.Lifecycle
    public void a(@NonNull d dVar) {
        e eVar;
        a aVar = new a(dVar, this.c == Lifecycle.State.DESTROYED ? Lifecycle.State.DESTROYED : Lifecycle.State.INITIALIZED);
        if (this.b.a(dVar, aVar) == null && (eVar = this.d.get()) != null) {
            boolean z = this.e != 0 || this.f;
            Lifecycle.State stateC = c(dVar);
            this.e++;
            while (aVar.a.compareTo(stateC) < 0 && this.b.c(dVar)) {
                c(aVar.a);
                aVar.a(eVar, e(aVar.a));
                d();
                stateC = c(dVar);
            }
            if (!z) {
                e();
            }
            this.e--;
        }
    }

    private void d() {
        this.h.remove(this.h.size() - 1);
    }

    private void c(Lifecycle.State state) {
        this.h.add(state);
    }

    @Override // android.arch.lifecycle.Lifecycle
    public void b(@NonNull d dVar) {
        this.b.b(dVar);
    }

    public int b() {
        return this.b.a();
    }

    @Override // android.arch.lifecycle.Lifecycle
    @NonNull
    public Lifecycle.State a() {
        return this.c;
    }

    static Lifecycle.State b(Lifecycle.Event event) {
        switch (event) {
            case ON_CREATE:
            case ON_STOP:
                return Lifecycle.State.CREATED;
            case ON_START:
            case ON_PAUSE:
                return Lifecycle.State.STARTED;
            case ON_RESUME:
                return Lifecycle.State.RESUMED;
            case ON_DESTROY:
                return Lifecycle.State.DESTROYED;
            default:
                throw new IllegalArgumentException("Unexpected event value " + event);
        }
    }

    private static Lifecycle.Event d(Lifecycle.State state) {
        switch (state) {
            case INITIALIZED:
                throw new IllegalArgumentException();
            case CREATED:
                return Lifecycle.Event.ON_DESTROY;
            case STARTED:
                return Lifecycle.Event.ON_STOP;
            case RESUMED:
                return Lifecycle.Event.ON_PAUSE;
            case DESTROYED:
                throw new IllegalArgumentException();
            default:
                throw new IllegalArgumentException("Unexpected state value " + state);
        }
    }

    private static Lifecycle.Event e(Lifecycle.State state) {
        switch (state) {
            case INITIALIZED:
            case DESTROYED:
                return Lifecycle.Event.ON_CREATE;
            case CREATED:
                return Lifecycle.Event.ON_START;
            case STARTED:
                return Lifecycle.Event.ON_RESUME;
            case RESUMED:
                throw new IllegalArgumentException();
            default:
                throw new IllegalArgumentException("Unexpected state value " + state);
        }
    }

    private void a(e eVar) {
        android.arch.a.b.b<d, a>.d dVarC = this.b.c();
        while (dVarC.hasNext() && !this.g) {
            Map.Entry next = dVarC.next();
            a aVar = (a) next.getValue();
            while (aVar.a.compareTo(this.c) < 0 && !this.g && this.b.c((d) next.getKey())) {
                c(aVar.a);
                aVar.a(eVar, e(aVar.a));
                d();
            }
        }
    }

    private void b(e eVar) {
        Iterator<Map.Entry<d, a>> itB = this.b.b();
        while (itB.hasNext() && !this.g) {
            Map.Entry<d, a> next = itB.next();
            a value = next.getValue();
            while (value.a.compareTo(this.c) > 0 && !this.g && this.b.c(next.getKey())) {
                Lifecycle.Event eventD = d(value.a);
                c(b(eventD));
                value.a(eVar, eventD);
                d();
            }
        }
    }

    private void e() {
        e eVar = this.d.get();
        if (eVar == null) {
            Log.w(a, "LifecycleOwner is garbage collected, you shouldn't try dispatch new events from it.");
            return;
        }
        while (!c()) {
            this.g = false;
            if (this.c.compareTo(this.b.d().getValue().a) < 0) {
                b(eVar);
            }
            Map.Entry<d, a> entryE = this.b.e();
            if (!this.g && entryE != null && this.c.compareTo(entryE.getValue().a) > 0) {
                a(eVar);
            }
        }
        this.g = false;
    }

    static Lifecycle.State a(@NonNull Lifecycle.State state, @Nullable Lifecycle.State state2) {
        return (state2 == null || state2.compareTo(state) >= 0) ? state : state2;
    }

    /* JADX INFO: compiled from: LifecycleRegistry.java */
    static class a {
        Lifecycle.State a;
        GenericLifecycleObserver b;

        a(d dVar, Lifecycle.State state) {
            this.b = h.a(dVar);
            this.a = state;
        }

        void a(e eVar, Lifecycle.Event event) {
            Lifecycle.State stateB = f.b(event);
            this.a = f.a(this.a, stateB);
            this.b.a(eVar, event);
            this.a = stateB;
        }
    }
}
