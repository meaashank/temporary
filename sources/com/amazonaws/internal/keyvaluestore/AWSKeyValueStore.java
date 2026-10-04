package com.amazonaws.internal.keyvaluestore;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.Base64;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;

/* JADX INFO: loaded from: classes.dex */
public class AWSKeyValueStore {
    static final String g = "AES/GCM/NoPadding";
    static final int h = 12;
    static final int i = 128;
    static final String j = "UTF-8";
    static final String k = ".encrypted";
    static final String l = ".iv";
    static final String m = ".keyvaluestoreversion";
    static final String n = ".encryptionkey";
    static final String o = ".aesKeyStoreAlias";
    static final String p = ".rsaKeyStoreAlias";
    private static final int w = 23;
    private static final int x = 18;
    private static final int y = 10;
    private static final int z = 1;
    private int B;
    boolean b;
    Context c;
    SharedPreferences d;
    final String e;
    SharedPreferences f;
    private Map<String, String> r;
    private KeyProvider s;
    private Key t;
    private SecureRandom u;
    private String v;
    private static final Log q = LogFactory.a(AWSKeyValueStore.class);
    static Map<String, HashMap<String, String>> a = new HashMap();
    private static final Object A = new Object();

    private static Map<String, String> d(String str) {
        if (a.containsKey(str)) {
            return a.get(str);
        }
        HashMap<String, String> map = new HashMap<>();
        a.put(str, map);
        return map;
    }

    public AWSKeyValueStore(Context context, String str, boolean z2) {
        synchronized (A) {
            this.u = new SecureRandom();
            this.r = d(str);
            this.e = str;
            this.B = Build.VERSION.SDK_INT;
            this.c = context;
            a(z2);
        }
    }

    public void a(boolean z2) {
        synchronized (A) {
            boolean z3 = this.b;
            this.b = z2;
            if (z2 && !z3) {
                this.d = this.c.getSharedPreferences(this.e, 0);
                this.f = this.c.getSharedPreferences(this.e + n, 0);
                q.c("Detected Android API Level = " + this.B);
                if (this.B >= 23) {
                    this.v = this.e + o;
                    q.c("Using keyAlias = " + this.v);
                    this.s = new KeyProvider23();
                    this.t = this.s.a(this.f, this.v, this.c);
                } else if (this.B >= 18) {
                    this.v = this.e + p;
                    q.c("Using keyAlias = " + this.v);
                    this.s = new KeyProvider18();
                    this.t = this.s.a(this.f, this.v, this.c);
                } else if (this.B >= 10) {
                    this.s = new KeyProvider10();
                    this.t = this.s.a(this.f, null, this.c);
                } else {
                    q.e("API Level " + String.valueOf(Build.VERSION.SDK_INT) + " not supported by the SDK. Setting persistence to false.");
                    this.b = false;
                }
                q.c("Creating the AWSKeyValueStore with key for sharedPreferences = " + this.e);
                b();
            } else if (!z2) {
                q.c("Persistence is disabled. Data will be accessed from memory.");
            }
            if (!z2 && z3) {
                this.d.edit().clear().apply();
            }
        }
    }

    public boolean a(String str) {
        synchronized (A) {
            if (this.b) {
                return this.d.contains(str + k);
            }
            return this.r.containsKey(str);
        }
    }

    public synchronized String b(String str) {
        synchronized (A) {
            if (this.b) {
                String str2 = str + k;
                if (!this.d.contains(str2)) {
                    return null;
                }
                try {
                    if (Integer.parseInt(this.d.getString(str2 + m, null)) != 1) {
                        q.e("The version of the data read from SharedPreferences for " + str + " does not match the version of the store.");
                        return null;
                    }
                    String string = this.d.getString(str2, null);
                    byte[] bArrE = e(str2);
                    String strB = b(this.B >= 23 ? new GCMParameterSpec(128, bArrE) : new IvParameterSpec(bArrE), string);
                    this.r.put(str, strB);
                    return strB;
                } catch (Exception e) {
                    q.e("Error in decrypting data. ", e);
                    return null;
                }
            }
            return this.r.get(str);
        }
    }

    public void a(String str, String str2) {
        synchronized (A) {
            if (str == null) {
                throw new IllegalArgumentException("Key cannot be null");
            }
            this.r.put(str, str2);
            if (this.b) {
                if (str2 == null) {
                    q.b("Value is null. Removing the data, IV and version from SharedPreferences");
                    c(str);
                    return;
                }
                String str3 = str + k;
                try {
                    byte[] bArrC = c();
                    this.d.edit().putString(str3, a(this.B >= 23 ? new GCMParameterSpec(128, bArrC) : new IvParameterSpec(bArrC), str2)).putString(str3 + l, Base64.encodeAsString(bArrC)).putString(str3 + m, String.valueOf(1)).apply();
                } catch (Exception e) {
                    q.e("Error in encrypting data. ", e);
                }
            }
        }
    }

    public void c(String str) {
        synchronized (A) {
            this.r.remove(str);
            if (this.b) {
                String str2 = str + k;
                this.d.edit().remove(str2).remove(str2 + l).remove(str2 + m).apply();
            }
        }
    }

    public void a() {
        synchronized (A) {
            this.r.clear();
            if (this.b) {
                this.d.edit().clear().apply();
            }
        }
    }

    private void b() {
        Map<String, ?> all = this.d.getAll();
        for (String str : all.keySet()) {
            if (!str.endsWith(k) && !str.endsWith(l) && !str.endsWith(m)) {
                if (all.get(str) instanceof Long) {
                    a(str, String.valueOf(Long.valueOf(this.d.getLong(str, 0L))));
                } else if (all.get(str) instanceof String) {
                    a(str, this.d.getString(str, null));
                } else if (all.get(str) instanceof Float) {
                    a(str, String.valueOf(Float.valueOf(this.d.getFloat(str, 0.0f))));
                } else if (all.get(str) instanceof Boolean) {
                    a(str, String.valueOf(Boolean.valueOf(this.d.getBoolean(str, false))));
                } else if (all.get(str) instanceof Integer) {
                    a(str, String.valueOf(Integer.valueOf(this.d.getInt(str, 0))));
                } else if (all.get(str) instanceof Set) {
                    Set set = (Set) all.get(str);
                    StringBuilder sb = new StringBuilder();
                    Iterator it = set.iterator();
                    while (it.hasNext()) {
                        sb.append((String) it.next());
                        if (it.hasNext()) {
                            sb.append(",");
                        }
                    }
                    a(str, sb.toString());
                }
                this.d.edit().remove(str).apply();
            }
        }
    }

    private String a(AlgorithmParameterSpec algorithmParameterSpec, String str) {
        try {
            Cipher cipher = Cipher.getInstance(g);
            cipher.init(1, this.t, algorithmParameterSpec);
            return Base64.encodeAsString(cipher.doFinal(str.getBytes("UTF-8")));
        } catch (Exception e) {
            q.e("Error in encrypting data. ", e);
            return null;
        }
    }

    private String b(AlgorithmParameterSpec algorithmParameterSpec, String str) {
        try {
            byte[] bArrDecode = Base64.decode(str);
            Cipher cipher = Cipher.getInstance(g);
            cipher.init(2, this.t, algorithmParameterSpec);
            return new String(cipher.doFinal(bArrDecode), "UTF-8");
        } catch (Exception e) {
            q.e("Error in decrypting data. ", e);
            return null;
        }
    }

    private byte[] e(String str) {
        String str2 = str + l;
        if (this.d.contains(str2)) {
            return Base64.decode(this.d.getString(str2, null));
        }
        return null;
    }

    private byte[] c() {
        byte[] bArr = new byte[12];
        this.u.nextBytes(bArr);
        return bArr;
    }
}
