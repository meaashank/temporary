package com.amazonaws.mobile.client;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.auth.AWSAbstractCognitoIdentityProvider;
import com.amazonaws.auth.AnonymousAWSCredentials;
import com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity;
import com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient;

/* JADX INFO: compiled from: AWSMobileClient.java */
/* JADX INFO: loaded from: classes.dex */
class AWSMobileClientCognitoIdentityProvider extends AWSAbstractCognitoIdentityProvider {
    boolean f;

    @Override // com.amazonaws.auth.AWSAbstractCognitoIdentityProvider
    public String a() {
        return "Cognito";
    }

    @Override // com.amazonaws.auth.AWSAbstractCognitoIdentityProvider
    protected String i() {
        return AWSMobileClient.a;
    }

    public AWSMobileClientCognitoIdentityProvider(String str, String str2) {
        this(str, str2, new ClientConfiguration());
    }

    public AWSMobileClientCognitoIdentityProvider(String str, String str2, ClientConfiguration clientConfiguration) {
        this(str, str2, new AmazonCognitoIdentityClient(new AnonymousAWSCredentials(), clientConfiguration));
    }

    public AWSMobileClientCognitoIdentityProvider(String str, String str2, AmazonCognitoIdentity amazonCognitoIdentity) {
        super(str, str2, amazonCognitoIdentity);
    }

    void b(String str, String str2) {
        super.a(str);
        super.b(str2);
        this.f = true;
    }

    void k() {
        this.f = false;
    }

    @Override // com.amazonaws.auth.AWSAbstractCognitoIdentityProvider, com.amazonaws.auth.AWSIdentityProvider
    public String j() {
        if (this.f) {
            return this.c;
        }
        b();
        return null;
    }
}
