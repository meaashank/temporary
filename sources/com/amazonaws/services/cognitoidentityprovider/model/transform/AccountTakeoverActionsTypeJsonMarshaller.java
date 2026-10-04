package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AccountTakeoverActionType;
import com.amazonaws.services.cognitoidentityprovider.model.AccountTakeoverActionsType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class AccountTakeoverActionsTypeJsonMarshaller {
    private static AccountTakeoverActionsTypeJsonMarshaller a;

    AccountTakeoverActionsTypeJsonMarshaller() {
    }

    public void a(AccountTakeoverActionsType accountTakeoverActionsType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (accountTakeoverActionsType.a() != null) {
            AccountTakeoverActionType accountTakeoverActionTypeA = accountTakeoverActionsType.a();
            awsJsonWriter.a("LowAction");
            AccountTakeoverActionTypeJsonMarshaller.a().a(accountTakeoverActionTypeA, awsJsonWriter);
        }
        if (accountTakeoverActionsType.b() != null) {
            AccountTakeoverActionType accountTakeoverActionTypeB = accountTakeoverActionsType.b();
            awsJsonWriter.a("MediumAction");
            AccountTakeoverActionTypeJsonMarshaller.a().a(accountTakeoverActionTypeB, awsJsonWriter);
        }
        if (accountTakeoverActionsType.c() != null) {
            AccountTakeoverActionType accountTakeoverActionTypeC = accountTakeoverActionsType.c();
            awsJsonWriter.a("HighAction");
            AccountTakeoverActionTypeJsonMarshaller.a().a(accountTakeoverActionTypeC, awsJsonWriter);
        }
        awsJsonWriter.d();
    }

    public static AccountTakeoverActionsTypeJsonMarshaller a() {
        if (a == null) {
            a = new AccountTakeoverActionsTypeJsonMarshaller();
        }
        return a;
    }
}
