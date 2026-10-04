package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.services.s3.model.BucketLifecycleConfiguration;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public enum StatusType {
    Enabled("Enabled"),
    Disabled(BucketLifecycleConfiguration.b);

    private static final Map<String, StatusType> enumMap = new HashMap();
    private String value;

    static {
        enumMap.put("Enabled", Enabled);
        enumMap.put(BucketLifecycleConfiguration.b, Disabled);
    }

    StatusType(String str) {
        this.value = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }

    public static StatusType fromValue(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Value cannot be null or empty!");
        }
        if (enumMap.containsKey(str)) {
            return enumMap.get(str);
        }
        throw new IllegalArgumentException("Cannot create enum from " + str + " value!");
    }
}
