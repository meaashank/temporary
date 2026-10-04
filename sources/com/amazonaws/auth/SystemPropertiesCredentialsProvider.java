package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.SDKGlobalConfiguration;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class SystemPropertiesCredentialsProvider implements AWSCredentialsProvider {
    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public void b() {
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials a() {
        if (System.getProperty(SDKGlobalConfiguration.c) != null && System.getProperty(SDKGlobalConfiguration.d) != null) {
            return new BasicAWSCredentials(System.getProperty(SDKGlobalConfiguration.c), System.getProperty(SDKGlobalConfiguration.d));
        }
        throw new AmazonClientException("Unable to load AWS credentials from Java system properties (aws.accessKeyId and aws.secretKey)");
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}
