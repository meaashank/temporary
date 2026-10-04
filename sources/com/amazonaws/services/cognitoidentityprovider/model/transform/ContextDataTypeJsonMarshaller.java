package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ContextDataType;
import com.amazonaws.services.cognitoidentityprovider.model.HttpHeader;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class ContextDataTypeJsonMarshaller {
    private static ContextDataTypeJsonMarshaller a;

    ContextDataTypeJsonMarshaller() {
    }

    public void a(ContextDataType contextDataType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (contextDataType.a() != null) {
            String strA = contextDataType.a();
            awsJsonWriter.a("IpAddress");
            awsJsonWriter.b(strA);
        }
        if (contextDataType.b() != null) {
            String strB = contextDataType.b();
            awsJsonWriter.a("ServerName");
            awsJsonWriter.b(strB);
        }
        if (contextDataType.c() != null) {
            String strC = contextDataType.c();
            awsJsonWriter.a("ServerPath");
            awsJsonWriter.b(strC);
        }
        if (contextDataType.d() != null) {
            List<HttpHeader> listD = contextDataType.d();
            awsJsonWriter.a("HttpHeaders");
            awsJsonWriter.a();
            for (HttpHeader httpHeader : listD) {
                if (httpHeader != null) {
                    HttpHeaderJsonMarshaller.a().a(httpHeader, awsJsonWriter);
                }
            }
            awsJsonWriter.b();
        }
        if (contextDataType.e() != null) {
            String strE = contextDataType.e();
            awsJsonWriter.a("EncodedData");
            awsJsonWriter.b(strE);
        }
        awsJsonWriter.d();
    }

    public static ContextDataTypeJsonMarshaller a() {
        if (a == null) {
            a = new ContextDataTypeJsonMarshaller();
        }
        return a;
    }
}
