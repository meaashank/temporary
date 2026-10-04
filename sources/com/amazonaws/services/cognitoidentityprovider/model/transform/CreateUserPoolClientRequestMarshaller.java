package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.CreateUserPoolClientRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CreateUserPoolClientRequestMarshaller implements Marshaller<Request<CreateUserPoolClientRequest>, CreateUserPoolClientRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<CreateUserPoolClientRequest> a(CreateUserPoolClientRequest createUserPoolClientRequest) {
        if (createUserPoolClientRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(CreateUserPoolClientRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(createUserPoolClientRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.CreateUserPoolClient");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (createUserPoolClientRequest.h() != null) {
                String strH = createUserPoolClientRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (createUserPoolClientRequest.i() != null) {
                String strI = createUserPoolClientRequest.i();
                awsJsonWriterA.a("ClientName");
                awsJsonWriterA.b(strI);
            }
            if (createUserPoolClientRequest.k() != null) {
                Boolean boolK = createUserPoolClientRequest.k();
                awsJsonWriterA.a("GenerateSecret");
                awsJsonWriterA.a(boolK.booleanValue());
            }
            if (createUserPoolClientRequest.l() != null) {
                Integer numL = createUserPoolClientRequest.l();
                awsJsonWriterA.a("RefreshTokenValidity");
                awsJsonWriterA.a(numL);
            }
            if (createUserPoolClientRequest.m() != null) {
                List<String> listM = createUserPoolClientRequest.m();
                awsJsonWriterA.a("ReadAttributes");
                awsJsonWriterA.a();
                for (String str : listM) {
                    if (str != null) {
                        awsJsonWriterA.b(str);
                    }
                }
                awsJsonWriterA.b();
            }
            if (createUserPoolClientRequest.n() != null) {
                List<String> listN = createUserPoolClientRequest.n();
                awsJsonWriterA.a("WriteAttributes");
                awsJsonWriterA.a();
                for (String str2 : listN) {
                    if (str2 != null) {
                        awsJsonWriterA.b(str2);
                    }
                }
                awsJsonWriterA.b();
            }
            if (createUserPoolClientRequest.o() != null) {
                List<String> listO = createUserPoolClientRequest.o();
                awsJsonWriterA.a("ExplicitAuthFlows");
                awsJsonWriterA.a();
                for (String str3 : listO) {
                    if (str3 != null) {
                        awsJsonWriterA.b(str3);
                    }
                }
                awsJsonWriterA.b();
            }
            if (createUserPoolClientRequest.p() != null) {
                List<String> listP = createUserPoolClientRequest.p();
                awsJsonWriterA.a("SupportedIdentityProviders");
                awsJsonWriterA.a();
                for (String str4 : listP) {
                    if (str4 != null) {
                        awsJsonWriterA.b(str4);
                    }
                }
                awsJsonWriterA.b();
            }
            if (createUserPoolClientRequest.q() != null) {
                List<String> listQ = createUserPoolClientRequest.q();
                awsJsonWriterA.a("CallbackURLs");
                awsJsonWriterA.a();
                for (String str5 : listQ) {
                    if (str5 != null) {
                        awsJsonWriterA.b(str5);
                    }
                }
                awsJsonWriterA.b();
            }
            if (createUserPoolClientRequest.r() != null) {
                List<String> listR = createUserPoolClientRequest.r();
                awsJsonWriterA.a("LogoutURLs");
                awsJsonWriterA.a();
                for (String str6 : listR) {
                    if (str6 != null) {
                        awsJsonWriterA.b(str6);
                    }
                }
                awsJsonWriterA.b();
            }
            if (createUserPoolClientRequest.s() != null) {
                String strS = createUserPoolClientRequest.s();
                awsJsonWriterA.a("DefaultRedirectURI");
                awsJsonWriterA.b(strS);
            }
            if (createUserPoolClientRequest.t() != null) {
                List<String> listT = createUserPoolClientRequest.t();
                awsJsonWriterA.a("AllowedOAuthFlows");
                awsJsonWriterA.a();
                for (String str7 : listT) {
                    if (str7 != null) {
                        awsJsonWriterA.b(str7);
                    }
                }
                awsJsonWriterA.b();
            }
            if (createUserPoolClientRequest.u() != null) {
                List<String> listU = createUserPoolClientRequest.u();
                awsJsonWriterA.a("AllowedOAuthScopes");
                awsJsonWriterA.a();
                for (String str8 : listU) {
                    if (str8 != null) {
                        awsJsonWriterA.b(str8);
                    }
                }
                awsJsonWriterA.b();
            }
            if (createUserPoolClientRequest.w() != null) {
                Boolean boolW = createUserPoolClientRequest.w();
                awsJsonWriterA.a("AllowedOAuthFlowsUserPoolClient");
                awsJsonWriterA.a(boolW.booleanValue());
            }
            if (createUserPoolClientRequest.x() != null) {
                AnalyticsConfigurationType analyticsConfigurationTypeX = createUserPoolClientRequest.x();
                awsJsonWriterA.a("AnalyticsConfiguration");
                AnalyticsConfigurationTypeJsonMarshaller.a().a(analyticsConfigurationTypeX, awsJsonWriterA);
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
