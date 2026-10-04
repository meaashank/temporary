package com.amazonaws.mobile.client;

import com.amazonaws.internal.keyvaluestore.AWSKeyValueStore;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: AWSMobileClient.java */
/* JADX INFO: loaded from: classes.dex */
class AWSMobileClientStore {
    AWSKeyValueStore a;
    private ReadWriteLock b = new ReentrantReadWriteLock();

    AWSMobileClientStore(AWSMobileClient aWSMobileClient) {
        this.a = new AWSKeyValueStore(aWSMobileClient.l, "com.amazonaws.mobile.client", aWSMobileClient.v);
    }

    Map<String, String> a(String... strArr) {
        try {
            this.b.readLock().lock();
            HashMap map = new HashMap();
            for (String str : strArr) {
                map.put(str, this.a.b(str));
            }
            return map;
        } finally {
            this.b.readLock().unlock();
        }
    }

    String a(String str) {
        try {
            this.b.readLock().lock();
            return this.a.b(str);
        } finally {
            this.b.readLock().unlock();
        }
    }

    void a(Map<String, String> map) {
        try {
            this.b.writeLock().lock();
            for (String str : map.keySet()) {
                this.a.a(str, map.get(str));
            }
        } finally {
            this.b.writeLock().unlock();
        }
    }

    void a(String str, String str2) {
        try {
            this.b.writeLock().lock();
            this.a.a(str, str2);
        } finally {
            this.b.writeLock().unlock();
        }
    }

    void a() {
        this.a.a();
    }
}
