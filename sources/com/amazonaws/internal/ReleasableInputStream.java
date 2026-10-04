package com.amazonaws.internal;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.FileInputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class ReleasableInputStream extends SdkFilterInputStream implements Releasable {
    private static final Log a = LogFactory.a(ReleasableInputStream.class);
    private boolean b;

    protected ReleasableInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.b) {
            return;
        }
        e();
    }

    @Override // com.amazonaws.internal.Releasable
    public final void a() {
        e();
    }

    private void e() {
        try {
            this.in.close();
        } catch (Exception e) {
            if (a.a()) {
                a.b("FYI", e);
            }
        }
        if (this.in instanceof Releasable) {
            ((Releasable) this.in).a();
        }
        f();
    }

    public final boolean b() {
        return this.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends ReleasableInputStream> T c() {
        this.b = true;
        return this;
    }

    public static ReleasableInputStream a(InputStream inputStream) {
        if (inputStream instanceof ReleasableInputStream) {
            return (ReleasableInputStream) inputStream;
        }
        if (inputStream instanceof FileInputStream) {
            return ResettableInputStream.a((FileInputStream) inputStream);
        }
        return new ReleasableInputStream(inputStream);
    }
}
