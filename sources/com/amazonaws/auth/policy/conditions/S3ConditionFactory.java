package com.amazonaws.auth.policy.conditions;

import com.amazonaws.auth.policy.Condition;
import com.amazonaws.auth.policy.conditions.StringCondition;
import com.amazonaws.services.s3.model.CannedAccessControlList;

/* JADX INFO: loaded from: classes.dex */
public final class S3ConditionFactory {
    public static final String a = "s3:x-amz-acl";
    public static final String b = "s3:LocationConstraint";
    public static final String c = "s3:prefix";
    public static final String d = "s3:delimiter";
    public static final String e = "s3:max-keys";
    public static final String f = "s3:x-amz-copy-source";
    public static final String g = "s3:x-amz-metadata-directive";
    public static final String h = "s3:VersionId";

    private S3ConditionFactory() {
    }

    public static Condition a(CannedAccessControlList cannedAccessControlList) {
        return new StringCondition(StringCondition.StringComparisonType.StringEquals, a, cannedAccessControlList.toString());
    }
}
