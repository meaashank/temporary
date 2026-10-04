package com.amazonaws.mobileconnectors.cognitoidentityprovider.util;

import com.amazonaws.util.StringUtils;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class Hkdf {
    private static final byte[] a = new byte[0];
    private static final int d = 255;
    private final String b;
    private SecretKey c = null;

    public static Hkdf a(String str) throws NoSuchAlgorithmException {
        Mac.getInstance(str);
        return new Hkdf(str);
    }

    public void a(byte[] bArr) throws Throwable {
        a(bArr, (byte[]) null);
    }

    public void a(byte[] bArr, byte[] bArr2) throws Throwable {
        byte[] bArrDoFinal;
        byte[] bArr3 = bArr2 == null ? a : (byte[]) bArr2.clone();
        byte[] bArr4 = a;
        try {
            try {
                Mac mac = Mac.getInstance(this.b);
                if (bArr3.length == 0) {
                    bArr3 = new byte[mac.getMacLength()];
                    Arrays.fill(bArr3, (byte) 0);
                }
                mac.init(new SecretKeySpec(bArr3, this.b));
                bArrDoFinal = mac.doFinal(bArr);
            } catch (Throwable th) {
                th = th;
            }
        } catch (GeneralSecurityException e) {
            e = e;
        }
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArrDoFinal, this.b);
            Arrays.fill(bArrDoFinal, (byte) 0);
            a(secretKeySpec);
            Arrays.fill(bArrDoFinal, (byte) 0);
        } catch (GeneralSecurityException e2) {
            e = e2;
            throw new RuntimeException("Unexpected exception", e);
        } catch (Throwable th2) {
            bArr4 = bArrDoFinal;
            th = th2;
            Arrays.fill(bArr4, (byte) 0);
            throw th;
        }
    }

    public void a(SecretKey secretKey) throws InvalidKeyException {
        if (!secretKey.getAlgorithm().equals(this.b)) {
            throw new InvalidKeyException("Algorithm for the provided key must match the algorithm for this Hkdf. Expected " + this.b + " but found " + secretKey.getAlgorithm());
        }
        this.c = secretKey;
    }

    private Hkdf(String str) {
        if (!str.startsWith("Hmac")) {
            throw new IllegalArgumentException("Invalid algorithm " + str + ". Hkdf may only be used with Hmac algorithms.");
        }
        this.b = str;
    }

    public byte[] a(String str, int i) {
        return a(str != null ? str.getBytes(StringUtils.a) : null, i);
    }

    public byte[] a(byte[] bArr, int i) throws Throwable {
        byte[] bArr2 = new byte[i];
        try {
            a(bArr, i, bArr2, 0);
            return bArr2;
        } catch (ShortBufferException e) {
            throw new RuntimeException(e);
        }
    }

    public void a(byte[] bArr, int i, byte[] bArr2, int i2) throws Throwable {
        b();
        if (i < 0) {
            throw new IllegalArgumentException("Length must be a non-negative value.");
        }
        if (bArr2.length < i2 + i) {
            throw new ShortBufferException();
        }
        Mac macA = a();
        if (i > macA.getMacLength() * 255) {
            throw new IllegalArgumentException("Requested keys may not be longer than 255 times the underlying HMAC length.");
        }
        byte[] bArr3 = a;
        int i3 = 0;
        byte b = 1;
        while (i3 < i) {
            try {
                macA.update(bArr3);
                macA.update(bArr);
                macA.update(b);
                byte[] bArrDoFinal = macA.doFinal();
                int i4 = i3;
                int i5 = 0;
                while (i5 < bArrDoFinal.length && i4 < i) {
                    try {
                        bArr2[i4] = bArrDoFinal[i5];
                        i5++;
                        i4++;
                    } catch (Throwable th) {
                        th = th;
                        bArr3 = bArrDoFinal;
                        Arrays.fill(bArr3, (byte) 0);
                        throw th;
                    }
                }
                b = (byte) (b + 1);
                i3 = i4;
                bArr3 = bArrDoFinal;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        Arrays.fill(bArr3, (byte) 0);
    }

    private Mac a() {
        try {
            Mac mac = Mac.getInstance(this.b);
            mac.init(this.c);
            return mac;
        } catch (InvalidKeyException e) {
            throw new RuntimeException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(e2);
        }
    }

    private void b() {
        if (this.c == null) {
            throw new IllegalStateException("Hkdf has not been initialized");
        }
    }
}
