package com.amazonaws;

import com.amazonaws.http.HttpMethodName;
import com.amazonaws.util.AWSRequestMetrics;
import java.io.InputStream;
import java.net.URI;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface Request<T> {
    AmazonWebServiceRequest a();

    void a(int i);

    void a(HttpMethodName httpMethodName);

    void a(AWSRequestMetrics aWSRequestMetrics);

    void a(InputStream inputStream);

    void a(String str);

    void a(String str, String str2);

    void a(URI uri);

    void a(Map<String, String> map);

    void a(boolean z);

    Request<T> b(int i);

    Map<String, String> b();

    void b(String str, String str2);

    void b(Map<String, String> map);

    Request<T> c(String str, String str2);

    String c();

    Map<String, String> d();

    HttpMethodName e();

    URI f();

    String g();

    InputStream h();

    int i();

    AWSRequestMetrics j();

    boolean k();
}
