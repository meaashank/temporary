package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.AmazonClientException;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.retry.RetryUtils;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.S3Object;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
class DownloadTask implements Callable<Boolean> {
    private static final Log a = LogFactory.a(DownloadTask.class);
    private static final int b = 16384;
    private final AmazonS3 c;
    private final TransferRecord d;
    private final TransferStatusUpdater e;

    public DownloadTask(TransferRecord transferRecord, AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater) {
        this.d = transferRecord;
        this.c = amazonS3;
        this.e = transferStatusUpdater;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Boolean call() throws Throwable {
        try {
            if (TransferNetworkLossHandler.a() != null && !TransferNetworkLossHandler.a().b()) {
                a.c("Thread:[" + Thread.currentThread().getId() + "]: Network wasn't available.");
                this.e.a(this.d.a, TransferState.WAITING_FOR_NETWORK);
                return false;
            }
        } catch (TransferUtilityException e) {
            a.e("TransferUtilityException: [" + e + "]");
        }
        this.e.a(this.d.a, TransferState.IN_PROGRESS);
        ProgressListener progressListenerD = this.e.d(this.d.a);
        try {
            GetObjectRequest getObjectRequest = new GetObjectRequest(this.d.p, this.d.q);
            TransferUtility.a(getObjectRequest);
            File file = new File(this.d.s);
            long length = file.length();
            if (length > 0) {
                a.b(String.format("Resume transfer %d from %d bytes", Integer.valueOf(this.d.a), Long.valueOf(length)));
                getObjectRequest.a(length, -1L);
            }
            getObjectRequest.a(progressListenerD);
            S3Object s3ObjectA = this.c.a(getObjectRequest);
            if (s3ObjectA == null) {
                this.e.a(this.d.a, new IllegalStateException("AmazonS3.getObject returns null"));
                this.e.a(this.d.a, TransferState.FAILED);
                return false;
            }
            long jL = s3ObjectA.a().l();
            this.e.a(this.d.a, length, jL, true);
            a(s3ObjectA.b(), file);
            this.e.a(this.d.a, jL, jL, true);
            this.e.a(this.d.a, TransferState.COMPLETED);
            return true;
        } catch (Exception e2) {
            if (TransferState.CANCELED.equals(this.d.o)) {
                a.c("Transfer is " + this.d.o);
                return false;
            }
            if (TransferState.PAUSED.equals(this.d.o)) {
                a.c("Transfer is " + this.d.o);
                new ProgressEvent(0L).a(32);
                progressListenerD.a(new ProgressEvent(0L));
                return false;
            }
            if (RetryUtils.a(e2)) {
                try {
                    if (TransferNetworkLossHandler.a() != null && !TransferNetworkLossHandler.a().b()) {
                        a.c("Thread:[" + Thread.currentThread().getId() + "]: Network wasn't available.");
                        this.e.a(this.d.a, TransferState.WAITING_FOR_NETWORK);
                        a.b("Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK");
                        new ProgressEvent(0L).a(32);
                        progressListenerD.a(new ProgressEvent(0L));
                        return false;
                    }
                } catch (TransferUtilityException e3) {
                    a.e("TransferUtilityException: [" + e3 + "]");
                }
            }
            a.b("Failed to download: " + this.d.a + " due to " + e2.getMessage());
            this.e.a(this.d.a, e2);
            this.e.a(this.d.a, TransferState.FAILED);
            return false;
        }
    }

    private void a(InputStream inputStream, File file) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file, file.length() > 0));
            } catch (Throwable th) {
                th = th;
            }
        } catch (SocketTimeoutException e) {
            e = e;
        } catch (IOException e2) {
            e = e2;
        }
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int i = inputStream.read(bArr);
                if (i != -1) {
                    bufferedOutputStream.write(bArr, 0, i);
                } else {
                    try {
                        break;
                    } catch (IOException e3) {
                        a.d("got exception", e3);
                    }
                }
            }
            bufferedOutputStream.close();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e4) {
                    a.d("got exception", e4);
                }
            }
        } catch (SocketTimeoutException e5) {
            e = e5;
            String str = "SocketTimeoutException: Unable to retrieve contents over network: " + e.getMessage();
            a.e(str);
            throw new AmazonClientException(str, e);
        } catch (IOException e6) {
            e = e6;
            throw new AmazonClientException("Unable to store object contents to disk: " + e.getMessage(), e);
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream2 = bufferedOutputStream;
            if (bufferedOutputStream2 != null) {
                try {
                    bufferedOutputStream2.close();
                } catch (IOException e7) {
                    a.d("got exception", e7);
                }
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                    throw th;
                } catch (IOException e8) {
                    a.d("got exception", e8);
                    throw th;
                }
            }
            throw th;
        }
    }
}
