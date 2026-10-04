package com.amazonaws.internal.keyvaluestore;

import android.content.Context;
import android.content.SharedPreferences;
import android.security.keystore.KeyGenParameterSpec;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.google.android.gms.stats.CodePackage;
import java.security.Key;
import java.security.KeyStore;
import javax.crypto.KeyGenerator;

/* JADX INFO: loaded from: classes.dex */
class KeyProvider23 implements KeyProvider {
    static final String a = "AES";
    static final int b = 256;
    static final String c = "AndroidKeyStore";
    private static final Log d = LogFactory.a(KeyProvider23.class);
    private static final Object e = new Object();

    KeyProvider23() {
    }

    @Override // com.amazonaws.internal.keyvaluestore.KeyProvider
    public Key a(SharedPreferences sharedPreferences, String str, Context context) {
        synchronized (e) {
            try {
                try {
                    KeyStore keyStore = KeyStore.getInstance(c);
                    keyStore.load(null);
                    if (!keyStore.containsAlias(str)) {
                        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", c);
                        keyGenerator.init(new KeyGenParameterSpec.Builder(str, 3).setBlockModes(CodePackage.GCM).setEncryptionPaddings("NoPadding").setKeySize(256).setRandomizedEncryptionRequired(false).build());
                        return keyGenerator.generateKey();
                    }
                    d.b("AndroidKeyStore contains keyAlias " + str);
                    return keyStore.getKey(str, null);
                } catch (Exception e2) {
                    d.e("Error in accessing the Android KeyStore.", e2);
                    throw new IllegalStateException(e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
