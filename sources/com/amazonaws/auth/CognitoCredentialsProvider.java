package com.amazonaws.auth;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.SDKGlobalConfiguration;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.mobile.config.AWSConfiguration;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity;
import com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient;
import com.amazonaws.services.cognitoidentity.model.Credentials;
import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityRequest;
import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityResult;
import com.amazonaws.services.cognitoidentity.model.ResourceNotFoundException;
import com.amazonaws.services.securitytoken.AWSSecurityTokenService;
import com.amazonaws.services.securitytoken.AWSSecurityTokenServiceClient;
import com.amazonaws.services.securitytoken.model.AssumeRoleWithWebIdentityRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
public class CognitoCredentialsProvider implements AWSCredentialsProvider {
    private static final Log a = LogFactory.a(AWSCredentialsProviderChain.class);
    public static final int b = 3600;
    public static final int c = 500;
    protected AWSSessionCredentials d;
    protected Date e;
    protected String f;
    protected AWSSecurityTokenService g;
    protected int h;
    protected int i;
    protected String j;
    protected String k;
    protected String l;
    protected boolean m;
    protected ReentrantReadWriteLock n;
    private final String o;
    private AmazonCognitoIdentity p;
    private final AWSCognitoIdentityProvider q;

    protected String h() {
        return "";
    }

    public CognitoCredentialsProvider(String str, String str2, String str3, String str4, Regions regions) {
        this(str, str2, str3, str4, regions, new ClientConfiguration());
    }

    public CognitoCredentialsProvider(String str, String str2, String str3, String str4, Regions regions, ClientConfiguration clientConfiguration) {
        this(str, str2, str3, str4, a(clientConfiguration, regions), (str3 == null && str4 == null) ? null : new AWSSecurityTokenServiceClient(new AnonymousAWSCredentials(), clientConfiguration));
    }

    private static AmazonCognitoIdentityClient a(ClientConfiguration clientConfiguration, Regions regions) {
        AmazonCognitoIdentityClient amazonCognitoIdentityClient = new AmazonCognitoIdentityClient(new AnonymousAWSCredentials(), clientConfiguration);
        amazonCognitoIdentityClient.a(Region.a(regions));
        return amazonCognitoIdentityClient;
    }

    public CognitoCredentialsProvider(AWSConfiguration aWSConfiguration) {
        this((String) null, a(aWSConfiguration), (String) null, (String) null, b(aWSConfiguration), c(aWSConfiguration));
    }

    private static String a(AWSConfiguration aWSConfiguration) {
        try {
            return aWSConfiguration.a("CredentialsProvider").optJSONObject("CognitoIdentity").getJSONObject(aWSConfiguration.b()).getString("PoolId");
        } catch (Exception e) {
            throw new IllegalArgumentException("Failed to read CognitoIdentity please check your setup or awsconfiguration.json file", e);
        }
    }

    private static Regions b(AWSConfiguration aWSConfiguration) {
        try {
            return Regions.fromName(aWSConfiguration.a("CredentialsProvider").optJSONObject("CognitoIdentity").getJSONObject(aWSConfiguration.b()).getString("Region"));
        } catch (Exception e) {
            throw new IllegalArgumentException("Failed to read CognitoIdentity please check your setup or awsconfiguration.json file", e);
        }
    }

    private static ClientConfiguration c(AWSConfiguration aWSConfiguration) {
        ClientConfiguration clientConfiguration = new ClientConfiguration();
        clientConfiguration.a(aWSConfiguration.a());
        return clientConfiguration;
    }

    public CognitoCredentialsProvider(String str, Regions regions) {
        this((String) null, str, (String) null, (String) null, regions, new ClientConfiguration());
    }

    public CognitoCredentialsProvider(String str, Regions regions, ClientConfiguration clientConfiguration) {
        this((String) null, str, (String) null, (String) null, regions, clientConfiguration);
    }

    public CognitoCredentialsProvider(String str, String str2, String str3, String str4, AmazonCognitoIdentityClient amazonCognitoIdentityClient, AWSSecurityTokenService aWSSecurityTokenService) {
        this.p = amazonCognitoIdentityClient;
        this.o = amazonCognitoIdentityClient.i_().getName();
        this.g = aWSSecurityTokenService;
        this.j = str3;
        this.k = str4;
        this.h = 3600;
        this.i = 500;
        this.m = str3 == null && str4 == null;
        if (this.m) {
            this.q = new AWSEnhancedCognitoIdentityProvider(str, str2, amazonCognitoIdentityClient);
        } else {
            this.q = new AWSBasicCognitoIdentityProvider(str, str2, amazonCognitoIdentityClient);
        }
        this.n = new ReentrantReadWriteLock(true);
    }

    public CognitoCredentialsProvider(AWSCognitoIdentityProvider aWSCognitoIdentityProvider, String str, String str2) {
        this(aWSCognitoIdentityProvider, str, str2, new AWSSecurityTokenServiceClient(new AnonymousAWSCredentials(), new ClientConfiguration()));
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public CognitoCredentialsProvider(com.amazonaws.auth.AWSCognitoIdentityProvider r2, java.lang.String r3, java.lang.String r4, com.amazonaws.services.securitytoken.AWSSecurityTokenService r5) {
        /*
            r1 = this;
            r1.<init>()
            r1.q = r2
            boolean r0 = r2 instanceof com.amazonaws.auth.AWSAbstractCognitoIdentityProvider
            if (r0 == 0) goto L2a
            com.amazonaws.auth.AWSAbstractCognitoIdentityProvider r2 = (com.amazonaws.auth.AWSAbstractCognitoIdentityProvider) r2
            com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity r0 = r2.a
            boolean r0 = r0 instanceof com.amazonaws.AmazonWebServiceClient
            if (r0 == 0) goto L2a
            com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity r0 = r2.a
            com.amazonaws.AmazonWebServiceClient r0 = (com.amazonaws.AmazonWebServiceClient) r0
            com.amazonaws.regions.Regions r0 = r0.i_()
            if (r0 == 0) goto L2a
            com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity r2 = r2.a
            com.amazonaws.AmazonWebServiceClient r2 = (com.amazonaws.AmazonWebServiceClient) r2
            com.amazonaws.regions.Regions r2 = r2.i_()
            java.lang.String r2 = r2.getName()
            r1.o = r2
            goto L39
        L2a:
            com.amazonaws.logging.Log r2 = com.amazonaws.auth.CognitoCredentialsProvider.a
            java.lang.String r0 = "Could not determine region of the Cognito Identity client, using default us-east-1"
            r2.d(r0)
            com.amazonaws.regions.Regions r2 = com.amazonaws.regions.Regions.US_EAST_1
            java.lang.String r2 = r2.getName()
            r1.o = r2
        L39:
            r1.j = r3
            r1.k = r4
            r1.g = r5
            r2 = 3600(0xe10, float:5.045E-42)
            r1.h = r2
            r2 = 500(0x1f4, float:7.0E-43)
            r1.i = r2
            r2 = 0
            r1.m = r2
            java.util.concurrent.locks.ReentrantReadWriteLock r2 = new java.util.concurrent.locks.ReentrantReadWriteLock
            r3 = 1
            r2.<init>(r3)
            r1.n = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.auth.CognitoCredentialsProvider.<init>(com.amazonaws.auth.AWSCognitoIdentityProvider, java.lang.String, java.lang.String, com.amazonaws.services.securitytoken.AWSSecurityTokenService):void");
    }

    public CognitoCredentialsProvider(AWSCognitoIdentityProvider aWSCognitoIdentityProvider, Regions regions) {
        this(aWSCognitoIdentityProvider, regions, new ClientConfiguration());
    }

    public CognitoCredentialsProvider(AWSCognitoIdentityProvider aWSCognitoIdentityProvider, Regions regions, ClientConfiguration clientConfiguration) {
        this(aWSCognitoIdentityProvider, a(clientConfiguration, regions));
    }

    public CognitoCredentialsProvider(AWSCognitoIdentityProvider aWSCognitoIdentityProvider, AmazonCognitoIdentityClient amazonCognitoIdentityClient) {
        this.p = amazonCognitoIdentityClient;
        this.o = amazonCognitoIdentityClient.i_().getName();
        this.q = aWSCognitoIdentityProvider;
        this.j = null;
        this.k = null;
        this.g = null;
        this.h = 3600;
        this.i = 500;
        this.m = true;
        this.n = new ReentrantReadWriteLock(true);
    }

    public String c() {
        return this.q.b();
    }

    public String i() {
        return this.q.c();
    }

    public AWSIdentityProvider j() {
        return this.q;
    }

    public void a(Date date) {
        this.n.writeLock().lock();
        try {
            this.e = date;
        } finally {
            this.n.writeLock().unlock();
        }
    }

    public Date k() {
        this.n.readLock().lock();
        try {
            return this.e;
        } finally {
            this.n.readLock().unlock();
        }
    }

    public String l() {
        return this.q.d();
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    /* JADX INFO: renamed from: d */
    public AWSSessionCredentials a() {
        this.n.writeLock().lock();
        try {
            if (s()) {
                q();
            }
            return this.d;
        } finally {
            this.n.writeLock().unlock();
        }
    }

    public void a(int i) {
        this.h = i;
    }

    public CognitoCredentialsProvider b(int i) {
        a(i);
        return this;
    }

    public int m() {
        return this.h;
    }

    public void c(int i) {
        this.i = i;
    }

    public CognitoCredentialsProvider d(int i) {
        c(i);
        return this;
    }

    public int n() {
        return this.i;
    }

    protected void a(String str) {
        this.q.c(str);
    }

    public void a(Map<String, String> map) {
        this.n.writeLock().lock();
        try {
            this.q.a(map);
            f();
        } finally {
            this.n.writeLock().unlock();
        }
    }

    public String o() {
        return this.l;
    }

    public void b(String str) {
        this.l = str;
    }

    public AWSCredentialsProvider b(Map<String, String> map) {
        a(map);
        return this;
    }

    public Map<String, String> p() {
        return this.q.f();
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public void b() {
        this.n.writeLock().lock();
        try {
            q();
        } finally {
            this.n.writeLock().unlock();
        }
    }

    public void e() {
        this.n.writeLock().lock();
        try {
            f();
            a((String) null);
            this.q.a(new HashMap());
        } finally {
            this.n.writeLock().unlock();
        }
    }

    public void f() {
        this.n.writeLock().lock();
        try {
            this.d = null;
            this.e = null;
        } finally {
            this.n.writeLock().unlock();
        }
    }

    protected void q() {
        try {
            this.f = this.q.j();
        } catch (ResourceNotFoundException unused) {
            this.f = g();
        } catch (AmazonServiceException e) {
            if (e.d().equals("ValidationException")) {
                this.f = g();
            } else {
                throw e;
            }
        }
        if (this.m) {
            c(this.f);
        } else {
            d(this.f);
        }
    }

    private String g() {
        a((String) null);
        this.f = this.q.j();
        return this.f;
    }

    protected String r() {
        return Regions.CN_NORTH_1.getName().equals(this.o) ? "cognito-identity.cn-north-1.amazonaws.com.cn" : "cognito-identity.amazonaws.com";
    }

    private GetCredentialsForIdentityResult t() {
        Map<String, String> mapP;
        this.f = g();
        if (this.f != null && !this.f.isEmpty()) {
            mapP = new HashMap<>();
            mapP.put(r(), this.f);
        } else {
            mapP = p();
        }
        return this.p.a(new GetCredentialsForIdentityRequest().b(c()).b(mapP).d(this.l));
    }

    private void c(String str) {
        Map<String, String> mapP;
        GetCredentialsForIdentityResult getCredentialsForIdentityResultT;
        if (str != null && !str.isEmpty()) {
            mapP = new HashMap<>();
            mapP.put(r(), str);
        } else {
            mapP = p();
        }
        try {
            getCredentialsForIdentityResultT = this.p.a(new GetCredentialsForIdentityRequest().b(c()).b(mapP).d(this.l));
        } catch (ResourceNotFoundException unused) {
            getCredentialsForIdentityResultT = t();
        } catch (AmazonServiceException e) {
            if (e.d().equals("ValidationException")) {
                getCredentialsForIdentityResultT = t();
            } else {
                throw e;
            }
        }
        Credentials credentialsB = getCredentialsForIdentityResultT.b();
        this.d = new BasicSessionCredentials(credentialsB.a(), credentialsB.b(), credentialsB.c());
        a(credentialsB.d());
        if (getCredentialsForIdentityResultT.a().equals(c())) {
            return;
        }
        a(getCredentialsForIdentityResultT.a());
    }

    private void d(String str) {
        AssumeRoleWithWebIdentityRequest assumeRoleWithWebIdentityRequestB = new AssumeRoleWithWebIdentityRequest().f(str).b(this.q.g() ? this.k : this.j).d("ProviderSession").b(Integer.valueOf(this.h));
        a(assumeRoleWithWebIdentityRequestB, h());
        com.amazonaws.services.securitytoken.model.Credentials credentialsA = this.g.a(assumeRoleWithWebIdentityRequestB).a();
        this.d = new BasicSessionCredentials(credentialsA.a(), credentialsA.b(), credentialsA.c());
        a(credentialsA.d());
    }

    protected boolean s() {
        if (this.d == null) {
            return true;
        }
        return this.e.getTime() - (System.currentTimeMillis() - ((long) (SDKGlobalConfiguration.a() * 1000))) < ((long) (this.i * 1000));
    }

    private void a(AmazonWebServiceRequest amazonWebServiceRequest, String str) {
        amazonWebServiceRequest.b().b(str);
    }

    public void a(IdentityChangedListener identityChangedListener) {
        this.q.b(identityChangedListener);
    }

    public void b(IdentityChangedListener identityChangedListener) {
        this.q.a(identityChangedListener);
    }
}
