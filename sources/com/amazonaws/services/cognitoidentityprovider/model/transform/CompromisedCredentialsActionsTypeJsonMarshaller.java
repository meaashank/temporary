package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.CompromisedCredentialsActionsType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class CompromisedCredentialsActionsTypeJsonMarshaller {
    private static CompromisedCredentialsActionsTypeJsonMarshaller a;

    CompromisedCredentialsActionsTypeJsonMarshaller() {
    }

    public void a(CompromisedCredentialsActionsType compromisedCredentialsActionsType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (compromisedCredentialsActionsType.a() != null) {
            String strA = compromisedCredentialsActionsType.a();
            awsJsonWriter.a("EventAction");
            awsJsonWriter.b(strA);
        }
        awsJsonWriter.d();
    }

    public static CompromisedCredentialsActionsTypeJsonMarshaller a() {
        if (a == null) {
            a = new CompromisedCredentialsActionsTypeJsonMarshaller();
        }
        return a;
    }
}
