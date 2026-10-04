package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AWSCredentialsProviderChain implements AWSCredentialsProvider {
    private static final Log a = LogFactory.a(AWSCredentialsProviderChain.class);
    private List<AWSCredentialsProvider> b = new LinkedList();
    private boolean c = true;
    private AWSCredentialsProvider d;

    public AWSCredentialsProviderChain(AWSCredentialsProvider... aWSCredentialsProviderArr) {
        if (aWSCredentialsProviderArr == null || aWSCredentialsProviderArr.length == 0) {
            throw new IllegalArgumentException("No credential providers specified");
        }
        for (AWSCredentialsProvider aWSCredentialsProvider : aWSCredentialsProviderArr) {
            this.b.add(aWSCredentialsProvider);
        }
    }

    public boolean c() {
        return this.c;
    }

    public void a(boolean z) {
        this.c = z;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials a() {
        if (this.c && this.d != null) {
            return this.d.a();
        }
        for (AWSCredentialsProvider aWSCredentialsProvider : this.b) {
            try {
                AWSCredentials aWSCredentialsA = aWSCredentialsProvider.a();
                if (aWSCredentialsA.a() != null && aWSCredentialsA.b() != null) {
                    a.b("Loading credentials from " + aWSCredentialsProvider.toString());
                    this.d = aWSCredentialsProvider;
                    return aWSCredentialsA;
                }
            } catch (Exception e) {
                a.b("Unable to load credentials from " + aWSCredentialsProvider.toString() + ": " + e.getMessage());
            }
        }
        throw new AmazonClientException("Unable to load AWS credentials from any provider in the chain");
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public void b() {
        Iterator<AWSCredentialsProvider> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }
}
