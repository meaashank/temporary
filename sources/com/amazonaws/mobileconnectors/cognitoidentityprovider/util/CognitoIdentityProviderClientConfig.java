package com.amazonaws.mobileconnectors.cognitoidentityprovider.util;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoParameterInvalidException;

/* JADX INFO: loaded from: classes.dex */
public final class CognitoIdentityProviderClientConfig {
    private static final long a = 1800000;
    private static final long b = 0;
    private static final long c = 300000;
    private static long d = 300000;

    public static void a(long j) {
        if (j > a || j < 0) {
            throw new CognitoParameterInvalidException(String.format("The value of refreshThreshold must between %d and %d milliseconds", 0L, Long.valueOf(a)));
        }
        d = j;
    }

    public static long a() {
        return d;
    }
}
