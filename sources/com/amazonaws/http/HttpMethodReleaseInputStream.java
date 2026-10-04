package com.amazonaws.http;

import com.amazonaws.internal.SdkInputStream;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.client.methods.AbortableHttpRequest;

/* JADX INFO: loaded from: classes.dex */
public class HttpMethodReleaseInputStream extends SdkInputStream {
    private static final Log a = LogFactory.a(HttpMethodReleaseInputStream.class);
    private InputStream b;
    private HttpEntityEnclosingRequest c;
    private boolean d;
    private boolean e;

    public HttpMethodReleaseInputStream(HttpEntityEnclosingRequest httpEntityEnclosingRequest) {
        this.c = httpEntityEnclosingRequest;
        try {
            this.b = httpEntityEnclosingRequest.getEntity().getContent();
        } catch (IOException e) {
            if (a.e()) {
                a.d("Unable to obtain HttpMethod's response data stream", e);
            }
            try {
                httpEntityEnclosingRequest.getEntity().getContent().close();
            } catch (Exception unused) {
            }
            this.b = new ByteArrayInputStream(new byte[0]);
        }
    }

    public HttpEntityEnclosingRequest b() {
        return this.c;
    }

    protected void c() throws IOException {
        if (this.d) {
            return;
        }
        if (!this.e && (this.c instanceof AbortableHttpRequest)) {
            ((AbortableHttpRequest) this.c).abort();
        }
        this.b.close();
        this.d = true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            int i = this.b.read();
            if (i == -1) {
                this.e = true;
                if (!this.d) {
                    c();
                    if (a.a()) {
                        a.b("Released HttpMethod as its response data stream is fully consumed");
                    }
                }
            }
            return i;
        } catch (IOException e) {
            c();
            if (a.a()) {
                a.b("Released HttpMethod as its response data stream threw an exception", e);
            }
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            int i3 = this.b.read(bArr, i, i2);
            if (i3 == -1) {
                this.e = true;
                if (!this.d) {
                    c();
                    if (a.a()) {
                        a.b("Released HttpMethod as its response data stream is fully consumed");
                    }
                }
            }
            return i3;
        } catch (IOException e) {
            c();
            if (a.a()) {
                a.b("Released HttpMethod as its response data stream threw an exception", e);
            }
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        try {
            return this.b.available();
        } catch (IOException e) {
            c();
            if (a.a()) {
                a.b("Released HttpMethod as its response data stream threw an exception", e);
            }
            throw e;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.d) {
            c();
            if (a.a()) {
                a.b("Released HttpMethod as its response data stream is closed");
            }
        }
        this.b.close();
    }

    protected void finalize() throws Throwable {
        if (!this.d) {
            if (a.e()) {
                a.d("Attempting to release HttpMethod in finalize() as its response data stream has gone out of scope. This attempt will not always succeed and cannot be relied upon! Please ensure S3 response data streams are always fully consumed or closed to avoid HTTP connection starvation.");
            }
            c();
            if (a.e()) {
                a.d("Successfully released HttpMethod in finalize(). You were lucky this time... Please ensure S3 response data streams are always fully consumed or closed.");
            }
        }
        super.finalize();
    }

    @Override // com.amazonaws.internal.SdkInputStream
    protected InputStream a() {
        return this.b;
    }
}
