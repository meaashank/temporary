package com.amazonaws.auth;

import android.content.Context;
import android.util.Log;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.internal.keyvaluestore.AWSKeyValueStore;
import com.amazonaws.mobile.config.AWSConfiguration;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient;
import com.amazonaws.services.cognitoidentity.model.NotAuthorizedException;
import com.amazonaws.services.s3.model.InstructionFileId;
import com.amazonaws.services.securitytoken.AWSSecurityTokenService;
import com.amazonaws.util.VersionInfoUtils;
import java.util.Date;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CognitoCachingCredentialsProvider extends CognitoCredentialsProvider {
    private static final String p = CognitoCachingCredentialsProvider.class.getName() + "/" + VersionInfoUtils.a();
    private static final String r = "identityId";
    private static final String s = "accessKey";
    private static final String t = "secretKey";
    private static final String u = "sessionToken";
    private static final String v = "expirationDate";
    private static final String x = "CognitoCachingCredentialsProvider";
    volatile boolean a;
    private final String o;
    private String q;
    private boolean w;
    private AWSKeyValueStore y;
    private final IdentityChangedListener z;

    public CognitoCachingCredentialsProvider(Context context, String str, String str2, String str3, String str4, Regions regions) {
        super(str, str2, str3, str4, regions);
        this.o = "com.amazonaws.android.auth";
        this.a = false;
        this.w = true;
        this.z = new IdentityChangedListener() { // from class: com.amazonaws.auth.CognitoCachingCredentialsProvider.1
            @Override // com.amazonaws.auth.IdentityChangedListener
            public void a(String str5, String str6) {
                Log.d(CognitoCachingCredentialsProvider.x, "Identity id is changed");
                CognitoCachingCredentialsProvider.this.c(str6);
                CognitoCachingCredentialsProvider.this.f();
            }
        };
        if (context == null) {
            throw new IllegalArgumentException("context can't be null");
        }
        a(context);
    }

    public CognitoCachingCredentialsProvider(Context context, String str, String str2, String str3, String str4, Regions regions, ClientConfiguration clientConfiguration) {
        super(str, str2, str3, str4, regions, clientConfiguration);
        this.o = "com.amazonaws.android.auth";
        this.a = false;
        this.w = true;
        this.z = new IdentityChangedListener() { // from class: com.amazonaws.auth.CognitoCachingCredentialsProvider.1
            @Override // com.amazonaws.auth.IdentityChangedListener
            public void a(String str5, String str6) {
                Log.d(CognitoCachingCredentialsProvider.x, "Identity id is changed");
                CognitoCachingCredentialsProvider.this.c(str6);
                CognitoCachingCredentialsProvider.this.f();
            }
        };
        if (context == null) {
            throw new IllegalArgumentException("context can't be null");
        }
        a(context);
    }

    public CognitoCachingCredentialsProvider(Context context, String str, Regions regions) {
        super(str, regions);
        this.o = "com.amazonaws.android.auth";
        this.a = false;
        this.w = true;
        this.z = new IdentityChangedListener() { // from class: com.amazonaws.auth.CognitoCachingCredentialsProvider.1
            @Override // com.amazonaws.auth.IdentityChangedListener
            public void a(String str5, String str6) {
                Log.d(CognitoCachingCredentialsProvider.x, "Identity id is changed");
                CognitoCachingCredentialsProvider.this.c(str6);
                CognitoCachingCredentialsProvider.this.f();
            }
        };
        if (context == null) {
            throw new IllegalArgumentException("context can't be null");
        }
        a(context);
    }

    public CognitoCachingCredentialsProvider(Context context, AWSConfiguration aWSConfiguration) {
        super(aWSConfiguration);
        this.o = "com.amazonaws.android.auth";
        this.a = false;
        this.w = true;
        this.z = new IdentityChangedListener() { // from class: com.amazonaws.auth.CognitoCachingCredentialsProvider.1
            @Override // com.amazonaws.auth.IdentityChangedListener
            public void a(String str5, String str6) {
                Log.d(CognitoCachingCredentialsProvider.x, "Identity id is changed");
                CognitoCachingCredentialsProvider.this.c(str6);
                CognitoCachingCredentialsProvider.this.f();
            }
        };
        if (context == null) {
            throw new IllegalArgumentException("context can't be null");
        }
        a(context);
    }

    public CognitoCachingCredentialsProvider(Context context, String str, Regions regions, ClientConfiguration clientConfiguration) {
        super(str, regions, clientConfiguration);
        this.o = "com.amazonaws.android.auth";
        this.a = false;
        this.w = true;
        this.z = new IdentityChangedListener() { // from class: com.amazonaws.auth.CognitoCachingCredentialsProvider.1
            @Override // com.amazonaws.auth.IdentityChangedListener
            public void a(String str5, String str6) {
                Log.d(CognitoCachingCredentialsProvider.x, "Identity id is changed");
                CognitoCachingCredentialsProvider.this.c(str6);
                CognitoCachingCredentialsProvider.this.f();
            }
        };
        if (context == null) {
            throw new IllegalArgumentException("context can't be null");
        }
        a(context);
    }

    public CognitoCachingCredentialsProvider(Context context, String str, String str2, String str3, String str4, AmazonCognitoIdentityClient amazonCognitoIdentityClient, AWSSecurityTokenService aWSSecurityTokenService) {
        super(str, str2, str3, str4, amazonCognitoIdentityClient, aWSSecurityTokenService);
        this.o = "com.amazonaws.android.auth";
        this.a = false;
        this.w = true;
        this.z = new IdentityChangedListener() { // from class: com.amazonaws.auth.CognitoCachingCredentialsProvider.1
            @Override // com.amazonaws.auth.IdentityChangedListener
            public void a(String str5, String str6) {
                Log.d(CognitoCachingCredentialsProvider.x, "Identity id is changed");
                CognitoCachingCredentialsProvider.this.c(str6);
                CognitoCachingCredentialsProvider.this.f();
            }
        };
        if (context == null) {
            throw new IllegalArgumentException("context can't be null");
        }
        a(context);
    }

    public CognitoCachingCredentialsProvider(Context context, AWSCognitoIdentityProvider aWSCognitoIdentityProvider, String str, String str2) {
        super(aWSCognitoIdentityProvider, str, str2);
        this.o = "com.amazonaws.android.auth";
        this.a = false;
        this.w = true;
        this.z = new IdentityChangedListener() { // from class: com.amazonaws.auth.CognitoCachingCredentialsProvider.1
            @Override // com.amazonaws.auth.IdentityChangedListener
            public void a(String str5, String str6) {
                Log.d(CognitoCachingCredentialsProvider.x, "Identity id is changed");
                CognitoCachingCredentialsProvider.this.c(str6);
                CognitoCachingCredentialsProvider.this.f();
            }
        };
        if (context == null) {
            throw new IllegalArgumentException("context can't be null");
        }
        a(context);
    }

    public CognitoCachingCredentialsProvider(Context context, AWSCognitoIdentityProvider aWSCognitoIdentityProvider, String str, String str2, AWSSecurityTokenService aWSSecurityTokenService) {
        super(aWSCognitoIdentityProvider, str, str2, aWSSecurityTokenService);
        this.o = "com.amazonaws.android.auth";
        this.a = false;
        this.w = true;
        this.z = new IdentityChangedListener() { // from class: com.amazonaws.auth.CognitoCachingCredentialsProvider.1
            @Override // com.amazonaws.auth.IdentityChangedListener
            public void a(String str5, String str6) {
                Log.d(CognitoCachingCredentialsProvider.x, "Identity id is changed");
                CognitoCachingCredentialsProvider.this.c(str6);
                CognitoCachingCredentialsProvider.this.f();
            }
        };
        if (context == null) {
            throw new IllegalArgumentException("context can't be null");
        }
        a(context);
    }

    public CognitoCachingCredentialsProvider(Context context, AWSCognitoIdentityProvider aWSCognitoIdentityProvider, Regions regions) {
        super(aWSCognitoIdentityProvider, regions);
        this.o = "com.amazonaws.android.auth";
        this.a = false;
        this.w = true;
        this.z = new IdentityChangedListener() { // from class: com.amazonaws.auth.CognitoCachingCredentialsProvider.1
            @Override // com.amazonaws.auth.IdentityChangedListener
            public void a(String str5, String str6) {
                Log.d(CognitoCachingCredentialsProvider.x, "Identity id is changed");
                CognitoCachingCredentialsProvider.this.c(str6);
                CognitoCachingCredentialsProvider.this.f();
            }
        };
        if (context == null) {
            throw new IllegalArgumentException("context can't be null");
        }
        a(context);
    }

    public CognitoCachingCredentialsProvider(Context context, AWSCognitoIdentityProvider aWSCognitoIdentityProvider, Regions regions, ClientConfiguration clientConfiguration) {
        super(aWSCognitoIdentityProvider, regions, clientConfiguration);
        this.o = "com.amazonaws.android.auth";
        this.a = false;
        this.w = true;
        this.z = new IdentityChangedListener() { // from class: com.amazonaws.auth.CognitoCachingCredentialsProvider.1
            @Override // com.amazonaws.auth.IdentityChangedListener
            public void a(String str5, String str6) {
                Log.d(CognitoCachingCredentialsProvider.x, "Identity id is changed");
                CognitoCachingCredentialsProvider.this.c(str6);
                CognitoCachingCredentialsProvider.this.f();
            }
        };
        if (context == null) {
            throw new IllegalArgumentException("context can't be null");
        }
        a(context);
    }

    private void a(Context context) {
        try {
            this.y = new AWSKeyValueStore(context, "com.amazonaws.android.auth", this.w);
            u();
            this.q = g();
            t();
            a(this.z);
        } catch (Exception e) {
            Log.e(x, "Error in initializing the CognitoCachingCredentialsProvider. " + e);
            throw new IllegalStateException("Error in initializing the CognitoCachingCredentialsProvider. ", e);
        }
    }

    @Override // com.amazonaws.auth.CognitoCredentialsProvider
    public String c() {
        if (this.a) {
            this.a = false;
            b();
            this.q = super.c();
            c(this.q);
        }
        this.q = g();
        if (this.q == null) {
            this.q = super.c();
            c(this.q);
        }
        return this.q;
    }

    @Override // com.amazonaws.auth.CognitoCredentialsProvider, com.amazonaws.auth.AWSCredentialsProvider
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public AWSSessionCredentials a() {
        this.n.writeLock().lock();
        try {
            if (this.d == null) {
                t();
            }
            if (this.e != null && !s()) {
                return this.d;
            }
            Log.d(x, "Making a network call to fetch credentials.");
            super.a();
            if (this.e != null) {
                a(this.d, this.e.getTime());
            }
            return this.d;
        } catch (NotAuthorizedException e) {
            Log.e(x, "Failure to get credentials", e);
            if (p() == null) {
                throw e;
            }
            super.a((String) null);
            super.a();
            return this.d;
        } finally {
            this.n.writeLock().unlock();
        }
    }

    @Override // com.amazonaws.auth.CognitoCredentialsProvider, com.amazonaws.auth.AWSCredentialsProvider
    public void b() {
        this.n.writeLock().lock();
        try {
            super.b();
            if (this.e != null) {
                a(this.d, this.e.getTime());
            }
        } finally {
            this.n.writeLock().unlock();
        }
    }

    @Override // com.amazonaws.auth.CognitoCredentialsProvider
    public void a(Map<String, String> map) {
        this.n.writeLock().lock();
        try {
            super.a(map);
            this.a = true;
            f();
        } finally {
            this.n.writeLock().unlock();
        }
    }

    @Override // com.amazonaws.auth.CognitoCredentialsProvider
    public void e() {
        super.e();
        this.y.a();
    }

    @Override // com.amazonaws.auth.CognitoCredentialsProvider
    public void f() {
        this.n.writeLock().lock();
        try {
            super.f();
            Log.d(x, "Clearing credentials from SharedPreferences");
            this.y.c(d(s));
            this.y.c(d(t));
            this.y.c(d(u));
            this.y.c(d(v));
        } finally {
            this.n.writeLock().unlock();
        }
    }

    public String g() {
        String strB = this.y.b(d(r));
        if (strB != null && this.q == null) {
            super.a(strB);
        }
        return strB;
    }

    private void t() {
        Log.d(x, "Loading credentials from SharedPreferences");
        if (this.y.b(d(v)) != null) {
            this.e = new Date(Long.parseLong(this.y.b(d(v))));
        } else {
            this.e = new Date(0L);
        }
        boolean zA = this.y.a(d(s));
        boolean zA2 = this.y.a(d(t));
        boolean zA3 = this.y.a(d(u));
        if (!zA || !zA2 || !zA3) {
            Log.d(x, "No valid credentials found in SharedPreferences");
            this.e = null;
            return;
        }
        String strB = this.y.b(d(s));
        String strB2 = this.y.b(d(t));
        String strB3 = this.y.b(d(u));
        if (strB == null || strB2 == null || strB3 == null) {
            Log.d(x, "No valid credentials found in SharedPreferences");
            this.e = null;
        } else {
            this.d = new BasicSessionCredentials(strB, strB2, strB3);
        }
    }

    private void a(AWSSessionCredentials aWSSessionCredentials, long j) {
        Log.d(x, "Saving credentials to SharedPreferences");
        if (aWSSessionCredentials != null) {
            this.y.a(d(s), aWSSessionCredentials.a());
            this.y.a(d(t), aWSSessionCredentials.b());
            this.y.a(d(u), aWSSessionCredentials.d());
            this.y.a(d(v), String.valueOf(j));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        Log.d(x, "Saving identity id to SharedPreferences");
        this.q = str;
        this.y.a(d(r), str);
    }

    @Override // com.amazonaws.auth.CognitoCredentialsProvider
    protected String h() {
        return p;
    }

    private void u() {
        if (this.y.a(r)) {
            Log.i(x, "Identity id without namespace is detected. It will be saved under new namespace.");
            String strB = this.y.b(r);
            this.y.a();
            this.y.a(d(r), strB);
        }
    }

    private String d(String str) {
        return l() + InstructionFileId.c + str;
    }

    public void a(boolean z) {
        this.w = z;
        this.y.a(z);
    }
}
