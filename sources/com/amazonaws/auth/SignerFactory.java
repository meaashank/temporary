package com.amazonaws.auth;

import com.amazonaws.internal.config.InternalConfig;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class SignerFactory {
    private static final String a = "QueryStringSignerType";
    private static final String b = "AWS3SignerType";
    private static final String c = "AWS4SignerType";
    private static final String d = "NoOpSignerType";
    private static final Map<String, Class<? extends Signer>> e = new ConcurrentHashMap();

    static {
        e.put(a, QueryStringSigner.class);
        e.put(b, AWS3Signer.class);
        e.put(c, AWS4Signer.class);
        e.put(d, NoOpSigner.class);
    }

    private SignerFactory() {
    }

    public static void a(String str, Class<? extends Signer> cls) {
        if (str == null) {
            throw new IllegalArgumentException("signerType cannot be null");
        }
        if (cls == null) {
            throw new IllegalArgumentException("signerClass cannot be null");
        }
        e.put(str, cls);
    }

    public static Signer a(String str, String str2) {
        return c(str, str2);
    }

    public static Signer b(String str, String str2) {
        return d(str, str2);
    }

    private static Signer c(String str, String str2) {
        return d(InternalConfig.Factory.a().a(str, str2).a(), str);
    }

    private static Signer d(String str, String str2) {
        Class<? extends Signer> cls = e.get(str);
        if (cls == null) {
            throw new IllegalArgumentException();
        }
        try {
            Signer signerNewInstance = cls.newInstance();
            if (signerNewInstance instanceof ServiceAwareSigner) {
                ((ServiceAwareSigner) signerNewInstance).a(str2);
            }
            return signerNewInstance;
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException("Cannot create an instance of " + cls.getName(), e2);
        } catch (InstantiationException e3) {
            throw new IllegalStateException("Cannot create an instance of " + cls.getName(), e3);
        }
    }
}
