package com.amazonaws.auth;

import com.amazonaws.services.securitytoken.AWSSecurityTokenService;
import com.amazonaws.services.securitytoken.AWSSecurityTokenServiceClient;
import com.amazonaws.services.securitytoken.model.Credentials;
import com.amazonaws.services.securitytoken.model.GetSessionTokenRequest;
import com.google.android.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class STSSessionCredentials implements AWSRefreshableSessionCredentials {
    public static final int a = 3600;
    private final AWSSecurityTokenService b;
    private final int c;
    private Credentials d;

    public STSSessionCredentials(AWSCredentials aWSCredentials) {
        this(aWSCredentials, 3600);
    }

    public STSSessionCredentials(AWSCredentials aWSCredentials, int i) {
        this.b = new AWSSecurityTokenServiceClient(aWSCredentials);
        this.c = i;
    }

    public STSSessionCredentials(AWSSecurityTokenService aWSSecurityTokenService) {
        this(aWSSecurityTokenService, 3600);
    }

    public STSSessionCredentials(AWSSecurityTokenService aWSSecurityTokenService, int i) {
        this.b = aWSSecurityTokenService;
        this.c = i;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public synchronized String a() {
        return f().a();
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public synchronized String b() {
        return f().b();
    }

    @Override // com.amazonaws.auth.AWSSessionCredentials
    public synchronized String d() {
        return f().c();
    }

    public synchronized AWSSessionCredentials e() {
        Credentials credentialsF;
        credentialsF = f();
        return new BasicSessionCredentials(credentialsF.a(), credentialsF.b(), credentialsF.c());
    }

    @Override // com.amazonaws.auth.AWSRefreshableSessionCredentials
    public synchronized void c() {
        this.d = this.b.a(new GetSessionTokenRequest().b(Integer.valueOf(this.c))).a();
    }

    private synchronized Credentials f() {
        if (g()) {
            c();
        }
        return this.d;
    }

    private boolean g() {
        return this.d == null || this.d.d().getTime() - System.currentTimeMillis() < ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
    }
}
