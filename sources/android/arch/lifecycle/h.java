package android.arch.lifecycle;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import com.amazonaws.services.s3.model.InstructionFileId;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: Lifecycling.java */
/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class h {
    private static final int a = 1;
    private static final int b = 2;
    private static Map<Class, Integer> c = new HashMap();
    private static Map<Class, List<Constructor<? extends c>>> d = new HashMap();

    @NonNull
    static GenericLifecycleObserver a(Object obj) {
        if (obj instanceof FullLifecycleObserver) {
            return new FullLifecycleObserverAdapter((FullLifecycleObserver) obj);
        }
        if (obj instanceof GenericLifecycleObserver) {
            return (GenericLifecycleObserver) obj;
        }
        Class<?> cls = obj.getClass();
        if (b(cls) == 2) {
            List<Constructor<? extends c>> list = d.get(cls);
            if (list.size() == 1) {
                return new SingleGeneratedAdapterObserver(a(list.get(0), obj));
            }
            c[] cVarArr = new c[list.size()];
            for (int i = 0; i < list.size(); i++) {
                cVarArr[i] = a(list.get(i), obj);
            }
            return new CompositeGeneratedAdaptersObserver(cVarArr);
        }
        return new ReflectiveGenericLifecycleObserver(obj);
    }

    private static c a(Constructor<? extends c> constructor, Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    @Nullable
    private static Constructor<? extends c> a(Class<?> cls) {
        try {
            Package r0 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r0 != null ? r0.getName() : "";
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String strA = a(canonicalName);
            if (!name.isEmpty()) {
                strA = name + InstructionFileId.c + strA;
            }
            Constructor declaredConstructor = Class.forName(strA).getDeclaredConstructor(cls);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    private static int b(Class<?> cls) {
        if (c.containsKey(cls)) {
            return c.get(cls).intValue();
        }
        int iC = c(cls);
        c.put(cls, Integer.valueOf(iC));
        return iC;
    }

    private static int c(Class<?> cls) {
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends c> constructorA = a(cls);
        if (constructorA != null) {
            d.put(cls, Collections.singletonList(constructorA));
            return 2;
        }
        if (a.a.a(cls)) {
            return 1;
        }
        Class<? super Object> superclass = cls.getSuperclass();
        ArrayList arrayList = null;
        if (d(superclass)) {
            if (b(superclass) == 1) {
                return 1;
            }
            arrayList = new ArrayList(d.get(superclass));
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            if (d(cls2)) {
                if (b(cls2) == 1) {
                    return 1;
                }
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.addAll(d.get(cls2));
            }
        }
        if (arrayList == null) {
            return 1;
        }
        d.put(cls, arrayList);
        return 2;
    }

    private static boolean d(Class<?> cls) {
        return cls != null && d.class.isAssignableFrom(cls);
    }

    public static String a(String str) {
        return str.replace(InstructionFileId.c, io.fabric.sdk.android.services.b.d.ROLL_OVER_FILE_NAME_SEPARATOR) + "_LifecycleAdapter";
    }
}
