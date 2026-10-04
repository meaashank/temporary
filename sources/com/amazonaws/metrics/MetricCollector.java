package com.amazonaws.metrics;

/* JADX INFO: loaded from: classes.dex */
public abstract class MetricCollector {
    public static final MetricCollector a = new MetricCollector() { // from class: com.amazonaws.metrics.MetricCollector.1
        @Override // com.amazonaws.metrics.MetricCollector
        public boolean a() {
            return true;
        }

        @Override // com.amazonaws.metrics.MetricCollector
        public boolean b() {
            return true;
        }

        @Override // com.amazonaws.metrics.MetricCollector
        public boolean c() {
            return false;
        }

        @Override // com.amazonaws.metrics.MetricCollector
        public RequestMetricCollector d() {
            return RequestMetricCollector.a;
        }

        @Override // com.amazonaws.metrics.MetricCollector
        public ServiceMetricCollector e() {
            return ServiceMetricCollector.a;
        }
    };

    public interface Factory {
        MetricCollector a();
    }

    public abstract boolean a();

    public abstract boolean b();

    public abstract boolean c();

    public abstract RequestMetricCollector d();

    public abstract ServiceMetricCollector e();
}
