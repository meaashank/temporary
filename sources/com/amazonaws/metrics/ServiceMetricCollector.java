package com.amazonaws.metrics;

/* JADX INFO: loaded from: classes.dex */
public abstract class ServiceMetricCollector {
    public static final ServiceMetricCollector a = new ServiceMetricCollector() { // from class: com.amazonaws.metrics.ServiceMetricCollector.1
        @Override // com.amazonaws.metrics.ServiceMetricCollector
        public void a(ByteThroughputProvider byteThroughputProvider) {
        }

        @Override // com.amazonaws.metrics.ServiceMetricCollector
        public void a(ServiceLatencyProvider serviceLatencyProvider) {
        }

        @Override // com.amazonaws.metrics.ServiceMetricCollector
        public boolean a() {
            return false;
        }
    };

    public interface Factory {
        ServiceMetricCollector a();
    }

    public abstract void a(ByteThroughputProvider byteThroughputProvider);

    public abstract void a(ServiceLatencyProvider serviceLatencyProvider);

    public boolean a() {
        return true;
    }
}
