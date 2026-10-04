package com.amazonaws.auth.policy.conditions;

import com.amazonaws.auth.policy.Condition;
import com.amazonaws.auth.policy.conditions.ArnCondition;
import com.amazonaws.auth.policy.conditions.StringCondition;

/* JADX INFO: loaded from: classes.dex */
public final class ConditionFactory {
    public static final String a = "aws:CurrentTime";
    public static final String b = "aws:SecureTransport";
    public static final String c = "aws:SourceIp";
    public static final String d = "aws:UserAgent";
    public static final String e = "aws:EpochTime";
    public static final String f = "aws:Referer";
    public static final String g = "aws:SourceArn";

    private ConditionFactory() {
    }

    public static Condition a(String str) {
        return new ArnCondition(ArnCondition.ArnComparisonType.ArnLike, g, str);
    }

    public static Condition a() {
        return new BooleanCondition(b, true);
    }

    public static Condition a(StringCondition.StringComparisonType stringComparisonType, String str) {
        return new StringCondition(stringComparisonType, d, str);
    }

    public static Condition b(StringCondition.StringComparisonType stringComparisonType, String str) {
        return new StringCondition(stringComparisonType, f, str);
    }
}
