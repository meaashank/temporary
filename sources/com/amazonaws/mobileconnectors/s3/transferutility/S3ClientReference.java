package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.services.s3.AmazonS3;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
class S3ClientReference {
    private static Map<Integer, AmazonS3> a = new ConcurrentHashMap();

    S3ClientReference() {
    }

    public static void a(Integer num, AmazonS3 amazonS3) {
        a.put(num, amazonS3);
    }

    public static AmazonS3 a(Integer num) {
        return a.get(num);
    }

    public static void b(Integer num) {
        a.remove(num);
    }

    public static void a() {
        a.clear();
    }
}
