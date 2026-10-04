package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class PropertiesFileCredentialsProvider implements AWSCredentialsProvider {
    private final String a;

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public void b() {
    }

    public PropertiesFileCredentialsProvider(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Credentials file path cannot be null");
        }
        this.a = str;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials a() {
        try {
            return new PropertiesCredentials(new File(this.a));
        } catch (IOException e) {
            throw new AmazonClientException("Unable to load AWS credentials from the " + this.a + " file", e);
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.a + ")";
    }
}
