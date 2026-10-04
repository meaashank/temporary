package com.amazonaws.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.InputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class SdkDigestInputStream extends DigestInputStream implements MetricAware {
    static final /* synthetic */ boolean a = !SdkDigestInputStream.class.desiredAssertionStatus();
    private static final int b = 2048;

    public SdkDigestInputStream(InputStream inputStream, MessageDigest messageDigest) {
        super(inputStream, messageDigest);
    }

    @Override // com.amazonaws.internal.MetricAware
    @Deprecated
    public final boolean d() {
        if (this.in instanceof MetricAware) {
            return ((MetricAware) this.in).d();
        }
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        if (j <= 0) {
            return j;
        }
        byte[] bArr = new byte[(int) Math.min(PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH, j)];
        long j2 = j;
        while (j2 > 0) {
            int i = read(bArr, 0, (int) Math.min(j2, bArr.length));
            if (i == -1) {
                if (j2 == j) {
                    return -1L;
                }
                return j - j2;
            }
            j2 -= (long) i;
        }
        if (a || j2 == 0) {
            return j;
        }
        throw new AssertionError();
    }
}
