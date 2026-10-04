package com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations;

import android.content.Context;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoParameterInvalidException;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoServiceConstants;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeResult;
import com.amazonaws.util.StringUtils;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RegisterMfaContinuation extends ChallengeContinuation {
    private List<String> d;

    public RegisterMfaContinuation(CognitoUser cognitoUser, Context context, String str, String str2, String str3, RespondToAuthChallengeResult respondToAuthChallengeResult, boolean z, AuthenticationHandler authenticationHandler) {
        super(cognitoUser, context, str, str2, str3, respondToAuthChallengeResult, z, authenticationHandler);
        this.d = c(c().get(CognitoServiceConstants.E));
    }

    public List<String> e() {
        if (this.d == null) {
            this.d = c(c().get(CognitoServiceConstants.E));
        }
        return this.d;
    }

    public void b(String str) {
        if (StringUtils.a((CharSequence) str)) {
            throw new CognitoParameterInvalidException("session token cannot be null");
        }
        a(str);
    }

    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation, com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.CognitoIdentityProviderContinuation
    public void b() {
        super.b();
    }

    private List<String> c(String str) {
        return Arrays.asList(str.replace("[", "").replace("]", "").replace("\"", "").split(","));
    }
}
