package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoServiceConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public enum ExplicitAuthFlowsType {
    ADMIN_NO_SRP_AUTH("ADMIN_NO_SRP_AUTH"),
    CUSTOM_AUTH_FLOW_ONLY("CUSTOM_AUTH_FLOW_ONLY"),
    USER_PASSWORD_AUTH(CognitoServiceConstants.d);

    private static final Map<String, ExplicitAuthFlowsType> enumMap = new HashMap();
    private String value;

    static {
        enumMap.put("ADMIN_NO_SRP_AUTH", ADMIN_NO_SRP_AUTH);
        enumMap.put("CUSTOM_AUTH_FLOW_ONLY", CUSTOM_AUTH_FLOW_ONLY);
        enumMap.put(CognitoServiceConstants.d, USER_PASSWORD_AUTH);
    }

    ExplicitAuthFlowsType(String str) {
        this.value = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }

    public static ExplicitAuthFlowsType fromValue(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Value cannot be null or empty!");
        }
        if (enumMap.containsKey(str)) {
            return enumMap.get(str);
        }
        throw new IllegalArgumentException("Cannot create enum from " + str + " value!");
    }
}
