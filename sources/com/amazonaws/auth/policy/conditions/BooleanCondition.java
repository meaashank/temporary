package com.amazonaws.auth.policy.conditions;

import com.amazonaws.auth.policy.Condition;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class BooleanCondition extends Condition {
    public BooleanCondition(String str, boolean z) {
        this.a = "Bool";
        this.b = str;
        this.c = Arrays.asList(Boolean.toString(z));
    }
}
