package com.amazonaws.internal.keyvaluestore;

import android.content.Context;
import android.content.SharedPreferences;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.Base64;
import java.security.Key;
import java.security.SecureRandom;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
class KeyProvider10 implements KeyProvider {
    static final String a = "AES";
    static final int b = 256;
    static final String c = "AesGcmNoPaddingEncryption10-encryption-key";
    private static final Log d = LogFactory.a(KeyProvider10.class.getSimpleName());
    private static final Object f = new Object();
    private SecureRandom e = new SecureRandom();

    KeyProvider10() {
    }

    @Override // com.amazonaws.internal.keyvaluestore.KeyProvider
    public Key a(SharedPreferences sharedPreferences, String str, Context context) {
        synchronized (f) {
            try {
                try {
                    if (sharedPreferences.contains(c)) {
                        return new SecretKeySpec(Base64.decode(sharedPreferences.getString(c, null)), "AES");
                    }
                    KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
                    keyGenerator.init(256, this.e);
                    SecretKey secretKeyGenerateKey = keyGenerator.generateKey();
                    sharedPreferences.edit().putString(c, Base64.encodeAsString(secretKeyGenerateKey.getEncoded())).apply();
                    return secretKeyGenerateKey;
                } catch (Exception e) {
                    d.e("Error in loading the key from keystore.");
                    throw new IllegalStateException(e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
