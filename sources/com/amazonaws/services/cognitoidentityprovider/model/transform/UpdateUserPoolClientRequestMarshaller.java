package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateUserPoolClientRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class UpdateUserPoolClientRequestMarshaller implements Marshaller<Request<UpdateUserPoolClientRequest>, UpdateUserPoolClientRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<UpdateUserPoolClientRequest> a(UpdateUserPoolClientRequest updateUserPoolClientRequest) {
        if (updateUserPoolClientRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(UpdateUserPoolClientRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(updateUserPoolClientRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.UpdateUserPoolClient");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (updateUserPoolClientRequest.h() != null) {
                String strH = updateUserPoolClientRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (updateUserPoolClientRequest.i() != null) {
                String strI = updateUserPoolClientRequest.i();
                awsJsonWriterA.a("ClientId");
                awsJsonWriterA.b(strI);
            }
            if (updateUserPoolClientRequest.j() != null) {
                String strJ = updateUserPoolClientRequest.j();
                awsJsonWriterA.a("ClientName");
                awsJsonWriterA.b(strJ);
            }
            if (updateUserPoolClientRequest.k() != null) {
                Integer numK = updateUserPoolClientRequest.k();
                awsJsonWriterA.a("RefreshTokenValidity");
                awsJsonWriterA.a(numK);
            }
            if (updateUserPoolClientRequest.l() != null) {
                List<String> listL = updateUserPoolClientRequest.l();
                awsJsonWriterA.a("ReadAttributes");
                awsJsonWriterA.a();
                for (String str : listL) {
                    if (str != null) {
                        awsJsonWriterA.b(str);
                    }
                }
                awsJsonWriterA.b();
            }
            if (updateUserPoolClientRequest.m() != null) {
                List<String> listM = updateUserPoolClientRequest.m();
                awsJsonWriterA.a("WriteAttributes");
                awsJsonWriterA.a();
                for (String str2 : listM) {
                    if (str2 != null) {
                        awsJsonWriterA.b(str2);
                    }
                }
                awsJsonWriterA.b();
            }
            if (updateUserPoolClientRequest.n() != null) {
                List<String> listN = updateUserPoolClientRequest.n();
                awsJsonWriterA.a("ExplicitAuthFlows");
                awsJsonWriterA.a();
                for (String str3 : listN) {
                    if (str3 != null) {
                        awsJsonWriterA.b(str3);
                    }
                }
                awsJsonWriterA.b();
            }
            if (updateUserPoolClientRequest.o() != null) {
                List<String> listO = updateUserPoolClientRequest.o();
                awsJsonWriterA.a("SupportedIdentityProviders");
                awsJsonWriterA.a();
                for (String str4 : listO) {
                    if (str4 != null) {
                        awsJsonWriterA.b(str4);
                    }
                }
                awsJsonWriterA.b();
            }
            if (updateUserPoolClientRequest.p() != null) {
                List<String> listP = updateUserPoolClientRequest.p();
                awsJsonWriterA.a("CallbackURLs");
                awsJsonWriterA.a();
                for (String str5 : listP) {
                    if (str5 != null) {
                        awsJsonWriterA.b(str5);
                    }
                }
                awsJsonWriterA.b();
            }
            if (updateUserPoolClientRequest.q() != null) {
                List<String> listQ = updateUserPoolClientRequest.q();
                awsJsonWriterA.a("LogoutURLs");
                awsJsonWriterA.a();
                for (String str6 : listQ) {
                    if (str6 != null) {
                        awsJsonWriterA.b(str6);
                    }
                }
                awsJsonWriterA.b();
            }
            if (updateUserPoolClientRequest.r() != null) {
                String strR = updateUserPoolClientRequest.r();
                awsJsonWriterA.a("DefaultRedirectURI");
                awsJsonWriterA.b(strR);
            }
            if (updateUserPoolClientRequest.s() != null) {
                List<String> listS = updateUserPoolClientRequest.s();
                awsJsonWriterA.a("AllowedOAuthFlows");
                awsJsonWriterA.a();
                for (String str7 : listS) {
                    if (str7 != null) {
                        awsJsonWriterA.b(str7);
                    }
                }
                awsJsonWriterA.b();
            }
            if (updateUserPoolClientRequest.t() != null) {
                List<String> listT = updateUserPoolClientRequest.t();
                awsJsonWriterA.a("AllowedOAuthScopes");
                awsJsonWriterA.a();
                for (String str8 : listT) {
                    if (str8 != null) {
                        awsJsonWriterA.b(str8);
                    }
                }
                awsJsonWriterA.b();
            }
            if (updateUserPoolClientRequest.v() != null) {
                Boolean boolV = updateUserPoolClientRequest.v();
                awsJsonWriterA.a("AllowedOAuthFlowsUserPoolClient");
                awsJsonWriterA.a(boolV.booleanValue());
            }
            if (updateUserPoolClientRequest.w() != null) {
                AnalyticsConfigurationType analyticsConfigurationTypeW = updateUserPoolClientRequest.w();
                awsJsonWriterA.a("AnalyticsConfiguration");
                AnalyticsConfigurationTypeJsonMarshaller.a().a(analyticsConfigurationTypeW, awsJsonWriterA);
            }
            awsJsonWriterA.d();
            awsJsonWriterA.g();
            String string = stringWriter.toString();
            byte[] bytes = string.getBytes(StringUtils.a);
            defaultRequest.a(new StringInputStream(string));
            defaultRequest.a("Content-Length", Integer.toString(bytes.length));
            if (!defaultRequest.b().containsKey("Content-Type")) {
                defaultRequest.a("Content-Type", "application/x-amz-json-1.1");
            }
            return defaultRequest;
        } catch (Throwable th) {
            throw new AmazonClientException("Unable to marshall request to JSON: " + th.getMessage(), th);
        }
    }
}
