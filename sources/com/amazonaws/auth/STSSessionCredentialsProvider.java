package com.amazonaws.auth;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.services.securitytoken.AWSSecurityTokenService;
import com.amazonaws.services.securitytoken.AWSSecurityTokenServiceClient;
import com.amazonaws.services.securitytoken.model.Credentials;
import com.amazonaws.services.securitytoken.model.GetSessionTokenRequest;
import com.google.android.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class STSSessionCredentialsProvider implements AWSCredentialsProvider {
    public static final int a = 3600;
    private final AWSSecurityTokenService b;
    private AWSSessionCredentials c;
    private Date d;

    public STSSessionCredentialsProvider(AWSCredentials aWSCredentials) {
        this(aWSCredentials, new ClientConfiguration());
    }

    public STSSessionCredentialsProvider(AWSCredentials aWSCredentials, ClientConfiguration clientConfiguration) {
        this.b = new AWSSecurityTokenServiceClient(aWSCredentials, clientConfiguration);
    }

    public STSSessionCredentialsProvider(AWSCredentialsProvider aWSCredentialsProvider) {
        this.b = new AWSSecurityTokenServiceClient(aWSCredentialsProvider);
    }

    public STSSessionCredentialsProvider(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration) {
        this.b = new AWSSecurityTokenServiceClient(aWSCredentialsProvider, clientConfiguration);
    }

    public void a(String str) {
        this.b.a(str);
        this.c = null;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials a() {
        if (d()) {
            c();
        }
        return this.c;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public void b() {
        c();
    }

    private void c() {
        Credentials credentialsA = this.b.a(new GetSessionTokenRequest().b((Integer) 3600)).a();
        this.c = new BasicSessionCredentials(credentialsA.a(), credentialsA.b(), credentialsA.c());
        this.d = credentialsA.d();
    }

    private boolean d() {
        return this.c == null || this.d.getTime() - System.currentTimeMillis() < ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
    }
}
