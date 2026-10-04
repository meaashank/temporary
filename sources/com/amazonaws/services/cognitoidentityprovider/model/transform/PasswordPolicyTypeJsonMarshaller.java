package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.PasswordPolicyType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class PasswordPolicyTypeJsonMarshaller {
    private static PasswordPolicyTypeJsonMarshaller a;

    PasswordPolicyTypeJsonMarshaller() {
    }

    public void a(PasswordPolicyType passwordPolicyType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (passwordPolicyType.a() != null) {
            Integer numA = passwordPolicyType.a();
            awsJsonWriter.a("MinimumLength");
            awsJsonWriter.a(numA);
        }
        if (passwordPolicyType.c() != null) {
            Boolean boolC = passwordPolicyType.c();
            awsJsonWriter.a("RequireUppercase");
            awsJsonWriter.a(boolC.booleanValue());
        }
        if (passwordPolicyType.e() != null) {
            Boolean boolE = passwordPolicyType.e();
            awsJsonWriter.a("RequireLowercase");
            awsJsonWriter.a(boolE.booleanValue());
        }
        if (passwordPolicyType.g() != null) {
            Boolean boolG = passwordPolicyType.g();
            awsJsonWriter.a("RequireNumbers");
            awsJsonWriter.a(boolG.booleanValue());
        }
        if (passwordPolicyType.i() != null) {
            Boolean boolI = passwordPolicyType.i();
            awsJsonWriter.a("RequireSymbols");
            awsJsonWriter.a(boolI.booleanValue());
        }
        awsJsonWriter.d();
    }

    public static PasswordPolicyTypeJsonMarshaller a() {
        if (a == null) {
            a = new PasswordPolicyTypeJsonMarshaller();
        }
        return a;
    }
}
