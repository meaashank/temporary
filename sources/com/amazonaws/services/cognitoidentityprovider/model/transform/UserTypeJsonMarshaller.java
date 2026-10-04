package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AttributeType;
import com.amazonaws.services.cognitoidentityprovider.model.MFAOptionType;
import com.amazonaws.services.cognitoidentityprovider.model.UserType;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class UserTypeJsonMarshaller {
    private static UserTypeJsonMarshaller a;

    UserTypeJsonMarshaller() {
    }

    public void a(UserType userType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (userType.a() != null) {
            String strA = userType.a();
            awsJsonWriter.a("Username");
            awsJsonWriter.b(strA);
        }
        if (userType.b() != null) {
            List<AttributeType> listB = userType.b();
            awsJsonWriter.a("Attributes");
            awsJsonWriter.a();
            for (AttributeType attributeType : listB) {
                if (attributeType != null) {
                    AttributeTypeJsonMarshaller.a().a(attributeType, awsJsonWriter);
                }
            }
            awsJsonWriter.b();
        }
        if (userType.c() != null) {
            Date dateC = userType.c();
            awsJsonWriter.a("UserCreateDate");
            awsJsonWriter.a(dateC);
        }
        if (userType.d() != null) {
            Date dateD = userType.d();
            awsJsonWriter.a("UserLastModifiedDate");
            awsJsonWriter.a(dateD);
        }
        if (userType.f() != null) {
            Boolean boolF = userType.f();
            awsJsonWriter.a("Enabled");
            awsJsonWriter.a(boolF.booleanValue());
        }
        if (userType.g() != null) {
            String strG = userType.g();
            awsJsonWriter.a("UserStatus");
            awsJsonWriter.b(strG);
        }
        if (userType.h() != null) {
            List<MFAOptionType> listH = userType.h();
            awsJsonWriter.a("MFAOptions");
            awsJsonWriter.a();
            for (MFAOptionType mFAOptionType : listH) {
                if (mFAOptionType != null) {
                    MFAOptionTypeJsonMarshaller.a().a(mFAOptionType, awsJsonWriter);
                }
            }
            awsJsonWriter.b();
        }
        awsJsonWriter.d();
    }

    public static UserTypeJsonMarshaller a() {
        if (a == null) {
            a = new UserTypeJsonMarshaller();
        }
        return a;
    }
}
