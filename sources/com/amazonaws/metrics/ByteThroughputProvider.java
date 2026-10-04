package com.amazonaws.metrics;

/* JADX INFO: loaded from: classes.dex */
public abstract class ByteThroughputProvider {
    private long a;
    private int b;
    private final ThroughputMetricType c;

    protected ByteThroughputProvider(ThroughputMetricType throughputMetricType) {
        this.c = throughputMetricType;
    }

    public ThroughputMetricType c() {
        return this.c;
    }

    public int d() {
        return this.b;
    }

    public long e() {
        return this.a;
    }

    public String f() {
        return super.toString();
    }

    protected void a(int i, long j) {
        this.b += i;
        this.a += System.nanoTime() - j;
    }

    protected void g() {
        this.b = 0;
        this.a = 0L;
    }

    public String toString() {
        return String.format("providerId=%s, throughputType=%s, byteCount=%d, duration=%d", f(), this.c, Integer.valueOf(this.b), Long.valueOf(this.a));
    }
}
