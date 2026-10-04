package com.amazonaws.regions;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.auth.AWSCredentialsProvider;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Region {
    private static final String a = "amazonaws.com";
    private final String b;
    private final String c;
    private final Map<String, String> d = new HashMap();
    private final Map<String, Boolean> e = new HashMap();
    private final Map<String, Boolean> f = new HashMap();

    Region(String str, String str2) {
        this.b = str;
        if (str2 == null || str2.isEmpty()) {
            this.c = a;
        } else {
            this.c = str2;
        }
    }

    public static Region a(Regions regions) {
        return RegionUtils.b(regions.getName());
    }

    public static Region a(String str) {
        return RegionUtils.b(str);
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    Map<String, String> c() {
        return this.d;
    }

    Map<String, Boolean> d() {
        return this.e;
    }

    Map<String, Boolean> e() {
        return this.f;
    }

    public String b(String str) {
        return this.d.get(str);
    }

    public boolean c(String str) {
        return this.d.containsKey(str);
    }

    public boolean d(String str) {
        return this.f.containsKey(str) && this.f.get(str).booleanValue();
    }

    public boolean e(String str) {
        return this.e.containsKey(str) && this.e.get(str).booleanValue();
    }

    public <T extends AmazonWebServiceClient> T a(Class<T> cls, AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration) {
        T tNewInstance;
        try {
            if (aWSCredentialsProvider == null && clientConfiguration == null) {
                tNewInstance = cls.getConstructor(new Class[0]).newInstance(new Object[0]);
            } else if (aWSCredentialsProvider == null) {
                tNewInstance = cls.getConstructor(ClientConfiguration.class).newInstance(clientConfiguration);
            } else if (clientConfiguration == null) {
                tNewInstance = cls.getConstructor(AWSCredentialsProvider.class).newInstance(aWSCredentialsProvider);
            } else {
                tNewInstance = cls.getConstructor(AWSCredentialsProvider.class, ClientConfiguration.class).newInstance(aWSCredentialsProvider, clientConfiguration);
            }
            tNewInstance.a(this);
            return tNewInstance;
        } catch (Exception e) {
            throw new RuntimeException("Couldn't instantiate instance of " + cls, e);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof Region) {
            return a().equals(((Region) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return a().hashCode();
    }

    public String toString() {
        return a();
    }
}
