package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AccountTakeoverActionType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class AccountTakeoverActionTypeJsonUnmarshaller implements Unmarshaller<AccountTakeoverActionType, JsonUnmarshallerContext> {
    private static AccountTakeoverActionTypeJsonUnmarshaller a;

    AccountTakeoverActionTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public AccountTakeoverActionType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        AccountTakeoverActionType accountTakeoverActionType = new AccountTakeoverActionType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("Notify")) {
                accountTakeoverActionType.a(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("EventAction")) {
                accountTakeoverActionType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return accountTakeoverActionType;
    }

    public static AccountTakeoverActionTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new AccountTakeoverActionTypeJsonUnmarshaller();
        }
        return a;
    }
}
