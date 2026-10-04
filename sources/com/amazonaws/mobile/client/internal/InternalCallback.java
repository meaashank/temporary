package com.amazonaws.mobile.client.internal;

import android.util.Log;
import com.amazonaws.mobile.client.Callback;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
public class InternalCallback<R> implements Callback<R> {
    private static final String a = "InternalCallback";
    private Callback<R> b;
    private Mode c;
    private CountDownLatch d;
    private Runnable e;
    private R f;
    private Exception g;

    private enum Mode {
        Callback,
        Async,
        Sync,
        Done
    }

    public InternalCallback() {
        this(null);
    }

    public InternalCallback(Callback<R> callback) {
        this.b = callback;
        this.c = Mode.Callback;
        this.d = new CountDownLatch(1);
    }

    @Override // com.amazonaws.mobile.client.Callback
    public void a(R r) {
        a(r, null);
    }

    @Override // com.amazonaws.mobile.client.Callback
    public void a(Exception exc) {
        a(null, exc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(R r, Exception exc) {
        switch (this.c) {
            case Callback:
            case Async:
                if (exc == null) {
                    this.b.a(r);
                } else {
                    this.b.a(exc);
                }
                break;
            case Sync:
                this.f = r;
                this.g = exc;
                this.d.countDown();
                break;
            case Done:
                Log.w(a, "Library attempted to call user callback twice, expected only once");
                break;
        }
        this.c = Mode.Done;
        this.b = null;
    }

    public void a(final Runnable runnable) {
        if (this.c == Mode.Done) {
            Log.e(a, "Duplicate call to execute code.", new RuntimeException("Internal error, duplicate call"));
        }
        this.c = Mode.Async;
        this.d = null;
        new Thread(new Runnable() { // from class: com.amazonaws.mobile.client.internal.InternalCallback.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    runnable.run();
                } catch (Exception e) {
                    InternalCallback.this.a(null, e);
                }
            }
        }).start();
    }

    public R b(Runnable runnable) throws Exception {
        if (this.c == Mode.Done) {
            Log.e(a, "Duplicate call to execute code.", new RuntimeException("Internal error, duplicate call"));
        }
        this.c = Mode.Sync;
        try {
            runnable.run();
            this.d.await();
        } catch (Exception e) {
            this.g = e;
        }
        Exception exc = this.g;
        R r = this.f;
        this.g = null;
        this.f = null;
        if (exc == null) {
            return r;
        }
        throw exc;
    }
}
