package com.amazonaws.auth.policy.conditions;

import com.amazonaws.auth.policy.Condition;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class NumericCondition extends Condition {

    public enum NumericComparisonType {
        NumericEquals,
        NumericGreaterThan,
        NumericGreaterThanEquals,
        NumericLessThan,
        NumericLessThanEquals,
        NumericNotEquals
    }

    public NumericCondition(NumericComparisonType numericComparisonType, String str, String str2) {
        this.a = numericComparisonType.toString();
        this.b = str;
        this.c = Arrays.asList(str2);
    }
}
