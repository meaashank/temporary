package com.amazonaws.auth;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.services.securitytoken.AWSSecurityTokenService;
import com.amazonaws.services.securitytoken.AWSSecurityTokenServiceClient;
import com.amazonaws.services.securitytoken.model.AssumeRoleWithWebIdentityRequest;
import com.amazonaws.services.securitytoken.model.AssumeRoleWithWebIdentityResult;
import com.amazonaws.services.securitytoken.model.Credentials;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class WebIdentityFederationSessionCredentialsProvider implements AWSCredentialsProvider {
    public static final int a = 3600;
    public static final int b = 500;
    private final AWSSecurityTokenService c;
    private AWSSessionCredentials d;
    private Date e;
    private final String f;
    private final String g;
    private final String h;
    private int i;
    private int j;
    private String k;

    public WebIdentityFederationSessionCredentialsProvider(String str, String str2, String str3) {
        this(str, str2, str3, new ClientConfiguration());
    }

    public WebIdentityFederationSessionCredentialsProvider(String str, String str2, String str3, ClientConfiguration clientConfiguration) {
        this(str, str2, str3, new AWSSecurityTokenServiceClient(new AnonymousAWSCredentials(), clientConfiguration));
    }

    public WebIdentityFederationSessionCredentialsProvider(String str, String str2, String str3, AWSSecurityTokenService aWSSecurityTokenService) {
        this.c = aWSSecurityTokenService;
        this.g = str2;
        this.f = str;
        this.h = str3;
        this.i = 3600;
        this.j = 500;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials a() {
        if (g()) {
            f();
        }
        return this.d;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public void b() {
        f();
    }

    public void a(int i) {
        this.i = i;
    }

    public WebIdentityFederationSessionCredentialsProvider b(int i) {
        a(i);
        return this;
    }

    public int c() {
        return this.i;
    }

    public void c(int i) {
        this.j = i;
    }

    public WebIdentityFederationSessionCredentialsProvider d(int i) {
        c(i);
        return this;
    }

    public int d() {
        return this.j;
    }

    public String e() {
        return this.k;
    }

    private void f() {
        AssumeRoleWithWebIdentityResult assumeRoleWithWebIdentityResultA = this.c.a(new AssumeRoleWithWebIdentityRequest().f(this.f).h(this.g).b(this.h).d("ProviderSession").b(Integer.valueOf(this.i)));
        Credentials credentialsA = assumeRoleWithWebIdentityResultA.a();
        this.k = assumeRoleWithWebIdentityResultA.b();
        this.d = new BasicSessionCredentials(credentialsA.a(), credentialsA.b(), credentialsA.c());
        this.e = credentialsA.d();
    }

    private boolean g() {
        return this.d == null || this.e.getTime() - System.currentTimeMillis() < ((long) (this.j * 1000));
    }
}
