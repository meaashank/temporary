package com.amazonaws.mobile.auth.core;

import android.app.Activity;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class DefaultSignInResultHandler implements SignInResultHandler {
    private static final String a = "DefaultSignInResultHandler";

    @Override // com.amazonaws.mobile.auth.core.SignInResultHandler
    public void a(Activity activity, IdentityProvider identityProvider) {
        Log.d(a, String.format("%s Sign-In flow is canceled", identityProvider.a()));
    }

    @Override // com.amazonaws.mobile.auth.core.SignInResultHandler
    public void a(Activity activity, IdentityProvider identityProvider, Exception exc) {
        Log.e(a, String.format(activity.getString(R.string.sign_in_failure_message_format), identityProvider.a(), exc.getMessage()), exc);
    }
}
