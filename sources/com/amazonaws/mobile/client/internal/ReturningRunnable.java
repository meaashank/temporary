package com.amazonaws.mobile.client.internal;

import com.amazonaws.mobile.client.Callback;

/* JADX INFO: loaded from: classes.dex */
public abstract class ReturningRunnable<R> {
    private final String a;

    public abstract R b();

    public ReturningRunnable() {
        this.a = null;
    }

    public ReturningRunnable(String str) {
        this.a = str;
    }

    public R c() {
        return b();
    }

    public void a(final Callback<R> callback) {
        new Thread(new Runnable() { // from class: com.amazonaws.mobile.client.internal.ReturningRunnable.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    callback.a(ReturningRunnable.this.b());
                } catch (Exception e) {
                    if (ReturningRunnable.this.a != null) {
                        callback.a(new Exception(ReturningRunnable.this.a, e));
                    } else {
                        callback.a(e);
                    }
                }
            }
        }).start();
    }
}
