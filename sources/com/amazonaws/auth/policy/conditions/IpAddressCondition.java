package com.amazonaws.auth.policy.conditions;

import com.amazonaws.auth.policy.Condition;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class IpAddressCondition extends Condition {

    public enum IpAddressComparisonType {
        IpAddress,
        NotIpAddress
    }

    public IpAddressCondition(String str) {
        this(IpAddressComparisonType.IpAddress, str);
    }

    public IpAddressCondition(IpAddressComparisonType ipAddressComparisonType, String str) {
        this.a = ipAddressComparisonType.toString();
        this.b = ConditionFactory.c;
        this.c = Arrays.asList(str);
    }
}
