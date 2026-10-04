package com.amazonaws;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.metrics.RequestMetricCollector;

/* JADX INFO: loaded from: classes.dex */
public abstract class AmazonWebServiceRequest implements Cloneable {
    private ProgressListener a;
    private final RequestClientOptions b = new RequestClientOptions();

    @Deprecated
    private RequestMetricCollector c;
    private AWSCredentials d;
    private AmazonWebServiceRequest e;

    public void a(AWSCredentials aWSCredentials) {
        this.d = aWSCredentials;
    }

    public AWSCredentials l_() {
        return this.d;
    }

    public RequestClientOptions b() {
        return this.b;
    }

    @Deprecated
    public RequestMetricCollector c() {
        return this.c;
    }

    @Deprecated
    public void a(RequestMetricCollector requestMetricCollector) {
        this.c = requestMetricCollector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public <T extends AmazonWebServiceRequest> T b(RequestMetricCollector requestMetricCollector) {
        a(requestMetricCollector);
        return this;
    }

    public void a(ProgressListener progressListener) {
        this.a = progressListener;
    }

    public ProgressListener d() {
        return this.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AmazonWebServiceRequest> T b(ProgressListener progressListener) {
        a(progressListener);
        return this;
    }

    protected final <T extends AmazonWebServiceRequest> T a(T t) {
        t.a(this.a);
        t.a(this.c);
        return t;
    }

    public AmazonWebServiceRequest e() {
        return this.e;
    }

    public AmazonWebServiceRequest f() {
        AmazonWebServiceRequest amazonWebServiceRequestE = this.e;
        if (amazonWebServiceRequestE != null) {
            while (amazonWebServiceRequestE.e() != null) {
                amazonWebServiceRequestE = amazonWebServiceRequestE.e();
            }
        }
        return amazonWebServiceRequestE;
    }

    private void b(AmazonWebServiceRequest amazonWebServiceRequest) {
        this.e = amazonWebServiceRequest;
    }

    @Override // 
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public AmazonWebServiceRequest clone() {
        try {
            AmazonWebServiceRequest amazonWebServiceRequest = (AmazonWebServiceRequest) super.clone();
            amazonWebServiceRequest.b(this);
            return amazonWebServiceRequest;
        } catch (CloneNotSupportedException e) {
            throw new IllegalStateException("Got a CloneNotSupportedException from Object.clone() even though we're Cloneable!", e);
        }
    }
}
