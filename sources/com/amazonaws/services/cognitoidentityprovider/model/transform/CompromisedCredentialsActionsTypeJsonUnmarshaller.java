package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.CompromisedCredentialsActionsType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class CompromisedCredentialsActionsTypeJsonUnmarshaller implements Unmarshaller<CompromisedCredentialsActionsType, JsonUnmarshallerContext> {
    private static CompromisedCredentialsActionsTypeJsonUnmarshaller a;

    CompromisedCredentialsActionsTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public CompromisedCredentialsActionsType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        CompromisedCredentialsActionsType compromisedCredentialsActionsType = new CompromisedCredentialsActionsType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("EventAction")) {
                compromisedCredentialsActionsType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return compromisedCredentialsActionsType;
    }

    public static CompromisedCredentialsActionsTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new CompromisedCredentialsActionsTypeJsonUnmarshaller();
        }
        return a;
    }
}
