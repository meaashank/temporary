package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.CompromisedCredentialsActionsType;
import com.amazonaws.services.cognitoidentityprovider.model.CompromisedCredentialsRiskConfigurationType;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class CompromisedCredentialsRiskConfigurationTypeJsonMarshaller {
    private static CompromisedCredentialsRiskConfigurationTypeJsonMarshaller a;

    CompromisedCredentialsRiskConfigurationTypeJsonMarshaller() {
    }

    public void a(CompromisedCredentialsRiskConfigurationType compromisedCredentialsRiskConfigurationType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (compromisedCredentialsRiskConfigurationType.a() != null) {
            List<String> listA = compromisedCredentialsRiskConfigurationType.a();
            awsJsonWriter.a("EventFilter");
            awsJsonWriter.a();
            for (String str : listA) {
                if (str != null) {
                    awsJsonWriter.b(str);
                }
            }
            awsJsonWriter.b();
        }
        if (compromisedCredentialsRiskConfigurationType.b() != null) {
            CompromisedCredentialsActionsType compromisedCredentialsActionsTypeB = compromisedCredentialsRiskConfigurationType.b();
            awsJsonWriter.a("Actions");
            CompromisedCredentialsActionsTypeJsonMarshaller.a().a(compromisedCredentialsActionsTypeB, awsJsonWriter);
        }
        awsJsonWriter.d();
    }

    public static CompromisedCredentialsRiskConfigurationTypeJsonMarshaller a() {
        if (a == null) {
            a = new CompromisedCredentialsRiskConfigurationTypeJsonMarshaller();
        }
        return a;
    }
}
