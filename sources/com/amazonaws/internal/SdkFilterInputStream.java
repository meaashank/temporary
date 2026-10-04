package com.amazonaws.internal;

import com.amazonaws.AbortedException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class SdkFilterInputStream extends FilterInputStream implements MetricAware {
    protected void g() {
    }

    protected SdkFilterInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // com.amazonaws.internal.MetricAware
    @Deprecated
    public boolean d() {
        if (this.in instanceof MetricAware) {
            return ((MetricAware) this.in).d();
        }
        return false;
    }

    protected final void f() {
        if (Thread.interrupted()) {
            g();
            throw new AbortedException();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        f();
        return this.in.read();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        f();
        return this.in.read(bArr, i, i2);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        f();
        return this.in.skip(j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        f();
        return this.in.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
        f();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        f();
        this.in.mark(i);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        f();
        this.in.reset();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        f();
        return this.in.markSupported();
    }
}
