package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.GroupType;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
class GroupTypeJsonMarshaller {
    private static GroupTypeJsonMarshaller a;

    GroupTypeJsonMarshaller() {
    }

    public void a(GroupType groupType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (groupType.a() != null) {
            String strA = groupType.a();
            awsJsonWriter.a("GroupName");
            awsJsonWriter.b(strA);
        }
        if (groupType.b() != null) {
            String strB = groupType.b();
            awsJsonWriter.a("UserPoolId");
            awsJsonWriter.b(strB);
        }
        if (groupType.c() != null) {
            String strC = groupType.c();
            awsJsonWriter.a("Description");
            awsJsonWriter.b(strC);
        }
        if (groupType.d() != null) {
            String strD = groupType.d();
            awsJsonWriter.a("RoleArn");
            awsJsonWriter.b(strD);
        }
        if (groupType.e() != null) {
            Integer numE = groupType.e();
            awsJsonWriter.a("Precedence");
            awsJsonWriter.a(numE);
        }
        if (groupType.f() != null) {
            Date dateF = groupType.f();
            awsJsonWriter.a("LastModifiedDate");
            awsJsonWriter.a(dateF);
        }
        if (groupType.g() != null) {
            Date dateG = groupType.g();
            awsJsonWriter.a("CreationDate");
            awsJsonWriter.a(dateG);
        }
        awsJsonWriter.d();
    }

    public static GroupTypeJsonMarshaller a() {
        if (a == null) {
            a = new GroupTypeJsonMarshaller();
        }
        return a;
    }
}
