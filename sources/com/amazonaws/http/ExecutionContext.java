package com.amazonaws.http;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.Signer;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AWSRequestMetricsFullSupport;
import java.net.URI;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ExecutionContext {
    private final AWSRequestMetrics a;
    private final List<RequestHandler2> b;
    private String c;
    private final AmazonWebServiceClient d;
    private AWSCredentials e;

    public void a(Signer signer) {
    }

    @Deprecated
    public ExecutionContext(boolean z) {
        this(null, z, null);
    }

    public ExecutionContext() {
        this(null, false, null);
    }

    public ExecutionContext(List<RequestHandler2> list, boolean z, AmazonWebServiceClient amazonWebServiceClient) {
        this.b = list;
        this.a = z ? new AWSRequestMetricsFullSupport() : new AWSRequestMetrics();
        this.d = amazonWebServiceClient;
    }

    public String a() {
        return this.c;
    }

    public void a(String str) {
        this.c = str;
    }

    public List<RequestHandler2> b() {
        return this.b;
    }

    @Deprecated
    public AWSRequestMetrics c() {
        return this.a;
    }

    public Signer a(URI uri) {
        if (this.d == null) {
            return null;
        }
        return this.d.b(uri);
    }

    public AWSCredentials d() {
        return this.e;
    }

    public void a(AWSCredentials aWSCredentials) {
        this.e = aWSCredentials;
    }
}
