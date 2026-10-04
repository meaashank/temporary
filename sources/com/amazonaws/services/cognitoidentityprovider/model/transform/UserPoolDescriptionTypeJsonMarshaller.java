package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.cognitoidentityprovider.model.LambdaConfigType;
import com.amazonaws.services.cognitoidentityprovider.model.UserPoolDescriptionType;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.Date;
import org.apache.xerces.impl.xs.SchemaSymbols;

/* JADX INFO: loaded from: classes.dex */
class UserPoolDescriptionTypeJsonMarshaller {
    private static UserPoolDescriptionTypeJsonMarshaller a;

    UserPoolDescriptionTypeJsonMarshaller() {
    }

    public void a(UserPoolDescriptionType userPoolDescriptionType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (userPoolDescriptionType.a() != null) {
            String strA = userPoolDescriptionType.a();
            awsJsonWriter.a(JsonDocumentFields.b);
            awsJsonWriter.b(strA);
        }
        if (userPoolDescriptionType.b() != null) {
            String strB = userPoolDescriptionType.b();
            awsJsonWriter.a(SchemaSymbols.ATTVAL_NAME);
            awsJsonWriter.b(strB);
        }
        if (userPoolDescriptionType.c() != null) {
            LambdaConfigType lambdaConfigTypeC = userPoolDescriptionType.c();
            awsJsonWriter.a("LambdaConfig");
            LambdaConfigTypeJsonMarshaller.a().a(lambdaConfigTypeC, awsJsonWriter);
        }
        if (userPoolDescriptionType.d() != null) {
            String strD = userPoolDescriptionType.d();
            awsJsonWriter.a("Status");
            awsJsonWriter.b(strD);
        }
        if (userPoolDescriptionType.e() != null) {
            Date dateE = userPoolDescriptionType.e();
            awsJsonWriter.a("LastModifiedDate");
            awsJsonWriter.a(dateE);
        }
        if (userPoolDescriptionType.f() != null) {
            Date dateF = userPoolDescriptionType.f();
            awsJsonWriter.a("CreationDate");
            awsJsonWriter.a(dateF);
        }
        awsJsonWriter.d();
    }

    public static UserPoolDescriptionTypeJsonMarshaller a() {
        if (a == null) {
            a = new UserPoolDescriptionTypeJsonMarshaller();
        }
        return a;
    }
}
