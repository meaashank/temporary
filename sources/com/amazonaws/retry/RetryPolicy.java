package com.amazonaws.retry;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonWebServiceRequest;

/* JADX INFO: loaded from: classes.dex */
public final class RetryPolicy {
    private final RetryCondition a;
    private final BackoffStrategy b;
    private final int c;
    private final boolean d;

    public interface BackoffStrategy {
        public static final BackoffStrategy a = new BackoffStrategy() { // from class: com.amazonaws.retry.RetryPolicy.BackoffStrategy.1
            @Override // com.amazonaws.retry.RetryPolicy.BackoffStrategy
            public long a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i) {
                return 0L;
            }
        };

        long a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i);
    }

    public interface RetryCondition {
        public static final RetryCondition a = new RetryCondition() { // from class: com.amazonaws.retry.RetryPolicy.RetryCondition.1
            @Override // com.amazonaws.retry.RetryPolicy.RetryCondition
            public boolean a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i) {
                return false;
            }
        };

        boolean a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i);
    }

    public RetryPolicy(RetryCondition retryCondition, BackoffStrategy backoffStrategy, int i, boolean z) {
        retryCondition = retryCondition == null ? PredefinedRetryPolicies.f : retryCondition;
        backoffStrategy = backoffStrategy == null ? PredefinedRetryPolicies.g : backoffStrategy;
        if (i < 0) {
            throw new IllegalArgumentException("Please provide a non-negative value for maxErrorRetry.");
        }
        this.a = retryCondition;
        this.b = backoffStrategy;
        this.c = i;
        this.d = z;
    }

    public RetryCondition a() {
        return this.a;
    }

    public BackoffStrategy b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    public boolean d() {
        return this.d;
    }
}
