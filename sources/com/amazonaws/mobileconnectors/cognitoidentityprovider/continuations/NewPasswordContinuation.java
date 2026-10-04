package com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations;

import android.content.Context;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoParameterInvalidException;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoServiceConstants;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeResult;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class NewPasswordContinuation extends ChallengeContinuation {
    private List<String> d;
    private Map<String, String> e;
    private final AuthenticationHandler f;

    public NewPasswordContinuation(CognitoUser cognitoUser, Context context, String str, String str2, String str3, RespondToAuthChallengeResult respondToAuthChallengeResult, boolean z, AuthenticationHandler authenticationHandler) {
        super(cognitoUser, context, str, str2, str3, respondToAuthChallengeResult, z, authenticationHandler);
        this.f = authenticationHandler;
        c(c().get(CognitoServiceConstants.G));
        d(c().get(CognitoServiceConstants.I));
    }

    public List<String> e() {
        return this.d;
    }

    public Map<String, String> f() {
        return this.e;
    }

    public void b(String str, String str2) {
        a(CognitoServiceConstants.H + str, str2);
    }

    public void b(String str) {
        if (str != null) {
            a(CognitoServiceConstants.U, str);
        }
    }

    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation, com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.CognitoIdentityProviderContinuation
    public void b() {
        if (this.d != null && this.d.size() > 1) {
            for (String str : this.d) {
                if (!this.c.containsKey(CognitoServiceConstants.H + str)) {
                    throw new CognitoParameterInvalidException(String.format("Missing required attribute: %s", str));
                }
            }
        }
        if (this.c.containsKey(CognitoServiceConstants.U) && this.c.get(CognitoServiceConstants.U) != null) {
            super.b();
            return;
        }
        throw new CognitoParameterInvalidException("New password was not set");
    }

    private void c(String str) {
        this.e = new HashMap();
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    this.e.put(next, jSONObject.getString(next));
                }
            } catch (Exception e) {
                this.f.a(e);
            }
        }
    }

    private void d(String str) {
        this.d = new ArrayList();
        if (str != null) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                for (int i = 0; i < jSONArray.length(); i++) {
                    this.d.add(jSONArray.getString(i).split(CognitoServiceConstants.H, 2)[1]);
                }
            } catch (Exception e) {
                this.f.a(e);
            }
        }
    }
}
