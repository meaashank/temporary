package com.amazonaws.mobile.auth.core;

import com.amazonaws.mobile.auth.core.signin.AuthException;

/* JADX INFO: loaded from: classes.dex */
public class StartupAuthErrorDetails {
    private final AuthException a;
    private final Exception b;

    public StartupAuthErrorDetails(AuthException authException, Exception exc) {
        this.a = authException;
        this.b = exc;
    }

    public boolean a() {
        return this.a != null;
    }

    public AuthException b() {
        return this.a;
    }

    public boolean c() {
        return this.b != null;
    }

    public Exception d() {
        return this.b;
    }
}
