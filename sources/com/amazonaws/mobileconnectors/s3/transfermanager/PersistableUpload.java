package com.amazonaws.mobileconnectors.s3.transfermanager;

import com.amazonaws.mobileconnectors.s3.transferutility.TransferTable;
import com.amazonaws.util.json.JsonUtils;
import java.io.IOException;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class PersistableUpload extends PersistableTransfer {
    static final String a = "upload";
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final String f;
    private final long g;
    private final long h;

    String g() {
        return a;
    }

    @Deprecated
    public PersistableUpload() {
        this(null, null, null, null, -1L, -1L);
    }

    public PersistableUpload(String str, String str2, String str3, String str4, long j, long j2) {
        this.b = a;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = str4;
        this.g = j;
        this.h = j2;
    }

    String a() {
        return this.c;
    }

    String b() {
        return this.d;
    }

    String c() {
        return this.f;
    }

    long d() {
        return this.g;
    }

    long e() {
        return this.h;
    }

    String f() {
        return this.e;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.PersistableTransfer
    public String i() {
        StringWriter stringWriter = new StringWriter();
        try {
            JsonUtils.a(stringWriter).c().a("pauseType").b(a).a("bucketName").b(this.c).a(TransferTable.g).b(this.d).a(TransferTable.j).b(this.e).a("multipartUploadId").b(this.f).a("partSize").a(this.g).a("mutlipartUploadThreshold").a(this.h).d().g();
            return stringWriter.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}
