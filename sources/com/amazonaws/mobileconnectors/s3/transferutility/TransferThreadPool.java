package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
class TransferThreadPool {
    private static final Log a = LogFactory.a(TransferService.class);
    private static ExecutorService b = null;
    private static ExecutorService c = null;
    private static final int d = 250;

    TransferThreadPool() {
    }

    static synchronized void a(int i) {
        a.b("Initializing the thread pool of size: " + i);
        double d2 = i;
        Double.isNaN(d2);
        int iMax = Math.max((int) Math.ceil(d2 / 2.0d), 1);
        if (b == null) {
            b = b(iMax);
        }
        if (c == null) {
            c = b(iMax);
        }
    }

    public static <T> Future<T> a(Callable<T> callable) {
        a(TransferUtilityOptions.d());
        if (callable instanceof UploadPartTask) {
            return c.submit(callable);
        }
        return b.submit(callable);
    }

    public static void a() {
        if (c != null) {
            a(c);
            c = null;
        }
        if (b != null) {
            a(b);
            b = null;
        }
    }

    private static void a(ExecutorService executorService) {
        if (executorService == null) {
            return;
        }
        executorService.shutdown();
        try {
            if (executorService.awaitTermination(250L, TimeUnit.MILLISECONDS)) {
                return;
            }
            executorService.shutdownNow();
        } catch (InterruptedException unused) {
            executorService.shutdownNow();
            Thread.currentThread().interrupt();
        }
    }

    private static ExecutorService b(int i) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        threadPoolExecutor.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardPolicy());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }
}
