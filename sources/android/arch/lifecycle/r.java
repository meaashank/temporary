package android.arch.lifecycle;

import android.app.Application;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: ViewModelProvider.java */
/* JADX INFO: loaded from: classes.dex */
public class r {
    private static final String a = "android.arch.lifecycle.ViewModelProvider.DefaultKey";
    private final b b;
    private final s c;

    /* JADX INFO: compiled from: ViewModelProvider.java */
    public interface b {
        @NonNull
        <T extends q> T create(@NonNull Class<T> cls);
    }

    public r(@NonNull t tVar, @NonNull b bVar) {
        this(tVar.getViewModelStore(), bVar);
    }

    public r(@NonNull s sVar, @NonNull b bVar) {
        this.b = bVar;
        this.c = sVar;
    }

    @NonNull
    @MainThread
    public <T extends q> T a(@NonNull Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        return (T) a("android.arch.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @NonNull
    @MainThread
    public <T extends q> T a(@NonNull String str, @NonNull Class<T> cls) {
        T t = (T) this.c.a(str);
        if (cls.isInstance(t)) {
            return t;
        }
        T t2 = (T) this.b.create(cls);
        this.c.a(str, t2);
        return t2;
    }

    /* JADX INFO: compiled from: ViewModelProvider.java */
    public static class c implements b {
        @Override // android.arch.lifecycle.r.b
        @NonNull
        public <T extends q> T create(@NonNull Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            }
        }
    }

    /* JADX INFO: compiled from: ViewModelProvider.java */
    public static class a extends c {
        private static a a;
        private Application b;

        @NonNull
        public static a a(@NonNull Application application) {
            if (a == null) {
                a = new a(application);
            }
            return a;
        }

        public a(@NonNull Application application) {
            this.b = application;
        }

        @Override // android.arch.lifecycle.r.c, android.arch.lifecycle.r.b
        @NonNull
        public <T extends q> T create(@NonNull Class<T> cls) {
            if (AndroidViewModel.class.isAssignableFrom(cls)) {
                try {
                    return cls.getConstructor(Application.class).newInstance(this.b);
                } catch (IllegalAccessException e) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e);
                } catch (InstantiationException e2) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e2);
                } catch (NoSuchMethodException e3) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e3);
                } catch (InvocationTargetException e4) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e4);
                }
            }
            return (T) super.create(cls);
        }
    }
}
