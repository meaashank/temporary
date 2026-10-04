package android.arch.a.b;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: SafeIterableMap.java */
/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class b<K, V> implements Iterable<Map.Entry<K, V>> {
    private c<K, V> a;
    private c<K, V> b;
    private WeakHashMap<f<K, V>, Boolean> c = new WeakHashMap<>();
    private int d = 0;

    /* JADX INFO: compiled from: SafeIterableMap.java */
    interface f<K, V> {
        void a_(@NonNull c<K, V> cVar);
    }

    protected c<K, V> a(K k) {
        c<K, V> cVar = this.a;
        while (cVar != null && !cVar.a.equals(k)) {
            cVar = cVar.c;
        }
        return cVar;
    }

    public V a(@NonNull K k, @NonNull V v) {
        c<K, V> cVarA = a(k);
        if (cVarA != null) {
            return cVarA.b;
        }
        b(k, v);
        return null;
    }

    protected c<K, V> b(@NonNull K k, @NonNull V v) {
        c<K, V> cVar = new c<>(k, v);
        this.d++;
        if (this.b == null) {
            this.a = cVar;
            this.b = this.a;
            return cVar;
        }
        this.b.c = cVar;
        cVar.d = this.b;
        this.b = cVar;
        return cVar;
    }

    public V b(@NonNull K k) {
        c<K, V> cVarA = a(k);
        if (cVarA == null) {
            return null;
        }
        this.d--;
        if (!this.c.isEmpty()) {
            Iterator<f<K, V>> it = this.c.keySet().iterator();
            while (it.hasNext()) {
                it.next().a_(cVarA);
            }
        }
        if (cVarA.d != null) {
            cVarA.d.c = cVarA.c;
        } else {
            this.a = cVarA.c;
        }
        if (cVarA.c != null) {
            cVarA.c.d = cVarA.d;
        } else {
            this.b = cVarA.d;
        }
        cVarA.c = null;
        cVarA.d = null;
        return cVarA.b;
    }

    public int a() {
        return this.d;
    }

    @Override // java.lang.Iterable
    @NonNull
    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.a, this.b);
        this.c.put(aVar, false);
        return aVar;
    }

    public Iterator<Map.Entry<K, V>> b() {
        C0000b c0000b = new C0000b(this.b, this.a);
        this.c.put(c0000b, false);
        return c0000b;
    }

    public b<K, V>.d c() {
        b<K, V>.d dVar = new d();
        this.c.put(dVar, false);
        return dVar;
    }

    public Map.Entry<K, V> d() {
        return this.a;
    }

    public Map.Entry<K, V> e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (a() != bVar.a()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = bVar.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry<K, V> next = it.next();
            Map.Entry<K, V> next2 = it2.next();
            if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX INFO: compiled from: SafeIterableMap.java */
    private static abstract class e<K, V> implements f<K, V>, Iterator<Map.Entry<K, V>> {
        c<K, V> a;
        c<K, V> b;

        abstract c<K, V> a(c<K, V> cVar);

        abstract c<K, V> b(c<K, V> cVar);

        e(c<K, V> cVar, c<K, V> cVar2) {
            this.a = cVar2;
            this.b = cVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b != null;
        }

        @Override // android.arch.a.b.b.f
        public void a_(@NonNull c<K, V> cVar) {
            if (this.a == cVar && cVar == this.b) {
                this.b = null;
                this.a = null;
            }
            if (this.a == cVar) {
                this.a = b(this.a);
            }
            if (this.b == cVar) {
                this.b = b();
            }
        }

        private c<K, V> b() {
            if (this.b == this.a || this.a == null) {
                return null;
            }
            return a(this.b);
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            c<K, V> cVar = this.b;
            this.b = b();
            return cVar;
        }
    }

    /* JADX INFO: compiled from: SafeIterableMap.java */
    static class a<K, V> extends e<K, V> {
        a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // android.arch.a.b.b.e
        c<K, V> a(c<K, V> cVar) {
            return cVar.c;
        }

        @Override // android.arch.a.b.b.e
        c<K, V> b(c<K, V> cVar) {
            return cVar.d;
        }
    }

    /* JADX INFO: renamed from: android.arch.a.b.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SafeIterableMap.java */
    private static class C0000b<K, V> extends e<K, V> {
        C0000b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // android.arch.a.b.b.e
        c<K, V> a(c<K, V> cVar) {
            return cVar.d;
        }

        @Override // android.arch.a.b.b.e
        c<K, V> b(c<K, V> cVar) {
            return cVar.c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: SafeIterableMap.java */
    public class d implements f<K, V>, Iterator<Map.Entry<K, V>> {
        private c<K, V> b;
        private boolean c;

        private d() {
            this.c = true;
        }

        @Override // android.arch.a.b.b.f
        public void a_(@NonNull c<K, V> cVar) {
            if (cVar == this.b) {
                this.b = this.b.d;
                this.c = this.b == null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.c ? b.this.a != null : (this.b == null || this.b.c == null) ? false : true;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (this.c) {
                this.c = false;
                this.b = b.this.a;
            } else {
                this.b = this.b != null ? this.b.c : null;
            }
            return this.b;
        }
    }

    /* JADX INFO: compiled from: SafeIterableMap.java */
    static class c<K, V> implements Map.Entry<K, V> {

        @NonNull
        final K a;

        @NonNull
        final V b;
        c<K, V> c;
        c<K, V> d;

        c(@NonNull K k, @NonNull V v) {
            this.a = k;
            this.b = v;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public K getKey() {
            return this.a;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public V getValue() {
            return this.b;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.a + "=" + this.b;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.a.equals(cVar.a) && this.b.equals(cVar.b);
        }
    }
}
