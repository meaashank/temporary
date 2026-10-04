package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.SDKGlobalConfiguration;
import com.amazonaws.internal.SdkDigestInputStream;
import com.amazonaws.util.Base64;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.URI;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractAWSSigner implements Signer {
    private static final int b = 1024;
    private static final int c = 5;
    private static final int d = 1000;
    private static final ThreadLocal<MessageDigest> a = new ThreadLocal<MessageDigest>() { // from class: com.amazonaws.auth.AbstractAWSSigner.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MessageDigest initialValue() {
            try {
                return MessageDigest.getInstance(CommonUtils.b);
            } catch (NoSuchAlgorithmException e) {
                throw new AmazonClientException("Unable to get SHA256 Function" + e.getMessage(), e);
            }
        }
    };
    public static final String h = BinaryUtils.a(a(""));

    protected abstract void a(Request<?> request, AWSSessionCredentials aWSSessionCredentials);

    protected String a(String str, String str2, SigningAlgorithm signingAlgorithm) {
        return a(str.getBytes(StringUtils.a), str2, signingAlgorithm);
    }

    protected String a(byte[] bArr, String str, SigningAlgorithm signingAlgorithm) {
        try {
            return Base64.encodeAsString(a(bArr, str.getBytes(StringUtils.a), signingAlgorithm));
        } catch (Exception e) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e.getMessage(), e);
        }
    }

    public byte[] a(String str, byte[] bArr, SigningAlgorithm signingAlgorithm) {
        try {
            return a(str.getBytes(StringUtils.a), bArr, signingAlgorithm);
        } catch (Exception e) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e.getMessage(), e);
        }
    }

    protected byte[] a(byte[] bArr, byte[] bArr2, SigningAlgorithm signingAlgorithm) {
        try {
            Mac mac = Mac.getInstance(signingAlgorithm.toString());
            mac.init(new SecretKeySpec(bArr2, signingAlgorithm.toString()));
            return mac.doFinal(bArr);
        } catch (Exception e) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e.getMessage(), e);
        }
    }

    public byte[] d(String str) {
        return a(str);
    }

    private static byte[] a(String str) {
        try {
            MessageDigest messageDigestA = a();
            messageDigestA.update(str.getBytes(StringUtils.a));
            return messageDigestA.digest();
        } catch (Exception e) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e.getMessage(), e);
        }
    }

    protected byte[] a(InputStream inputStream) {
        try {
            SdkDigestInputStream sdkDigestInputStream = new SdkDigestInputStream(inputStream, a());
            while (sdkDigestInputStream.read(new byte[1024]) > -1) {
            }
            return sdkDigestInputStream.getMessageDigest().digest();
        } catch (Exception e) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e.getMessage(), e);
        }
    }

    public byte[] a(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(CommonUtils.b);
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Exception e) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e.getMessage(), e);
        }
    }

    protected String a(Map<String, String> map) {
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            treeMap.put(HttpUtils.a(entry.getKey(), false), HttpUtils.a(entry.getValue(), false));
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = treeMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            sb.append((String) entry2.getKey());
            sb.append("=");
            sb.append((String) entry2.getValue());
            if (it.hasNext()) {
                sb.append("&");
            }
        }
        return sb.toString();
    }

    protected String g(Request<?> request) {
        return HttpUtils.a(request) ? "" : a(request.d());
    }

    protected byte[] h(Request<?> request) {
        if (HttpUtils.a(request)) {
            String strB = HttpUtils.b(request);
            if (strB == null) {
                return new byte[0];
            }
            return strB.getBytes(StringUtils.a);
        }
        return k(request);
    }

    protected String i(Request<?> request) {
        return b(h(request));
    }

    protected String j(Request<?> request) {
        return b(k(request));
    }

    protected byte[] k(Request<?> request) {
        InputStream inputStreamM = m(request);
        try {
            inputStreamM.mark(-1);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[5120];
            while (true) {
                int i = inputStreamM.read(bArr);
                if (i != -1) {
                    byteArrayOutputStream.write(bArr, 0, i);
                } else {
                    byteArrayOutputStream.close();
                    inputStreamM.reset();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (Exception e) {
            throw new AmazonClientException("Unable to read request payload to sign request: " + e.getMessage(), e);
        }
    }

    protected InputStream l(Request<?> request) {
        if (HttpUtils.a(request)) {
            String strB = HttpUtils.b(request);
            if (strB == null) {
                return new ByteArrayInputStream(new byte[0]);
            }
            return new ByteArrayInputStream(strB.getBytes(StringUtils.a));
        }
        return m(request);
    }

    protected InputStream m(Request<?> request) {
        try {
            InputStream inputStreamH = request.h();
            if (inputStreamH == null) {
                return new ByteArrayInputStream(new byte[0]);
            }
            if (inputStreamH instanceof StringInputStream) {
                return inputStreamH;
            }
            if (!inputStreamH.markSupported()) {
                throw new AmazonClientException("Unable to read request payload to sign request.");
            }
            return request.h();
        } catch (Exception e) {
            throw new AmazonClientException("Unable to read request payload to sign request: " + e.getMessage(), e);
        }
    }

    protected String e(String str) {
        return a(str, true);
    }

    protected String a(String str, boolean z) {
        if (str == null || str.length() == 0) {
            return "/";
        }
        if (z) {
            str = HttpUtils.a(str, true);
        }
        return str.startsWith("/") ? str : "/".concat(str);
    }

    protected String c(URI uri) {
        String strD = StringUtils.d(uri.getHost());
        if (!HttpUtils.a(uri)) {
            return strD;
        }
        return strD + ":" + uri.getPort();
    }

    protected AWSCredentials a(AWSCredentials aWSCredentials) {
        String strA;
        String strB;
        String strD;
        synchronized (aWSCredentials) {
            strA = aWSCredentials.a();
            strB = aWSCredentials.b();
            strD = aWSCredentials instanceof AWSSessionCredentials ? ((AWSSessionCredentials) aWSCredentials).d() : null;
        }
        if (strB != null) {
            strB = strB.trim();
        }
        if (strA != null) {
            strA = strA.trim();
        }
        if (strD != null) {
            strD = strD.trim();
        }
        if (aWSCredentials instanceof AWSSessionCredentials) {
            return new BasicSessionCredentials(strA, strB, strD);
        }
        return new BasicAWSCredentials(strA, strB);
    }

    protected String b(byte[] bArr) {
        return new String(bArr, StringUtils.a);
    }

    protected Date a(int i) {
        Date date = new Date();
        return i != 0 ? new Date(date.getTime() - ((long) (i * 1000))) : date;
    }

    protected int n(Request<?> request) {
        return SDKGlobalConfiguration.a() != 0 ? SDKGlobalConfiguration.a() : request.i();
    }

    private static MessageDigest a() {
        MessageDigest messageDigest = a.get();
        messageDigest.reset();
        return messageDigest;
    }
}
