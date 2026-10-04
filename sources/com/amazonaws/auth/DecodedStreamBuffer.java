package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;

/* JADX INFO: loaded from: classes.dex */
class DecodedStreamBuffer {
    private static final Log a = LogFactory.a(DecodedStreamBuffer.class);
    private byte[] b;
    private int c;
    private int d;
    private int e = -1;
    private boolean f;

    public DecodedStreamBuffer(int i) {
        this.b = new byte[i];
        this.c = i;
    }

    public void a(byte b) {
        this.e = -1;
        if (this.d >= this.c) {
            if (a.a()) {
                a.b("Buffer size " + this.c + " has been exceeded and the input stream will not be repeatable. Freeing buffer memory");
            }
            this.f = true;
            return;
        }
        byte[] bArr = this.b;
        int i = this.d;
        this.d = i + 1;
        bArr[i] = b;
    }

    public void a(byte[] bArr, int i, int i2) {
        this.e = -1;
        if (this.d + i2 > this.c) {
            if (a.a()) {
                a.b("Buffer size " + this.c + " has been exceeded and the input stream will not be repeatable. Freeing buffer memory");
            }
            this.f = true;
            return;
        }
        System.arraycopy(bArr, i, this.b, this.d, i2);
        this.d += i2;
    }

    public boolean a() {
        return this.e != -1 && this.e < this.d;
    }

    public byte b() {
        byte[] bArr = this.b;
        int i = this.e;
        this.e = i + 1;
        return bArr[i];
    }

    public void c() {
        if (this.f) {
            throw new AmazonClientException("The input stream is not repeatable since the buffer size " + this.c + " has been exceeded.");
        }
        this.e = 0;
    }
}
