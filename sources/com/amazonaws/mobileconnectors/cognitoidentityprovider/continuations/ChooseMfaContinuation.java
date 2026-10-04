package com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations;

import android.content.Context;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoParameterInvalidException;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoServiceConstants;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeResult;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class ChooseMfaContinuation extends ChallengeContinuation {
    private List<String> d;

    public ChooseMfaContinuation(CognitoUser cognitoUser, Context context, String str, String str2, String str3, RespondToAuthChallengeResult respondToAuthChallengeResult, boolean z, AuthenticationHandler authenticationHandler) {
        super(cognitoUser, context, str, str2, str3, respondToAuthChallengeResult, z, authenticationHandler);
        this.d = c(c().get(CognitoServiceConstants.D));
    }

    public List<String> e() {
        if (this.d == null) {
            this.d = c(c().get(CognitoServiceConstants.D));
        }
        return this.d;
    }

    public void b(String str) {
        List<String> listE = e();
        if (str == null || !listE.contains(str)) {
            throw new CognitoParameterInvalidException(String.format(Locale.US, "invalid MFA option: %s", str));
        }
        a(CognitoServiceConstants.R, str);
    }

    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation, com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.CognitoIdentityProviderContinuation
    public void b() {
        if (!this.c.containsKey(CognitoServiceConstants.R)) {
            throw new CognitoParameterInvalidException("MFA option is not set");
        }
        super.b();
    }

    private List<String> c(String str) {
        return Arrays.asList(str.replace("[", "").replace("]", "").replace("\"", "").split(","));
    }
}
