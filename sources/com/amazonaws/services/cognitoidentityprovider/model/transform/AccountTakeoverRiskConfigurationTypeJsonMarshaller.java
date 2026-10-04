package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AccountTakeoverActionsType;
import com.amazonaws.services.cognitoidentityprovider.model.AccountTakeoverRiskConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.NotifyConfigurationType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class AccountTakeoverRiskConfigurationTypeJsonMarshaller {
    private static AccountTakeoverRiskConfigurationTypeJsonMarshaller a;

    AccountTakeoverRiskConfigurationTypeJsonMarshaller() {
    }

    public void a(AccountTakeoverRiskConfigurationType accountTakeoverRiskConfigurationType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (accountTakeoverRiskConfigurationType.a() != null) {
            NotifyConfigurationType notifyConfigurationTypeA = accountTakeoverRiskConfigurationType.a();
            awsJsonWriter.a("NotifyConfiguration");
            NotifyConfigurationTypeJsonMarshaller.a().a(notifyConfigurationTypeA, awsJsonWriter);
        }
        if (accountTakeoverRiskConfigurationType.b() != null) {
            AccountTakeoverActionsType accountTakeoverActionsTypeB = accountTakeoverRiskConfigurationType.b();
            awsJsonWriter.a("Actions");
            AccountTakeoverActionsTypeJsonMarshaller.a().a(accountTakeoverActionsTypeB, awsJsonWriter);
        }
        awsJsonWriter.d();
    }

    public static AccountTakeoverRiskConfigurationTypeJsonMarshaller a() {
        if (a == null) {
            a = new AccountTakeoverRiskConfigurationTypeJsonMarshaller();
        }
        return a;
    }
}
