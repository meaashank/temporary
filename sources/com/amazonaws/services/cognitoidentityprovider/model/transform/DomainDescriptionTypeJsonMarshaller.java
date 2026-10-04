package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.cognitoidentityprovider.model.CustomDomainConfigType;
import com.amazonaws.services.cognitoidentityprovider.model.DomainDescriptionType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class DomainDescriptionTypeJsonMarshaller {
    private static DomainDescriptionTypeJsonMarshaller a;

    DomainDescriptionTypeJsonMarshaller() {
    }

    public void a(DomainDescriptionType domainDescriptionType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (domainDescriptionType.a() != null) {
            String strA = domainDescriptionType.a();
            awsJsonWriter.a("UserPoolId");
            awsJsonWriter.b(strA);
        }
        if (domainDescriptionType.b() != null) {
            String strB = domainDescriptionType.b();
            awsJsonWriter.a("AWSAccountId");
            awsJsonWriter.b(strB);
        }
        if (domainDescriptionType.c() != null) {
            String strC = domainDescriptionType.c();
            awsJsonWriter.a("Domain");
            awsJsonWriter.b(strC);
        }
        if (domainDescriptionType.d() != null) {
            String strD = domainDescriptionType.d();
            awsJsonWriter.a("S3Bucket");
            awsJsonWriter.b(strD);
        }
        if (domainDescriptionType.e() != null) {
            String strE = domainDescriptionType.e();
            awsJsonWriter.a("CloudFrontDistribution");
            awsJsonWriter.b(strE);
        }
        if (domainDescriptionType.f() != null) {
            String strF = domainDescriptionType.f();
            awsJsonWriter.a(JsonDocumentFields.a);
            awsJsonWriter.b(strF);
        }
        if (domainDescriptionType.g() != null) {
            String strG = domainDescriptionType.g();
            awsJsonWriter.a("Status");
            awsJsonWriter.b(strG);
        }
        if (domainDescriptionType.h() != null) {
            CustomDomainConfigType customDomainConfigTypeH = domainDescriptionType.h();
            awsJsonWriter.a("CustomDomainConfig");
            CustomDomainConfigTypeJsonMarshaller.a().a(customDomainConfigTypeH, awsJsonWriter);
        }
        awsJsonWriter.d();
    }

    public static DomainDescriptionTypeJsonMarshaller a() {
        if (a == null) {
            a = new DomainDescriptionTypeJsonMarshaller();
        }
        return a;
    }
}
