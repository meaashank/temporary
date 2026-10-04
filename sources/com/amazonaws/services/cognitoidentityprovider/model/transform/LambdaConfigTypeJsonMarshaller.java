package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.LambdaConfigType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class LambdaConfigTypeJsonMarshaller {
    private static LambdaConfigTypeJsonMarshaller a;

    LambdaConfigTypeJsonMarshaller() {
    }

    public void a(LambdaConfigType lambdaConfigType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (lambdaConfigType.a() != null) {
            String strA = lambdaConfigType.a();
            awsJsonWriter.a("PreSignUp");
            awsJsonWriter.b(strA);
        }
        if (lambdaConfigType.b() != null) {
            String strB = lambdaConfigType.b();
            awsJsonWriter.a("CustomMessage");
            awsJsonWriter.b(strB);
        }
        if (lambdaConfigType.c() != null) {
            String strC = lambdaConfigType.c();
            awsJsonWriter.a("PostConfirmation");
            awsJsonWriter.b(strC);
        }
        if (lambdaConfigType.d() != null) {
            String strD = lambdaConfigType.d();
            awsJsonWriter.a("PreAuthentication");
            awsJsonWriter.b(strD);
        }
        if (lambdaConfigType.e() != null) {
            String strE = lambdaConfigType.e();
            awsJsonWriter.a("PostAuthentication");
            awsJsonWriter.b(strE);
        }
        if (lambdaConfigType.f() != null) {
            String strF = lambdaConfigType.f();
            awsJsonWriter.a("DefineAuthChallenge");
            awsJsonWriter.b(strF);
        }
        if (lambdaConfigType.g() != null) {
            String strG = lambdaConfigType.g();
            awsJsonWriter.a("CreateAuthChallenge");
            awsJsonWriter.b(strG);
        }
        if (lambdaConfigType.h() != null) {
            String strH = lambdaConfigType.h();
            awsJsonWriter.a("VerifyAuthChallengeResponse");
            awsJsonWriter.b(strH);
        }
        if (lambdaConfigType.i() != null) {
            String strI = lambdaConfigType.i();
            awsJsonWriter.a("PreTokenGeneration");
            awsJsonWriter.b(strI);
        }
        if (lambdaConfigType.j() != null) {
            String strJ = lambdaConfigType.j();
            awsJsonWriter.a("UserMigration");
            awsJsonWriter.b(strJ);
        }
        awsJsonWriter.d();
    }

    public static LambdaConfigTypeJsonMarshaller a() {
        if (a == null) {
            a = new LambdaConfigTypeJsonMarshaller();
        }
        return a;
    }
}
