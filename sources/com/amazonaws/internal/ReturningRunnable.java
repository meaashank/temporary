package com.amazonaws.internal;

import com.amazonaws.async.Callback;

/* JADX INFO: loaded from: classes.dex */
public abstract class ReturningRunnable<R> {
    private final String a;

    public abstract R a();

    public ReturningRunnable() {
        this.a = null;
    }

    public ReturningRunnable(String str) {
        this.a = str;
    }

    public R b() {
        return a();
    }

    public void a(final Callback<R> callback) {
        new Thread(new Runnable() { // from class: com.amazonaws.internal.ReturningRunnable.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    callback.a(ReturningRunnable.this.a());
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
