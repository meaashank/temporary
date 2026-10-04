package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoServiceConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public enum ChallengeNameType {
    SMS_MFA("SMS_MFA"),
    SOFTWARE_TOKEN_MFA(CognitoServiceConstants.h),
    SELECT_MFA_TYPE(CognitoServiceConstants.f),
    MFA_SETUP(CognitoServiceConstants.e),
    PASSWORD_VERIFIER(CognitoServiceConstants.i),
    CUSTOM_CHALLENGE(CognitoServiceConstants.j),
    DEVICE_SRP_AUTH(CognitoServiceConstants.k),
    DEVICE_PASSWORD_VERIFIER(CognitoServiceConstants.l),
    ADMIN_NO_SRP_AUTH("ADMIN_NO_SRP_AUTH"),
    NEW_PASSWORD_REQUIRED(CognitoServiceConstants.m);

    private static final Map<String, ChallengeNameType> enumMap = new HashMap();
    private String value;

    static {
        enumMap.put("SMS_MFA", SMS_MFA);
        enumMap.put(CognitoServiceConstants.h, SOFTWARE_TOKEN_MFA);
        enumMap.put(CognitoServiceConstants.f, SELECT_MFA_TYPE);
        enumMap.put(CognitoServiceConstants.e, MFA_SETUP);
        enumMap.put(CognitoServiceConstants.i, PASSWORD_VERIFIER);
        enumMap.put(CognitoServiceConstants.j, CUSTOM_CHALLENGE);
        enumMap.put(CognitoServiceConstants.k, DEVICE_SRP_AUTH);
        enumMap.put(CognitoServiceConstants.l, DEVICE_PASSWORD_VERIFIER);
        enumMap.put("ADMIN_NO_SRP_AUTH", ADMIN_NO_SRP_AUTH);
        enumMap.put(CognitoServiceConstants.m, NEW_PASSWORD_REQUIRED);
    }

    ChallengeNameType(String str) {
        this.value = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }

    public static ChallengeNameType fromValue(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Value cannot be null or empty!");
        }
        if (enumMap.containsKey(str)) {
            return enumMap.get(str);
        }
        throw new IllegalArgumentException("Cannot create enum from " + str + " value!");
    }
}
