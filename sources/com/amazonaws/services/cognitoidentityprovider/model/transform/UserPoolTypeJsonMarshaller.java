package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.cognitoidentityprovider.model.AdminCreateUserConfigType;
import com.amazonaws.services.cognitoidentityprovider.model.DeviceConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.EmailConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.LambdaConfigType;
import com.amazonaws.services.cognitoidentityprovider.model.SchemaAttributeType;
import com.amazonaws.services.cognitoidentityprovider.model.SmsConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.UserPoolAddOnsType;
import com.amazonaws.services.cognitoidentityprovider.model.UserPoolPolicyType;
import com.amazonaws.services.cognitoidentityprovider.model.UserPoolType;
import com.amazonaws.services.cognitoidentityprovider.model.VerificationMessageTemplateType;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.apache.xerces.impl.xs.SchemaSymbols;

/* JADX INFO: loaded from: classes.dex */
class UserPoolTypeJsonMarshaller {
    private static UserPoolTypeJsonMarshaller a;

    UserPoolTypeJsonMarshaller() {
    }

    public void a(UserPoolType userPoolType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (userPoolType.a() != null) {
            String strA = userPoolType.a();
            awsJsonWriter.a(JsonDocumentFields.b);
            awsJsonWriter.b(strA);
        }
        if (userPoolType.b() != null) {
            String strB = userPoolType.b();
            awsJsonWriter.a(SchemaSymbols.ATTVAL_NAME);
            awsJsonWriter.b(strB);
        }
        if (userPoolType.c() != null) {
            UserPoolPolicyType userPoolPolicyTypeC = userPoolType.c();
            awsJsonWriter.a("Policies");
            UserPoolPolicyTypeJsonMarshaller.a().a(userPoolPolicyTypeC, awsJsonWriter);
        }
        if (userPoolType.d() != null) {
            LambdaConfigType lambdaConfigTypeD = userPoolType.d();
            awsJsonWriter.a("LambdaConfig");
            LambdaConfigTypeJsonMarshaller.a().a(lambdaConfigTypeD, awsJsonWriter);
        }
        if (userPoolType.e() != null) {
            String strE = userPoolType.e();
            awsJsonWriter.a("Status");
            awsJsonWriter.b(strE);
        }
        if (userPoolType.f() != null) {
            Date dateF = userPoolType.f();
            awsJsonWriter.a("LastModifiedDate");
            awsJsonWriter.a(dateF);
        }
        if (userPoolType.g() != null) {
            Date dateG = userPoolType.g();
            awsJsonWriter.a("CreationDate");
            awsJsonWriter.a(dateG);
        }
        if (userPoolType.h() != null) {
            List<SchemaAttributeType> listH = userPoolType.h();
            awsJsonWriter.a("SchemaAttributes");
            awsJsonWriter.a();
            for (SchemaAttributeType schemaAttributeType : listH) {
                if (schemaAttributeType != null) {
                    SchemaAttributeTypeJsonMarshaller.a().a(schemaAttributeType, awsJsonWriter);
                }
            }
            awsJsonWriter.b();
        }
        if (userPoolType.i() != null) {
            List<String> listI = userPoolType.i();
            awsJsonWriter.a("AutoVerifiedAttributes");
            awsJsonWriter.a();
            for (String str : listI) {
                if (str != null) {
                    awsJsonWriter.b(str);
                }
            }
            awsJsonWriter.b();
        }
        if (userPoolType.j() != null) {
            List<String> listJ = userPoolType.j();
            awsJsonWriter.a("AliasAttributes");
            awsJsonWriter.a();
            for (String str2 : listJ) {
                if (str2 != null) {
                    awsJsonWriter.b(str2);
                }
            }
            awsJsonWriter.b();
        }
        if (userPoolType.k() != null) {
            List<String> listK = userPoolType.k();
            awsJsonWriter.a("UsernameAttributes");
            awsJsonWriter.a();
            for (String str3 : listK) {
                if (str3 != null) {
                    awsJsonWriter.b(str3);
                }
            }
            awsJsonWriter.b();
        }
        if (userPoolType.l() != null) {
            String strL = userPoolType.l();
            awsJsonWriter.a("SmsVerificationMessage");
            awsJsonWriter.b(strL);
        }
        if (userPoolType.m() != null) {
            String strM = userPoolType.m();
            awsJsonWriter.a("EmailVerificationMessage");
            awsJsonWriter.b(strM);
        }
        if (userPoolType.n() != null) {
            String strN = userPoolType.n();
            awsJsonWriter.a("EmailVerificationSubject");
            awsJsonWriter.b(strN);
        }
        if (userPoolType.o() != null) {
            VerificationMessageTemplateType verificationMessageTemplateTypeO = userPoolType.o();
            awsJsonWriter.a("VerificationMessageTemplate");
            VerificationMessageTemplateTypeJsonMarshaller.a().a(verificationMessageTemplateTypeO, awsJsonWriter);
        }
        if (userPoolType.p() != null) {
            String strP = userPoolType.p();
            awsJsonWriter.a("SmsAuthenticationMessage");
            awsJsonWriter.b(strP);
        }
        if (userPoolType.q() != null) {
            String strQ = userPoolType.q();
            awsJsonWriter.a("MfaConfiguration");
            awsJsonWriter.b(strQ);
        }
        if (userPoolType.r() != null) {
            DeviceConfigurationType deviceConfigurationTypeR = userPoolType.r();
            awsJsonWriter.a("DeviceConfiguration");
            DeviceConfigurationTypeJsonMarshaller.a().a(deviceConfigurationTypeR, awsJsonWriter);
        }
        if (userPoolType.s() != null) {
            Integer numS = userPoolType.s();
            awsJsonWriter.a("EstimatedNumberOfUsers");
            awsJsonWriter.a(numS);
        }
        if (userPoolType.t() != null) {
            EmailConfigurationType emailConfigurationTypeT = userPoolType.t();
            awsJsonWriter.a("EmailConfiguration");
            EmailConfigurationTypeJsonMarshaller.a().a(emailConfigurationTypeT, awsJsonWriter);
        }
        if (userPoolType.u() != null) {
            SmsConfigurationType smsConfigurationTypeU = userPoolType.u();
            awsJsonWriter.a("SmsConfiguration");
            SmsConfigurationTypeJsonMarshaller.a().a(smsConfigurationTypeU, awsJsonWriter);
        }
        if (userPoolType.v() != null) {
            Map<String, String> mapV = userPoolType.v();
            awsJsonWriter.a("UserPoolTags");
            awsJsonWriter.c();
            for (Map.Entry<String, String> entry : mapV.entrySet()) {
                String value = entry.getValue();
                if (value != null) {
                    awsJsonWriter.a(entry.getKey());
                    awsJsonWriter.b(value);
                }
            }
            awsJsonWriter.d();
        }
        if (userPoolType.x() != null) {
            String strX = userPoolType.x();
            awsJsonWriter.a("SmsConfigurationFailure");
            awsJsonWriter.b(strX);
        }
        if (userPoolType.y() != null) {
            String strY = userPoolType.y();
            awsJsonWriter.a("EmailConfigurationFailure");
            awsJsonWriter.b(strY);
        }
        if (userPoolType.z() != null) {
            String strZ = userPoolType.z();
            awsJsonWriter.a("Domain");
            awsJsonWriter.b(strZ);
        }
        if (userPoolType.A() != null) {
            String strA2 = userPoolType.A();
            awsJsonWriter.a("CustomDomain");
            awsJsonWriter.b(strA2);
        }
        if (userPoolType.B() != null) {
            AdminCreateUserConfigType adminCreateUserConfigTypeB = userPoolType.B();
            awsJsonWriter.a("AdminCreateUserConfig");
            AdminCreateUserConfigTypeJsonMarshaller.a().a(adminCreateUserConfigTypeB, awsJsonWriter);
        }
        if (userPoolType.C() != null) {
            UserPoolAddOnsType userPoolAddOnsTypeC = userPoolType.C();
            awsJsonWriter.a("UserPoolAddOns");
            UserPoolAddOnsTypeJsonMarshaller.a().a(userPoolAddOnsTypeC, awsJsonWriter);
        }
        if (userPoolType.D() != null) {
            String strD = userPoolType.D();
            awsJsonWriter.a("Arn");
            awsJsonWriter.b(strD);
        }
        awsJsonWriter.d();
    }

    public static UserPoolTypeJsonMarshaller a() {
        if (a == null) {
            a = new UserPoolTypeJsonMarshaller();
        }
        return a;
    }
}
