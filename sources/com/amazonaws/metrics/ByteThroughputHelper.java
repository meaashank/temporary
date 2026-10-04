package com.amazonaws.metrics;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
class ByteThroughputHelper extends ByteThroughputProvider {
    private static final int a = 10;

    ByteThroughputHelper(ThroughputMetricType throughputMetricType) {
        super(throughputMetricType);
    }

    long a() {
        if (TimeUnit.NANOSECONDS.toSeconds(e()) > 10) {
            b();
        }
        return System.nanoTime();
    }

    void b() {
        if (d() > 0) {
            AwsSdkMetrics.getServiceMetricCollector().a(this);
            g();
        }
    }

    @Override // com.amazonaws.metrics.ByteThroughputProvider
    public void a(int i, long j) {
        super.a(i, j);
    }
}
