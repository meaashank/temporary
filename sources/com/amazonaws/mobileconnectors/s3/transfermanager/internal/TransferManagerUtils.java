package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.mobileconnectors.s3.transfermanager.PauseStatus;
import com.amazonaws.mobileconnectors.s3.transfermanager.Transfer;
import com.amazonaws.mobileconnectors.s3.transfermanager.TransferManagerConfiguration;
import com.amazonaws.services.s3.model.CopyObjectRequest;
import com.amazonaws.services.s3.model.PutObjectRequest;
import java.io.File;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
public class TransferManagerUtils {
    public static ThreadPoolExecutor a() {
        return (ThreadPoolExecutor) Executors.newFixedThreadPool(10, new ThreadFactory() { // from class: com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferManagerUtils.1
            private int a = 1;

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                StringBuilder sb = new StringBuilder();
                sb.append("s3-transfer-manager-worker-");
                int i = this.a;
                this.a = i + 1;
                sb.append(i);
                thread.setName(sb.toString());
                return thread;
            }
        });
    }

    public static boolean a(PutObjectRequest putObjectRequest, boolean z) {
        return (z || b(putObjectRequest) == null) ? false : true;
    }

    public static long a(PutObjectRequest putObjectRequest) {
        File fileB = b(putObjectRequest);
        if (fileB != null) {
            return fileB.length();
        }
        if (putObjectRequest.o() == null || putObjectRequest.l().k() <= 0) {
            return -1L;
        }
        return putObjectRequest.l().k();
    }

    public static long a(PutObjectRequest putObjectRequest, TransferManagerConfiguration transferManagerConfiguration) {
        double dA = a(putObjectRequest);
        Double.isNaN(dA);
        return (long) Math.max(Math.ceil(dA / 10000.0d), transferManagerConfiguration.a());
    }

    public static boolean b(PutObjectRequest putObjectRequest, TransferManagerConfiguration transferManagerConfiguration) {
        return a(putObjectRequest) > transferManagerConfiguration.b();
    }

    public static File b(PutObjectRequest putObjectRequest) {
        if (putObjectRequest.k() != null) {
            return putObjectRequest.k();
        }
        return null;
    }

    public static long a(CopyObjectRequest copyObjectRequest, TransferManagerConfiguration transferManagerConfiguration, long j) {
        double d = j;
        Double.isNaN(d);
        return (long) Math.max(Math.ceil(d / 10000.0d), transferManagerConfiguration.c());
    }

    public static PauseStatus a(Transfer.TransferState transferState, boolean z) {
        if (z) {
            if (transferState == Transfer.TransferState.Waiting) {
                return PauseStatus.CANCELLED_BEFORE_START;
            }
            if (transferState == Transfer.TransferState.InProgress) {
                return PauseStatus.CANCELLED;
            }
        }
        if (transferState == Transfer.TransferState.Waiting) {
            return PauseStatus.NOT_STARTED;
        }
        return PauseStatus.NO_EFFECT;
    }
}
