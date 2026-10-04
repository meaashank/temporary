package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AccountTakeoverActionType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class AccountTakeoverActionTypeJsonMarshaller {
    private static AccountTakeoverActionTypeJsonMarshaller a;

    AccountTakeoverActionTypeJsonMarshaller() {
    }

    public void a(AccountTakeoverActionType accountTakeoverActionType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (accountTakeoverActionType.b() != null) {
            Boolean boolB = accountTakeoverActionType.b();
            awsJsonWriter.a("Notify");
            awsJsonWriter.a(boolB.booleanValue());
        }
        if (accountTakeoverActionType.c() != null) {
            String strC = accountTakeoverActionType.c();
            awsJsonWriter.a("EventAction");
            awsJsonWriter.b(strC);
        }
        awsJsonWriter.d();
    }

    public static AccountTakeoverActionTypeJsonMarshaller a() {
        if (a == null) {
            a = new AccountTakeoverActionTypeJsonMarshaller();
        }
        return a;
    }
}
