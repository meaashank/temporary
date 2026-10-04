package com.amazonaws.mobileconnectors.cognitoidentityprovider.util;

import android.content.Context;
import android.os.Build;
import com.amazonaws.internal.keyvaluestore.AWSKeyValueStore;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.model.InstructionFileId;
import com.amazonaws.util.Base64;
import com.amazonaws.util.StringUtils;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class CognitoDeviceHelper {
    public static final int a = 10;
    private static final String e = "CognitoIdentityProviderDeviceCache";
    private static final String f = "DeviceKey";
    private static final String g = "DeviceGroupKey";
    private static final String h = "DeviceSecret";
    private static final Log d = LogFactory.a(CognitoDeviceHelper.class);
    private static final Object i = new Object();
    static deviceSRP b = null;
    static Map<String, AWSKeyValueStore> c = new HashMap();
    private static boolean j = true;

    public static void a(boolean z) {
        synchronized (i) {
            try {
                j = z;
                Iterator<String> it = c.keySet().iterator();
                while (it.hasNext()) {
                    c.get(it.next()).a(z);
                }
            } catch (Exception e2) {
                d.e("Error in setting the isPersistenceEnabled flag in the key-value store.", e2);
            }
        }
    }

    private static AWSKeyValueStore a(Context context, String str, String str2) {
        synchronized (i) {
            try {
                try {
                    String strB = b(str, str2);
                    if (c.containsKey(strB)) {
                        return c.get(strB);
                    }
                    AWSKeyValueStore aWSKeyValueStore = new AWSKeyValueStore(context, strB, j);
                    c.put(strB, aWSKeyValueStore);
                    return aWSKeyValueStore;
                } catch (Exception e2) {
                    d.e("Error in retrieving the persistent store.", e2);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String a() {
        return Build.MODEL;
    }

    public static String a(String str, String str2, Context context) {
        try {
            AWSKeyValueStore aWSKeyValueStoreA = a(context, str, str2);
            if (aWSKeyValueStoreA == null || !aWSKeyValueStoreA.a(f)) {
                return null;
            }
            return aWSKeyValueStoreA.b(f);
        } catch (Exception e2) {
            d.e("Error accessing SharedPreferences", e2);
            return null;
        }
    }

    public static String b(String str, String str2, Context context) {
        try {
            AWSKeyValueStore aWSKeyValueStoreA = a(context, str, str2);
            if (aWSKeyValueStoreA == null || !aWSKeyValueStoreA.a(h)) {
                return null;
            }
            return aWSKeyValueStoreA.b(h);
        } catch (Exception e2) {
            d.e("Error accessing SharedPreferences", e2);
            return null;
        }
    }

    public static String c(String str, String str2, Context context) {
        try {
            AWSKeyValueStore aWSKeyValueStoreA = a(context, str, str2);
            if (aWSKeyValueStoreA == null || !aWSKeyValueStoreA.a(g)) {
                return null;
            }
            return aWSKeyValueStoreA.b(g);
        } catch (Exception e2) {
            d.e("Error accessing SharedPreferences", e2);
            return null;
        }
    }

    public static void a(String str, String str2, String str3, Context context) {
        try {
            a(context, str, str2).a(f, str3);
        } catch (Exception e2) {
            d.e("Error accessing SharedPreferences", e2);
        }
    }

    public static void b(String str, String str2, String str3, Context context) {
        try {
            a(context, str, str2).a(h, str3);
        } catch (Exception e2) {
            d.e("Error accessing SharedPreferences", e2);
        }
    }

    public static void c(String str, String str2, String str3, Context context) {
        try {
            a(context, str, str2).a(g, str3);
        } catch (Exception e2) {
            d.e("Error accessing SharedPreferences", e2);
        }
    }

    public static void d(String str, String str2, Context context) {
        try {
            a(context, str, str2).a();
        } catch (Exception e2) {
            d.e("Error accessing SharedPreferences", e2);
        }
    }

    public static Map<String, String> a(String str, String str2) {
        HashMap map = new HashMap();
        String strB = b();
        b = new deviceSRP(str2, str, strB);
        byte[] byteArray = b.a().toByteArray();
        byte[] byteArray2 = b.b().toByteArray();
        map.put("salt", new String(Base64.encode(byteArray)));
        map.put("verifier", new String(Base64.encode(byteArray2)));
        map.put("secret", strB);
        return map;
    }

    private static String b(String str, String str2) {
        return "CognitoIdentityProviderDeviceCache." + str2 + InstructionFileId.c + str;
    }

    public static class deviceSRP {
        private static final String c = "SHA-256";
        private static final ThreadLocal<MessageDigest> d = new ThreadLocal<MessageDigest>() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoDeviceHelper.deviceSRP.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MessageDigest initialValue() {
                try {
                    return MessageDigest.getInstance("SHA-256");
                } catch (NoSuchAlgorithmException e2) {
                    throw new ExceptionInInitializerError(e2);
                }
            }
        };
        private static final String e = "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AAAC42DAD33170D04507A33A85521ABDF1CBA64ECFB850458DBEF0A8AEA71575D060C7DB3970F85A6E1E4C7ABF5AE8CDB0933D71E8C94E04A25619DCEE3D2261AD2EE6BF12FFA06D98A0864D87602733EC86A64521F2B18177B200CBBE117577A615D6C770988C0BAD946E208E24FA074E5AB3143DB5BFCE0FD108E4B82D120A93AD2CAFFFFFFFFFFFFFFFF";
        private static final BigInteger f = new BigInteger(e, 16);
        private static final BigInteger g = BigInteger.valueOf(2);
        private static final SecureRandom h;
        private static final int i = 128;
        private final BigInteger a;
        private final BigInteger b;

        static {
            try {
                h = SecureRandom.getInstance("SHA1PRNG");
            } catch (NoSuchAlgorithmException e2) {
                throw new ExceptionInInitializerError(e2);
            }
        }

        public BigInteger a() {
            return this.a;
        }

        public BigInteger b() {
            return this.b;
        }

        public deviceSRP(String str, String str2, String str3) {
            byte[] bArrA = a(str, str2, str3);
            this.a = new BigInteger(128, h);
            this.b = a(this.a, bArrA);
        }

        private static BigInteger a(BigInteger bigInteger, byte[] bArr) {
            c();
            a(bigInteger);
            a(bArr);
            return g.modPow(new BigInteger(1, d()), f);
        }

        private byte[] a(String str, String str2, String str3) {
            c();
            a(str, str2, ":", str3);
            return d();
        }

        public static void c() {
            d.get().reset();
        }

        public static byte[] d() {
            return d.get().digest();
        }

        public static void a(String... strArr) {
            MessageDigest messageDigest = d.get();
            for (String str : strArr) {
                if (str != null) {
                    messageDigest.update(str.getBytes(StringUtils.a));
                }
            }
        }

        public static void a(String str) {
            MessageDigest messageDigest = d.get();
            if (str != null) {
                messageDigest.update(str.getBytes(StringUtils.a));
            }
        }

        public static void a(BigInteger... bigIntegerArr) {
            MessageDigest messageDigest = d.get();
            for (BigInteger bigInteger : bigIntegerArr) {
                if (bigInteger != null) {
                    messageDigest.update(bigInteger.toByteArray());
                }
            }
        }

        public static void a(BigInteger bigInteger) {
            MessageDigest messageDigest = d.get();
            if (bigInteger != null) {
                messageDigest.update(bigInteger.toByteArray());
            }
        }

        public static void a(ByteBuffer byteBuffer) {
            MessageDigest messageDigest = d.get();
            if (byteBuffer != null) {
                messageDigest.update(byteBuffer.array());
            }
        }

        public static void a(byte[] bArr) {
            MessageDigest messageDigest = d.get();
            if (bArr != null) {
                messageDigest.update(bArr);
            }
        }
    }

    public static String b() {
        return String.valueOf(UUID.randomUUID());
    }
}
