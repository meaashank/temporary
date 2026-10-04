package com.amazonaws.metrics;

import com.amazonaws.Request;
import com.amazonaws.Response;

/* JADX INFO: loaded from: classes.dex */
public abstract class RequestMetricCollector {
    public static final RequestMetricCollector a = new RequestMetricCollector() { // from class: com.amazonaws.metrics.RequestMetricCollector.1
        @Override // com.amazonaws.metrics.RequestMetricCollector
        public void a(Request<?> request, Response<?> response) {
        }

        @Override // com.amazonaws.metrics.RequestMetricCollector
        public boolean a() {
            return false;
        }
    };

    public interface Factory {
        RequestMetricCollector a();
    }

    public abstract void a(Request<?> request, Response<?> response);

    public boolean a() {
        return true;
    }
}
