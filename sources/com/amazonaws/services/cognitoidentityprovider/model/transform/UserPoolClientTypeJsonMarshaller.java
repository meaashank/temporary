package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.UserPoolClientType;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class UserPoolClientTypeJsonMarshaller {
    private static UserPoolClientTypeJsonMarshaller a;

    UserPoolClientTypeJsonMarshaller() {
    }

    public void a(UserPoolClientType userPoolClientType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (userPoolClientType.a() != null) {
            String strA = userPoolClientType.a();
            awsJsonWriter.a("UserPoolId");
            awsJsonWriter.b(strA);
        }
        if (userPoolClientType.b() != null) {
            String strB = userPoolClientType.b();
            awsJsonWriter.a("ClientName");
            awsJsonWriter.b(strB);
        }
        if (userPoolClientType.c() != null) {
            String strC = userPoolClientType.c();
            awsJsonWriter.a("ClientId");
            awsJsonWriter.b(strC);
        }
        if (userPoolClientType.d() != null) {
            String strD = userPoolClientType.d();
            awsJsonWriter.a("ClientSecret");
            awsJsonWriter.b(strD);
        }
        if (userPoolClientType.e() != null) {
            Date dateE = userPoolClientType.e();
            awsJsonWriter.a("LastModifiedDate");
            awsJsonWriter.a(dateE);
        }
        if (userPoolClientType.f() != null) {
            Date dateF = userPoolClientType.f();
            awsJsonWriter.a("CreationDate");
            awsJsonWriter.a(dateF);
        }
        if (userPoolClientType.g() != null) {
            Integer numG = userPoolClientType.g();
            awsJsonWriter.a("RefreshTokenValidity");
            awsJsonWriter.a(numG);
        }
        if (userPoolClientType.h() != null) {
            List<String> listH = userPoolClientType.h();
            awsJsonWriter.a("ReadAttributes");
            awsJsonWriter.a();
            for (String str : listH) {
                if (str != null) {
                    awsJsonWriter.b(str);
                }
            }
            awsJsonWriter.b();
        }
        if (userPoolClientType.i() != null) {
            List<String> listI = userPoolClientType.i();
            awsJsonWriter.a("WriteAttributes");
            awsJsonWriter.a();
            for (String str2 : listI) {
                if (str2 != null) {
                    awsJsonWriter.b(str2);
                }
            }
            awsJsonWriter.b();
        }
        if (userPoolClientType.j() != null) {
            List<String> listJ = userPoolClientType.j();
            awsJsonWriter.a("ExplicitAuthFlows");
            awsJsonWriter.a();
            for (String str3 : listJ) {
                if (str3 != null) {
                    awsJsonWriter.b(str3);
                }
            }
            awsJsonWriter.b();
        }
        if (userPoolClientType.k() != null) {
            List<String> listK = userPoolClientType.k();
            awsJsonWriter.a("SupportedIdentityProviders");
            awsJsonWriter.a();
            for (String str4 : listK) {
                if (str4 != null) {
                    awsJsonWriter.b(str4);
                }
            }
            awsJsonWriter.b();
        }
        if (userPoolClientType.l() != null) {
            List<String> listL = userPoolClientType.l();
            awsJsonWriter.a("CallbackURLs");
            awsJsonWriter.a();
            for (String str5 : listL) {
                if (str5 != null) {
                    awsJsonWriter.b(str5);
                }
            }
            awsJsonWriter.b();
        }
        if (userPoolClientType.m() != null) {
            List<String> listM = userPoolClientType.m();
            awsJsonWriter.a("LogoutURLs");
            awsJsonWriter.a();
            for (String str6 : listM) {
                if (str6 != null) {
                    awsJsonWriter.b(str6);
                }
            }
            awsJsonWriter.b();
        }
        if (userPoolClientType.n() != null) {
            String strN = userPoolClientType.n();
            awsJsonWriter.a("DefaultRedirectURI");
            awsJsonWriter.b(strN);
        }
        if (userPoolClientType.o() != null) {
            List<String> listO = userPoolClientType.o();
            awsJsonWriter.a("AllowedOAuthFlows");
            awsJsonWriter.a();
            for (String str7 : listO) {
                if (str7 != null) {
                    awsJsonWriter.b(str7);
                }
            }
            awsJsonWriter.b();
        }
        if (userPoolClientType.p() != null) {
            List<String> listP = userPoolClientType.p();
            awsJsonWriter.a("AllowedOAuthScopes");
            awsJsonWriter.a();
            for (String str8 : listP) {
                if (str8 != null) {
                    awsJsonWriter.b(str8);
                }
            }
            awsJsonWriter.b();
        }
        if (userPoolClientType.r() != null) {
            Boolean boolR = userPoolClientType.r();
            awsJsonWriter.a("AllowedOAuthFlowsUserPoolClient");
            awsJsonWriter.a(boolR.booleanValue());
        }
        if (userPoolClientType.s() != null) {
            AnalyticsConfigurationType analyticsConfigurationTypeS = userPoolClientType.s();
            awsJsonWriter.a("AnalyticsConfiguration");
            AnalyticsConfigurationTypeJsonMarshaller.a().a(analyticsConfigurationTypeS, awsJsonWriter);
        }
        awsJsonWriter.d();
    }

    public static UserPoolClientTypeJsonMarshaller a() {
        if (a == null) {
            a = new UserPoolClientTypeJsonMarshaller();
        }
        return a;
    }
}
