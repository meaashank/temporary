package com.amazonaws.metrics;

import android.support.v4.media.session.PlaybackStateCompat;
import com.amazonaws.internal.MetricAware;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.entity.InputStreamEntity;

/* JADX INFO: loaded from: classes.dex */
public class MetricInputStreamEntity extends InputStreamEntity {
    private static final int a = 2048;
    private final ByteThroughputHelper b;

    public MetricInputStreamEntity(ThroughputMetricType throughputMetricType, InputStream inputStream, long j) {
        super(inputStream, j);
        this.b = new ByteThroughputHelper(throughputMetricType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.http.entity.InputStreamEntity, org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        if ((outputStream instanceof MetricAware) && ((MetricAware) outputStream).d()) {
            super.writeTo(outputStream);
        } else {
            a(outputStream);
        }
    }

    private void a(OutputStream outputStream) throws IOException {
        int i;
        if (outputStream == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        InputStream content = getContent();
        long contentLength = getContentLength();
        try {
            byte[] bArr = new byte[2048];
            if (contentLength < 0) {
                while (true) {
                    int i2 = content.read(bArr);
                    if (i2 == -1) {
                        break;
                    }
                    long jA = this.b.a();
                    outputStream.write(bArr, 0, i2);
                    this.b.a(i2, jA);
                }
            } else {
                while (contentLength > 0 && (i = content.read(bArr, 0, (int) Math.min(PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH, contentLength))) != -1) {
                    long jA2 = this.b.a();
                    outputStream.write(bArr, 0, i);
                    this.b.a(i, jA2);
                    contentLength -= (long) i;
                }
            }
        } finally {
            this.b.b();
            content.close();
        }
    }
}
