package com.amazonaws.event;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class ProgressReportingInputStream extends SdkFilterInputStream {
    private static final int a = 1024;
    private static final int b = 8;
    private int c;
    private final ProgressListenerCallbackExecutor d;
    private int e;
    private boolean f;

    public ProgressReportingInputStream(InputStream inputStream, ProgressListenerCallbackExecutor progressListenerCallbackExecutor) {
        super(inputStream);
        this.c = 8192;
        this.d = progressListenerCallbackExecutor;
    }

    public void a(int i) {
        this.c = i * 1024;
    }

    public void a(boolean z) {
        this.f = z;
    }

    public boolean a() {
        return this.f;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int i = super.read();
        if (i == -1) {
            b();
        } else {
            b(1);
        }
        return i;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        super.reset();
        ProgressEvent progressEvent = new ProgressEvent(this.e);
        progressEvent.a(32);
        this.d.a(progressEvent);
        this.e = 0;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3 = super.read(bArr, i, i2);
        if (i3 == -1) {
            b();
        }
        if (i3 != -1) {
            b(i3);
        }
        return i3;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.e > 0) {
            this.d.a(new ProgressEvent(this.e));
            this.e = 0;
        }
        super.close();
    }

    private void b() {
        if (this.f) {
            ProgressEvent progressEvent = new ProgressEvent(this.e);
            progressEvent.a(4);
            this.e = 0;
            this.d.a(progressEvent);
        }
    }

    private void b(int i) {
        this.e += i;
        if (this.e >= this.c) {
            this.d.a(new ProgressEvent(this.e));
            this.e = 0;
        }
    }
}
