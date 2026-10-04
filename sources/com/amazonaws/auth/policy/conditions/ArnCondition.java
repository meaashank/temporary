package com.amazonaws.auth.policy.conditions;

import com.amazonaws.auth.policy.Condition;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class ArnCondition extends Condition {

    public enum ArnComparisonType {
        ArnEquals,
        ArnLike,
        ArnNotEquals,
        ArnNotLike
    }

    public ArnCondition(ArnComparisonType arnComparisonType, String str, String str2) {
        this.a = arnComparisonType.toString();
        this.b = str;
        this.c = Arrays.asList(str2);
    }
}
