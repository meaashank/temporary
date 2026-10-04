package com.amazonaws.retry;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.retry.RetryPolicy;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class PredefinedRetryPolicies {
    public static final int b = 3;
    public static final int d = 10;
    private static final int h = 100;
    private static final int i = 20000;
    public static final RetryPolicy a = new RetryPolicy(RetryPolicy.RetryCondition.a, RetryPolicy.BackoffStrategy.a, 0, false);
    public static final RetryPolicy.RetryCondition f = new SDKDefaultRetryCondition();
    public static final RetryPolicy.BackoffStrategy g = new SDKDefaultBackoffStrategy(100, 20000);
    public static final RetryPolicy c = a();
    public static final RetryPolicy e = b();

    public static RetryPolicy a() {
        return new RetryPolicy(f, g, 3, true);
    }

    public static RetryPolicy b() {
        return new RetryPolicy(f, g, 10, true);
    }

    public static RetryPolicy a(int i2) {
        return new RetryPolicy(f, g, i2, false);
    }

    public static RetryPolicy b(int i2) {
        return new RetryPolicy(f, g, i2, false);
    }

    public static class SDKDefaultRetryCondition implements RetryPolicy.RetryCondition {
        @Override // com.amazonaws.retry.RetryPolicy.RetryCondition
        public boolean a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i) {
            if ((amazonClientException.getCause() instanceof IOException) && !(amazonClientException.getCause() instanceof InterruptedIOException)) {
                return true;
            }
            if (!(amazonClientException instanceof AmazonServiceException)) {
                return false;
            }
            AmazonServiceException amazonServiceException = (AmazonServiceException) amazonClientException;
            int iG = amazonServiceException.g();
            return iG == 500 || iG == 503 || iG == 502 || iG == 504 || RetryUtils.a(amazonServiceException) || RetryUtils.c(amazonServiceException);
        }
    }

    private static final class SDKDefaultBackoffStrategy implements RetryPolicy.BackoffStrategy {
        private final Random b;
        private final int c;
        private final int d;

        private SDKDefaultBackoffStrategy(int i, int i2) {
            this.b = new Random();
            this.c = i;
            this.d = i2;
        }

        @Override // com.amazonaws.retry.RetryPolicy.BackoffStrategy
        public final long a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i) {
            if (i <= 0) {
                return 0L;
            }
            return this.b.nextInt(Math.min(this.d, (1 << i) * this.c));
        }
    }
}
