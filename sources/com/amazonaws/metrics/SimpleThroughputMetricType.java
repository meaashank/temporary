package com.amazonaws.metrics;

/* JADX INFO: loaded from: classes.dex */
public class SimpleThroughputMetricType extends SimpleServiceMetricType implements ThroughputMetricType {
    private final ServiceMetricType e;

    public SimpleThroughputMetricType(String str, String str2, String str3) {
        super(str, str2);
        this.e = new SimpleServiceMetricType(str3, str2);
    }

    @Override // com.amazonaws.metrics.ThroughputMetricType
    public ServiceMetricType a() {
        return this.e;
    }
}
