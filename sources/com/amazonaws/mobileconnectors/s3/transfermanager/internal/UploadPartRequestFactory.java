package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.services.s3.internal.InputSubstream;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.SSECustomerKey;
import com.amazonaws.services.s3.model.UploadPartRequest;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class UploadPartRequestFactory {
    private final String a;
    private final String b;
    private final String c;
    private final long d;
    private final File e;
    private final PutObjectRequest f;
    private int g = 1;
    private long h = 0;
    private long i;
    private SSECustomerKey j;

    public UploadPartRequestFactory(PutObjectRequest putObjectRequest, String str, long j) {
        this.f = putObjectRequest;
        this.c = str;
        this.d = j;
        this.a = putObjectRequest.h();
        this.b = putObjectRequest.i();
        this.e = TransferManagerUtils.b(putObjectRequest);
        this.i = TransferManagerUtils.a(putObjectRequest);
        this.j = putObjectRequest.q();
    }

    public synchronized boolean a() {
        return this.i > 0;
    }

    public synchronized UploadPartRequest b() {
        UploadPartRequest uploadPartRequestB;
        long jMin = Math.min(this.d, this.i);
        boolean z = this.i - jMin <= 0;
        if (this.f.o() != null) {
            UploadPartRequest uploadPartRequestB2 = new UploadPartRequest().b(this.a).d(this.b).f(this.c).b(new InputSubstream(this.f.o(), 0L, jMin, z));
            int i = this.g;
            this.g = i + 1;
            uploadPartRequestB = uploadPartRequestB2.f(i).b(jMin);
        } else {
            UploadPartRequest uploadPartRequestD = new UploadPartRequest().b(this.a).d(this.b).f(this.c).b(this.e).d(this.h);
            int i2 = this.g;
            this.g = i2 + 1;
            uploadPartRequestB = uploadPartRequestD.f(i2).b(jMin);
        }
        if (this.j != null) {
            uploadPartRequestB.a(this.j);
        }
        this.h += jMin;
        this.i -= jMin;
        uploadPartRequestB.a(z);
        uploadPartRequestB.a(this.f.d());
        return uploadPartRequestB;
    }
}
