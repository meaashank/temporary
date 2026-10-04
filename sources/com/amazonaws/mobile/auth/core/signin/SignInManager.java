package com.amazonaws.mobile.auth.core.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import com.amazonaws.mobile.auth.core.IdentityManager;
import com.amazonaws.mobile.auth.core.IdentityProvider;
import com.amazonaws.mobile.auth.core.SignInResultHandler;
import com.amazonaws.mobile.auth.core.internal.util.ThreadUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SignInManager {
    private static final String a = "SignInManager";
    private static volatile SignInManager c;
    private volatile SignInResultHandler d;
    private SignInProviderResultAdapter f;
    private final Map<Class<? extends SignInProvider>, SignInProvider> b = new HashMap();
    private final SparseArray<SignInPermissionsHandler> e = new SparseArray<>();

    private SignInManager(Context context) {
        for (Class<? extends SignInProvider> cls : IdentityManager.a().j()) {
            try {
                SignInProvider signInProviderNewInstance = cls.newInstance();
                if (signInProviderNewInstance != null) {
                    signInProviderNewInstance.a(context, IdentityManager.a().b());
                    this.b.put(cls, signInProviderNewInstance);
                    if (signInProviderNewInstance instanceof SignInPermissionsHandler) {
                        SignInPermissionsHandler signInPermissionsHandler = (SignInPermissionsHandler) signInProviderNewInstance;
                        this.e.put(signInPermissionsHandler.a(), signInPermissionsHandler);
                    }
                }
            } catch (IllegalAccessException unused) {
                Log.e(a, "Unable to instantiate " + cls.getSimpleName() + " . Skipping this provider.");
            } catch (InstantiationException unused2) {
                Log.e(a, "Unable to instantiate " + cls.getSimpleName() + " . Skipping this provider.");
            }
        }
        c = this;
    }

    public static synchronized SignInManager a() {
        return c;
    }

    public static synchronized SignInManager a(Context context) {
        if (c == null) {
            c = new SignInManager(context);
        }
        return c;
    }

    public void a(SignInResultHandler signInResultHandler) {
        this.d = signInResultHandler;
    }

    public SignInResultHandler b() {
        return this.d;
    }

    public static synchronized void c() {
        c = null;
    }

    public SignInProvider d() {
        Log.d(a, "Providers: " + Collections.singletonList(this.b));
        for (SignInProvider signInProvider : this.b.values()) {
            if (signInProvider.c()) {
                Log.d(a, "Refreshing provider: " + signInProvider.a());
                return signInProvider;
            }
        }
        return null;
    }

    private class SignInProviderResultAdapter implements SignInProviderResultHandler {
        private final SignInProviderResultHandler b;
        private final Activity c;

        private SignInProviderResultAdapter(Activity activity, SignInProviderResultHandler signInProviderResultHandler) {
            this.b = signInProviderResultHandler;
            this.c = activity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Activity a() {
            return this.c;
        }

        @Override // com.amazonaws.mobile.auth.core.signin.SignInProviderResultHandler
        public void a(final IdentityProvider identityProvider) {
            ThreadUtils.a(new Runnable() { // from class: com.amazonaws.mobile.auth.core.signin.SignInManager.SignInProviderResultAdapter.1
                @Override // java.lang.Runnable
                public void run() {
                    SignInProviderResultAdapter.this.b.a(identityProvider);
                }
            });
        }

        @Override // com.amazonaws.mobile.auth.core.signin.SignInProviderResultHandler
        public void b(final IdentityProvider identityProvider) {
            ThreadUtils.a(new Runnable() { // from class: com.amazonaws.mobile.auth.core.signin.SignInManager.SignInProviderResultAdapter.2
                @Override // java.lang.Runnable
                public void run() {
                    SignInProviderResultAdapter.this.b.b(identityProvider);
                }
            });
        }

        @Override // com.amazonaws.mobile.auth.core.signin.SignInProviderResultHandler
        public void a(final IdentityProvider identityProvider, final Exception exc) {
            ThreadUtils.a(new Runnable() { // from class: com.amazonaws.mobile.auth.core.signin.SignInManager.SignInProviderResultAdapter.3
                @Override // java.lang.Runnable
                public void run() {
                    SignInProviderResultAdapter.this.b.a(identityProvider, exc);
                }
            });
        }
    }

    public void a(Activity activity, IdentityProvider identityProvider, SignInProviderResultHandler signInProviderResultHandler) {
        if (identityProvider == null) {
            throw new IllegalArgumentException("The sign-in provider cannot be null.");
        }
        if (identityProvider.d() == null) {
            signInProviderResultHandler.a(identityProvider, new IllegalArgumentException("Given provider not previously logged in."));
        }
        this.f = new SignInProviderResultAdapter(activity, signInProviderResultHandler);
        IdentityManager.a().a(this.f);
        IdentityManager.a().a(identityProvider);
    }

    public void a(Activity activity, SignInProviderResultHandler signInProviderResultHandler) {
        this.f = new SignInProviderResultAdapter(activity, signInProviderResultHandler);
        IdentityManager.a().a(this.f);
    }

    public View.OnClickListener a(Class<? extends SignInProvider> cls, View view) {
        return a(cls).a(this.f.a(), view, IdentityManager.a().g());
    }

    private SignInProvider a(Class<? extends SignInProvider> cls) {
        SignInProvider signInProvider = this.b.get(cls);
        if (signInProvider != null) {
            return signInProvider;
        }
        throw new IllegalArgumentException("No such provider : " + cls.getName());
    }

    public boolean a(int i, int i2, Intent intent) {
        for (SignInProvider signInProvider : this.b.values()) {
            if (signInProvider.a(i)) {
                signInProvider.a(i, i2, intent);
                return true;
            }
        }
        return false;
    }

    public void a(int i, String[] strArr, int[] iArr) {
        SignInPermissionsHandler signInPermissionsHandler = this.e.get(i);
        if (signInPermissionsHandler != null) {
            signInPermissionsHandler.a(i, strArr, iArr);
        }
    }
}
