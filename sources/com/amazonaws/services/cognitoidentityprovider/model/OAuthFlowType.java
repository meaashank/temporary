package com.amazonaws.services.cognitoidentityprovider.model;

import com.prism.hide.f.b;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public enum OAuthFlowType {
    Code(b.m),
    Implicit("implicit"),
    Client_credentials("client_credentials");

    private static final Map<String, OAuthFlowType> enumMap = new HashMap();
    private String value;

    static {
        enumMap.put(b.m, Code);
        enumMap.put("implicit", Implicit);
        enumMap.put("client_credentials", Client_credentials);
    }

    OAuthFlowType(String str) {
        this.value = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }

    public static OAuthFlowType fromValue(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Value cannot be null or empty!");
        }
        if (enumMap.containsKey(str)) {
            return enumMap.get(str);
        }
        throw new IllegalArgumentException("Cannot create enum from " + str + " value!");
    }
}
