package com.amazonaws.mobile.auth.core.signin;

import com.amazonaws.mobile.auth.core.IdentityProvider;

/* JADX INFO: loaded from: classes.dex */
public class AuthException extends Exception {
    protected final IdentityProvider a;

    public AuthException(IdentityProvider identityProvider, Exception exc) {
        super(exc);
        this.a = identityProvider;
    }

    public AuthException(Exception exc) {
        this(null, exc);
    }

    public IdentityProvider a() {
        return this.a;
    }
}
