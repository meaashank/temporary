package com.amazonaws.services.cognitoidentityprovider.model;

import com.facebook.internal.AnalyticsEvents;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public enum UserImportJobStatusType {
    Created("Created"),
    Pending("Pending"),
    InProgress("InProgress"),
    Stopping("Stopping"),
    Expired("Expired"),
    Stopped("Stopped"),
    Failed(AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_FAILED),
    Succeeded("Succeeded");

    private static final Map<String, UserImportJobStatusType> enumMap = new HashMap();
    private String value;

    static {
        enumMap.put("Created", Created);
        enumMap.put("Pending", Pending);
        enumMap.put("InProgress", InProgress);
        enumMap.put("Stopping", Stopping);
        enumMap.put("Expired", Expired);
        enumMap.put("Stopped", Stopped);
        enumMap.put(AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_FAILED, Failed);
        enumMap.put("Succeeded", Succeeded);
    }

    UserImportJobStatusType(String str) {
        this.value = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }

    public static UserImportJobStatusType fromValue(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Value cannot be null or empty!");
        }
        if (enumMap.containsKey(str)) {
            return enumMap.get(str);
        }
        throw new IllegalArgumentException("Cannot create enum from " + str + " value!");
    }
}
