package com.amazonaws.auth;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface AWSCognitoIdentityProvider extends AWSIdentityProvider {
    void a(IdentityChangedListener identityChangedListener);

    void a(Map<String, String> map);

    String b();

    void b(IdentityChangedListener identityChangedListener);

    void c(String str);

    String d();

    Map<String, String> f();

    boolean g();

    void h();
}
