package com.a.a;

import android.app.Activity;
import android.app.Dialog;
import android.support.annotation.Nullable;
import android.support.annotation.UiThread;
import com.a.a.g;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Queue;

/* JADX INFO: compiled from: TapTargetSequence.java */
/* JADX INFO: loaded from: classes.dex */
public class f {
    a a;
    boolean b;
    boolean c;

    @Nullable
    private final Activity d;

    @Nullable
    private final Dialog e;
    private final Queue<e> f;
    private boolean g;

    @Nullable
    private g h;
    private final g.a i = new g.a() { // from class: com.a.a.f.1
        @Override // com.a.a.g.a
        public void a(g gVar) {
            super.a(gVar);
            if (f.this.a != null) {
                f.this.a.a(gVar.n, true);
            }
            f.this.c();
        }

        @Override // com.a.a.g.a
        public void b(g gVar) {
            if (f.this.b) {
                c(gVar);
            }
        }

        @Override // com.a.a.g.a
        public void c(g gVar) {
            super.c(gVar);
            if (f.this.c) {
                if (f.this.a != null) {
                    f.this.a.a(gVar.n, false);
                }
                f.this.c();
            } else if (f.this.a != null) {
                f.this.a.a(gVar.n);
            }
        }
    };

    /* JADX INFO: compiled from: TapTargetSequence.java */
    public interface a {
        void a();

        void a(e eVar);

        void a(e eVar, boolean z);
    }

    public f(Activity activity) {
        if (activity == null) {
            throw new IllegalArgumentException("Activity is null");
        }
        this.d = activity;
        this.e = null;
        this.f = new LinkedList();
    }

    public f(Dialog dialog) {
        if (dialog == null) {
            throw new IllegalArgumentException("Given null Dialog");
        }
        this.e = dialog;
        this.d = null;
        this.f = new LinkedList();
    }

    public f a(List<e> list) {
        this.f.addAll(list);
        return this;
    }

    public f a(e... eVarArr) {
        Collections.addAll(this.f, eVarArr);
        return this;
    }

    public f a(e eVar) {
        this.f.add(eVar);
        return this;
    }

    public f a(boolean z) {
        this.c = z;
        return this;
    }

    public f b(boolean z) {
        this.b = z;
        return this;
    }

    public f a(a aVar) {
        this.a = aVar;
        return this;
    }

    @UiThread
    public void a() {
        if (this.f.isEmpty() || this.g) {
            return;
        }
        this.g = true;
        c();
    }

    public void a(int i) {
        if (this.g) {
            return;
        }
        while (this.f.peek() != null && this.f.peek().a() != i) {
            this.f.poll();
        }
        e eVarPeek = this.f.peek();
        if (eVarPeek == null || eVarPeek.a() != i) {
            throw new IllegalStateException("Given target " + i + " not in sequence");
        }
        a();
    }

    public void b(int i) {
        if (this.g) {
            return;
        }
        if (i < 0 || i >= this.f.size()) {
            throw new IllegalArgumentException("Given invalid index " + i);
        }
        int size = this.f.size() - i;
        while (this.f.peek() != null && this.f.size() != size) {
            this.f.poll();
        }
        if (this.f.size() != size) {
            throw new IllegalStateException("Given index " + i + " not in sequence");
        }
        a();
    }

    @UiThread
    public boolean b() {
        if (!this.g || this.h == null || !this.h.D) {
            return false;
        }
        this.h.b(false);
        this.g = false;
        this.f.clear();
        if (this.a == null) {
            return true;
        }
        this.a.a(this.h.n);
        return true;
    }

    void c() {
        try {
            e eVarRemove = this.f.remove();
            if (this.d != null) {
                this.h = g.a(this.d, eVarRemove, this.i);
            } else {
                this.h = g.a(this.e, eVarRemove, this.i);
            }
        } catch (NoSuchElementException unused) {
            this.h = null;
            if (this.a != null) {
                this.a.a();
            }
        }
    }
}
