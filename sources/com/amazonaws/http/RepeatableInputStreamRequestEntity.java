package com.amazonaws.http;

import com.amazonaws.Request;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.MetricInputStreamEntity;
import com.amazonaws.metrics.ServiceMetricType;
import com.amazonaws.metrics.ThroughputMetricType;
import com.amazonaws.metrics.internal.ServiceMetricTypeGuesser;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.entity.InputStreamEntity;

/* JADX INFO: loaded from: classes.dex */
class RepeatableInputStreamRequestEntity extends BasicHttpEntity {
    private static final Log d = LogFactory.a(AmazonHttpClient.class);
    private boolean a = true;
    private InputStreamEntity b;
    private InputStream c;
    private IOException e;

    @Override // org.apache.http.entity.AbstractHttpEntity, org.apache.http.HttpEntity
    public boolean isChunked() {
        return false;
    }

    RepeatableInputStreamRequestEntity(Request<?> request) {
        setChunked(false);
        long j = -1;
        try {
            String str = request.b().get("Content-Length");
            if (str != null) {
                j = Long.parseLong(str);
            }
        } catch (NumberFormatException unused) {
            d.d("Unable to parse content length from request.  Buffering contents in memory.");
        }
        String str2 = request.b().get("Content-Type");
        ThroughputMetricType throughputMetricTypeGuessThroughputMetricType = ServiceMetricTypeGuesser.guessThroughputMetricType(request, ServiceMetricType.a, ServiceMetricType.b);
        if (throughputMetricTypeGuessThroughputMetricType == null) {
            this.b = new InputStreamEntity(request.h(), j);
        } else {
            this.b = new MetricInputStreamEntity(throughputMetricTypeGuessThroughputMetricType, request.h(), j);
        }
        this.b.setContentType(str2);
        this.c = request.h();
        setContent(this.c);
        setContentType(str2);
        setContentLength(j);
    }

    @Override // org.apache.http.entity.BasicHttpEntity, org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return this.c.markSupported() || this.b.isRepeatable();
    }

    @Override // org.apache.http.entity.BasicHttpEntity, org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        try {
            if (!this.a && isRepeatable()) {
                this.c.reset();
            }
            this.a = false;
            this.b.writeTo(outputStream);
        } catch (IOException e) {
            if (this.e == null) {
                this.e = e;
            }
            throw this.e;
        }
    }
}
