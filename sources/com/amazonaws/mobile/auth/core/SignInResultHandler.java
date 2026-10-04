package com.amazonaws.mobile.auth.core;

import android.app.Activity;

/* JADX INFO: loaded from: classes.dex */
public interface SignInResultHandler {
    void a(Activity activity, IdentityProvider identityProvider);

    void a(Activity activity, IdentityProvider identityProvider, Exception exc);

    boolean a(Activity activity);

    void b(Activity activity, IdentityProvider identityProvider);
}
