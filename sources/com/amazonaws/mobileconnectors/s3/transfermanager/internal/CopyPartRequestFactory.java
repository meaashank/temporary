package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.services.s3.model.CopyObjectRequest;
import com.amazonaws.services.s3.model.CopyPartRequest;

/* JADX INFO: loaded from: classes.dex */
public class CopyPartRequestFactory {
    private final String a;
    private final long b;
    private final CopyObjectRequest c;
    private int d = 1;
    private long e = 0;
    private long f;

    public CopyPartRequestFactory(CopyObjectRequest copyObjectRequest, String str, long j, long j2) {
        this.c = copyObjectRequest;
        this.a = str;
        this.b = j;
        this.f = j2;
    }

    public synchronized boolean a() {
        return this.f > 0;
    }

    public synchronized CopyPartRequest b() {
        CopyPartRequest copyPartRequestD;
        long jMin = Math.min(this.b, this.f);
        CopyPartRequest copyPartRequestB = new CopyPartRequest().d(this.c.h()).f(this.c.i()).b(this.a);
        int i = this.d;
        this.d = i + 1;
        copyPartRequestD = copyPartRequestB.b(i).j(this.c.k()).l(this.c.l()).h(this.c.j()).b(new Long(this.e)).d(new Long((this.e + jMin) - 1)).b(this.c.w()).d(this.c.x());
        a(copyPartRequestD);
        this.e += jMin;
        this.f -= jMin;
        return copyPartRequestD;
    }

    private void a(CopyPartRequest copyPartRequest) {
        if (this.c.q() != null) {
            copyPartRequest.a(this.c.q());
        }
        if (this.c.u() != null) {
            copyPartRequest.c(this.c.u());
        }
        if (this.c.r() != null) {
            copyPartRequest.c(this.c.r());
        }
        if (this.c.j() != null) {
            copyPartRequest.g(this.c.j());
        }
        if (this.c.s() != null) {
            copyPartRequest.a(this.c.s());
        }
    }
}
