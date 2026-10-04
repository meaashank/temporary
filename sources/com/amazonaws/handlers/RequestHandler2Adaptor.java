package com.amazonaws.handlers;

import com.amazonaws.Request;
import com.amazonaws.Response;
import com.amazonaws.util.AWSRequestMetrics;

/* JADX INFO: loaded from: classes.dex */
final class RequestHandler2Adaptor extends RequestHandler2 {
    private final RequestHandler a;

    RequestHandler2Adaptor(RequestHandler requestHandler) {
        if (requestHandler == null) {
            throw new IllegalArgumentException();
        }
        this.a = requestHandler;
    }

    @Override // com.amazonaws.handlers.RequestHandler2
    public void a(Request<?> request) {
        this.a.a(request);
    }

    @Override // com.amazonaws.handlers.RequestHandler2
    public void a(Request<?> request, Response<?> response) {
        AWSRequestMetrics aWSRequestMetricsJ = request == null ? null : request.j();
        this.a.a(request, response == null ? null : response.a(), aWSRequestMetricsJ != null ? aWSRequestMetricsJ.a() : null);
    }

    @Override // com.amazonaws.handlers.RequestHandler2
    public void a(Request<?> request, Response<?> response, Exception exc) {
        this.a.a(request, exc);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj instanceof RequestHandler2Adaptor) {
            return this.a.equals(((RequestHandler2Adaptor) obj).a);
        }
        return false;
    }
}
