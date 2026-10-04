package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ClasspathPropertiesFileCredentialsProvider implements AWSCredentialsProvider {
    private static String a = "AwsCredentials.properties";
    private final String b;

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public void b() {
    }

    public ClasspathPropertiesFileCredentialsProvider() {
        this(a);
    }

    public ClasspathPropertiesFileCredentialsProvider(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Credentials file path cannot be null");
        }
        if (!str.startsWith("/")) {
            this.b = "/" + str;
            return;
        }
        this.b = str;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials a() {
        InputStream resourceAsStream = getClass().getResourceAsStream(this.b);
        if (resourceAsStream == null) {
            throw new AmazonClientException("Unable to load AWS credentials from the " + this.b + " file on the classpath");
        }
        try {
            return new PropertiesCredentials(resourceAsStream);
        } catch (IOException e) {
            throw new AmazonClientException("Unable to load AWS credentials from the " + this.b + " file on the classpath", e);
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.b + ")";
    }
}
