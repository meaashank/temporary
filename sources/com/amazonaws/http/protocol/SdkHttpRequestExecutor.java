package com.amazonaws.http.protocol;

import com.amazonaws.util.AWSRequestMetrics;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpRequestExecutor;

/* JADX INFO: loaded from: classes.dex */
public class SdkHttpRequestExecutor extends HttpRequestExecutor {
    @Override // org.apache.http.protocol.HttpRequestExecutor
    protected HttpResponse doSendRequest(HttpRequest httpRequest, HttpClientConnection httpClientConnection, HttpContext httpContext) {
        AWSRequestMetrics aWSRequestMetrics = (AWSRequestMetrics) httpContext.getAttribute(AWSRequestMetrics.class.getSimpleName());
        if (aWSRequestMetrics == null) {
            return super.doSendRequest(httpRequest, httpClientConnection, httpContext);
        }
        aWSRequestMetrics.a(AWSRequestMetrics.Field.HttpClientSendRequestTime);
        try {
            return super.doSendRequest(httpRequest, httpClientConnection, httpContext);
        } finally {
            aWSRequestMetrics.b(AWSRequestMetrics.Field.HttpClientSendRequestTime);
        }
    }

    @Override // org.apache.http.protocol.HttpRequestExecutor
    protected HttpResponse doReceiveResponse(HttpRequest httpRequest, HttpClientConnection httpClientConnection, HttpContext httpContext) {
        AWSRequestMetrics aWSRequestMetrics = (AWSRequestMetrics) httpContext.getAttribute(AWSRequestMetrics.class.getSimpleName());
        if (aWSRequestMetrics == null) {
            return super.doReceiveResponse(httpRequest, httpClientConnection, httpContext);
        }
        aWSRequestMetrics.a(AWSRequestMetrics.Field.HttpClientReceiveResponseTime);
        try {
            return super.doReceiveResponse(httpRequest, httpClientConnection, httpContext);
        } finally {
            aWSRequestMetrics.b(AWSRequestMetrics.Field.HttpClientReceiveResponseTime);
        }
    }
}
