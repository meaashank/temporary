package com.amazonaws.auth.policy.conditions;

import com.amazonaws.auth.policy.Condition;
import com.amazonaws.util.DateUtils;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class DateCondition extends Condition {

    public enum DateComparisonType {
        DateEquals,
        DateGreaterThan,
        DateGreaterThanEquals,
        DateLessThan,
        DateLessThanEquals,
        DateNotEquals
    }

    public DateCondition(DateComparisonType dateComparisonType, Date date) {
        this.a = dateComparisonType.toString();
        this.b = ConditionFactory.a;
        this.c = Arrays.asList(DateUtils.a(date));
    }
}
