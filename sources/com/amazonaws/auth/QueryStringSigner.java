package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.util.DateUtils;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class QueryStringSigner extends AbstractAWSSigner implements Signer {
    private Date a;

    @Override // com.amazonaws.auth.Signer
    public void a(Request<?> request, AWSCredentials aWSCredentials) {
        a(request, SignatureVersion.V2, SigningAlgorithm.HmacSHA256, aWSCredentials);
    }

    public void a(Request<?> request, SignatureVersion signatureVersion, SigningAlgorithm signingAlgorithm, AWSCredentials aWSCredentials) {
        String strA;
        if (aWSCredentials instanceof AnonymousAWSCredentials) {
            return;
        }
        AWSCredentials aWSCredentialsA = a(aWSCredentials);
        request.b("AWSAccessKeyId", aWSCredentialsA.a());
        request.b("SignatureVersion", signatureVersion.toString());
        request.b("Timestamp", b(n(request)));
        if (aWSCredentialsA instanceof AWSSessionCredentials) {
            a(request, (AWSSessionCredentials) aWSCredentialsA);
        }
        if (signatureVersion.equals(SignatureVersion.V1)) {
            strA = b(request.d());
        } else if (signatureVersion.equals(SignatureVersion.V2)) {
            request.b("SignatureMethod", signingAlgorithm.toString());
            strA = a(request);
        } else {
            throw new AmazonClientException("Invalid Signature Version specified");
        }
        request.b("Signature", a(strA, aWSCredentialsA.b(), signingAlgorithm));
    }

    private String b(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        treeMap.putAll(map);
        for (Map.Entry entry : treeMap.entrySet()) {
            sb.append((String) entry.getKey());
            sb.append((String) entry.getValue());
        }
        return sb.toString();
    }

    private String a(Request<?> request) {
        return HttpRequest.A + "\n" + c(request.f()) + "\n" + b(request) + "\n" + a(request.d());
    }

    private String b(Request<?> request) {
        String str = "";
        if (request.f().getPath() != null) {
            str = "" + request.f().getPath();
        }
        if (request.c() != null) {
            if (str.length() > 0 && !str.endsWith("/") && !request.c().startsWith("/")) {
                str = str + "/";
            }
            str = str + request.c();
        } else if (!str.endsWith("/")) {
            str = str + "/";
        }
        if (!str.startsWith("/")) {
            str = "/" + str;
        }
        return str.startsWith("//") ? str.substring(1) : str;
    }

    private String b(int i) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DateUtils.a);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        if (this.a != null) {
            return simpleDateFormat.format(this.a);
        }
        return simpleDateFormat.format(a(i));
    }

    void a(Date date) {
        this.a = date;
    }

    @Override // com.amazonaws.auth.AbstractAWSSigner
    protected void a(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.b("SecurityToken", aWSSessionCredentials.d());
    }
}
