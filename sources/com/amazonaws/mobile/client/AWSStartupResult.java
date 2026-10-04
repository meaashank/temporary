package com.amazonaws.mobile.client;

import com.amazonaws.mobile.auth.core.IdentityManager;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class AWSStartupResult {
    private IdentityManager a;

    public AWSStartupResult(IdentityManager identityManager) {
        this.a = identityManager;
    }

    public boolean a() {
        return this.a.f() != null;
    }
}
