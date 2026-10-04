package com.amazonaws.mobileconnectors.s3.transfermanager;

import com.amazonaws.mobileconnectors.s3.transferutility.TransferTable;
import com.amazonaws.services.s3.model.ResponseHeaderOverrides;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.IOException;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class PersistableDownload extends PersistableTransfer {
    static final String a = "download";
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final long[] f;
    private final ResponseHeaderOverrides g;
    private final boolean h;
    private final String i;

    String h() {
        return a;
    }

    @Deprecated
    public PersistableDownload() {
        this(null, null, null, null, null, false, null);
    }

    public PersistableDownload(String str, String str2, String str3, long[] jArr, ResponseHeaderOverrides responseHeaderOverrides, boolean z, String str4) {
        this.b = a;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = jArr == null ? null : (long[]) jArr.clone();
        this.g = responseHeaderOverrides;
        this.h = z;
        this.i = str4;
    }

    String a() {
        return this.c;
    }

    String b() {
        return this.d;
    }

    String c() {
        return this.e;
    }

    long[] d() {
        if (this.f == null) {
            return null;
        }
        return (long[]) this.f.clone();
    }

    ResponseHeaderOverrides e() {
        return this.g;
    }

    boolean f() {
        return this.h;
    }

    String g() {
        return this.i;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.PersistableTransfer
    public String i() {
        StringWriter stringWriter = new StringWriter();
        AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
        try {
            awsJsonWriterA.c().a("pauseType").b(a).a("bucketName").b(this.c).a(TransferTable.g).b(this.d).a(TransferTable.j).b(this.i).a("versionId").b(this.e).a("isRequesterPays").a(this.h);
            if (this.f != null) {
                awsJsonWriterA.a("range").a();
                for (long j : this.f) {
                    awsJsonWriterA.a(j);
                }
                awsJsonWriterA.b();
            }
            if (this.g != null) {
                awsJsonWriterA.a("responseHeaders").c().a("contentType").b(this.g.h()).a("contentLanguage").b(this.g.i()).a("expires").b(this.g.j()).a("cacheControl").b(this.g.k()).a("contentDisposition").b(this.g.l()).a("contentEncoding").b(this.g.m()).d();
            }
            awsJsonWriterA.d().g();
            return stringWriter.toString();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}
