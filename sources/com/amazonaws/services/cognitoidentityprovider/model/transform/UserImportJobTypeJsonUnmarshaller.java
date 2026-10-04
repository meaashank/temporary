package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UserImportJobType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class UserImportJobTypeJsonUnmarshaller implements Unmarshaller<UserImportJobType, JsonUnmarshallerContext> {
    private static UserImportJobTypeJsonUnmarshaller a;

    UserImportJobTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public UserImportJobType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        UserImportJobType userImportJobType = new UserImportJobType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("JobName")) {
                userImportJobType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("JobId")) {
                userImportJobType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("UserPoolId")) {
                userImportJobType.e(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("PreSignedUrl")) {
                userImportJobType.g(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("CreationDate")) {
                userImportJobType.a(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("StartDate")) {
                userImportJobType.c(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("CompletionDate")) {
                userImportJobType.e(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Status")) {
                userImportJobType.i(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("CloudWatchLogsRoleArn")) {
                userImportJobType.k(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ImportedUsers")) {
                userImportJobType.a(SimpleTypeJsonUnmarshallers.LongJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("SkippedUsers")) {
                userImportJobType.c(SimpleTypeJsonUnmarshallers.LongJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("FailedUsers")) {
                userImportJobType.e(SimpleTypeJsonUnmarshallers.LongJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("CompletionMessage")) {
                userImportJobType.m(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return userImportJobType;
    }

    public static UserImportJobTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new UserImportJobTypeJsonUnmarshaller();
        }
        return a;
    }
}
