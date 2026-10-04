package com.amazonaws.mobile.auth.core.signin;

import com.amazonaws.mobile.auth.core.IdentityProvider;

/* JADX INFO: loaded from: classes.dex */
public interface SignInProviderResultHandler {
    void a(IdentityProvider identityProvider);

    void a(IdentityProvider identityProvider, Exception exc);

    void b(IdentityProvider identityProvider);
}
