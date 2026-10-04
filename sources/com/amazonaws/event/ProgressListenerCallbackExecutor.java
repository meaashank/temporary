package com.amazonaws.event;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public class ProgressListenerCallbackExecutor {
    static ExecutorService a = c();
    private final ProgressListener b;

    public static Future<?> a(final ProgressListener progressListener, final ProgressEvent progressEvent) {
        if (progressListener == null) {
            return null;
        }
        return a.submit(new Runnable() { // from class: com.amazonaws.event.ProgressListenerCallbackExecutor.1
            @Override // java.lang.Runnable
            public void run() {
                progressListener.a(progressEvent);
            }
        });
    }

    public ProgressListenerCallbackExecutor(ProgressListener progressListener) {
        this.b = progressListener;
    }

    public ProgressListenerCallbackExecutor() {
        this.b = null;
    }

    public void a(final ProgressEvent progressEvent) {
        if (this.b == null) {
            return;
        }
        a.submit(new Runnable() { // from class: com.amazonaws.event.ProgressListenerCallbackExecutor.2
            @Override // java.lang.Runnable
            public void run() {
                ProgressListenerCallbackExecutor.this.b.a(progressEvent);
            }
        });
    }

    protected ProgressListener a() {
        return this.b;
    }

    protected static ExecutorService b() {
        return a;
    }

    public static ProgressListenerCallbackExecutor a(ProgressListener progressListener) {
        if (progressListener == null) {
            return null;
        }
        return new ProgressListenerCallbackExecutor(progressListener);
    }

    static ExecutorService c() {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.amazonaws.event.ProgressListenerCallbackExecutor.3
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setName("android-sdk-progress-listener-callback-thread");
                thread.setDaemon(true);
                return thread;
            }
        });
    }
}
