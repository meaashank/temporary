package com.amazonaws.mobile.auth.core;

/* JADX INFO: loaded from: classes.dex */
public class StartupAuthResult {
    private final IdentityManager a;
    private final StartupAuthErrorDetails b;

    public StartupAuthResult(IdentityManager identityManager, StartupAuthErrorDetails startupAuthErrorDetails) {
        this.a = identityManager;
        this.b = startupAuthErrorDetails;
    }

    public boolean a() {
        return this.a.k();
    }

    public boolean b() {
        return c() && !a();
    }

    public boolean c() {
        return this.a.f() != null;
    }

    public IdentityManager d() {
        return this.a;
    }

    public StartupAuthErrorDetails e() {
        return this.b;
    }
}
