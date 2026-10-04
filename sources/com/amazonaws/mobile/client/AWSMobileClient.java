package com.amazonaws.mobile.client;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.support.annotation.AnyThread;
import android.support.annotation.WorkerThread;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import com.amazonaws.AmazonClientException;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.AWSSessionCredentials;
import com.amazonaws.auth.CognitoCachingCredentialsProvider;
import com.amazonaws.mobile.auth.core.IdentityManager;
import com.amazonaws.mobile.auth.core.StartupAuthResult;
import com.amazonaws.mobile.auth.core.StartupAuthResultHandler;
import com.amazonaws.mobile.auth.core.signin.SignInProvider;
import com.amazonaws.mobile.auth.facebook.FacebookButton;
import com.amazonaws.mobile.auth.facebook.FacebookSignInProvider;
import com.amazonaws.mobile.auth.google.GoogleButton;
import com.amazonaws.mobile.auth.google.GoogleSignInProvider;
import com.amazonaws.mobile.auth.ui.AuthUIConfiguration;
import com.amazonaws.mobile.auth.ui.SignInUI;
import com.amazonaws.mobile.auth.userpools.CognitoUserPoolsSignInProvider;
import com.amazonaws.mobile.client.internal.InternalCallback;
import com.amazonaws.mobile.client.internal.ReturningRunnable;
import com.amazonaws.mobile.client.internal.oauth2.AuthorizeResponse;
import com.amazonaws.mobile.client.internal.oauth2.OAuth2Client;
import com.amazonaws.mobile.client.internal.oauth2.OAuth2Constants;
import com.amazonaws.mobile.client.internal.oauth2.OAuth2Tokens;
import com.amazonaws.mobile.client.results.ForgotPasswordResult;
import com.amazonaws.mobile.client.results.ForgotPasswordState;
import com.amazonaws.mobile.client.results.SignInResult;
import com.amazonaws.mobile.client.results.SignInState;
import com.amazonaws.mobile.client.results.SignUpResult;
import com.amazonaws.mobile.client.results.Tokens;
import com.amazonaws.mobile.client.results.UserCodeDeliveryDetails;
import com.amazonaws.mobile.config.AWSConfigurable;
import com.amazonaws.mobile.config.AWSConfiguration;
import com.amazonaws.mobileconnectors.cognitoauth.Auth;
import com.amazonaws.mobileconnectors.cognitoauth.AuthUserSession;
import com.amazonaws.mobileconnectors.cognitoauth.handlers.AuthHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserAttributes;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserCodeDeliveryDetails;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserDetails;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserSession;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.AuthenticationContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.AuthenticationDetails;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.CognitoIdentityProviderContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ForgotPasswordContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.MultiFactorAuthenticationContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.NewPasswordContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.ForgotPasswordHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.GenericHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.GetDetailsHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.SignUpHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.UpdateAttributesHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.VerificationHandler;
import com.amazonaws.services.cognitoidentity.model.NotAuthorizedException;
import com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProvider;
import com.amazonaws.services.cognitoidentityprovider.model.GlobalSignOutRequest;
import com.amazonaws.util.StringUtils;
import com.facebook.internal.ServerProtocol;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.xerces.impl.xs.SchemaSymbols;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AWSMobileClient implements AWSCredentialsProvider {
    private static final String A = "GoogleSignIn";
    private static final String B = "ClientId-WebApp";
    private static volatile AWSMobileClient C = null;
    public static final String a = "AWSMobileClient";
    static final String b = "com.amazonaws.mobile.client";
    static final String c = "provider";
    static final String d = "token";
    static final String e = "cognitoIdentityId";
    static final String f = "signInMode";
    public static final String g = "hostedUI";
    static final String h = "isFederationEnabled";
    private static final String w = "AWSMobileClient";
    private static final String x = "customRoleArn";
    private static final String y = "CognitoUserPool";
    private static final String z = "FacebookSignIn";
    private final LinkedHashMap<Class<? extends AWSConfigurable>, AWSConfigurable> D;
    private AWSConfiguration E;
    private UserStateDetails F;
    private Lock G;
    private volatile CountDownLatch H;
    private Callback<SignInResult> I;
    private MultiFactorAuthenticationContinuation J;
    private ChallengeContinuation K;
    private SignInState L;
    private Callback<ForgotPasswordResult> M;
    private ForgotPasswordContinuation N;
    private CognitoUser O;
    private AWSCredentialsProvider P;
    private SignInProviderConfig[] Q;
    private StartupAuthResultHandler R;
    private AWSStartupHandler S;
    private boolean T;
    private Object U;
    private volatile CountDownLatch V;
    private Object W;
    private Object X;
    private Auth Y;
    private Auth Z;
    CognitoCachingCredentialsProvider i;
    CognitoUserPool j;
    String k;
    Context l;
    Map<String, String> m;
    CognitoUserSession n;
    List<UserStateListener> o;
    AWSMobileClientStore p;
    AWSMobileClientCognitoIdentityProvider q;
    DeviceOperations r;
    AmazonCognitoIdentityProvider s;
    OAuth2Client t;
    String u;
    boolean v = true;

    enum SignInMode {
        SIGN_IN("0"),
        FEDERATED_SIGN_IN("1"),
        HOSTED_UI("2"),
        OAUTH2("3"),
        UNKNOWN("-1");

        String encode;

        SignInMode(String str) {
            this.encode = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.encode;
        }

        static SignInMode fromString(String str) {
            if ("0".equals(str)) {
                return SIGN_IN;
            }
            if ("1".equals(str)) {
                return FEDERATED_SIGN_IN;
            }
            if ("2".equals(str)) {
                return HOSTED_UI;
            }
            if ("3".equals(str)) {
                return OAUTH2;
            }
            return UNKNOWN;
        }
    }

    private AWSMobileClient() {
        if (C != null) {
            throw new AssertionError();
        }
        this.D = new LinkedHashMap<>();
        this.k = "";
        this.G = new ReentrantLock();
        this.m = new HashMap();
        this.o = new ArrayList();
        this.U = new Object();
        this.W = new Object();
        this.V = new CountDownLatch(1);
        this.X = new Object();
    }

    public static synchronized AWSMobileClient c() {
        if (C == null) {
            C = new AWSMobileClient();
        }
        return C;
    }

    public AWSConfiguration d() {
        return this.E;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials a() {
        if (g()) {
            return IdentityManager.a().d().a();
        }
        if (this.i == null) {
            throw new AmazonClientException("Cognito Identity not configured");
        }
        try {
            if (s()) {
                Log.d(w, "getCredentials: Validated user is signed-in");
            }
            AWSSessionCredentials aWSSessionCredentialsD = this.i.a();
            this.p.a(e, this.i.c());
            return aWSSessionCredentialsD;
        } catch (NotAuthorizedException e2) {
            Log.w(w, "getCredentials: Failed to getCredentials from Cognito Identity", e2);
            throw new AmazonClientException("Failed to get credentials from Cognito Identity", e2);
        } catch (Exception e3) {
            throw new AmazonClientException("Failed to get credentials from Cognito Identity", e3);
        }
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public void b() {
        if (g()) {
            IdentityManager.a().d().b();
        } else {
            if (this.i == null) {
                throw new AmazonClientException("Cognito Identity not configured");
            }
            this.i.b();
            this.p.a(e, this.i.c());
        }
    }

    @WorkerThread
    public AWSCredentials e() {
        return C().c();
    }

    @AnyThread
    public void a(Callback<AWSCredentials> callback) {
        C().a(callback);
    }

    private ReturningRunnable<AWSCredentials> C() {
        return new ReturningRunnable<AWSCredentials>() { // from class: com.amazonaws.mobile.client.AWSMobileClient.1
            @Override // com.amazonaws.mobile.client.internal.ReturningRunnable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public AWSCredentials b() {
                return AWSMobileClient.this.a();
            }
        };
    }

    @AnyThread
    public String f() {
        if (g()) {
            return IdentityManager.a().f();
        }
        if (this.i == null) {
            throw new RuntimeException("Cognito Identity not configured");
        }
        String strG = this.i.g();
        return strG == null ? this.p.a(e) : strG;
    }

    boolean g() {
        return this.T;
    }

    @AnyThread
    public void a(Context context, Callback<UserStateDetails> callback) {
        Context applicationContext = context.getApplicationContext();
        a(applicationContext, new AWSConfiguration(applicationContext), callback);
    }

    @AnyThread
    public void a(Context context, AWSConfiguration aWSConfiguration, Callback<UserStateDetails> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(b(context, aWSConfiguration, internalCallback));
    }

    CountDownLatch h() {
        return this.V;
    }

    /* JADX INFO: renamed from: com.amazonaws.mobile.client.AWSMobileClient$2, reason: invalid class name */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ Callback a;
        final /* synthetic */ AWSConfiguration b;
        final /* synthetic */ Context c;

        AnonymousClass2(Callback callback, AWSConfiguration aWSConfiguration, Context context) {
            this.a = callback;
            this.b = aWSConfiguration;
            this.c = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0133 A[Catch: all -> 0x02d4, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0007, B:6:0x0010, B:7:0x001b, B:9:0x001d, B:10:0x0021, B:12:0x002b, B:14:0x003b, B:15:0x004d, B:17:0x0095, B:19:0x00a5, B:22:0x0125, B:23:0x0131, B:25:0x0133, B:27:0x013d, B:33:0x01fe, B:35:0x0206, B:37:0x020e, B:38:0x0232, B:39:0x0246, B:41:0x024c, B:42:0x0256, B:44:0x025c, B:45:0x027d, B:46:0x0284, B:49:0x0292, B:51:0x0298, B:53:0x029e, B:54:0x02aa, B:56:0x02ac, B:57:0x02c3, B:48:0x0286, B:30:0x01f0, B:31:0x01fc, B:60:0x02c6, B:61:0x02d2), top: B:68:0x0007, inners: #0, #2, #3, #4 }] */
        /* JADX WARN: Removed duplicated region for block: B:33:0x01fe A[Catch: all -> 0x02d4, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0007, B:6:0x0010, B:7:0x001b, B:9:0x001d, B:10:0x0021, B:12:0x002b, B:14:0x003b, B:15:0x004d, B:17:0x0095, B:19:0x00a5, B:22:0x0125, B:23:0x0131, B:25:0x0133, B:27:0x013d, B:33:0x01fe, B:35:0x0206, B:37:0x020e, B:38:0x0232, B:39:0x0246, B:41:0x024c, B:42:0x0256, B:44:0x025c, B:45:0x027d, B:46:0x0284, B:49:0x0292, B:51:0x0298, B:53:0x029e, B:54:0x02aa, B:56:0x02ac, B:57:0x02c3, B:48:0x0286, B:30:0x01f0, B:31:0x01fc, B:60:0x02c6, B:61:0x02d2), top: B:68:0x0007, inners: #0, #2, #3, #4 }] */
        /* JADX WARN: Removed duplicated region for block: B:66:0x013d A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0206 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                Method dump skipped, instruction units count: 727
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass2.run():void");
        }
    }

    protected Runnable b(Context context, AWSConfiguration aWSConfiguration, Callback<UserStateDetails> callback) {
        return new AnonymousClass2(callback, aWSConfiguration, context);
    }

    JSONObject i() {
        JSONObject jSONObjectA = this.E.a("Auth");
        if (jSONObjectA == null || !jSONObjectA.has("OAuth")) {
            return null;
        }
        try {
            return jSONObjectA.getJSONObject("OAuth");
        } catch (Exception e2) {
            Log.w(w, "getHostedUIJSONFromJSON: Failed to read config", e2);
            return null;
        }
    }

    JSONObject j() {
        JSONObject jSONObject;
        try {
            JSONObject jSONObjectI = i();
            if (jSONObjectI == null) {
                return null;
            }
            try {
                jSONObject = new JSONObject(this.p.a(g));
            } catch (Exception e2) {
                Log.w(w, "Failed to parse HostedUI settings from store. Defaulting to awsconfiguration.json", e2);
                jSONObject = null;
            }
            if (jSONObject != null || jSONObjectI == null) {
                return jSONObject;
            }
            JSONObject jSONObject2 = new JSONObject(jSONObjectI.toString());
            this.p.a(g, jSONObject2.toString());
            return jSONObject2;
        } catch (Exception e3) {
            Log.d(w, "getHostedUIJSON: Failed to read config", e3);
            return null;
        }
    }

    Auth.Builder a(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = jSONObject.getJSONArray("Scopes");
        HashSet hashSet = new HashSet();
        for (int i = 0; i < jSONArray.length(); i++) {
            hashSet.add(jSONArray.getString(i));
        }
        return new Auth.Builder().setApplicationContext(this.l).setUserPoolId(this.u).setAppClientId(jSONObject.getString("AppClientId")).setAppClientSecret(jSONObject.optString("AppClientSecret", null)).setAppCognitoWebDomain(jSONObject.getString("WebDomain")).setSignInRedirect(jSONObject.getString("SignInRedirectURI")).setSignOutRedirect(jSONObject.getString("SignOutRedirectURI")).setScopes(hashSet).setAdvancedSecurityDataCollection(false).setIdentityProvider(jSONObject.optString("IdentityProvider")).setIdpIdentifier(jSONObject.optString("IdpIdentifier"));
    }

    @AnyThread
    public DeviceOperations k() {
        if (this.r == null) {
            throw new AmazonClientException("Please check if userpools is configured.");
        }
        return this.r;
    }

    @AnyThread
    public void l() {
        if (this.H != null) {
            this.H.countDown();
        }
    }

    protected void a(final UserStateDetails userStateDetails) {
        boolean z2 = !userStateDetails.equals(this.F);
        this.F = userStateDetails;
        if (z2) {
            synchronized (this.o) {
                for (final UserStateListener userStateListener : this.o) {
                    new Thread(new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.3
                        @Override // java.lang.Runnable
                        public void run() {
                            userStateListener.a(userStateDetails);
                        }
                    }).start();
                }
            }
        }
    }

    protected boolean a(Context context) {
        try {
            Class.forName("android.support.v4.content.ContextCompat");
            if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") != 0) {
                return false;
            }
        } catch (ClassNotFoundException e2) {
            Log.w(w, "Could not check if ACCESS_NETWORK_STATE permission is available.", e2);
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnected()) {
                    return true;
                }
            }
        } catch (Exception e3) {
            Log.w(w, "Could not access network state", e3);
        }
        return false;
    }

    boolean m() {
        return this.k.equals(this.p.a(c));
    }

    @AnyThread
    public String n() {
        try {
            if (this.k.equals(this.p.a(c))) {
                return this.j.c().a();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @WorkerThread
    public UserStateDetails o() {
        try {
            return p().c();
        } catch (Exception e2) {
            throw new RuntimeException("Failed to retrieve user state.", e2);
        }
    }

    @AnyThread
    public void b(Callback<UserStateDetails> callback) {
        p().a(callback);
    }

    ReturningRunnable<UserStateDetails> p() {
        return new ReturningRunnable<UserStateDetails>() { // from class: com.amazonaws.mobile.client.AWSMobileClient.4
            @Override // com.amazonaws.mobile.client.internal.ReturningRunnable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public UserStateDetails b() {
                return AWSMobileClient.this.a(false);
            }
        };
    }

    @AnyThread
    public void a(UserStateListener userStateListener) {
        synchronized (this.o) {
            this.o.add(userStateListener);
        }
    }

    @AnyThread
    public boolean b(UserStateListener userStateListener) {
        synchronized (this.o) {
            int iIndexOf = this.o.indexOf(userStateListener);
            if (iIndexOf == -1) {
                return false;
            }
            this.o.remove(iIndexOf);
            return true;
        }
    }

    String q() {
        return this.k;
    }

    @AnyThread
    public boolean r() {
        switch (a(true).a()) {
            case SIGNED_IN:
            case SIGNED_OUT_USER_POOLS_TOKENS_INVALID:
            case SIGNED_OUT_FEDERATED_TOKENS_INVALID:
                return true;
            case GUEST:
            case SIGNED_OUT:
                return false;
            default:
                throw new IllegalStateException("Unknown user state, please report this exception");
        }
    }

    protected boolean s() {
        UserStateDetails userStateDetailsA;
        try {
            try {
                this.G.lock();
                this.H = new CountDownLatch(1);
                userStateDetailsA = a(false);
                Log.d(w, "waitForSignIn: userState:" + userStateDetailsA.a());
                a(userStateDetailsA);
            } catch (Exception e2) {
                Log.w(w, "Exception when waiting for sign-in", e2);
            }
            switch (userStateDetailsA.a()) {
                case SIGNED_IN:
                    return true;
                case SIGNED_OUT_USER_POOLS_TOKENS_INVALID:
                case SIGNED_OUT_FEDERATED_TOKENS_INVALID:
                    this.H.await();
                    return a(false).a().equals(UserState.SIGNED_IN);
                case GUEST:
                case SIGNED_OUT:
                    return false;
                default:
                    return false;
            }
        } finally {
            this.G.unlock();
        }
    }

    Map<String, String> t() {
        return this.p.a(c, "token");
    }

    String u() {
        return this.p.a(e);
    }

    protected UserStateDetails a(boolean z2) {
        Tokens tokensB;
        String strA;
        String strE;
        Map<String, String> mapT = t();
        String str = mapT.get(c);
        String str2 = mapT.get("token");
        w();
        String strU = u();
        boolean zV = v();
        Log.d(w, "Inspecting user state details");
        boolean z3 = (str == null || str2 == null) ? false : true;
        Tokens tokens = null;
        if (z2 || !a(this.l)) {
            if (z3) {
                return new UserStateDetails(UserState.SIGNED_IN, mapT);
            }
            if (strU != null) {
                return new UserStateDetails(UserState.GUEST, mapT);
            }
            return new UserStateDetails(UserState.SIGNED_OUT, null);
        }
        if (z3 && !this.k.equals(str)) {
            if (zV) {
                try {
                    com.amazonaws.mobile.auth.core.IdentityProvider identityProviderI = IdentityManager.a().i();
                    if (identityProviderI == null || !str.equals(identityProviderI.b())) {
                        strE = str2;
                    } else {
                        strE = identityProviderI.e();
                        Log.i(w, "Token was refreshed using drop-in UI internal mechanism");
                    }
                    if (strE == null) {
                        Log.i(w, "Token used for federation has become null");
                        return new UserStateDetails(UserState.SIGNED_OUT_FEDERATED_TOKENS_INVALID, mapT);
                    }
                    if (i(str, strE)) {
                        Log.d(w, "getUserStateDetails: token already federated just fetch credentials");
                        if (this.i != null) {
                            this.i.a();
                        }
                    } else {
                        c(str, str2);
                    }
                } catch (Exception e2) {
                    Log.w(w, "Failed to federate the tokens.", e2);
                    if (e2 instanceof NotAuthorizedException) {
                        return new UserStateDetails(UserState.SIGNED_OUT_FEDERATED_TOKENS_INVALID, mapT);
                    }
                    return new UserStateDetails(UserState.SIGNED_IN, mapT);
                }
            }
            return new UserStateDetails(UserState.SIGNED_IN, mapT);
        }
        if (z3 && this.j != null) {
            try {
                tokensB = b(false);
                try {
                    strA = tokensB.b().a();
                    try {
                        try {
                            mapT.put("token", strA);
                            if (zV) {
                                if (i(str, strA)) {
                                    try {
                                        if (this.i != null) {
                                            this.i.a();
                                        }
                                    } catch (Exception e3) {
                                        Log.w(w, "Failed to get or refresh credentials from Cognito Identity", e3);
                                    }
                                } else if (this.i != null) {
                                    c(str, strA);
                                }
                            }
                            if (tokensB != null && strA != null) {
                                return new UserStateDetails(UserState.SIGNED_IN, mapT);
                            }
                            return new UserStateDetails(UserState.SIGNED_OUT_USER_POOLS_TOKENS_INVALID, mapT);
                        } catch (Throwable unused) {
                            if (tokensB == null) {
                            }
                            return new UserStateDetails(UserState.SIGNED_OUT_USER_POOLS_TOKENS_INVALID, mapT);
                        }
                    } catch (Exception e4) {
                        e = e4;
                        tokens = tokensB;
                        try {
                            Log.w(w, tokens == null ? "Tokens are invalid, please sign-in again." : "Failed to federate the tokens", e);
                            if (tokens != null && strA != null) {
                                return new UserStateDetails(UserState.SIGNED_IN, mapT);
                            }
                            return new UserStateDetails(UserState.SIGNED_OUT_USER_POOLS_TOKENS_INVALID, mapT);
                        } catch (Throwable unused2) {
                            tokensB = tokens;
                            if (tokensB == null && strA != null) {
                                return new UserStateDetails(UserState.SIGNED_IN, mapT);
                            }
                            return new UserStateDetails(UserState.SIGNED_OUT_USER_POOLS_TOKENS_INVALID, mapT);
                        }
                    }
                } catch (Exception e5) {
                    e = e5;
                    strA = null;
                } catch (Throwable unused3) {
                    strA = null;
                }
            } catch (Exception e6) {
                e = e6;
                strA = null;
            } catch (Throwable unused4) {
                tokensB = null;
                strA = null;
            }
        } else {
            if (this.i == null) {
                return new UserStateDetails(UserState.SIGNED_OUT, mapT);
            }
            if (strU != null) {
                return new UserStateDetails(UserState.GUEST, mapT);
            }
            return new UserStateDetails(UserState.SIGNED_OUT, null);
        }
    }

    boolean v() {
        String strA = this.p.a(h);
        if (strA != null) {
            return strA.equals("true");
        }
        return true;
    }

    SignInMode w() {
        return SignInMode.fromString(this.p.a(f));
    }

    private boolean i(String str, String str2) {
        if (str2 == null || str2.isEmpty()) {
            return false;
        }
        boolean zEquals = str2.equals(this.m.get(str));
        Log.d(w, "hasFederatedToken: " + zEquals + " provider: " + str);
        return zEquals;
    }

    @AnyThread
    public void a(String str, String str2, Map<String, String> map, Callback<SignInResult> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(b(str, str2, map, internalCallback));
    }

    @WorkerThread
    public SignInResult a(String str, String str2, Map<String, String> map) {
        InternalCallback internalCallback = new InternalCallback();
        return (SignInResult) internalCallback.b(b(str, str2, map, internalCallback));
    }

    private Runnable b(final String str, final String str2, final Map<String, String> map, final Callback<SignInResult> callback) {
        this.I = callback;
        this.L = null;
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AWSMobileClient.this.j.a(str).b(new AuthenticationHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.5.1
                        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
                        public void a(CognitoUserSession cognitoUserSession, CognitoDevice cognitoDevice) {
                            AWSMobileClient aWSMobileClient;
                            UserStateDetails userStateDetails;
                            try {
                                AWSMobileClient.this.n = cognitoUserSession;
                                AWSMobileClient.this.L = SignInState.DONE;
                            } catch (Exception e2) {
                                AWSMobileClient.this.I.a(e2);
                                AWSMobileClient.this.I = null;
                            }
                            try {
                                try {
                                    if (AWSMobileClient.this.v()) {
                                        AWSMobileClient.this.b(AWSMobileClient.this.k, AWSMobileClient.this.n.a().a());
                                    }
                                    AWSMobileClient.this.l();
                                    aWSMobileClient = AWSMobileClient.this;
                                    userStateDetails = new UserStateDetails(UserState.SIGNED_IN, AWSMobileClient.this.t());
                                } catch (Exception e3) {
                                    Log.w(AWSMobileClient.w, "Failed to federate tokens during sign-in", e3);
                                    aWSMobileClient = AWSMobileClient.this;
                                    userStateDetails = new UserStateDetails(UserState.SIGNED_IN, AWSMobileClient.this.t());
                                }
                                aWSMobileClient.a(userStateDetails);
                                AWSMobileClient.this.I.a(SignInResult.a);
                            } catch (Throwable th) {
                                AWSMobileClient.this.a(new UserStateDetails(UserState.SIGNED_IN, AWSMobileClient.this.t()));
                                throw th;
                            }
                        }

                        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
                        public void a(AuthenticationContinuation authenticationContinuation, String str3) {
                            Log.d(AWSMobileClient.w, "Sending password.");
                            authenticationContinuation.a(new AuthenticationDetails(str, str2, (Map<String, String>) map));
                            authenticationContinuation.b();
                        }

                        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
                        public void a(MultiFactorAuthenticationContinuation multiFactorAuthenticationContinuation) {
                            AWSMobileClient.this.J = multiFactorAuthenticationContinuation;
                            CognitoUserCodeDeliveryDetails cognitoUserCodeDeliveryDetailsA = multiFactorAuthenticationContinuation.c();
                            AWSMobileClient.this.L = SignInState.SMS_MFA;
                            AWSMobileClient.this.I.a(new SignInResult(SignInState.SMS_MFA, new UserCodeDeliveryDetails(cognitoUserCodeDeliveryDetailsA.a(), cognitoUserCodeDeliveryDetailsA.b(), cognitoUserCodeDeliveryDetailsA.c())));
                        }

                        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
                        public void a(ChallengeContinuation challengeContinuation) {
                            try {
                                AWSMobileClient.this.L = SignInState.valueOf(challengeContinuation.d());
                                AWSMobileClient.this.K = challengeContinuation;
                                AWSMobileClient.this.I.a(new SignInResult(AWSMobileClient.this.L, challengeContinuation.c()));
                            } catch (IllegalArgumentException e2) {
                                AWSMobileClient.this.I.a((Exception) e2);
                            }
                        }

                        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
                        public void a(Exception exc) {
                            AWSMobileClient.this.I.a(exc);
                        }
                    });
                } catch (Exception e2) {
                    callback.a(e2);
                }
            }
        };
    }

    @AnyThread
    public void x() {
        String string;
        String str = null;
        this.n = null;
        if (this.j != null) {
            this.j.c().e();
            this.j.d().e();
        }
        if (this.i != null) {
            this.i.e();
        }
        if (IdentityManager.a() != null) {
            IdentityManager.a().h();
        }
        this.p.a();
        if (this.E.a("Auth") != null && this.E.a("Auth").has("OAuth")) {
            try {
                string = this.E.a("Auth").getJSONObject("OAuth").toString();
            } catch (JSONException e2) {
                e2.printStackTrace();
                string = null;
            }
            if (this.Z != null) {
                this.Z.signOut(true);
            }
            if (this.t != null) {
                this.t.a();
            }
            this.Z = null;
            str = string;
        }
        this.p.a(g, str);
        a(a(false));
        l();
    }

    @WorkerThread
    public void a(SignOutOptions signOutOptions) {
        b(signOutOptions).c();
    }

    @AnyThread
    public void a(SignOutOptions signOutOptions, Callback<Void> callback) {
        b(signOutOptions).a(callback);
    }

    private ReturningRunnable<Void> b(final SignOutOptions signOutOptions) {
        return new ReturningRunnable<Void>() { // from class: com.amazonaws.mobile.client.AWSMobileClient.6
            @Override // com.amazonaws.mobile.client.internal.ReturningRunnable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Void b() throws Exception {
                if (signOutOptions.a()) {
                    GlobalSignOutRequest globalSignOutRequest = new GlobalSignOutRequest();
                    globalSignOutRequest.a(AWSMobileClient.this.y().a().a());
                    AWSMobileClient.this.s.a(globalSignOutRequest);
                }
                if (signOutOptions.b()) {
                    if (AWSMobileClient.this.Z != null) {
                        AWSMobileClient.this.Z.signOut();
                    } else if (AWSMobileClient.this.t != null) {
                        final CountDownLatch countDownLatch = new CountDownLatch(1);
                        JSONObject jSONObjectJ = AWSMobileClient.this.j();
                        Uri.Builder builderBuildUpon = Uri.parse(jSONObjectJ.getString("SignOutURI")).buildUpon();
                        if (AWSMobileClient.this.j().optString("SignOutRedirectURI", null) != null) {
                            builderBuildUpon.appendQueryParameter(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, AWSMobileClient.this.j().getString("SignOutRedirectURI"));
                        }
                        JSONObject jSONObject = jSONObjectJ.getJSONObject("SignOutQueryParameters");
                        if (jSONObject != null) {
                            Iterator<String> itKeys = jSONObject.keys();
                            while (itKeys.hasNext()) {
                                String next = itKeys.next();
                                builderBuildUpon.appendQueryParameter(next, jSONObject.getString(next));
                            }
                        }
                        final Exception[] excArr = new Exception[1];
                        AWSMobileClient.this.t.a(builderBuildUpon.build(), new Callback<Void>() { // from class: com.amazonaws.mobile.client.AWSMobileClient.6.1
                            @Override // com.amazonaws.mobile.client.Callback
                            public void a(Void r1) {
                                countDownLatch.countDown();
                            }

                            @Override // com.amazonaws.mobile.client.Callback
                            public void a(Exception exc) {
                                excArr[0] = exc;
                                countDownLatch.countDown();
                            }
                        });
                        countDownLatch.await();
                        if (excArr[0] != null) {
                            throw excArr[0];
                        }
                    }
                }
                AWSMobileClient.this.x();
                return null;
            }
        };
    }

    @AnyThread
    public void a(String str, String str2, Callback<UserStateDetails> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(a(str, str2, (FederatedSignInOptions) null, (Callback<UserStateDetails>) internalCallback, true));
    }

    @WorkerThread
    public UserStateDetails a(String str, String str2) {
        InternalCallback internalCallback = new InternalCallback();
        return (UserStateDetails) internalCallback.b(a(str, str2, (FederatedSignInOptions) null, (Callback<UserStateDetails>) internalCallback, true));
    }

    @AnyThread
    public void a(String str, String str2, FederatedSignInOptions federatedSignInOptions, Callback<UserStateDetails> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(a(str, str2, federatedSignInOptions, (Callback<UserStateDetails>) internalCallback, true));
    }

    @WorkerThread
    public UserStateDetails a(String str, String str2, FederatedSignInOptions federatedSignInOptions) {
        InternalCallback internalCallback = new InternalCallback();
        return (UserStateDetails) internalCallback.b(a(str, str2, federatedSignInOptions, (Callback<UserStateDetails>) internalCallback, true));
    }

    protected void b(String str, String str2) throws Exception {
        InternalCallback internalCallback = new InternalCallback();
        internalCallback.b(a(str, str2, (FederatedSignInOptions) null, (Callback<UserStateDetails>) internalCallback, false));
    }

    protected void b(String str, String str2, Callback<UserStateDetails> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(a(str, str2, (FederatedSignInOptions) null, (Callback<UserStateDetails>) internalCallback, false));
    }

    private Runnable a(final String str, final String str2, FederatedSignInOptions federatedSignInOptions, final Callback<UserStateDetails> callback, final boolean z2) {
        final HashMap map = new HashMap();
        try {
            map.put(str, str2);
            Log.d(w, String.format("_federatedSignIn: Putting provider and token in store", new Object[0]));
            HashMap map2 = new HashMap();
            map2.put(c, str);
            map2.put("token", str2);
            map2.put(h, "true");
            if (IdentityProvider.DEVELOPER.equals(str)) {
                if (federatedSignInOptions == null) {
                    callback.a(new Exception("Developer authenticated identities require theidentity id to be specified in FederatedSignInOptions"));
                }
                map2.put(e, federatedSignInOptions.b());
            }
            if (federatedSignInOptions != null && !StringUtils.a((CharSequence) federatedSignInOptions.a())) {
                map2.put(x, federatedSignInOptions.a());
            }
            this.p.a(map2);
        } catch (Exception e2) {
            callback.a(e2);
        }
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (AWSMobileClient.this.i == null) {
                        callback.a(new Exception("Federation is not enabled, please check if you have CognitoIdentity configured."));
                        return;
                    }
                    if (!str2.equals(AWSMobileClient.this.m.get(str))) {
                        AWSMobileClient.this.i.e();
                        AWSMobileClient.this.i.a(map);
                    }
                    UserStateDetails userStateDetailsA = AWSMobileClient.this.a(true);
                    AWSMobileClient.this.c(str, str2);
                    callback.a(userStateDetailsA);
                    a(userStateDetailsA);
                } catch (Exception e3) {
                    HashMap map3 = new HashMap();
                    map3.put(AWSMobileClient.c, null);
                    map3.put("token", null);
                    map3.put(AWSMobileClient.h, null);
                    map3.put(AWSMobileClient.e, null);
                    map3.put(AWSMobileClient.x, null);
                    AWSMobileClient.this.p.a(map3);
                    callback.a((Exception) new RuntimeException("Error in federating the token.", e3));
                }
            }

            private void a(UserStateDetails userStateDetails) {
                if (z2) {
                    AWSMobileClient.this.a(userStateDetails);
                }
            }
        };
    }

    protected void c(String str, String str2) {
        synchronized (this.W) {
            if (!i(str, str2)) {
                if (IdentityProvider.DEVELOPER.equals(str)) {
                    this.q.b(this.p.a(e), str2);
                } else {
                    this.q.k();
                }
                String strA = this.p.a(x);
                if (!StringUtils.a((CharSequence) strA)) {
                    this.i.b(strA);
                }
                HashMap map = new HashMap();
                map.put(str, str2);
                this.i.a(map);
                this.i.b();
                this.p.a(e, this.i.c());
                this.m = this.i.p();
            }
        }
    }

    @WorkerThread
    public Tokens y() {
        InternalCallback internalCallback = new InternalCallback();
        return (Tokens) internalCallback.b(a((Callback<Tokens>) internalCallback, true));
    }

    @AnyThread
    public void c(Callback<Tokens> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(a((Callback<Tokens>) internalCallback, true));
    }

    protected Tokens b(boolean z2) {
        InternalCallback internalCallback = new InternalCallback();
        return (Tokens) internalCallback.b(a(internalCallback, z2));
    }

    private Runnable a(final Callback<Tokens> callback, final boolean z2) {
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.8
            @Override // java.lang.Runnable
            public void run() {
                String str = AWSMobileClient.this.t().get(AWSMobileClient.c);
                if (str != null && !AWSMobileClient.this.k.equals(str)) {
                    callback.a(new Exception("getTokens does not support retrieving tokens for federated sign-in"));
                    return;
                }
                if (z2 && !AWSMobileClient.this.s()) {
                    callback.a(new Exception("getTokens does not support retrieving tokens while signed-out"));
                    return;
                }
                if (!AWSMobileClient.this.m()) {
                    callback.a(new Exception("You must be signed-in with Cognito Userpools to be able to use getTokens"));
                }
                if (AWSMobileClient.this.w().equals(SignInMode.HOSTED_UI)) {
                    AWSMobileClient.this.Z.setAuthHandler(new AuthHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.8.1
                        public void a(AuthUserSession authUserSession) {
                            callback.a(new Tokens(authUserSession.getAccessToken().getJWTToken(), authUserSession.getIdToken().getJWTToken(), authUserSession.getRefreshToken().getToken()));
                        }

                        public void a() {
                            callback.a(new Exception("No cached session."));
                        }

                        public void a(Exception exc) {
                            callback.a(new Exception("No cached session.", exc));
                        }
                    });
                    AWSMobileClient.this.Z.getSession(false);
                } else {
                    if (AWSMobileClient.this.w().equals(SignInMode.OAUTH2)) {
                        callback.a(new Exception("Tokens are not supported for OAuth2"));
                        return;
                    }
                    try {
                        AWSMobileClient.this.j.c().b(new AuthenticationHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.8.2
                            @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
                            public void a(CognitoUserSession cognitoUserSession, CognitoDevice cognitoDevice) {
                                try {
                                    AWSMobileClient.this.n = cognitoUserSession;
                                    callback.a(new Tokens(cognitoUserSession.b().a(), cognitoUserSession.a().a(), cognitoUserSession.c().a_()));
                                } catch (Exception e2) {
                                    callback.a(e2);
                                }
                            }

                            @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
                            public void a(AuthenticationContinuation authenticationContinuation, String str2) {
                                b(null);
                            }

                            @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
                            public void a(MultiFactorAuthenticationContinuation multiFactorAuthenticationContinuation) {
                                b(null);
                            }

                            @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
                            public void a(ChallengeContinuation challengeContinuation) {
                                b(null);
                            }

                            @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
                            public void a(Exception exc) {
                                b(exc);
                            }

                            private void b(Exception exc) {
                                Log.w(AWSMobileClient.w, "signalTokensNotAvailable");
                                callback.a(new Exception("No cached session.", exc));
                            }
                        });
                    } catch (Exception e2) {
                        callback.a(e2);
                    }
                }
            }
        };
    }

    @AnyThread
    public void a(String str, String str2, Map<String, String> map, Map<String, String> map2, Callback<SignUpResult> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(b(str, str2, map, map2, internalCallback));
    }

    @WorkerThread
    public SignUpResult a(String str, String str2, Map<String, String> map, Map<String, String> map2) {
        InternalCallback internalCallback = new InternalCallback();
        return (SignUpResult) internalCallback.b(b(str, str2, map, map2, internalCallback));
    }

    private Runnable b(final String str, final String str2, final Map<String, String> map, final Map<String, String> map2, final Callback<SignUpResult> callback) {
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.9
            @Override // java.lang.Runnable
            public void run() {
                CognitoUserAttributes cognitoUserAttributes = new CognitoUserAttributes();
                for (String str3 : map.keySet()) {
                    cognitoUserAttributes.a(str3, (String) map.get(str3));
                }
                AWSMobileClient.this.j.b(str, str2, cognitoUserAttributes, map2, new SignUpHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.9.1
                    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.SignUpHandler
                    public void a(CognitoUser cognitoUser, boolean z2, CognitoUserCodeDeliveryDetails cognitoUserCodeDeliveryDetails) {
                        AWSMobileClient.this.O = cognitoUser;
                        callback.a(new SignUpResult(z2, new UserCodeDeliveryDetails(cognitoUserCodeDeliveryDetails.a(), cognitoUserCodeDeliveryDetails.b(), cognitoUserCodeDeliveryDetails.c())));
                    }

                    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.SignUpHandler
                    public void a(Exception exc) {
                        callback.a(exc);
                    }
                });
            }
        };
    }

    @AnyThread
    public void c(String str, String str2, Callback<SignUpResult> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(h(str, str2, internalCallback));
    }

    @WorkerThread
    public SignUpResult d(String str, String str2) {
        InternalCallback internalCallback = new InternalCallback();
        return (SignUpResult) internalCallback.b(h(str, str2, internalCallback));
    }

    private Runnable h(final String str, final String str2, final Callback<SignUpResult> callback) {
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.10
            @Override // java.lang.Runnable
            public void run() {
                AWSMobileClient.this.j.a(str).b(str2, true, new GenericHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.10.1
                    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.GenericHandler
                    public void a() {
                        callback.a(new SignUpResult(true, null));
                        AWSMobileClient.this.O = null;
                    }

                    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.GenericHandler
                    public void a(Exception exc) {
                        callback.a(exc);
                    }
                });
            }
        };
    }

    @AnyThread
    public void a(String str, Callback<SignUpResult> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(e(str, internalCallback));
    }

    @WorkerThread
    public SignUpResult a(String str) {
        InternalCallback internalCallback = new InternalCallback();
        return (SignUpResult) internalCallback.b(e(str, internalCallback));
    }

    private Runnable e(final String str, final Callback<SignUpResult> callback) {
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.11
            @Override // java.lang.Runnable
            public void run() {
                AWSMobileClient.this.j.a(str).a(new VerificationHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.11.1
                    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.VerificationHandler
                    public void a(CognitoUserCodeDeliveryDetails cognitoUserCodeDeliveryDetails) {
                        callback.a(new SignUpResult(false, new UserCodeDeliveryDetails(cognitoUserCodeDeliveryDetails.a(), cognitoUserCodeDeliveryDetails.b(), cognitoUserCodeDeliveryDetails.c())));
                    }

                    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.VerificationHandler
                    public void a(Exception exc) {
                        callback.a(exc);
                    }
                });
            }
        };
    }

    @AnyThread
    public void b(String str, Callback<ForgotPasswordResult> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(f(str, internalCallback));
    }

    @WorkerThread
    public ForgotPasswordResult b(String str) {
        InternalCallback internalCallback = new InternalCallback();
        return (ForgotPasswordResult) internalCallback.b(f(str, internalCallback));
    }

    private Runnable f(final String str, final Callback<ForgotPasswordResult> callback) {
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.12
            @Override // java.lang.Runnable
            public void run() {
                AWSMobileClient.this.M = new InternalCallback(callback);
                AWSMobileClient.this.j.a(str).a(new ForgotPasswordHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.12.1
                    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.ForgotPasswordHandler
                    public void a() {
                        AWSMobileClient.this.M.a(new ForgotPasswordResult(ForgotPasswordState.DONE));
                    }

                    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.ForgotPasswordHandler
                    public void a(ForgotPasswordContinuation forgotPasswordContinuation) {
                        AWSMobileClient.this.N = forgotPasswordContinuation;
                        ForgotPasswordResult forgotPasswordResult = new ForgotPasswordResult(ForgotPasswordState.CONFIRMATION_CODE);
                        CognitoUserCodeDeliveryDetails cognitoUserCodeDeliveryDetailsC = forgotPasswordContinuation.c();
                        forgotPasswordResult.a(new UserCodeDeliveryDetails(cognitoUserCodeDeliveryDetailsC.a(), cognitoUserCodeDeliveryDetailsC.b(), cognitoUserCodeDeliveryDetailsC.c()));
                        AWSMobileClient.this.M.a(forgotPasswordResult);
                    }

                    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.ForgotPasswordHandler
                    public void a(Exception exc) {
                        AWSMobileClient.this.M.a(exc);
                    }
                });
            }
        };
    }

    @AnyThread
    public void d(String str, String str2, Callback<ForgotPasswordResult> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(i(str, str2, internalCallback));
    }

    @WorkerThread
    public ForgotPasswordResult e(String str, String str2) {
        InternalCallback internalCallback = new InternalCallback();
        return (ForgotPasswordResult) internalCallback.b(i(str, str2, internalCallback));
    }

    private Runnable i(final String str, final String str2, final Callback<ForgotPasswordResult> callback) {
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.13
            @Override // java.lang.Runnable
            public void run() {
                if (AWSMobileClient.this.N != null) {
                    AWSMobileClient.this.N.a(str);
                    AWSMobileClient.this.N.b(str2);
                    AWSMobileClient.this.M = new InternalCallback(callback);
                    AWSMobileClient.this.N.b();
                    return;
                }
                callback.a((Exception) new IllegalStateException("confirmForgotPassword called before initiating forgotPassword"));
            }
        };
    }

    @AnyThread
    public void e(String str, String str2, Callback<Void> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(j(str, str2, internalCallback));
    }

    @WorkerThread
    public void f(String str, String str2) throws Exception {
        InternalCallback internalCallback = new InternalCallback();
        internalCallback.b(j(str, str2, internalCallback));
    }

    private Runnable j(final String str, final String str2, final Callback<Void> callback) {
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.14
            @Override // java.lang.Runnable
            public void run() {
                AWSMobileClient.this.j.c().b(str, str2, new GenericHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.14.1
                    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.GenericHandler
                    public void a() {
                        callback.a((Object) null);
                    }

                    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.GenericHandler
                    public void a(Exception exc) {
                        callback.a(exc);
                    }
                });
            }
        };
    }

    @AnyThread
    public void c(String str, Callback<SignInResult> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(g(str, internalCallback));
    }

    @WorkerThread
    public SignInResult c(String str) {
        InternalCallback internalCallback = new InternalCallback();
        return (SignInResult) internalCallback.b(g(str, internalCallback));
    }

    private Runnable g(final String str, final Callback<SignInResult> callback) {
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.15
            @Override // java.lang.Runnable
            public void run() {
                CognitoIdentityProviderContinuation cognitoIdentityProviderContinuation;
                if (AWSMobileClient.this.L != null) {
                    switch (AnonymousClass27.b[AWSMobileClient.this.L.ordinal()]) {
                        case 1:
                            AWSMobileClient.this.J.a(str);
                            cognitoIdentityProviderContinuation = AWSMobileClient.this.J;
                            AWSMobileClient.this.I = new InternalCallback(callback);
                            break;
                        case 2:
                            ((NewPasswordContinuation) AWSMobileClient.this.K).b(str);
                            cognitoIdentityProviderContinuation = AWSMobileClient.this.K;
                            AWSMobileClient.this.I = new InternalCallback(callback);
                            break;
                        case 3:
                            callback.a((Exception) new IllegalStateException("confirmSignIn called after signIn has succeeded"));
                            return;
                        default:
                            callback.a((Exception) new IllegalStateException("confirmSignIn called on unsupported operation, please file a feature request"));
                            return;
                    }
                    if (cognitoIdentityProviderContinuation != null) {
                        cognitoIdentityProviderContinuation.b();
                        return;
                    }
                    return;
                }
                callback.a((Exception) new IllegalStateException("Cannot call confirmMFA(String, Callback) without initiating sign-in. This call is used for SMS_MFA and NEW_PASSWORD_REQUIREDsign-in state."));
            }
        };
    }

    /* JADX INFO: renamed from: com.amazonaws.mobile.client.AWSMobileClient$27, reason: invalid class name */
    static /* synthetic */ class AnonymousClass27 {
        static final /* synthetic */ int[] b = new int[SignInState.values().length];

        static {
            try {
                b[SignInState.SMS_MFA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[SignInState.NEW_PASSWORD_REQUIRED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[SignInState.DONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[SignInState.CUSTOM_CHALLENGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = new int[UserState.values().length];
            try {
                a[UserState.SIGNED_IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[UserState.SIGNED_OUT_USER_POOLS_TOKENS_INVALID.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[UserState.SIGNED_OUT_FEDERATED_TOKENS_INVALID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[UserState.GUEST.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[UserState.SIGNED_OUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    @AnyThread
    public void a(Map<String, String> map, Callback<SignInResult> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(c(map, internalCallback));
    }

    @WorkerThread
    public SignInResult a(Map<String, String> map) {
        InternalCallback internalCallback = new InternalCallback();
        return (SignInResult) internalCallback.b(c(map, internalCallback));
    }

    private Runnable c(final Map<String, String> map, final Callback<SignInResult> callback) {
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.16
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005a A[LOOP:0: B:13:0x0054->B:15:0x005a, LOOP_END] */
            /* JADX WARN: Removed duplicated region for block: B:18:0x0086  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void run() {
                /*
                    r4 = this;
                    com.amazonaws.mobile.client.AWSMobileClient r0 = com.amazonaws.mobile.client.AWSMobileClient.this
                    com.amazonaws.mobile.client.results.SignInState r0 = com.amazonaws.mobile.client.AWSMobileClient.f(r0)
                    if (r0 != 0) goto L15
                    com.amazonaws.mobile.client.Callback r0 = r2
                    java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
                    java.lang.String r2 = "Cannot call confirmMFA(Map<String, String>, Callback) without initiating sign-in. This call is used for CUSTOM_CHALLENGE sign-in state."
                    r1.<init>(r2)
                    r0.a(r1)
                    return
                L15:
                    int[] r0 = com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass27.b
                    com.amazonaws.mobile.client.AWSMobileClient r1 = com.amazonaws.mobile.client.AWSMobileClient.this
                    com.amazonaws.mobile.client.results.SignInState r1 = com.amazonaws.mobile.client.AWSMobileClient.f(r1)
                    int r1 = r1.ordinal()
                    r0 = r0[r1]
                    switch(r0) {
                        case 1: goto L3e;
                        case 2: goto L3e;
                        case 3: goto L33;
                        case 4: goto L4a;
                        default: goto L26;
                    }
                L26:
                    com.amazonaws.mobile.client.Callback r0 = r2
                    java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
                    java.lang.String r2 = "confirmSignIn called on unsupported operation, please file a feature request"
                    r1.<init>(r2)
                    r0.a(r1)
                    return
                L33:
                    r0 = 0
                    java.lang.String r1 = com.amazonaws.mobile.client.AWSMobileClient.B()
                    java.lang.String r2 = "confirmSignIn called after signIn has succeeded"
                    android.util.Log.d(r1, r2)
                    goto L84
                L3e:
                    com.amazonaws.mobile.client.Callback r0 = r2
                    java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
                    java.lang.String r2 = "Please use confirmSignIn(String, Callback) for SMS_MFA and NEW_PASSWORD_REQUIRED challenges"
                    r1.<init>(r2)
                    r0.a(r1)
                L4a:
                    java.util.Map r0 = r3
                    java.util.Set r0 = r0.keySet()
                    java.util.Iterator r0 = r0.iterator()
                L54:
                    boolean r1 = r0.hasNext()
                    if (r1 == 0) goto L72
                    java.lang.Object r1 = r0.next()
                    java.lang.String r1 = (java.lang.String) r1
                    com.amazonaws.mobile.client.AWSMobileClient r2 = com.amazonaws.mobile.client.AWSMobileClient.this
                    com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation r2 = com.amazonaws.mobile.client.AWSMobileClient.k(r2)
                    java.util.Map r3 = r3
                    java.lang.Object r3 = r3.get(r1)
                    java.lang.String r3 = (java.lang.String) r3
                    r2.a(r1, r3)
                    goto L54
                L72:
                    com.amazonaws.mobile.client.AWSMobileClient r0 = com.amazonaws.mobile.client.AWSMobileClient.this
                    com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation r0 = com.amazonaws.mobile.client.AWSMobileClient.k(r0)
                    com.amazonaws.mobile.client.AWSMobileClient r1 = com.amazonaws.mobile.client.AWSMobileClient.this
                    com.amazonaws.mobile.client.internal.InternalCallback r2 = new com.amazonaws.mobile.client.internal.InternalCallback
                    com.amazonaws.mobile.client.Callback r3 = r2
                    r2.<init>(r3)
                    com.amazonaws.mobile.client.AWSMobileClient.a(r1, r2)
                L84:
                    if (r0 == 0) goto L89
                    r0.b()
                L89:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.mobile.client.AWSMobileClient.AnonymousClass16.run():void");
            }
        };
    }

    @AnyThread
    public void d(Callback<Map<String, String>> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(e(internalCallback));
    }

    @WorkerThread
    public Map<String, String> z() {
        InternalCallback internalCallback = new InternalCallback();
        return (Map) internalCallback.b(e(internalCallback));
    }

    private Runnable e(final Callback<Map<String, String>> callback) {
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.17
            @Override // java.lang.Runnable
            public void run() {
                if (!AWSMobileClient.this.s()) {
                    callback.a(new Exception("Operation requires a signed-in state"));
                } else {
                    AWSMobileClient.this.j.c().b(new GetDetailsHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.17.1
                        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.GetDetailsHandler
                        public void a(CognitoUserDetails cognitoUserDetails) {
                            callback.a(cognitoUserDetails.a().a());
                        }

                        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.GetDetailsHandler
                        public void a(Exception exc) {
                            callback.a(exc);
                        }
                    });
                }
            }
        };
    }

    @AnyThread
    public void b(Map<String, String> map, Callback<List<UserCodeDeliveryDetails>> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(d(map, internalCallback));
    }

    @WorkerThread
    public List<UserCodeDeliveryDetails> b(Map<String, String> map) {
        InternalCallback internalCallback = new InternalCallback();
        return (List) internalCallback.b(d(map, internalCallback));
    }

    private Runnable d(final Map<String, String> map, final Callback<List<UserCodeDeliveryDetails>> callback) {
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.18
            @Override // java.lang.Runnable
            public void run() {
                if (!AWSMobileClient.this.s()) {
                    callback.a(new Exception("Operation requires a signed-in state"));
                    return;
                }
                CognitoUserAttributes cognitoUserAttributes = new CognitoUserAttributes();
                if (map != null) {
                    for (String str : map.keySet()) {
                        cognitoUserAttributes.a(str, (String) map.get(str));
                    }
                }
                AWSMobileClient.this.j.c().b(cognitoUserAttributes, new UpdateAttributesHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.18.1
                    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.UpdateAttributesHandler
                    public void a(List<CognitoUserCodeDeliveryDetails> list) {
                        LinkedList linkedList = new LinkedList();
                        for (CognitoUserCodeDeliveryDetails cognitoUserCodeDeliveryDetails : list) {
                            linkedList.add(new UserCodeDeliveryDetails(cognitoUserCodeDeliveryDetails.a(), cognitoUserCodeDeliveryDetails.b(), cognitoUserCodeDeliveryDetails.c()));
                        }
                        callback.a(linkedList);
                    }

                    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.UpdateAttributesHandler
                    public void a(Exception exc) {
                        callback.a(exc);
                    }
                });
            }
        };
    }

    @AnyThread
    public void d(String str, Callback<UserCodeDeliveryDetails> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(h(str, internalCallback));
    }

    @WorkerThread
    public UserCodeDeliveryDetails d(String str) {
        InternalCallback internalCallback = new InternalCallback();
        return (UserCodeDeliveryDetails) internalCallback.b(h(str, internalCallback));
    }

    private Runnable h(final String str, final Callback<UserCodeDeliveryDetails> callback) {
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.19
            @Override // java.lang.Runnable
            public void run() {
                if (!AWSMobileClient.this.s()) {
                    callback.a(new Exception("Operation requires a signed-in state"));
                } else {
                    AWSMobileClient.this.j.c().a(str, new VerificationHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.19.1
                        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.VerificationHandler
                        public void a(CognitoUserCodeDeliveryDetails cognitoUserCodeDeliveryDetails) {
                            callback.a(new UserCodeDeliveryDetails(cognitoUserCodeDeliveryDetails.a(), cognitoUserCodeDeliveryDetails.b(), cognitoUserCodeDeliveryDetails.c()));
                        }

                        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.VerificationHandler
                        public void a(Exception exc) {
                            callback.a(exc);
                        }
                    });
                }
            }
        };
    }

    @AnyThread
    public void f(String str, String str2, Callback<Void> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(k(str, str2, internalCallback));
    }

    @WorkerThread
    public void g(String str, String str2) throws Exception {
        InternalCallback internalCallback = new InternalCallback();
        internalCallback.b(k(str, str2, internalCallback));
    }

    @AnyThread
    public void g(String str, String str2, Callback<Void> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(k(str, str2, internalCallback));
    }

    @WorkerThread
    public void h(String str, String str2) throws Exception {
        InternalCallback internalCallback = new InternalCallback();
        internalCallback.b(k(str, str2, internalCallback));
    }

    private Runnable k(final String str, final String str2, final Callback<Void> callback) {
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.20
            @Override // java.lang.Runnable
            public void run() {
                if (!AWSMobileClient.this.s()) {
                    callback.a(new Exception("Operation requires a signed-in state"));
                } else {
                    AWSMobileClient.this.j.c().d(str, str2, new GenericHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.20.1
                        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.GenericHandler
                        public void a() {
                            callback.a((Object) null);
                        }

                        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.GenericHandler
                        public void a(Exception exc) {
                            callback.a(exc);
                        }
                    });
                }
            }
        };
    }

    @AnyThread
    public boolean a(Intent intent) {
        if (this.Z == null) {
            return this.t != null && this.t.b(intent.getData());
        }
        this.Z.getTokens(intent.getData());
        return true;
    }

    @AnyThread
    public void a(Activity activity, Callback<UserStateDetails> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(b(activity, SignInUIOptions.f().a(), internalCallback));
    }

    @WorkerThread
    public UserStateDetails a(Activity activity) {
        InternalCallback internalCallback = new InternalCallback();
        return (UserStateDetails) internalCallback.b(b(activity, SignInUIOptions.f().a(), internalCallback));
    }

    @AnyThread
    public void a(Activity activity, SignInUIOptions signInUIOptions, Callback<UserStateDetails> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.a(b(activity, signInUIOptions, internalCallback));
    }

    @WorkerThread
    public UserStateDetails a(Activity activity, SignInUIOptions signInUIOptions) {
        InternalCallback internalCallback = new InternalCallback();
        return (UserStateDetails) internalCallback.b(b(activity, signInUIOptions, internalCallback));
    }

    private Runnable b(Activity activity, SignInUIOptions signInUIOptions, final Callback<UserStateDetails> callback) {
        if (signInUIOptions.e() != null) {
            JSONObject jSONObjectJ = j();
            if (jSONObjectJ == null) {
                return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.21
                    @Override // java.lang.Runnable
                    public void run() {
                        callback.a(new Exception("showSignIn called with HostedUI options in awsconfiguration.json"));
                    }
                };
            }
            if (jSONObjectJ.optString("TokenURI", null) != null) {
                return c(activity, signInUIOptions, callback);
            }
            return d(activity, signInUIOptions, callback);
        }
        return e(activity, signInUIOptions, callback);
    }

    /* JADX INFO: renamed from: com.amazonaws.mobile.client.AWSMobileClient$22, reason: invalid class name */
    class AnonymousClass22 implements Runnable {
        final /* synthetic */ SignInUIOptions a;
        final /* synthetic */ Callback b;

        AnonymousClass22(SignInUIOptions signInUIOptions, Callback callback) {
            this.a = signInUIOptions;
            this.b = callback;
        }

        @Override // java.lang.Runnable
        public void run() {
            HostedUIOptions hostedUIOptionsE = this.a.e();
            JSONObject jSONObjectI = AWSMobileClient.this.i();
            if (jSONObjectI == null) {
                this.b.a(new Exception("Could not create OAuth configuration object"));
            }
            if (hostedUIOptionsE.d() != null) {
                AWSMobileClient.this.p.a(AWSMobileClient.h, hostedUIOptionsE.d().booleanValue() ? "true" : SchemaSymbols.ATTVAL_FALSE);
            } else {
                AWSMobileClient.this.p.a(AWSMobileClient.h, "true");
            }
            AWSMobileClient.this.p.a(AWSMobileClient.f, SignInMode.OAUTH2.toString());
            if (AWSMobileClient.this.v() && hostedUIOptionsE.e() == null) {
                throw new IllegalArgumentException("OAuth flow requires a federation provider name if federation is enabled.");
            }
            if (hostedUIOptionsE.g() != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    for (Map.Entry<String, String> entry : hostedUIOptionsE.g().entrySet()) {
                        jSONObject.put(entry.getKey(), entry.getValue());
                    }
                    jSONObjectI.put("SignOutQueryParameters", jSONObject);
                } catch (JSONException e) {
                    this.b.a(new Exception("Failed to construct sign-out query parameters", e));
                    return;
                }
            }
            if (hostedUIOptionsE.h() != null) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry<String, String> entry2 : hostedUIOptionsE.h().entrySet()) {
                        jSONObject2.put(entry2.getKey(), entry2.getValue());
                    }
                    jSONObjectI.put("TokenQueryParameters", jSONObject2);
                } catch (JSONException e2) {
                    this.b.a(new Exception("Failed to construct token query parameters", e2));
                    return;
                }
            }
            AWSMobileClient.this.p.a(AWSMobileClient.g, jSONObjectI.toString());
            try {
                Uri.Builder builderBuildUpon = Uri.parse(jSONObjectI.getString("SignInURI")).buildUpon();
                if (hostedUIOptionsE.f() != null) {
                    for (Map.Entry<String, String> entry3 : hostedUIOptionsE.f().entrySet()) {
                        builderBuildUpon.appendQueryParameter(entry3.getKey(), entry3.getValue());
                    }
                }
                builderBuildUpon.appendQueryParameter(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, jSONObjectI.getString("SignInRedirectURI"));
                builderBuildUpon.appendQueryParameter(OAuth2Constants.a, jSONObjectI.getJSONArray("Scopes").join(" "));
                builderBuildUpon.appendQueryParameter("client_id", jSONObjectI.getString("AppClientId"));
                HashMap map = new HashMap();
                try {
                    Uri.Builder builderBuildUpon2 = Uri.parse(jSONObjectI.getString("TokenURI")).buildUpon();
                    if (hostedUIOptionsE.f() != null) {
                        for (Map.Entry<String, String> entry4 : hostedUIOptionsE.h().entrySet()) {
                            builderBuildUpon2.appendQueryParameter(entry4.getKey(), entry4.getValue());
                        }
                    }
                    map.put("client_id", jSONObjectI.getString("AppClientId"));
                    map.put(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, jSONObjectI.getString("SignInRedirectURI"));
                    AWSMobileClient.this.t.b(builderBuildUpon.build(), new AnonymousClass1(builderBuildUpon2.build(), map, hostedUIOptionsE));
                } catch (Exception e3) {
                    throw new RuntimeException("Failed to construct tokens url for OAuth", e3);
                }
            } catch (Exception e4) {
                throw new RuntimeException("Failed to construct authorization url for OAuth", e4);
            }
        }

        /* JADX INFO: renamed from: com.amazonaws.mobile.client.AWSMobileClient$22$1, reason: invalid class name */
        class AnonymousClass1 implements Callback<AuthorizeResponse> {
            final /* synthetic */ Uri a;
            final /* synthetic */ Map b;
            final /* synthetic */ HostedUIOptions c;

            AnonymousClass1(Uri uri, Map map, HostedUIOptions hostedUIOptions) {
                this.a = uri;
                this.b = map;
                this.c = hostedUIOptions;
            }

            @Override // com.amazonaws.mobile.client.Callback
            public void a(AuthorizeResponse authorizeResponse) {
                Log.i(AWSMobileClient.w, "onResult: OAuth2 callback occurred, exchanging code for token");
                AWSMobileClient.this.t.a(this.a, new HashMap(), this.b, authorizeResponse.b(), new Callback<OAuth2Tokens>() { // from class: com.amazonaws.mobile.client.AWSMobileClient.22.1.1
                    @Override // com.amazonaws.mobile.client.Callback
                    public void a(OAuth2Tokens oAuth2Tokens) {
                        if (AWSMobileClient.this.v()) {
                            AWSMobileClient.this.b(AnonymousClass1.this.c.e(), oAuth2Tokens.b(), new Callback<UserStateDetails>() { // from class: com.amazonaws.mobile.client.AWSMobileClient.22.1.1.1
                                @Override // com.amazonaws.mobile.client.Callback
                                public void a(UserStateDetails userStateDetails) {
                                    UserStateDetails userStateDetailsA = AWSMobileClient.this.a(false);
                                    AnonymousClass22.this.b.a(userStateDetailsA);
                                    AWSMobileClient.this.a(userStateDetailsA);
                                }

                                @Override // com.amazonaws.mobile.client.Callback
                                public void a(Exception exc) {
                                    UserStateDetails userStateDetailsA = AWSMobileClient.this.a(false);
                                    AnonymousClass22.this.b.a(userStateDetailsA);
                                    AWSMobileClient.this.a(userStateDetailsA);
                                }
                            });
                            return;
                        }
                        UserStateDetails userStateDetailsA = AWSMobileClient.this.a(false);
                        AnonymousClass22.this.b.a(userStateDetailsA);
                        AWSMobileClient.this.a(userStateDetailsA);
                    }

                    @Override // com.amazonaws.mobile.client.Callback
                    public void a(Exception exc) {
                        AnonymousClass22.this.b.a(exc);
                    }
                });
            }

            @Override // com.amazonaws.mobile.client.Callback
            public void a(Exception exc) {
                AnonymousClass22.this.b.a(exc);
            }
        }
    }

    private Runnable c(Activity activity, SignInUIOptions signInUIOptions, Callback<UserStateDetails> callback) {
        return new AnonymousClass22(signInUIOptions, callback);
    }

    /* JADX INFO: renamed from: com.amazonaws.mobile.client.AWSMobileClient$23, reason: invalid class name */
    class AnonymousClass23 implements Runnable {
        final /* synthetic */ SignInUIOptions a;
        final /* synthetic */ Callback b;

        AnonymousClass23(SignInUIOptions signInUIOptions, Callback callback) {
            this.a = signInUIOptions;
            this.b = callback;
        }

        @Override // java.lang.Runnable
        public void run() {
            JSONObject jSONObject;
            HostedUIOptions hostedUIOptionsE = this.a.e();
            HashSet hashSet = null;
            try {
                jSONObject = new JSONObject(AWSMobileClient.this.i().toString());
            } catch (JSONException e) {
                this.b.a(new Exception("Could not create OAuth configuration object", e));
                jSONObject = null;
            }
            if (hostedUIOptionsE.d() != null) {
                AWSMobileClient.this.p.a(AWSMobileClient.h, hostedUIOptionsE.d().booleanValue() ? "true" : SchemaSymbols.ATTVAL_FALSE);
            } else {
                AWSMobileClient.this.p.a(AWSMobileClient.h, "true");
            }
            if (hostedUIOptionsE.g() != null) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry<String, String> entry : hostedUIOptionsE.g().entrySet()) {
                        jSONObject2.put(entry.getKey(), entry.getValue());
                    }
                    jSONObject.put("SignOutQueryParameters", jSONObject2);
                } catch (JSONException e2) {
                    this.b.a(new Exception("Failed to construct sign-out query parameters", e2));
                    return;
                }
            }
            if (hostedUIOptionsE.h() != null) {
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    for (Map.Entry<String, String> entry2 : hostedUIOptionsE.h().entrySet()) {
                        jSONObject3.put(entry2.getKey(), entry2.getValue());
                    }
                    jSONObject.put("TokenQueryParameters", jSONObject3);
                } catch (JSONException e3) {
                    this.b.a(new Exception("Failed to construct token query parameters", e3));
                    return;
                }
            }
            AWSMobileClient.this.p.a(AWSMobileClient.g, jSONObject.toString());
            if (hostedUIOptionsE.a() != null) {
                hashSet = new HashSet();
                Collections.addAll(hashSet, hostedUIOptionsE.a());
            }
            String strB = hostedUIOptionsE.b();
            String strC = hostedUIOptionsE.c();
            AWSMobileClient.this.p.a(AWSMobileClient.f, SignInMode.HOSTED_UI.toString());
            try {
                Auth.Builder builderA = AWSMobileClient.this.a(jSONObject);
                builderA.setPersistenceEnabled(AWSMobileClient.this.v).setAuthHandler(new AuthHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.23.1
                    boolean a = false;

                    public void a(AuthUserSession authUserSession) {
                        Log.d(AWSMobileClient.w, "onSuccess: HostedUI signed-in");
                        this.a = true;
                        if (AWSMobileClient.this.v()) {
                            AWSMobileClient.this.b(AWSMobileClient.this.k, authUserSession.getIdToken().getJWTToken(), new Callback<UserStateDetails>() { // from class: com.amazonaws.mobile.client.AWSMobileClient.23.1.1
                                @Override // com.amazonaws.mobile.client.Callback
                                public void a(UserStateDetails userStateDetails) {
                                    Log.d(AWSMobileClient.w, "onResult: Federation from the Hosted UI succeeded");
                                }

                                @Override // com.amazonaws.mobile.client.Callback
                                public void a(Exception exc) {
                                    Log.e(AWSMobileClient.w, "onError: Federation from the Hosted UI failed", exc);
                                }
                            });
                        }
                        new Thread(new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.23.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                UserStateDetails userStateDetailsA = AWSMobileClient.this.a(false);
                                AnonymousClass23.this.b.a(userStateDetailsA);
                                AWSMobileClient.this.a(userStateDetailsA);
                            }
                        }).start();
                    }

                    public void a() {
                        Log.d(AWSMobileClient.w, "onSignout: HostedUI signed-out");
                    }

                    public void a(final Exception exc) {
                        if (this.a) {
                            Log.d(AWSMobileClient.w, "onFailure: Ignoring failure because HostedUI has signaled success at least once.");
                        } else {
                            new Thread(new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.23.1.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass23.this.b.a(exc);
                                }
                            }).start();
                        }
                    }
                });
                if (hashSet != null) {
                    builderA.setScopes(hashSet);
                }
                if (strB != null) {
                    builderA.setIdentityProvider(strB);
                }
                if (strC != null) {
                    builderA.setIdpIdentifier(strC);
                }
                AWSMobileClient.this.Z = builderA.build();
                AWSMobileClient.this.Z.getSession();
            } catch (JSONException e4) {
                throw new RuntimeException("Failed to construct HostedUI from awsconfiguration.json", e4);
            }
        }
    }

    private Runnable d(Activity activity, SignInUIOptions signInUIOptions, Callback<UserStateDetails> callback) {
        return new AnonymousClass23(signInUIOptions, callback);
    }

    private Runnable e(final Activity activity, final SignInUIOptions signInUIOptions, final Callback<UserStateDetails> callback) {
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.24
            @Override // java.lang.Runnable
            public void run() {
                synchronized (AWSMobileClient.this.U) {
                    if (UserState.SIGNED_IN.equals(AWSMobileClient.this.a(false).a())) {
                        callback.a((Exception) new RuntimeException("Called showSignIn while user is already signed-in"));
                        return;
                    }
                    AuthUIConfiguration.Builder builderIsBackgroundColorFullScreen = new AuthUIConfiguration.Builder().canCancel(signInUIOptions.c()).isBackgroundColorFullScreen(false);
                    if (signInUIOptions.a() != null) {
                        builderIsBackgroundColorFullScreen.logoResId(signInUIOptions.a().intValue());
                    }
                    if (signInUIOptions.b() != null) {
                        builderIsBackgroundColorFullScreen.backgroundColor(signInUIOptions.b().intValue());
                    }
                    IdentityManager.a();
                    if (AWSMobileClient.this.e(AWSMobileClient.y)) {
                        builderIsBackgroundColorFullScreen.userPools(true);
                    }
                    if (AWSMobileClient.this.e(AWSMobileClient.z)) {
                        builderIsBackgroundColorFullScreen.signInButton(FacebookButton.class);
                    }
                    if (AWSMobileClient.this.e(AWSMobileClient.A)) {
                        builderIsBackgroundColorFullScreen.signInButton(GoogleButton.class);
                    }
                    AWSMobileClient.this.a(AWSMobileClient.this.l, SignInUI.class).login(activity, signInUIOptions.d() == null ? activity.getClass() : signInUIOptions.d()).authUIConfiguration(builderIsBackgroundColorFullScreen.build()).enableFederation(false).execute();
                    AWSMobileClient.this.V = new CountDownLatch(1);
                    try {
                        AWSMobileClient.this.V.await();
                        callback.a(AWSMobileClient.this.a(false));
                        Log.d(AWSMobileClient.w, "run: showSignIn completed");
                    } catch (InterruptedException e2) {
                        callback.a((Exception) e2);
                    }
                }
            }
        };
    }

    @Deprecated
    public InitializeBuilder b(Context context) {
        this.S = new AWSStartupHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.25
            @Override // com.amazonaws.mobile.client.AWSStartupHandler
            public void a(AWSStartupResult aWSStartupResult) {
                Log.d(AWSMobileClient.w, "AWSMobileClient Initialize succeeded.");
                Log.i(AWSMobileClient.w, "Welcome to AWS! You are connected successfully.");
            }
        };
        return a(context, this.S);
    }

    @Deprecated
    public InitializeBuilder a(Context context, final AWSStartupHandler aWSStartupHandler) {
        this.E = new AWSConfiguration(context.getApplicationContext());
        this.Q = null;
        this.R = new StartupAuthResultHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.26
            @Override // com.amazonaws.mobile.auth.core.StartupAuthResultHandler
            public void a(StartupAuthResult startupAuthResult) {
                Log.i(AWSMobileClient.w, "Welcome to AWS! You are connected successfully.");
                if (startupAuthResult.c()) {
                    Log.i(AWSMobileClient.w, "Identity ID retrieved.");
                }
                aWSStartupHandler.a(new AWSStartupResult(IdentityManager.a()));
            }
        };
        this.S = aWSStartupHandler;
        this.T = true;
        return new InitializeBuilder(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(InitializeBuilder initializeBuilder) {
        if (initializeBuilder.a() != null) {
            this.E = initializeBuilder.a();
        }
        if (initializeBuilder.b() != null) {
            this.Q = initializeBuilder.b();
        }
        try {
            a(initializeBuilder.c(), this.R);
        } catch (Exception unused) {
            Log.e(w, "Error in initializing the AWSMobileClient. Check if AWS Cloud Config `awsconfiguration.json` is present in the application.");
        }
    }

    public AWSConfigurable a(Context context, Class<? extends AWSConfigurable> cls) {
        Exception e2;
        AWSConfigurable aWSConfigurableA;
        Log.d(w, "Retrieving the client instance for class: " + cls);
        AWSConfigurable aWSConfigurable = this.D.get(cls);
        if (aWSConfigurable != null) {
            return aWSConfigurable;
        }
        try {
            aWSConfigurableA = cls.newInstance().a(context.getApplicationContext(), this.E);
            try {
                this.D.put(cls, aWSConfigurableA);
                Log.d(w, "Created the new client: " + aWSConfigurableA.toString());
                return aWSConfigurableA;
            } catch (Exception e3) {
                e2 = e3;
                Log.e(w, "Error occurred in creating and initializing client. Check the context and the clientClass passed in: " + cls, e2);
                return aWSConfigurableA;
            }
        } catch (Exception e4) {
            e2 = e4;
            aWSConfigurableA = aWSConfigurable;
        }
    }

    @Deprecated
    public AWSCredentialsProvider A() {
        if (!g()) {
            return this;
        }
        if (this.P != null) {
            return this.P;
        }
        return IdentityManager.a().e();
    }

    @Deprecated
    public void a(AWSCredentialsProvider aWSCredentialsProvider) {
        this.P = aWSCredentialsProvider;
    }

    private void a(Context context, StartupAuthResultHandler startupAuthResultHandler) {
        try {
            Log.d(w, "Fetching the Cognito Identity.");
            IdentityManager.a(new IdentityManager(context, this.E));
            if (this.Q == null) {
                E();
            } else {
                D();
            }
            a((Activity) context, startupAuthResultHandler);
        } catch (Exception e2) {
            Log.e(w, "Error occurred in fetching the Cognito Identity and resuming the auth session", e2);
        }
    }

    private void D() {
        Log.d(w, "Using the SignInProviderConfig supplied by the user.");
        IdentityManager identityManagerA = IdentityManager.a();
        for (SignInProviderConfig signInProviderConfig : this.Q) {
            identityManagerA.a(signInProviderConfig.a());
            if (signInProviderConfig.b() != null) {
                if (FacebookSignInProvider.class.isInstance(signInProviderConfig.a())) {
                    FacebookSignInProvider.setPermissions(signInProviderConfig.b());
                }
                if (GoogleSignInProvider.class.isInstance(signInProviderConfig.a())) {
                    GoogleSignInProvider.setPermissions(signInProviderConfig.b());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        Log.d(w, "Using the SignInProviderConfig from `awsconfiguration.json`.");
        IdentityManager identityManagerA = IdentityManager.a();
        if (e(y)) {
            identityManagerA.a(CognitoUserPoolsSignInProvider.class);
        }
        if (e(z)) {
            identityManagerA.a(FacebookSignInProvider.class);
        }
        if (e(A)) {
            identityManagerA.a(GoogleSignInProvider.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e(String str) {
        try {
            JSONObject jSONObjectA = this.E.a(str);
            if (!str.equals(A)) {
                return jSONObjectA != null;
            }
            if (jSONObjectA != null) {
                return jSONObjectA.getString(B) != null;
            }
            return false;
        } catch (Exception unused) {
            Log.d(w, str + " not found in `awsconfiguration.json`");
            return false;
        }
    }

    private void a(Activity activity, StartupAuthResultHandler startupAuthResultHandler) {
        IdentityManager.a().a(activity, startupAuthResultHandler);
    }

    @Deprecated
    public class InitializeBuilder {
        private Context b;
        private AWSConfiguration c;
        private SignInProviderConfig[] d;

        @Deprecated
        public InitializeBuilder() {
            this.b = null;
            this.c = null;
            this.d = null;
        }

        @Deprecated
        public InitializeBuilder(Context context) {
            this.b = context;
            this.c = null;
            this.d = null;
        }

        @Deprecated
        public InitializeBuilder a(AWSConfiguration aWSConfiguration) {
            this.c = aWSConfiguration;
            return this;
        }

        @Deprecated
        public InitializeBuilder a(SignInProviderConfig... signInProviderConfigArr) {
            this.d = signInProviderConfigArr;
            return this;
        }

        @Deprecated
        public AWSConfiguration a() {
            return this.c;
        }

        @Deprecated
        public SignInProviderConfig[] b() {
            return this.d;
        }

        @Deprecated
        public Context c() {
            return this.b;
        }

        @Deprecated
        public void d() {
            AWSMobileClient.this.a(this);
        }
    }

    @Deprecated
    public class SignInProviderConfig {

        @Deprecated
        private Class<? extends SignInProvider> b;

        @Deprecated
        private String[] c;

        @Deprecated
        public SignInProviderConfig(Class<? extends SignInProvider> cls, String... strArr) {
            this.b = cls;
            this.c = strArr;
        }

        @Deprecated
        public Class<? extends SignInProvider> a() {
            return this.b;
        }

        @Deprecated
        public String[] b() {
            return this.c;
        }
    }
}
