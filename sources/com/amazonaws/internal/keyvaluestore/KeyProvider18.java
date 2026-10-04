package com.amazonaws.internal.keyvaluestore;

import android.content.Context;
import android.content.SharedPreferences;
import android.security.KeyPairGeneratorSpec;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.Base64;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.util.Calendar;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: classes.dex */
public class KeyProvider18 implements KeyProvider {
    static final String a = "AES";
    static final int b = 256;
    static final String c = "AndroidKeyStore";
    static final String d = "RSA";
    static final String e = "RSA/ECB/PKCS1Padding";
    static final String f = "AndroidOpenSSL";
    static final int g = 2048;
    static final String h = "AesGcmNoPadding18-encrypted-encryption-key";
    private static final Log i = LogFactory.a(KeyProvider18.class);
    private static final Object j = new Object();
    private SecureRandom k;

    @Override // com.amazonaws.internal.keyvaluestore.KeyProvider
    public Key a(SharedPreferences sharedPreferences, String str, Context context) {
        synchronized (j) {
            try {
                try {
                    KeyStore keyStore = KeyStore.getInstance(c);
                    keyStore.load(null);
                    a(context, keyStore, str);
                    if (sharedPreferences.contains(h)) {
                        return new SecretKeySpec(b(str, Base64.decode(sharedPreferences.getString(h, null))), "AES");
                    }
                    this.k = new SecureRandom();
                    KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
                    keyGenerator.init(256, this.k);
                    SecretKey secretKeyGenerateKey = keyGenerator.generateKey();
                    sharedPreferences.edit().putString(h, Base64.encodeAsString(a(str, secretKeyGenerateKey.getEncoded()))).apply();
                    return secretKeyGenerateKey;
                } catch (Exception e2) {
                    i.e("Error in getting the key.", e2);
                    throw new IllegalStateException(e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private byte[] a(String str, byte[] bArr) {
        try {
            KeyStore keyStore = KeyStore.getInstance(c);
            keyStore.load(null);
            KeyStore.PrivateKeyEntry privateKeyEntry = (KeyStore.PrivateKeyEntry) keyStore.getEntry(str, null);
            Cipher cipher = Cipher.getInstance(e, f);
            cipher.init(1, privateKeyEntry.getCertificate().getPublicKey());
            return cipher.doFinal(bArr);
        } catch (Exception e2) {
            i.e("Exception occurred while encrypting data. " + e2.getMessage());
            return null;
        }
    }

    private byte[] b(String str, byte[] bArr) {
        try {
            KeyStore keyStore = KeyStore.getInstance(c);
            keyStore.load(null);
            KeyStore.PrivateKeyEntry privateKeyEntry = (KeyStore.PrivateKeyEntry) keyStore.getEntry(str, null);
            Cipher cipher = Cipher.getInstance(e, f);
            cipher.init(2, privateKeyEntry.getPrivateKey());
            return cipher.doFinal(bArr);
        } catch (Exception e2) {
            i.e("Exception occurred while decrypting data. " + e2.getMessage());
            return null;
        }
    }

    private void a(Context context, KeyStore keyStore, String str) throws NoSuchAlgorithmException, NoSuchProviderException, InvalidAlgorithmParameterException {
        if (!keyStore.containsAlias(str)) {
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(1, 30);
            KeyPairGeneratorSpec keyPairGeneratorSpecBuild = new KeyPairGeneratorSpec.Builder(context).setAlias(str).setSubject(new X500Principal("CN=" + str)).setSerialNumber(BigInteger.TEN).setStartDate(calendar.getTime()).setEndDate(calendar2.getTime()).setKeySize(2048).build();
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance(d, c);
            keyPairGenerator.initialize(keyPairGeneratorSpecBuild);
            keyPairGenerator.generateKeyPair();
            return;
        }
        i.c("Android KeyStore contains the alias: " + str);
    }
}
