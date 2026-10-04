package com.amazonaws.retry;

import com.amazonaws.AbortedException;
import com.amazonaws.AmazonServiceException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class RetryUtils {
    public static boolean a(AmazonServiceException amazonServiceException) {
        if (amazonServiceException == null) {
            return false;
        }
        String strD = amazonServiceException.d();
        return "Throttling".equals(strD) || "ThrottlingException".equals(strD) || "ProvisionedThroughputExceededException".equals(strD);
    }

    public static boolean b(AmazonServiceException amazonServiceException) {
        if (amazonServiceException == null) {
            return false;
        }
        return "Request entity too large".equals(amazonServiceException.d());
    }

    public static boolean c(AmazonServiceException amazonServiceException) {
        if (amazonServiceException == null) {
            return false;
        }
        String strD = amazonServiceException.d();
        return "RequestTimeTooSkewed".equals(strD) || "RequestExpired".equals(strD) || "InvalidSignatureException".equals(strD) || "SignatureDoesNotMatch".equals(strD);
    }

    public static boolean a(Throwable th) {
        if (th instanceof AbortedException) {
            return true;
        }
        if (th.getCause() == null) {
            return false;
        }
        Throwable cause = th.getCause();
        return (cause instanceof InterruptedException) || ((cause instanceof InterruptedIOException) && !(cause instanceof SocketTimeoutException));
    }
}
