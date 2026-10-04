package com.amazonaws.auth;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity;
import com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient;
import com.amazonaws.services.cognitoidentity.model.GetIdRequest;
import com.amazonaws.services.cognitoidentity.model.GetIdResult;
import com.amazonaws.services.cognitoidentity.model.GetOpenIdTokenRequest;
import com.amazonaws.services.cognitoidentity.model.GetOpenIdTokenResult;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class AWSAbstractCognitoIdentityProvider implements AWSCognitoIdentityProvider {
    protected final AmazonCognitoIdentity a;
    protected String b;
    protected String c;
    protected List<IdentityChangedListener> d;
    protected Map<String, String> e;
    private final String f;
    private final String g;

    public abstract String a();

    protected String i() {
        return "";
    }

    public AWSAbstractCognitoIdentityProvider(String str, String str2, AmazonCognitoIdentity amazonCognitoIdentity) {
        this.f = str;
        this.g = str2;
        this.e = new HashMap();
        this.d = new ArrayList();
        this.a = amazonCognitoIdentity;
    }

    @Deprecated
    public AWSAbstractCognitoIdentityProvider(String str, String str2, ClientConfiguration clientConfiguration) {
        this(str, str2, new AmazonCognitoIdentityClient(new AnonymousAWSCredentials(), clientConfiguration));
    }

    public AWSAbstractCognitoIdentityProvider(String str, String str2, ClientConfiguration clientConfiguration, Regions regions) {
        this(str, str2, new AmazonCognitoIdentityClient(new AnonymousAWSCredentials(), clientConfiguration));
        this.a.a(Region.a(regions));
    }

    @Deprecated
    public AWSAbstractCognitoIdentityProvider(String str, String str2) {
        this(str, str2, new ClientConfiguration());
    }

    public AWSAbstractCognitoIdentityProvider(String str, String str2, Regions regions) {
        this(str, str2, new ClientConfiguration(), regions);
    }

    @Override // com.amazonaws.auth.AWSCognitoIdentityProvider
    public String b() {
        if (this.b == null) {
            GetIdRequest getIdRequestB = new GetIdRequest().b(e()).d(d()).b(this.e);
            a(getIdRequestB, i());
            GetIdResult getIdResultA = this.a.a(getIdRequestB);
            if (getIdResultA.a() != null) {
                c(getIdResultA.a());
            }
        }
        return this.b;
    }

    protected void a(String str) {
        this.b = str;
    }

    @Override // com.amazonaws.auth.AWSIdentityProvider
    public String c() {
        if (this.c == null) {
            GetOpenIdTokenRequest getOpenIdTokenRequestB = new GetOpenIdTokenRequest().b(b()).b(this.e);
            a(getOpenIdTokenRequestB, i());
            GetOpenIdTokenResult getOpenIdTokenResultA = this.a.a(getOpenIdTokenRequestB);
            if (!getOpenIdTokenResultA.a().equals(b())) {
                c(getOpenIdTokenResultA.a());
            }
            this.c = getOpenIdTokenResultA.b();
        }
        return this.c;
    }

    protected void b(String str) {
        this.c = str;
    }

    @Override // com.amazonaws.auth.AWSCognitoIdentityProvider
    public String d() {
        return this.g;
    }

    public String e() {
        return this.f;
    }

    @Override // com.amazonaws.auth.AWSCognitoIdentityProvider
    public Map<String, String> f() {
        return this.e;
    }

    @Override // com.amazonaws.auth.AWSCognitoIdentityProvider
    public void a(Map<String, String> map) {
        this.e = map;
    }

    @Override // com.amazonaws.auth.AWSCognitoIdentityProvider
    public boolean g() {
        return this.e != null && this.e.size() > 0;
    }

    @Override // com.amazonaws.auth.AWSCognitoIdentityProvider
    public void a(IdentityChangedListener identityChangedListener) {
        this.d.remove(identityChangedListener);
    }

    @Override // com.amazonaws.auth.AWSCognitoIdentityProvider
    public void b(IdentityChangedListener identityChangedListener) {
        this.d.add(identityChangedListener);
    }

    @Override // com.amazonaws.auth.AWSCognitoIdentityProvider
    public void c(String str) {
        if (this.b == null || !this.b.equals(str)) {
            String str2 = this.b;
            this.b = str;
            Iterator<IdentityChangedListener> it = this.d.iterator();
            while (it.hasNext()) {
                it.next().a(str2, this.b);
            }
        }
    }

    protected void a(AmazonWebServiceRequest amazonWebServiceRequest, String str) {
        amazonWebServiceRequest.b().b(str);
    }

    @Override // com.amazonaws.auth.AWSCognitoIdentityProvider
    public void h() {
        this.d.clear();
    }

    protected void a(String str, String str2) {
        if (this.b == null || !this.b.equals(str)) {
            c(str);
        }
        if (this.c == null || !this.c.equals(str2)) {
            this.c = str2;
        }
    }

    @Override // com.amazonaws.auth.AWSIdentityProvider
    public String j() {
        b();
        String strC = c();
        a(b(), strC);
        return strC;
    }
}
