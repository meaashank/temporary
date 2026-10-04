package com.amazonaws.mobileconnectors.s3.transfermanager;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class TransferProgress {
    private static final Log c = LogFactory.a(TransferProgress.class);
    protected volatile long a = 0;
    protected volatile long b = -1;

    @Deprecated
    public long a() {
        return b();
    }

    public long b() {
        return this.a;
    }

    public long c() {
        return this.b;
    }

    @Deprecated
    public synchronized double d() {
        return e();
    }

    public synchronized double e() {
        double d;
        if (b() < 0) {
            return FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        }
        if (this.b < 0) {
            d = -1.0d;
        } else {
            double d2 = this.a;
            double d3 = this.b;
            Double.isNaN(d2);
            Double.isNaN(d3);
            d = (d2 / d3) * 100.0d;
        }
        return d;
    }

    public synchronized void a(long j) {
        this.a += j;
        if (this.b > -1 && this.a > this.b) {
            this.a = this.b;
            if (c.a()) {
                c.b("Number of bytes transfered is more than the actual total bytes to transfer. Total number of bytes to Transfer : " + this.b + ". Bytes Transferred : " + (this.a + j));
            }
        }
    }

    public void b(long j) {
        this.b = j;
    }
}
