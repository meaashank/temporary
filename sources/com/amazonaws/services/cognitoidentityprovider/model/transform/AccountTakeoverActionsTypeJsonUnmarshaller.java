package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AccountTakeoverActionsType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class AccountTakeoverActionsTypeJsonUnmarshaller implements Unmarshaller<AccountTakeoverActionsType, JsonUnmarshallerContext> {
    private static AccountTakeoverActionsTypeJsonUnmarshaller a;

    AccountTakeoverActionsTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public AccountTakeoverActionsType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        AccountTakeoverActionsType accountTakeoverActionsType = new AccountTakeoverActionsType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("LowAction")) {
                accountTakeoverActionsType.a(AccountTakeoverActionTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("MediumAction")) {
                accountTakeoverActionsType.c(AccountTakeoverActionTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("HighAction")) {
                accountTakeoverActionsType.e(AccountTakeoverActionTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return accountTakeoverActionsType;
    }

    public static AccountTakeoverActionsTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new AccountTakeoverActionsTypeJsonUnmarshaller();
        }
        return a;
    }
}
