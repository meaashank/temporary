package com.amazonaws.mobileconnectors.s3.transferutility;

import com.google.android.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class TransferUtilityOptions implements Serializable {
    private static final int a = 60000;
    private static final long serialVersionUID = 1;

    @Deprecated
    private long b;
    private int c;
    private TransferNetworkConnectionType d;

    @Deprecated
    static long e() {
        return ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
    }

    @Deprecated
    public void a(long j) {
    }

    public TransferUtilityOptions() {
        this.b = e();
        this.c = d();
        this.d = f();
    }

    public TransferUtilityOptions(int i, TransferNetworkConnectionType transferNetworkConnectionType) {
        this.b = e();
        this.c = i;
        this.d = transferNetworkConnectionType;
    }

    @Deprecated
    public long a() {
        return this.b;
    }

    public int b() {
        return this.c;
    }

    public void a(int i) {
        if (i < 0) {
            this.c = d();
        } else {
            this.c = i;
        }
    }

    public TransferNetworkConnectionType c() {
        return this.d;
    }

    static int d() {
        return (Runtime.getRuntime().availableProcessors() + 1) * 2;
    }

    static TransferNetworkConnectionType f() {
        return TransferNetworkConnectionType.ANY;
    }
}
