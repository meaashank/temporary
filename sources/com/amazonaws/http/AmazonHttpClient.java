package com.amazonaws.http;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.Request;
import com.amazonaws.RequestClientOptions;
import com.amazonaws.Response;
import com.amazonaws.ResponseMetadata;
import com.amazonaws.handlers.CredentialsRequestHandler;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.internal.CRC32MismatchException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.RequestMetricCollector;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.TimingInfo;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AmazonHttpClient {
    private static final String d = "User-Agent";
    private static final String e = "aws-sdk-invocation-id";
    private static final String f = "aws-sdk-retry";
    private static final int g = 200;
    private static final int h = 307;
    private static final int i = 300;
    private static final int j = 413;
    private static final int k = 503;
    private static final int l = 1000;
    final HttpClient b;
    final ClientConfiguration c;
    private final RequestMetricCollector n;
    private final HttpRequestFactory o;
    private static final Log m = LogFactory.a("com.amazonaws.request");
    static final Log a = LogFactory.a(AmazonHttpClient.class);

    @Deprecated
    public ResponseMetadata a(AmazonWebServiceRequest amazonWebServiceRequest) {
        return null;
    }

    public AmazonHttpClient(ClientConfiguration clientConfiguration) {
        this(clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    @Deprecated
    public AmazonHttpClient(ClientConfiguration clientConfiguration, RequestMetricCollector requestMetricCollector) {
        this(clientConfiguration, new UrlHttpClient(clientConfiguration), requestMetricCollector);
    }

    public AmazonHttpClient(ClientConfiguration clientConfiguration, HttpClient httpClient) {
        this.o = new HttpRequestFactory();
        this.c = clientConfiguration;
        this.b = httpClient;
        this.n = null;
    }

    @Deprecated
    public AmazonHttpClient(ClientConfiguration clientConfiguration, HttpClient httpClient, RequestMetricCollector requestMetricCollector) {
        this.o = new HttpRequestFactory();
        this.c = clientConfiguration;
        this.b = httpClient;
        this.n = requestMetricCollector;
    }

    public <T> Response<T> a(Request<?> request, HttpResponseHandler<AmazonWebServiceResponse<T>> httpResponseHandler, HttpResponseHandler<AmazonServiceException> httpResponseHandler2, ExecutionContext executionContext) throws Throwable {
        Response<T> responseB;
        if (executionContext == null) {
            throw new AmazonClientException("Internal SDK Error: No execution context parameter specified.");
        }
        List<RequestHandler2> listA = a(request, executionContext);
        AWSRequestMetrics aWSRequestMetricsC = executionContext.c();
        try {
            responseB = b(request, httpResponseHandler, httpResponseHandler2, executionContext);
            try {
                a(request, listA, responseB, aWSRequestMetricsC.a().q());
                return responseB;
            } catch (AmazonClientException e2) {
                e = e2;
                a(request, (Response<?>) responseB, listA, e);
                throw e;
            }
        } catch (AmazonClientException e3) {
            e = e3;
            responseB = null;
        }
    }

    void a(Request<?> request, Response<?> response, List<RequestHandler2> list, AmazonClientException amazonClientException) {
        Iterator<RequestHandler2> it = list.iterator();
        while (it.hasNext()) {
            it.next().a(request, response, amazonClientException);
        }
    }

    <T> void a(Request<?> request, List<RequestHandler2> list, Response<T> response, TimingInfo timingInfo) {
        Iterator<RequestHandler2> it = list.iterator();
        while (it.hasNext()) {
            it.next().a(request, response);
        }
    }

    List<RequestHandler2> a(Request<?> request, ExecutionContext executionContext) {
        List<RequestHandler2> listB = executionContext.b();
        if (listB == null) {
            return Collections.emptyList();
        }
        for (RequestHandler2 requestHandler2 : listB) {
            if (requestHandler2 instanceof CredentialsRequestHandler) {
                ((CredentialsRequestHandler) requestHandler2).a(executionContext.d());
            }
            requestHandler2.a(request);
        }
        return listB;
    }

    /* JADX WARN: Removed duplicated region for block: B:190:0x0384 A[Catch: all -> 0x0415, TryCatch #41 {all -> 0x0415, blocks: (B:188:0x037c, B:190:0x0384, B:191:0x039e, B:193:0x03e7, B:204:0x0414), top: B:258:0x037c }] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x03e7 A[Catch: all -> 0x0415, TRY_LEAVE, TryCatch #41 {all -> 0x0415, blocks: (B:188:0x037c, B:190:0x0384, B:191:0x039e, B:193:0x03e7, B:204:0x0414), top: B:258:0x037c }] */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0419 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0414 A[EDGE_INSN: B:272:0x0414->B:204:0x0414 BREAK  A[LOOP:0: B:8:0x005e->B:203:0x040c], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:275:? A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    <T> com.amazonaws.Response<T> b(com.amazonaws.Request<?> r27, com.amazonaws.http.HttpResponseHandler<com.amazonaws.AmazonWebServiceResponse<T>> r28, com.amazonaws.http.HttpResponseHandler<com.amazonaws.AmazonServiceException> r29, com.amazonaws.http.ExecutionContext r30) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1074
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.http.AmazonHttpClient.b(com.amazonaws.Request, com.amazonaws.http.HttpResponseHandler, com.amazonaws.http.HttpResponseHandler, com.amazonaws.http.ExecutionContext):com.amazonaws.Response");
    }

    private <T extends Throwable> T a(T t, AWSRequestMetrics aWSRequestMetrics) {
        aWSRequestMetrics.c(AWSRequestMetrics.Field.Exception);
        aWSRequestMetrics.a(AWSRequestMetrics.Field.Exception, t);
        return t;
    }

    void a(Request<?> request, Exception exc) {
        if (request.h() == null) {
            return;
        }
        if (!request.h().markSupported()) {
            throw new AmazonClientException("Encountered an exception and stream is not resettable", exc);
        }
        try {
            request.h().reset();
        } catch (IOException unused) {
            throw new AmazonClientException("Encountered an exception and couldn't reset the stream to retry", exc);
        }
    }

    void a(Request<?> request) {
        RequestClientOptions requestClientOptionsB;
        String strA;
        String strA2 = ClientConfiguration.d;
        AmazonWebServiceRequest amazonWebServiceRequestA = request.a();
        if (amazonWebServiceRequestA != null && (requestClientOptionsB = amazonWebServiceRequestA.b()) != null && (strA = requestClientOptionsB.a(RequestClientOptions.Marker.USER_AGENT)) != null) {
            strA2 = a(strA2, strA);
        }
        if (!ClientConfiguration.d.equals(this.c.c())) {
            strA2 = a(strA2, this.c.c());
        }
        request.a("User-Agent", strA2);
    }

    static String a(String str, String str2) {
        if (str.contains(str2)) {
            return str;
        }
        return str.trim() + " " + str2.trim();
    }

    public void a() {
        this.b.a();
    }

    private boolean a(AmazonWebServiceRequest amazonWebServiceRequest, InputStream inputStream, AmazonClientException amazonClientException, int i2, RetryPolicy retryPolicy) {
        int i3 = i2 - 1;
        int iL = this.c.l();
        if (iL < 0 || !retryPolicy.d()) {
            iL = retryPolicy.c();
        }
        if (i3 >= iL) {
            return false;
        }
        if (inputStream != null && !inputStream.markSupported()) {
            if (a.a()) {
                a.b("Content not repeatable");
            }
            return false;
        }
        return retryPolicy.a().a(amazonWebServiceRequest, amazonClientException, i3);
    }

    private static boolean a(HttpResponse httpResponse) {
        int iE = httpResponse.e();
        String str = httpResponse.a().get("Location");
        return (iE != 307 || str == null || str.isEmpty()) ? false : true;
    }

    private boolean b(HttpResponse httpResponse) {
        int iE = httpResponse.e();
        return iE >= 200 && iE < 300;
    }

    <T> T a(Request<?> request, HttpResponseHandler<AmazonWebServiceResponse<T>> httpResponseHandler, HttpResponse httpResponse, ExecutionContext executionContext) throws IOException {
        try {
            AWSRequestMetrics aWSRequestMetricsC = executionContext.c();
            aWSRequestMetricsC.a(AWSRequestMetrics.Field.ResponseProcessingTime);
            try {
                AmazonWebServiceResponse<T> amazonWebServiceResponseB = httpResponseHandler.b(httpResponse);
                if (amazonWebServiceResponseB == null) {
                    throw new RuntimeException("Unable to unmarshall response metadata. Response Code: " + httpResponse.e() + ", Response Text: " + httpResponse.d());
                }
                if (m.a()) {
                    m.b("Received successful response: " + httpResponse.e() + ", AWS Request ID: " + amazonWebServiceResponseB.c());
                }
                aWSRequestMetricsC.a(AWSRequestMetrics.Field.AWSRequestID, amazonWebServiceResponseB.c());
                return amazonWebServiceResponseB.a();
            } finally {
                aWSRequestMetricsC.b(AWSRequestMetrics.Field.ResponseProcessingTime);
            }
        } catch (CRC32MismatchException e2) {
            throw e2;
        } catch (IOException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new AmazonClientException("Unable to unmarshall response (" + e4.getMessage() + "). Response Code: " + httpResponse.e() + ", Response Text: " + httpResponse.d(), e4);
        }
    }

    AmazonServiceException a(Request<?> request, HttpResponseHandler<AmazonServiceException> httpResponseHandler, HttpResponse httpResponse) throws IOException {
        AmazonServiceException amazonServiceException;
        int iE = httpResponse.e();
        try {
            amazonServiceException = httpResponseHandler.b(httpResponse);
            m.b("Received error response: " + amazonServiceException.toString());
        } catch (Exception e2) {
            if (iE == j) {
                amazonServiceException = new AmazonServiceException("Request entity too large");
                amazonServiceException.b(request.g());
                amazonServiceException.a(j);
                amazonServiceException.a(AmazonServiceException.ErrorType.Client);
                amazonServiceException.c("Request entity too large");
            } else if (iE == k && "Service Unavailable".equalsIgnoreCase(httpResponse.d())) {
                amazonServiceException = new AmazonServiceException("Service unavailable");
                amazonServiceException.b(request.g());
                amazonServiceException.a(k);
                amazonServiceException.a(AmazonServiceException.ErrorType.Service);
                amazonServiceException.c("Service unavailable");
            } else {
                if (e2 instanceof IOException) {
                    throw ((IOException) e2);
                }
                throw new AmazonClientException("Unable to unmarshall error response (" + e2.getMessage() + "). Response Code: " + iE + ", Response Text: " + httpResponse.d() + ", Response Headers: " + httpResponse.a(), e2);
            }
        }
        amazonServiceException.a(iE);
        amazonServiceException.b(request.g());
        amazonServiceException.fillInStackTrace();
        return amazonServiceException;
    }

    private long a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i2, RetryPolicy retryPolicy) {
        int i3 = (i2 - 1) - 1;
        long jA = retryPolicy.b().a(amazonWebServiceRequest, amazonClientException, i3);
        if (a.a()) {
            a.b("Retriable error detected, will retry in " + jA + "ms, attempt number: " + i3);
        }
        try {
            Thread.sleep(jA);
            return jA;
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            throw new AmazonClientException(e2.getMessage(), e2);
        }
    }

    private String a(String str) {
        int iIndexOf;
        int iIndexOf2 = str.indexOf("(");
        if (str.contains(" + 15")) {
            iIndexOf = str.indexOf(" + 15");
        } else {
            iIndexOf = str.indexOf(" - 15");
        }
        return str.substring(iIndexOf2 + 1, iIndexOf);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0025 A[Catch: RuntimeException -> 0x0023, TRY_ENTER, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x0023, blocks: (B:4:0x0014, B:13:0x0025), top: B:19:0x0014 }] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v9, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    int a(com.amazonaws.http.HttpResponse r4, com.amazonaws.AmazonServiceException r5) {
        /*
            r3 = this;
            java.util.Date r0 = new java.util.Date
            r0.<init>()
            java.util.Map r4 = r4.a()
            java.lang.String r1 = "Date"
            java.lang.Object r4 = r4.get(r1)
            java.lang.String r4 = (java.lang.String) r4
            r1 = 0
            if (r4 == 0) goto L25
            boolean r2 = r4.isEmpty()     // Catch: java.lang.RuntimeException -> L23
            if (r2 == 0) goto L1b
            goto L25
        L1b:
            java.util.Date r5 = com.amazonaws.util.DateUtils.b(r4)     // Catch: java.lang.RuntimeException -> L20
            goto L31
        L20:
            r5 = move-exception
            r1 = r4
            goto L3f
        L23:
            r5 = move-exception
            goto L3f
        L25:
            java.lang.String r4 = r5.getMessage()     // Catch: java.lang.RuntimeException -> L23
            java.lang.String r4 = r3.a(r4)     // Catch: java.lang.RuntimeException -> L23
            java.util.Date r5 = com.amazonaws.util.DateUtils.c(r4)     // Catch: java.lang.RuntimeException -> L20
        L31:
            long r0 = r0.getTime()
            long r4 = r5.getTime()
            long r0 = r0 - r4
            r4 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 / r4
            int r4 = (int) r0
            return r4
        L3f:
            com.amazonaws.logging.Log r4 = com.amazonaws.http.AmazonHttpClient.a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Unable to parse clock skew offset from response: "
            r0.append(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r4.d(r0, r5)
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.http.AmazonHttpClient.a(com.amazonaws.http.HttpResponse, com.amazonaws.AmazonServiceException):int");
    }

    protected void finalize() throws Throwable {
        a();
        super.finalize();
    }

    public RequestMetricCollector b() {
        return this.n;
    }
}
