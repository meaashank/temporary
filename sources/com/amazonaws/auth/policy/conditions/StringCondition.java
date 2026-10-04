package com.amazonaws.auth.policy.conditions;

import com.amazonaws.auth.policy.Condition;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class StringCondition extends Condition {

    public enum StringComparisonType {
        StringEquals,
        StringEqualsIgnoreCase,
        StringLike,
        StringNotEquals,
        StringNotEqualsIgnoreCase,
        StringNotLike
    }

    public StringCondition(StringComparisonType stringComparisonType, String str, String str2) {
        this.a = stringComparisonType.toString();
        this.b = str;
        this.c = Arrays.asList(str2);
    }
}
