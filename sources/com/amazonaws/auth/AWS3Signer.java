package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.http.HttpHeader;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.Headers;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class AWS3Signer extends AbstractAWSSigner {
    private static final String a = "X-Amzn-Authorization";
    private static final String b = "x-amz-nonce";
    private static final String c = "AWS3";
    private static final String d = "AWS3-HTTPS";
    private static final Log f = LogFactory.a(AWS3Signer.class);
    private String e;

    @Override // com.amazonaws.auth.Signer
    public void a(Request<?> request, AWSCredentials aWSCredentials) {
        if (aWSCredentials instanceof AnonymousAWSCredentials) {
            return;
        }
        AWSCredentials aWSCredentialsA = a(aWSCredentials);
        SigningAlgorithm signingAlgorithm = SigningAlgorithm.HmacSHA256;
        UUID.randomUUID().toString();
        String strB = DateUtils.b(a(n(request)));
        if (this.e != null) {
            strB = this.e;
        }
        request.a("Date", strB);
        request.a("X-Amz-Date", strB);
        String host = request.f().getHost();
        if (HttpUtils.a(request.f())) {
            host = host + ":" + request.f().getPort();
        }
        request.a(HttpHeader.g, host);
        if (aWSCredentialsA instanceof AWSSessionCredentials) {
            a(request, (AWSSessionCredentials) aWSCredentialsA);
        }
        String str = request.e().toString() + "\n" + e(HttpUtils.a(request.f().getPath(), request.c())) + "\n" + a(request.d()) + "\n" + b(request) + "\n" + j(request);
        byte[] bArrD = d(str);
        f.b("Calculated StringToSign: " + str);
        String strA = a(bArrD, aWSCredentialsA.b(), signingAlgorithm);
        StringBuilder sb = new StringBuilder();
        sb.append(c);
        sb.append(" ");
        sb.append("AWSAccessKeyId=" + aWSCredentialsA.a() + ",");
        sb.append("Algorithm=" + signingAlgorithm.toString() + ",");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(d(request));
        sb2.append(",");
        sb.append(sb2.toString());
        sb.append("Signature=" + strA);
        request.a(a, sb.toString());
    }

    private String d(Request<?> request) {
        StringBuilder sb = new StringBuilder();
        sb.append("SignedHeaders=");
        boolean z = true;
        for (String str : a(request)) {
            if (!z) {
                sb.append(";");
            }
            sb.append(str);
            z = false;
        }
        return sb.toString();
    }

    protected List<String> a(Request<?> request) {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, String>> it = request.b().entrySet().iterator();
        while (it.hasNext()) {
            String key = it.next().getKey();
            String strD = StringUtils.d(key);
            if (strD.startsWith("x-amz") || "host".equals(strD)) {
                arrayList.add(key);
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    void a(String str) {
        this.e = str;
    }

    protected String b(Request<?> request) {
        List<String> listA = a(request);
        for (int i = 0; i < listA.size(); i++) {
            listA.set(i, StringUtils.d(listA.get(i)));
        }
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<String, String> entry : request.b().entrySet()) {
            if (listA.contains(StringUtils.d(entry.getKey()))) {
                treeMap.put(StringUtils.d(entry.getKey()), entry.getValue());
            }
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry2 : treeMap.entrySet()) {
            sb.append(StringUtils.d((String) entry2.getKey()));
            sb.append(":");
            sb.append((String) entry2.getValue());
            sb.append("\n");
        }
        return sb.toString();
    }

    boolean c(Request<?> request) {
        try {
            String strD = StringUtils.d(request.f().toURL().getProtocol());
            if ("http".equals(strD)) {
                return false;
            }
            if ("https".equals(strD)) {
                return true;
            }
            throw new AmazonClientException("Unknown request endpoint protocol encountered while signing request: " + strD);
        } catch (MalformedURLException e) {
            throw new AmazonClientException("Unable to parse request endpoint during signing", e);
        }
    }

    @Override // com.amazonaws.auth.AbstractAWSSigner
    protected void a(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.a(Headers.x, aWSSessionCredentials.d());
    }
}
