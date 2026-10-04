package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.http.HttpHeader;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.Headers;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import org.apache.xerces.impl.xs.SchemaSymbols;

/* JADX INFO: loaded from: classes.dex */
public class AWS4Signer extends AbstractAWSSigner implements Presigner, RegionAwareSigner, ServiceAwareSigner {
    protected static final String a = "AWS4-HMAC-SHA256";
    protected static final String b = "aws4_request";
    protected static final Log g = LogFactory.a(AWS4Signer.class);
    private static final String i = "yyyyMMdd";
    private static final String j = "yyyyMMdd'T'HHmmss'Z'";
    private static final long k = 1000;
    private static final long l = 604800;
    protected String c;
    protected String d;
    protected Date e;
    protected boolean f;

    protected void a(Request<?> request, HeaderSigningResult headerSigningResult) {
    }

    public AWS4Signer() {
        this(true);
    }

    public AWS4Signer(boolean z) {
        this.f = z;
    }

    @Override // com.amazonaws.auth.Signer
    public void a(Request<?> request, AWSCredentials aWSCredentials) {
        if (aWSCredentials instanceof AnonymousAWSCredentials) {
            return;
        }
        AWSCredentials aWSCredentialsA = a(aWSCredentials);
        if (aWSCredentialsA instanceof AWSSessionCredentials) {
            a(request, (AWSSessionCredentials) aWSCredentialsA);
        }
        d(request);
        long jC = c(request);
        String strB = b(jC);
        String strB2 = b(request, strB);
        String strE = e(request);
        String strA = a(jC);
        request.a("X-Amz-Date", strA);
        if (request.b().get("x-amz-content-sha256") != null && SchemaSymbols.ATTVAL_REQUIRED.equals(request.b().get("x-amz-content-sha256"))) {
            request.a("x-amz-content-sha256", strE);
        }
        String str = aWSCredentialsA.a() + "/" + strB2;
        HeaderSigningResult headerSigningResultA = a(request, strB, strA, a, strE, aWSCredentialsA);
        request.a("Authorization", "AWS4-HMAC-SHA256 " + ("Credential=" + str) + ", " + ("SignedHeaders=" + b(request)) + ", " + ("Signature=" + BinaryUtils.a(headerSigningResultA.d())));
        a(request, headerSigningResultA);
    }

    @Override // com.amazonaws.auth.ServiceAwareSigner
    public void a(String str) {
        this.c = str;
    }

    @Override // com.amazonaws.auth.RegionAwareSigner
    public void b(String str) {
        this.d = str;
    }

    @Override // com.amazonaws.auth.AbstractAWSSigner
    protected void a(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.a(Headers.x, aWSSessionCredentials.d());
    }

    protected String a(URI uri) {
        if (this.d != null) {
            return this.d;
        }
        return AwsHostNameUtils.a(uri.getHost(), this.c);
    }

    protected String b(URI uri) {
        if (this.c != null) {
            return this.c;
        }
        return AwsHostNameUtils.b(uri);
    }

    void a(Date date) {
        this.e = date;
    }

    protected String a(Request<?> request) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.addAll(request.b().keySet());
        Collections.sort(arrayList, String.CASE_INSENSITIVE_ORDER);
        StringBuilder sb = new StringBuilder();
        for (String str : arrayList) {
            if (c(str)) {
                String strReplaceAll = StringUtils.d(str).replaceAll("\\s+", " ");
                String str2 = request.b().get(str);
                sb.append(strReplaceAll);
                sb.append(":");
                if (str2 != null) {
                    sb.append(str2.replaceAll("\\s+", " "));
                }
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    protected String b(Request<?> request) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.addAll(request.b().keySet());
        Collections.sort(arrayList, String.CASE_INSENSITIVE_ORDER);
        StringBuilder sb = new StringBuilder();
        for (String str : arrayList) {
            if (c(str)) {
                if (sb.length() > 0) {
                    sb.append(";");
                }
                sb.append(StringUtils.d(str));
            }
        }
        return sb.toString();
    }

    protected String a(Request<?> request, String str) {
        String str2 = request.e().toString() + "\n" + a(HttpUtils.a(request.f().getPath(), request.c()), this.f) + "\n" + g(request) + "\n" + a(request) + "\n" + b(request) + "\n" + str;
        g.b("AWS4 Canonical Request: '\"" + str2 + "\"");
        return str2;
    }

    protected String a(String str, String str2, String str3, String str4) {
        String str5 = str + "\n" + str2 + "\n" + str3 + "\n" + BinaryUtils.a(d(str4));
        g.b("AWS4 String to Sign: '\"" + str5 + "\"");
        return str5;
    }

    protected final HeaderSigningResult a(Request<?> request, String str, String str2, String str3, String str4, AWSCredentials aWSCredentials) {
        String strA = a(request.f());
        String strB = b(request.f());
        String str5 = str + "/" + strA + "/" + strB + "/" + b;
        String strA2 = a(str3, str2, str5, a(request, str4));
        byte[] bArrA = a(b, a(strB, a(strA, a(str, ("AWS4" + aWSCredentials.b()).getBytes(StringUtils.a), SigningAlgorithm.HmacSHA256), SigningAlgorithm.HmacSHA256), SigningAlgorithm.HmacSHA256), SigningAlgorithm.HmacSHA256);
        return new HeaderSigningResult(str2, str5, bArrA, a(strA2.getBytes(StringUtils.a), bArrA, SigningAlgorithm.HmacSHA256));
    }

    protected final String a(long j2) {
        return DateUtils.a("yyyyMMdd'T'HHmmss'Z'", new Date(j2));
    }

    protected final String b(long j2) {
        return DateUtils.a(i, new Date(j2));
    }

    protected final long c(Request<?> request) {
        Date dateA = a(n(request));
        if (this.e != null) {
            dateA = this.e;
        }
        return dateA.getTime();
    }

    protected void d(Request<?> request) {
        String host = request.f().getHost();
        if (HttpUtils.a(request.f())) {
            host = host + ":" + request.f().getPort();
        }
        request.a(HttpHeader.g, host);
    }

    protected String b(Request<?> request, String str) {
        return str + "/" + a(request.f()) + "/" + b(request.f()) + "/" + b;
    }

    protected String e(Request<?> request) {
        InputStream inputStreamL = l(request);
        inputStreamL.mark(-1);
        String strA = BinaryUtils.a(a(inputStreamL));
        try {
            inputStreamL.reset();
            return strA;
        } catch (IOException e) {
            throw new AmazonClientException("Unable to reset stream after calculating AWS4 signature", e);
        }
    }

    protected static class HeaderSigningResult {
        private final String a;
        private final String b;
        private final byte[] c;
        private final byte[] d;

        public HeaderSigningResult(String str, String str2, byte[] bArr, byte[] bArr2) {
            this.a = str;
            this.b = str2;
            this.c = bArr;
            this.d = bArr2;
        }

        public String a() {
            return this.a;
        }

        public String b() {
            return this.b;
        }

        public byte[] c() {
            byte[] bArr = new byte[this.c.length];
            System.arraycopy(this.c, 0, bArr, 0, this.c.length);
            return bArr;
        }

        public byte[] d() {
            byte[] bArr = new byte[this.d.length];
            System.arraycopy(this.d, 0, bArr, 0, this.d.length);
            return bArr;
        }
    }

    @Override // com.amazonaws.auth.Presigner
    public void a(Request<?> request, AWSCredentials aWSCredentials, Date date) {
        if (aWSCredentials instanceof AnonymousAWSCredentials) {
            return;
        }
        long time = date != null ? (date.getTime() - System.currentTimeMillis()) / k : 604800L;
        if (time > l) {
            throw new AmazonClientException("Requests that are pre-signed by SigV4 algorithm are valid for at most 7 days. The expiration date set on the current request [" + a(date.getTime()) + "] has exceeded this limit.");
        }
        d(request);
        AWSCredentials aWSCredentialsA = a(aWSCredentials);
        if (aWSCredentialsA instanceof AWSSessionCredentials) {
            request.b("X-Amz-Security-Token", ((AWSSessionCredentials) aWSCredentialsA).d());
        }
        long jC = c(request);
        String strB = b(jC);
        String str = aWSCredentialsA.a() + "/" + b(request, strB);
        String strA = a(jC);
        request.b("X-Amz-Algorithm", a);
        request.b("X-Amz-Date", strA);
        request.b("X-Amz-SignedHeaders", b(request));
        request.b("X-Amz-Expires", Long.toString(time));
        request.b("X-Amz-Credential", str);
        request.b("X-Amz-Signature", BinaryUtils.a(a(request, strB, strA, a, f(request), aWSCredentialsA).d()));
    }

    protected String f(Request<?> request) {
        return e(request);
    }

    boolean c(String str) {
        return SchemaSymbols.ATTVAL_DATE.equalsIgnoreCase(str) || Headers.f.equalsIgnoreCase(str) || "host".equalsIgnoreCase(str) || str.startsWith("x-amz") || str.startsWith("X-Amz");
    }
}
