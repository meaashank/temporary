package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AccountTakeoverRiskConfigurationType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class AccountTakeoverRiskConfigurationTypeJsonUnmarshaller implements Unmarshaller<AccountTakeoverRiskConfigurationType, JsonUnmarshallerContext> {
    private static AccountTakeoverRiskConfigurationTypeJsonUnmarshaller a;

    AccountTakeoverRiskConfigurationTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public AccountTakeoverRiskConfigurationType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        AccountTakeoverRiskConfigurationType accountTakeoverRiskConfigurationType = new AccountTakeoverRiskConfigurationType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("NotifyConfiguration")) {
                accountTakeoverRiskConfigurationType.a(NotifyConfigurationTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Actions")) {
                accountTakeoverRiskConfigurationType.a(AccountTakeoverActionsTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return accountTakeoverRiskConfigurationType;
    }

    public static AccountTakeoverRiskConfigurationTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new AccountTakeoverRiskConfigurationTypeJsonUnmarshaller();
        }
        return a;
    }
}
