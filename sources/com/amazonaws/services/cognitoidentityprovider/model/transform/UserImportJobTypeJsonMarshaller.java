package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UserImportJobType;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
class UserImportJobTypeJsonMarshaller {
    private static UserImportJobTypeJsonMarshaller a;

    UserImportJobTypeJsonMarshaller() {
    }

    public void a(UserImportJobType userImportJobType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (userImportJobType.a() != null) {
            String strA = userImportJobType.a();
            awsJsonWriter.a("JobName");
            awsJsonWriter.b(strA);
        }
        if (userImportJobType.b() != null) {
            String strB = userImportJobType.b();
            awsJsonWriter.a("JobId");
            awsJsonWriter.b(strB);
        }
        if (userImportJobType.c() != null) {
            String strC = userImportJobType.c();
            awsJsonWriter.a("UserPoolId");
            awsJsonWriter.b(strC);
        }
        if (userImportJobType.d() != null) {
            String strD = userImportJobType.d();
            awsJsonWriter.a("PreSignedUrl");
            awsJsonWriter.b(strD);
        }
        if (userImportJobType.e() != null) {
            Date dateE = userImportJobType.e();
            awsJsonWriter.a("CreationDate");
            awsJsonWriter.a(dateE);
        }
        if (userImportJobType.f() != null) {
            Date dateF = userImportJobType.f();
            awsJsonWriter.a("StartDate");
            awsJsonWriter.a(dateF);
        }
        if (userImportJobType.g() != null) {
            Date dateG = userImportJobType.g();
            awsJsonWriter.a("CompletionDate");
            awsJsonWriter.a(dateG);
        }
        if (userImportJobType.h() != null) {
            String strH = userImportJobType.h();
            awsJsonWriter.a("Status");
            awsJsonWriter.b(strH);
        }
        if (userImportJobType.i() != null) {
            String strI = userImportJobType.i();
            awsJsonWriter.a("CloudWatchLogsRoleArn");
            awsJsonWriter.b(strI);
        }
        if (userImportJobType.j() != null) {
            Long lJ = userImportJobType.j();
            awsJsonWriter.a("ImportedUsers");
            awsJsonWriter.a(lJ);
        }
        if (userImportJobType.k() != null) {
            Long lK = userImportJobType.k();
            awsJsonWriter.a("SkippedUsers");
            awsJsonWriter.a(lK);
        }
        if (userImportJobType.l() != null) {
            Long l = userImportJobType.l();
            awsJsonWriter.a("FailedUsers");
            awsJsonWriter.a(l);
        }
        if (userImportJobType.m() != null) {
            String strM = userImportJobType.m();
            awsJsonWriter.a("CompletionMessage");
            awsJsonWriter.b(strM);
        }
        awsJsonWriter.d();
    }

    public static UserImportJobTypeJsonMarshaller a() {
        if (a == null) {
            a = new UserImportJobTypeJsonMarshaller();
        }
        return a;
    }
}
