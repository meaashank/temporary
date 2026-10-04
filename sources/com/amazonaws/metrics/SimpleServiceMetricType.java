package com.amazonaws.metrics;

/* JADX INFO: loaded from: classes.dex */
public class SimpleServiceMetricType extends SimpleMetricType implements ServiceMetricType {
    private final String e;
    private final String f;

    public SimpleServiceMetricType(String str, String str2) {
        this.e = str;
        this.f = str2;
    }

    @Override // com.amazonaws.metrics.SimpleMetricType, com.amazonaws.metrics.MetricType
    public String name() {
        return this.e;
    }

    @Override // com.amazonaws.metrics.ServiceMetricType
    public String getServiceName() {
        return this.f;
    }
}
