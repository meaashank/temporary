package com.amazonaws.internal;

import com.amazonaws.AbortedException;
import com.amazonaws.logging.LogFactory;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class SdkInputStream extends InputStream implements MetricAware {
    protected abstract InputStream a();

    protected void f() {
    }

    @Override // com.amazonaws.internal.MetricAware
    @Deprecated
    public final boolean d() {
        Closeable closeableA = a();
        if (closeableA instanceof MetricAware) {
            return ((MetricAware) closeableA).d();
        }
        return false;
    }

    protected final void e() {
        if (Thread.interrupted()) {
            try {
                f();
            } catch (IOException e) {
                LogFactory.a(getClass()).b("FYI", e);
            }
            throw new AbortedException();
        }
    }
}
