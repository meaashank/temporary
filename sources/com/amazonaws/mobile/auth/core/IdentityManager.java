package com.amazonaws.mobile.auth.core;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.SDKGlobalConfiguration;
import com.amazonaws.auth.AWSBasicCognitoIdentityProvider;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.CognitoCachingCredentialsProvider;
import com.amazonaws.internal.keyvaluestore.AWSKeyValueStore;
import com.amazonaws.mobile.auth.core.internal.util.ThreadUtils;
import com.amazonaws.mobile.auth.core.signin.AuthException;
import com.amazonaws.mobile.auth.core.signin.CognitoAuthException;
import com.amazonaws.mobile.auth.core.signin.ProviderAuthException;
import com.amazonaws.mobile.auth.core.signin.SignInManager;
import com.amazonaws.mobile.auth.core.signin.SignInProvider;
import com.amazonaws.mobile.auth.core.signin.SignInProviderResultHandler;
import com.amazonaws.mobile.config.AWSConfiguration;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.model.InstructionFileId;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class IdentityManager {
    private static final String b = "IdentityManager";
    private static final String c = "awsconfiguration.json";
    private static IdentityManager n = null;
    private static final String o = "com.amazonaws.android.auth";
    private static final String p = "expirationDate";
    boolean a;
    private final AWSCredentialsProviderHolder d;
    private final Context e;
    private AWSConfiguration f;
    private final ClientConfiguration g;
    private final ExecutorService h;
    private final CountDownLatch i;
    private final List<Class<? extends SignInProvider>> j;
    private volatile IdentityProvider k;
    private SignInProviderResultAdapter l;
    private final HashSet<SignInStateChangeListener> m;
    private AWSKeyValueStore q;
    private boolean r;

    private class AWSCredentialsProviderHolder implements AWSCredentialsProvider {
        private volatile CognitoCachingCredentialsProvider b;

        private AWSCredentialsProviderHolder() {
        }

        /* synthetic */ AWSCredentialsProviderHolder(IdentityManager identityManager, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.amazonaws.auth.AWSCredentialsProvider
        public AWSCredentials a() {
            return this.b.a();
        }

        @Override // com.amazonaws.auth.AWSCredentialsProvider
        public void b() {
            this.b.b();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public CognitoCachingCredentialsProvider c() {
            return this.b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(CognitoCachingCredentialsProvider cognitoCachingCredentialsProvider) {
            this.b = cognitoCachingCredentialsProvider;
        }
    }

    private class AWSRefreshingCognitoIdentityProvider extends AWSBasicCognitoIdentityProvider {
        private final String g;

        public AWSRefreshingCognitoIdentityProvider(String str, String str2, ClientConfiguration clientConfiguration, Regions regions) {
            super(str, str2, clientConfiguration);
            this.g = AWSRefreshingCognitoIdentityProvider.class.getSimpleName();
            this.a.a(Region.a(regions));
        }

        @Override // com.amazonaws.auth.AWSBasicCognitoIdentityProvider, com.amazonaws.auth.AWSAbstractCognitoIdentityProvider, com.amazonaws.auth.AWSIdentityProvider
        public String j() {
            if (IdentityManager.this.k != null) {
                Log.d(this.g, "Storing the Refresh token in the loginsMap.");
                f().put(IdentityManager.this.k.b(), IdentityManager.this.k.e());
            }
            return super.j();
        }
    }

    public IdentityManager(Context context) {
        this.h = Executors.newFixedThreadPool(4);
        this.i = new CountDownLatch(1);
        this.j = new LinkedList();
        this.k = null;
        this.m = new HashSet<>();
        this.r = true;
        this.a = true;
        this.e = context.getApplicationContext();
        this.f = null;
        this.g = null;
        this.d = null;
        this.q = new AWSKeyValueStore(this.e, o, this.r);
    }

    public IdentityManager(Context context, AWSConfiguration aWSConfiguration) {
        this.h = Executors.newFixedThreadPool(4);
        this.i = new CountDownLatch(1);
        this.j = new LinkedList();
        this.k = null;
        this.m = new HashSet<>();
        this.r = true;
        this.a = true;
        this.e = context.getApplicationContext();
        this.f = aWSConfiguration;
        this.g = new ClientConfiguration().b(aWSConfiguration.a());
        this.d = new AWSCredentialsProviderHolder(this, null);
        a(this.e, this.g);
        this.q = new AWSKeyValueStore(this.e, o, this.r);
    }

    public IdentityManager(Context context, AWSConfiguration aWSConfiguration, ClientConfiguration clientConfiguration) {
        this.h = Executors.newFixedThreadPool(4);
        this.i = new CountDownLatch(1);
        this.j = new LinkedList();
        AnonymousClass1 anonymousClass1 = null;
        this.k = null;
        this.m = new HashSet<>();
        this.r = true;
        this.a = true;
        this.e = context.getApplicationContext();
        this.f = aWSConfiguration;
        this.g = clientConfiguration;
        String strA = this.f.a();
        String strC = this.g.c();
        strC = strC == null ? "" : strC;
        if (strA != null && strA != strC) {
            this.g.a(strC.trim() + " " + strA);
        }
        this.d = new AWSCredentialsProviderHolder(this, anonymousClass1);
        a(this.e, this.g);
        this.q = new AWSKeyValueStore(this.e, o, this.r);
    }

    public IdentityManager(Context context, CognitoCachingCredentialsProvider cognitoCachingCredentialsProvider, ClientConfiguration clientConfiguration) {
        this.h = Executors.newFixedThreadPool(4);
        this.i = new CountDownLatch(1);
        this.j = new LinkedList();
        this.k = null;
        this.m = new HashSet<>();
        this.r = true;
        this.a = true;
        this.e = context.getApplicationContext();
        this.g = clientConfiguration;
        this.d = new AWSCredentialsProviderHolder(this, null);
        this.d.a(cognitoCachingCredentialsProvider);
        this.q = new AWSKeyValueStore(this.e, o, this.r);
    }

    public void a(boolean z) {
        this.r = z;
        this.q.a(this.r);
    }

    public void b(boolean z) {
        this.a = z;
    }

    public static IdentityManager a() {
        return n;
    }

    public static void a(IdentityManager identityManager) {
        n = null;
        n = identityManager;
    }

    public AWSConfiguration b() {
        return this.f;
    }

    public void a(AWSConfiguration aWSConfiguration) {
        this.f = aWSConfiguration;
    }

    public boolean c() {
        if (this.a) {
            Date dateK = this.d.c().k();
            if (dateK == null) {
                Log.d(b, "Credentials are EXPIRED.");
                return true;
            }
            boolean z = dateK.getTime() - (System.currentTimeMillis() - ((long) (SDKGlobalConfiguration.a() * 1000))) < 0;
            String str = b;
            StringBuilder sb = new StringBuilder();
            sb.append("Credentials are ");
            sb.append(z ? "EXPIRED." : "OK");
            Log.d(str, sb.toString());
            return z;
        }
        throw new IllegalStateException("Federation is not enabled and does not support credentials");
    }

    public AWSCredentialsProvider d() {
        return this.d;
    }

    public CognitoCachingCredentialsProvider e() {
        return this.d.c();
    }

    public String f() {
        if (this.a) {
            return this.d.c().g();
        }
        throw new IllegalStateException("Federation is not enabled and does not support user id");
    }

    public void a(IdentityHandler identityHandler) {
        if (!this.a) {
            throw new IllegalStateException("Federation is not enabled and does not support user id");
        }
        this.h.submit(new AnonymousClass1(identityHandler));
    }

    /* JADX INFO: renamed from: com.amazonaws.mobile.auth.core.IdentityManager$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        Exception a = null;
        final /* synthetic */ IdentityHandler b;

        AnonymousClass1(IdentityHandler identityHandler) {
            this.b = identityHandler;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            final String str = 0;
            str = 0;
            str = 0;
            str = 0;
            try {
                try {
                    final String strC = IdentityManager.this.d.c().c();
                    Log.d(IdentityManager.b, "Got Amazon Cognito Federated Identity ID: " + strC);
                    IdentityHandler identityHandler = this.b;
                    str = identityHandler;
                    if (identityHandler != null) {
                        Runnable runnable = new Runnable() { // from class: com.amazonaws.mobile.auth.core.IdentityManager.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (AnonymousClass1.this.a != null) {
                                    AnonymousClass1.this.b.a(AnonymousClass1.this.a);
                                } else {
                                    AnonymousClass1.this.b.a(strC);
                                }
                            }
                        };
                        ThreadUtils.a(runnable);
                        str = runnable;
                    }
                } catch (Exception e) {
                    this.a = e;
                    Log.e(IdentityManager.b, e.getMessage(), e);
                    Log.d(IdentityManager.b, "Got Amazon Cognito Federated Identity ID: " + ((String) null));
                    if (this.b != null) {
                        ThreadUtils.a(new Runnable() { // from class: com.amazonaws.mobile.auth.core.IdentityManager.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (AnonymousClass1.this.a != null) {
                                    AnonymousClass1.this.b.a(AnonymousClass1.this.a);
                                } else {
                                    AnonymousClass1.this.b.a(str);
                                }
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                Log.d(IdentityManager.b, "Got Amazon Cognito Federated Identity ID: " + str);
                if (this.b != null) {
                    ThreadUtils.a(new Runnable() { // from class: com.amazonaws.mobile.auth.core.IdentityManager.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (AnonymousClass1.this.a != null) {
                                AnonymousClass1.this.b.a(AnonymousClass1.this.a);
                            } else {
                                AnonymousClass1.this.b.a(str);
                            }
                        }
                    });
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public class SignInProviderResultAdapter implements SignInProviderResultHandler {
        private final SignInProviderResultHandler b;

        /* synthetic */ SignInProviderResultAdapter(IdentityManager identityManager, SignInProviderResultHandler signInProviderResultHandler, AnonymousClass1 anonymousClass1) {
            this(signInProviderResultHandler);
        }

        private SignInProviderResultAdapter(SignInProviderResultHandler signInProviderResultHandler) {
            this.b = signInProviderResultHandler;
        }

        @Override // com.amazonaws.mobile.auth.core.signin.SignInProviderResultHandler
        public void a(IdentityProvider identityProvider) {
            Log.d(IdentityManager.b, String.format("SignInProviderResultAdapter.onSuccess(): %s provider sign-in succeeded.", identityProvider.a()));
            IdentityManager.this.a(identityProvider);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            Log.d(IdentityManager.b, "SignInProviderResultAdapter.onCognitoSuccess()");
            this.b.a(IdentityManager.this.k);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Exception exc) {
            Log.d(IdentityManager.b, "SignInProviderResultAdapter.onCognitoError()", exc);
            IdentityProvider identityProvider = IdentityManager.this.k;
            IdentityManager.this.h();
            this.b.a(identityProvider, new CognitoAuthException(identityProvider, exc));
        }

        @Override // com.amazonaws.mobile.auth.core.signin.SignInProviderResultHandler
        public void b(IdentityProvider identityProvider) {
            Log.d(IdentityManager.b, String.format("SignInProviderResultAdapter.onCancel(): %s provider sign-in canceled.", identityProvider.a()));
            this.b.b(identityProvider);
        }

        @Override // com.amazonaws.mobile.auth.core.signin.SignInProviderResultHandler
        public void a(IdentityProvider identityProvider, Exception exc) {
            Log.e(IdentityManager.b, String.format("SignInProviderResultAdapter.onError(): %s provider error. %s", identityProvider.a(), exc.getMessage()), exc);
            this.b.a(identityProvider, new ProviderAuthException(identityProvider, exc));
        }
    }

    public void a(SignInStateChangeListener signInStateChangeListener) {
        synchronized (this.m) {
            this.m.add(signInStateChangeListener);
        }
    }

    public void b(SignInStateChangeListener signInStateChangeListener) {
        synchronized (this.m) {
            this.m.remove(signInStateChangeListener);
        }
    }

    public SignInProviderResultAdapter g() {
        return this.l;
    }

    public void h() {
        Log.d(b, "Signing out...");
        if (this.k != null) {
            this.h.submit(new Runnable() { // from class: com.amazonaws.mobile.auth.core.IdentityManager.2
                @Override // java.lang.Runnable
                public void run() {
                    IdentityManager.this.k.f();
                    if (IdentityManager.this.a) {
                        IdentityManager.this.d.c().e();
                    }
                    IdentityManager.this.k = null;
                    synchronized (IdentityManager.this.m) {
                        Iterator it = IdentityManager.this.m.iterator();
                        while (it.hasNext()) {
                            ((SignInStateChangeListener) it.next()).b();
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, String> map) {
        CognitoCachingCredentialsProvider cognitoCachingCredentialsProviderC = this.d.c();
        if (this.a) {
            cognitoCachingCredentialsProviderC.e();
            cognitoCachingCredentialsProviderC.b(map);
            Log.d(b, "refresh credentials");
            cognitoCachingCredentialsProviderC.b();
            this.q.a(cognitoCachingCredentialsProviderC.l() + InstructionFileId.c + p, String.valueOf(System.currentTimeMillis() + 510000));
        }
    }

    public void a(SignInProviderResultHandler signInProviderResultHandler) {
        if (signInProviderResultHandler == null) {
            throw new IllegalArgumentException("signInProviderResultHandler cannot be null.");
        }
        this.l = new SignInProviderResultAdapter(this, signInProviderResultHandler, null);
    }

    public void a(IdentityProvider identityProvider) {
        Log.d(b, "federate with provider: Populate loginsMap with token.");
        final HashMap map = new HashMap();
        map.put(identityProvider.b(), identityProvider.d());
        this.k = identityProvider;
        this.h.submit(new Runnable() { // from class: com.amazonaws.mobile.auth.core.IdentityManager.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (IdentityManager.this.a) {
                        IdentityManager.this.a((Map<String, String>) map);
                    }
                    IdentityManager.this.l.a();
                    synchronized (IdentityManager.this.m) {
                        Iterator it = IdentityManager.this.m.iterator();
                        while (it.hasNext()) {
                            ((SignInStateChangeListener) it.next()).a();
                        }
                    }
                } catch (Exception e) {
                    IdentityManager.this.l.a(e);
                }
            }
        });
    }

    public IdentityProvider i() {
        return this.k;
    }

    public void a(Class<? extends SignInProvider> cls) {
        this.j.add(cls);
    }

    public Collection<Class<? extends SignInProvider>> j() {
        return this.j;
    }

    public boolean k() {
        Map<String, String> mapP = this.d.c().p();
        return (mapP == null || mapP.size() == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity, final StartupAuthResultHandler startupAuthResultHandler, final AuthException authException) {
        a(activity, new Runnable() { // from class: com.amazonaws.mobile.auth.core.IdentityManager.4
            @Override // java.lang.Runnable
            public void run() {
                startupAuthResultHandler.a(new StartupAuthResult(IdentityManager.this, new StartupAuthErrorDetails(authException, null)));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final Activity activity, final Runnable runnable) {
        this.h.submit(new Runnable() { // from class: com.amazonaws.mobile.auth.core.IdentityManager.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    IdentityManager.this.i.await();
                } catch (InterruptedException unused) {
                    Log.d(IdentityManager.b, "Interrupted while waiting for startup auth minimum delay.");
                }
                activity.runOnUiThread(runnable);
            }
        });
    }

    public void a(Activity activity, StartupAuthResultHandler startupAuthResultHandler, long j) {
        Log.d(b, "Resume Session called.");
        this.h.submit(new AnonymousClass6(activity, startupAuthResultHandler, j));
    }

    /* JADX INFO: renamed from: com.amazonaws.mobile.auth.core.IdentityManager$6, reason: invalid class name */
    class AnonymousClass6 implements Runnable {
        final /* synthetic */ Activity a;
        final /* synthetic */ StartupAuthResultHandler b;
        final /* synthetic */ long c;

        AnonymousClass6(Activity activity, StartupAuthResultHandler startupAuthResultHandler, long j) {
            this.a = activity;
            this.b = startupAuthResultHandler;
            this.c = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.d(IdentityManager.b, "Looking for a previously signed-in session.");
            SignInManager signInManagerA = SignInManager.a(this.a.getApplicationContext());
            SignInProvider signInProviderD = signInManagerA.d();
            if (signInProviderD != null) {
                Log.d(IdentityManager.b, "Refreshing credentials with sign-in provider " + signInProviderD.a());
                signInManagerA.a(this.a, signInProviderD, new SignInProviderResultHandler() { // from class: com.amazonaws.mobile.auth.core.IdentityManager.6.1
                    @Override // com.amazonaws.mobile.auth.core.signin.SignInProviderResultHandler
                    public void a(IdentityProvider identityProvider) {
                        Log.d(IdentityManager.b, "Successfully got AWS Credentials.");
                        IdentityManager.this.a(AnonymousClass6.this.a, new Runnable() { // from class: com.amazonaws.mobile.auth.core.IdentityManager.6.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass6.this.b.a(new StartupAuthResult(IdentityManager.this, null));
                            }
                        });
                    }

                    @Override // com.amazonaws.mobile.auth.core.signin.SignInProviderResultHandler
                    public void b(IdentityProvider identityProvider) {
                        Log.wtf(IdentityManager.b, "Cancel can't happen when handling a previously signed-in user.");
                    }

                    @Override // com.amazonaws.mobile.auth.core.signin.SignInProviderResultHandler
                    public void a(IdentityProvider identityProvider, Exception exc) {
                        Log.e(IdentityManager.b, String.format("Federate with Cognito with %s Sign-in provider failed. Error: %s", identityProvider.a(), exc.getMessage()), exc);
                        if (exc instanceof AuthException) {
                            IdentityManager.this.a(AnonymousClass6.this.a, AnonymousClass6.this.b, (AuthException) exc);
                        } else {
                            IdentityManager.this.a(AnonymousClass6.this.a, AnonymousClass6.this.b, new AuthException(identityProvider, exc));
                        }
                    }
                });
            } else {
                IdentityManager.this.a(this.a, this.b, (AuthException) null);
            }
            if (this.c > 0) {
                try {
                    Thread.sleep(this.c);
                } catch (InterruptedException unused) {
                    Log.i(IdentityManager.b, "Interrupted while waiting for resume session timeout.");
                }
            }
            IdentityManager.this.i.countDown();
        }
    }

    public void a(Activity activity, StartupAuthResultHandler startupAuthResultHandler) {
        a(activity, startupAuthResultHandler, 0L);
    }

    @Deprecated
    public void b(Activity activity, StartupAuthResultHandler startupAuthResultHandler) {
        a(activity, startupAuthResultHandler, 0L);
    }

    @Deprecated
    public void b(Activity activity, StartupAuthResultHandler startupAuthResultHandler, long j) {
        a(activity, startupAuthResultHandler, j);
    }

    public void l() {
        this.i.countDown();
    }

    @Deprecated
    public void a(Context context, SignInResultHandler signInResultHandler) {
        b(context, signInResultHandler);
    }

    public void b(Context context, SignInResultHandler signInResultHandler) {
        try {
            SignInManager.a(context.getApplicationContext()).a(signInResultHandler);
        } catch (Exception e) {
            Log.e(b, "Error in instantiating SignInManager. Check the context and completion handler.", e);
        }
    }

    private void a(Context context, ClientConfiguration clientConfiguration) {
        Log.d(b, "Creating the Cognito Caching Credentials Provider with a refreshing Cognito Identity Provider.");
        if (this.a) {
            JSONObject jSONObjectN = n();
            try {
                String string = jSONObjectN.getString("Region");
                String string2 = jSONObjectN.getString("PoolId");
                Regions regionsFromName = Regions.fromName(string);
                CognitoCachingCredentialsProvider cognitoCachingCredentialsProvider = new CognitoCachingCredentialsProvider(context, new AWSRefreshingCognitoIdentityProvider(null, string2, clientConfiguration, regionsFromName), regionsFromName, clientConfiguration);
                cognitoCachingCredentialsProvider.a(this.r);
                this.d.a(cognitoCachingCredentialsProvider);
            } catch (JSONException e) {
                throw new IllegalArgumentException("Failed to read configuration for CognitoIdentity", e);
            }
        }
    }

    private JSONObject n() {
        try {
            return this.f.a("CredentialsProvider").getJSONObject("CognitoIdentity").getJSONObject(this.f.b());
        } catch (Exception e) {
            throw new IllegalArgumentException("Cannot access Cognito IdentityPoolId from the awsconfiguration.json file.", e);
        }
    }
}
