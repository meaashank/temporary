package com.amazonaws;

import com.amazonaws.auth.RegionAwareSigner;
import com.amazonaws.auth.Signer;
import com.amazonaws.auth.SignerFactory;
import com.amazonaws.handlers.RequestHandler;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.http.AmazonHttpClient;
import com.amazonaws.http.ExecutionContext;
import com.amazonaws.http.HttpClient;
import com.amazonaws.http.UrlHttpClient;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.metrics.RequestMetricCollector;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.Classes;
import com.amazonaws.util.StringUtils;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class AmazonWebServiceClient {
    public static final boolean a = true;
    private static final String h = "Amazon";
    private static final String i = "AWS";
    private static final Log j = LogFactory.a(AmazonWebServiceClient.class);
    protected volatile URI b;
    protected ClientConfiguration c;
    protected AmazonHttpClient d;
    protected final List<RequestHandler2> e;
    protected int f;
    protected volatile String g;
    private volatile String k;
    private volatile Signer l;
    private volatile String m;
    private volatile Region n;

    @Deprecated
    protected void a(String str, String str2) {
    }

    @Deprecated
    protected void a(URI uri) {
    }

    protected AmazonWebServiceClient(ClientConfiguration clientConfiguration) {
        this(clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    @Deprecated
    protected AmazonWebServiceClient(ClientConfiguration clientConfiguration, RequestMetricCollector requestMetricCollector) {
        this(clientConfiguration, new UrlHttpClient(clientConfiguration), null);
    }

    protected AmazonWebServiceClient(ClientConfiguration clientConfiguration, HttpClient httpClient) {
        this.c = clientConfiguration;
        this.d = new AmazonHttpClient(clientConfiguration, httpClient);
        this.e = new CopyOnWriteArrayList();
    }

    @Deprecated
    protected AmazonWebServiceClient(ClientConfiguration clientConfiguration, HttpClient httpClient, RequestMetricCollector requestMetricCollector) {
        this.c = clientConfiguration;
        this.d = new AmazonHttpClient(clientConfiguration, httpClient, requestMetricCollector);
        this.e = new CopyOnWriteArrayList();
    }

    protected Signer f_() {
        return this.l;
    }

    public void a(String str) {
        URI uriD = d(str);
        Signer signerA = a(uriD, this.k, false);
        synchronized (this) {
            this.b = uriD;
            this.l = signerA;
        }
    }

    public String m_() {
        String string;
        synchronized (this) {
            string = this.b.toString();
        }
        return string;
    }

    public String c() {
        return this.g;
    }

    private URI d(String str) {
        if (!str.contains("://")) {
            str = this.c.a().toString() + "://" + str;
        }
        try {
            return new URI(str);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Deprecated
    public void a(String str, String str2, String str3) {
        URI uriD = d(str);
        Signer signerA = a(str2, str3, str3, true);
        synchronized (this) {
            this.l = signerA;
            this.b = uriD;
            this.k = str3;
        }
    }

    public Signer b(URI uri) {
        return a(uri, this.k, true);
    }

    private Signer a(URI uri, String str, boolean z) {
        if (uri == null) {
            throw new IllegalArgumentException("Endpoint is not set. Use setEndpoint to set an endpoint before performing any request.");
        }
        String strM = m();
        return a(strM, AwsHostNameUtils.a(uri.getHost(), strM), str, z);
    }

    private Signer a(String str, String str2, String str3, boolean z) {
        Signer signerB;
        String strQ = this.c.q();
        if (strQ == null) {
            signerB = SignerFactory.a(str, str2);
        } else {
            signerB = SignerFactory.b(strQ, str);
        }
        if (signerB instanceof RegionAwareSigner) {
            RegionAwareSigner regionAwareSigner = (RegionAwareSigner) signerB;
            if (str3 != null) {
                regionAwareSigner.b(str3);
            } else if (str2 != null && z) {
                regionAwareSigner.b(str2);
            }
        }
        synchronized (this) {
            this.n = Region.a(str2);
        }
        return signerB;
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1095)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:1049)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:130)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    public void a(Region region) {
        String strB;
        if (region == null) {
            throw new IllegalArgumentException("No region provided");
        }
        String strM = m();
        if (region.c(strM)) {
            strB = region.b(strM);
            int iIndexOf = strB.indexOf("://");
            if (iIndexOf >= 0) {
                strB = strB.substring(iIndexOf + "://".length());
            }
        } else {
            strB = String.format("%s.%s.%s", c(), region.a(), region.b());
        }
        URI uriD = d(strB);
        Signer signerA = a(strM, region.a(), this.k, false);
        synchronized (this) {
            this.b = uriD;
            this.l = signerA;
        }
    }

    public Regions i_() {
        Regions regionsFromName;
        synchronized (this) {
            regionsFromName = Regions.fromName(this.n.a());
        }
        return regionsFromName;
    }

    @Deprecated
    public void a(ClientConfiguration clientConfiguration) {
        RequestMetricCollector requestMetricCollectorB;
        AmazonHttpClient amazonHttpClient = this.d;
        if (amazonHttpClient != null) {
            requestMetricCollectorB = amazonHttpClient.b();
            amazonHttpClient.a();
        } else {
            requestMetricCollectorB = null;
        }
        this.c = clientConfiguration;
        this.d = new AmazonHttpClient(clientConfiguration, requestMetricCollectorB);
    }

    public void e() {
        this.d.a();
    }

    @Deprecated
    public void a(RequestHandler requestHandler) {
        this.e.add(RequestHandler2.a(requestHandler));
    }

    public void a(RequestHandler2 requestHandler2) {
        this.e.add(requestHandler2);
    }

    @Deprecated
    public void b(RequestHandler requestHandler) {
        this.e.remove(RequestHandler2.a(requestHandler));
    }

    public void b(RequestHandler2 requestHandler2) {
        this.e.remove(requestHandler2);
    }

    protected ExecutionContext a(AmazonWebServiceRequest amazonWebServiceRequest) {
        return new ExecutionContext(this.e, d_(amazonWebServiceRequest) || g(), this);
    }

    protected final ExecutionContext a(Request<?> request) {
        return a(request.a());
    }

    @Deprecated
    protected final ExecutionContext f() {
        return new ExecutionContext(this.e, o() || g(), this);
    }

    @Deprecated
    protected static boolean g() {
        return System.getProperty(SDKGlobalConfiguration.k) != null;
    }

    @Deprecated
    protected final boolean d_(AmazonWebServiceRequest amazonWebServiceRequest) {
        RequestMetricCollector requestMetricCollectorC = amazonWebServiceRequest.c();
        if (requestMetricCollectorC == null || !requestMetricCollectorC.a()) {
            return o();
        }
        return true;
    }

    @Deprecated
    private boolean o() {
        RequestMetricCollector requestMetricCollectorJ = j();
        return requestMetricCollectorJ != null && requestMetricCollectorJ.a();
    }

    public void a(int i2) {
        this.f = i2;
    }

    public AmazonWebServiceClient b(int i2) {
        a(i2);
        return this;
    }

    public int h() {
        return this.f;
    }

    @Deprecated
    public RequestMetricCollector i() {
        return this.d.b();
    }

    @Deprecated
    protected RequestMetricCollector j() {
        RequestMetricCollector requestMetricCollectorB = this.d.b();
        return requestMetricCollectorB == null ? AwsSdkMetrics.getRequestMetricCollector() : requestMetricCollectorB;
    }

    @Deprecated
    protected final RequestMetricCollector b(Request<?> request) {
        RequestMetricCollector requestMetricCollectorC = request.a().c();
        if (requestMetricCollectorC != null) {
            return requestMetricCollectorC;
        }
        RequestMetricCollector requestMetricCollectorI = i();
        return requestMetricCollectorI == null ? AwsSdkMetrics.getRequestMetricCollector() : requestMetricCollectorI;
    }

    @Deprecated
    protected final void a(AWSRequestMetrics aWSRequestMetrics, Request<?> request, Response<?> response) {
        a(aWSRequestMetrics, request, response, false);
    }

    @Deprecated
    protected final void a(AWSRequestMetrics aWSRequestMetrics, Request<?> request, Response<?> response, boolean z) {
        if (request != null) {
            aWSRequestMetrics.b(AWSRequestMetrics.Field.ClientExecuteTime);
            aWSRequestMetrics.a().q();
            b(request).a(request, response);
        }
        if (z) {
            aWSRequestMetrics.c();
        }
    }

    @Deprecated
    protected String k() {
        return m();
    }

    public String l() {
        return m();
    }

    protected String m() {
        if (this.m == null) {
            synchronized (this) {
                if (this.m == null) {
                    this.m = p();
                    return this.m;
                }
            }
        }
        return this.m;
    }

    public final void a_(String str) {
        this.m = str;
    }

    private String p() {
        int length;
        String simpleName = Classes.childClassOf(AmazonWebServiceClient.class, this).getSimpleName();
        String serviceName = ServiceNameFactory.getServiceName(simpleName);
        if (serviceName != null) {
            return serviceName;
        }
        int iIndexOf = simpleName.indexOf("JavaClient");
        if (iIndexOf == -1 && (iIndexOf = simpleName.indexOf("Client")) == -1) {
            throw new IllegalStateException("Unrecognized suffix for the AWS http client class name " + simpleName);
        }
        int iIndexOf2 = simpleName.indexOf(h);
        if (iIndexOf2 == -1) {
            iIndexOf2 = simpleName.indexOf(i);
            if (iIndexOf2 == -1) {
                throw new IllegalStateException("Unrecognized prefix for the AWS http client class name " + simpleName);
            }
            length = i.length();
        } else {
            length = h.length();
        }
        if (iIndexOf2 >= iIndexOf) {
            throw new IllegalStateException("Unrecognized AWS http client class name " + simpleName);
        }
        return StringUtils.d(simpleName.substring(iIndexOf2 + length, iIndexOf));
    }

    public final String n() {
        return this.k;
    }

    public final void b_(String str) {
        Signer signerA = a(this.b, str, true);
        synchronized (this) {
            this.l = signerA;
            this.k = str;
        }
    }
}
