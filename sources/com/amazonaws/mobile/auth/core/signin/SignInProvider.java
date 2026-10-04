package com.amazonaws.mobile.auth.core.signin;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import com.amazonaws.mobile.auth.core.IdentityProvider;

/* JADX INFO: loaded from: classes.dex */
public interface SignInProvider extends IdentityProvider {
    View.OnClickListener a(Activity activity, View view, SignInProviderResultHandler signInProviderResultHandler);

    void a(int i, int i2, Intent intent);

    boolean a(int i);
}
