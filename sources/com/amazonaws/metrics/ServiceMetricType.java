package com.amazonaws.metrics;

/* JADX INFO: loaded from: classes.dex */
public interface ServiceMetricType extends MetricType {
    public static final String a = "UploadThroughput";
    public static final String b = "UploadByteCount";
    public static final String c = "DownloadThroughput";
    public static final String d = "DownloadByteCount";

    String getServiceName();
}
