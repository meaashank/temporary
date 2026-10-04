package com.amazonaws.metrics;

import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.TimingInfo;

/* JADX INFO: loaded from: classes.dex */
public class ServiceLatencyProvider {
    private final long a = System.nanoTime();
    private long b = this.a;
    private final ServiceMetricType c;

    public ServiceLatencyProvider(ServiceMetricType serviceMetricType) {
        this.c = serviceMetricType;
    }

    public ServiceMetricType a() {
        return this.c;
    }

    public ServiceLatencyProvider b() {
        if (this.b != this.a) {
            throw new IllegalStateException();
        }
        this.b = System.nanoTime();
        return this;
    }

    public double c() {
        if (this.b == this.a) {
            LogFactory.a(getClass()).b("Likely to be a missing invocation of endTiming().");
        }
        return TimingInfo.b(this.a, this.b);
    }

    public String d() {
        return super.toString();
    }

    public String toString() {
        return String.format("providerId=%s, serviceMetricType=%s, startNano=%d, endNano=%d", d(), this.c, Long.valueOf(this.a), Long.valueOf(this.b));
    }
}
