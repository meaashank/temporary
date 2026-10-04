package com.amazonaws.mobile.auth.core;

import android.content.Context;
import com.amazonaws.mobile.config.AWSConfiguration;

/* JADX INFO: loaded from: classes.dex */
public interface IdentityProvider {
    String a();

    void a(Context context, AWSConfiguration aWSConfiguration);

    String b();

    boolean c();

    String d();

    String e();

    void f();
}
