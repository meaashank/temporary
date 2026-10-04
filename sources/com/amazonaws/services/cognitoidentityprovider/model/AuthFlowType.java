package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoServiceConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public enum AuthFlowType {
    USER_SRP_AUTH(CognitoServiceConstants.a),
    REFRESH_TOKEN_AUTH(CognitoServiceConstants.b),
    REFRESH_TOKEN(CognitoServiceConstants.o),
    CUSTOM_AUTH(CognitoServiceConstants.c),
    ADMIN_NO_SRP_AUTH("ADMIN_NO_SRP_AUTH"),
    USER_PASSWORD_AUTH(CognitoServiceConstants.d);

    private static final Map<String, AuthFlowType> enumMap = new HashMap();
    private String value;

    static {
        enumMap.put(CognitoServiceConstants.a, USER_SRP_AUTH);
        enumMap.put(CognitoServiceConstants.b, REFRESH_TOKEN_AUTH);
        enumMap.put(CognitoServiceConstants.o, REFRESH_TOKEN);
        enumMap.put(CognitoServiceConstants.c, CUSTOM_AUTH);
        enumMap.put("ADMIN_NO_SRP_AUTH", ADMIN_NO_SRP_AUTH);
        enumMap.put(CognitoServiceConstants.d, USER_PASSWORD_AUTH);
    }

    AuthFlowType(String str) {
        this.value = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }

    public static AuthFlowType fromValue(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Value cannot be null or empty!");
        }
        if (enumMap.containsKey(str)) {
            return enumMap.get(str);
        }
        throw new IllegalArgumentException("Cannot create enum from " + str + " value!");
    }
}
