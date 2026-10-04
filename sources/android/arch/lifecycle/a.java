package android.arch.lifecycle;

import android.arch.lifecycle.Lifecycle;
import android.support.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: ClassesInfoCache.java */
/* JADX INFO: loaded from: classes.dex */
class a {
    static a a = new a();
    private static final int b = 0;
    private static final int c = 1;
    private static final int d = 2;
    private final Map<Class, C0001a> e = new HashMap();
    private final Map<Class, Boolean> f = new HashMap();

    a() {
    }

    boolean a(Class cls) {
        if (this.f.containsKey(cls)) {
            return this.f.get(cls).booleanValue();
        }
        Method[] methodArrC = c(cls);
        for (Method method : methodArrC) {
            if (((m) method.getAnnotation(m.class)) != null) {
                a(cls, methodArrC);
                return true;
            }
        }
        this.f.put(cls, false);
        return false;
    }

    private Method[] c(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    C0001a b(Class cls) {
        C0001a c0001a = this.e.get(cls);
        return c0001a != null ? c0001a : a(cls, null);
    }

    private void a(Map<b, Lifecycle.Event> map, b bVar, Lifecycle.Event event, Class cls) {
        Lifecycle.Event event2 = map.get(bVar);
        if (event2 == null || event == event2) {
            if (event2 == null) {
                map.put(bVar, event);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + bVar.b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + event2 + ", new value " + event);
    }

    private C0001a a(Class cls, @Nullable Method[] methodArr) {
        int i;
        C0001a c0001aB;
        Class superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null && (c0001aB = b(superclass)) != null) {
            map.putAll(c0001aB.b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<b, Lifecycle.Event> entry : b(cls2).b.entrySet()) {
                a(map, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = c(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            m mVar = (m) method.getAnnotation(m.class);
            if (mVar != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(e.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                Lifecycle.Event eventA = mVar.a();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(Lifecycle.Event.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (eventA != Lifecycle.Event.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                a(map, new b(i, method), eventA, cls);
                z = true;
            }
        }
        C0001a c0001a = new C0001a(map);
        this.e.put(cls, c0001a);
        this.f.put(cls, Boolean.valueOf(z));
        return c0001a;
    }

    /* JADX INFO: renamed from: android.arch.lifecycle.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ClassesInfoCache.java */
    static class C0001a {
        final Map<Lifecycle.Event, List<b>> a = new HashMap();
        final Map<b, Lifecycle.Event> b;

        C0001a(Map<b, Lifecycle.Event> map) {
            this.b = map;
            for (Map.Entry<b, Lifecycle.Event> entry : map.entrySet()) {
                Lifecycle.Event value = entry.getValue();
                List<b> arrayList = this.a.get(value);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        void a(e eVar, Lifecycle.Event event, Object obj) {
            a(this.a.get(event), eVar, event, obj);
            a(this.a.get(Lifecycle.Event.ON_ANY), eVar, event, obj);
        }

        private static void a(List<b> list, e eVar, Lifecycle.Event event, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).a(eVar, event, obj);
                }
            }
        }
    }

    /* JADX INFO: compiled from: ClassesInfoCache.java */
    static class b {
        final int a;
        final Method b;

        b(int i, Method method) {
            this.a = i;
            this.b = method;
            this.b.setAccessible(true);
        }

        void a(e eVar, Lifecycle.Event event, Object obj) {
            try {
                switch (this.a) {
                    case 0:
                        this.b.invoke(obj, new Object[0]);
                        return;
                    case 1:
                        this.b.invoke(obj, eVar);
                        return;
                    case 2:
                        this.b.invoke(obj, eVar, event);
                        return;
                    default:
                        return;
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException("Failed to call observer method", e2.getCause());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.a == bVar.a && this.b.getName().equals(bVar.b.getName());
        }

        public int hashCode() {
            return (this.a * 31) + this.b.getName().hashCode();
        }
    }
}
