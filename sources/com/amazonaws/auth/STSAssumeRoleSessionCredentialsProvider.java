package com.amazonaws.auth;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.services.securitytoken.AWSSecurityTokenService;
import com.amazonaws.services.securitytoken.AWSSecurityTokenServiceClient;
import com.amazonaws.services.securitytoken.model.AssumeRoleRequest;
import com.amazonaws.services.securitytoken.model.Credentials;
import com.google.android.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class STSAssumeRoleSessionCredentialsProvider implements AWSCredentialsProvider {
    public static final int a = 900;
    private static final int b = 60000;
    private final AWSSecurityTokenService c;
    private AWSSessionCredentials d;
    private Date e;
    private String f;
    private String g;

    public STSAssumeRoleSessionCredentialsProvider(String str, String str2) {
        this.f = str;
        this.g = str2;
        this.c = new AWSSecurityTokenServiceClient();
    }

    public STSAssumeRoleSessionCredentialsProvider(AWSCredentials aWSCredentials, String str, String str2) {
        this(aWSCredentials, str, str2, new ClientConfiguration());
    }

    public STSAssumeRoleSessionCredentialsProvider(AWSCredentials aWSCredentials, String str, String str2, ClientConfiguration clientConfiguration) {
        this.f = str;
        this.g = str2;
        this.c = new AWSSecurityTokenServiceClient(aWSCredentials, clientConfiguration);
    }

    public STSAssumeRoleSessionCredentialsProvider(AWSCredentialsProvider aWSCredentialsProvider, String str, String str2) {
        this.f = str;
        this.g = str2;
        this.c = new AWSSecurityTokenServiceClient(aWSCredentialsProvider);
    }

    public STSAssumeRoleSessionCredentialsProvider(AWSCredentialsProvider aWSCredentialsProvider, String str, String str2, ClientConfiguration clientConfiguration) {
        this.f = str;
        this.g = str2;
        this.c = new AWSSecurityTokenServiceClient(aWSCredentialsProvider, clientConfiguration);
    }

    public void a(String str) {
        this.c.a(str);
        this.d = null;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials a() {
        if (d()) {
            c();
        }
        return this.d;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public void b() {
        c();
    }

    private void c() {
        Credentials credentialsA = this.c.a(new AssumeRoleRequest().b(this.f).b(Integer.valueOf(a)).d(this.g)).a();
        this.d = new BasicSessionCredentials(credentialsA.a(), credentialsA.b(), credentialsA.c());
        this.e = credentialsA.d();
    }

    private boolean d() {
        return this.d == null || this.e.getTime() - System.currentTimeMillis() < ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
    }
}
