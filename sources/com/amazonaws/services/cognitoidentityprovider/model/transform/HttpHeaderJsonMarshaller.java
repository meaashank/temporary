package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.HttpHeader;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class HttpHeaderJsonMarshaller {
    private static HttpHeaderJsonMarshaller a;

    HttpHeaderJsonMarshaller() {
    }

    public void a(HttpHeader httpHeader, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (httpHeader.a() != null) {
            String strA = httpHeader.a();
            awsJsonWriter.a("headerName");
            awsJsonWriter.b(strA);
        }
        if (httpHeader.b() != null) {
            String strB = httpHeader.b();
            awsJsonWriter.a("headerValue");
            awsJsonWriter.b(strB);
        }
        awsJsonWriter.d();
    }

    public static HttpHeaderJsonMarshaller a() {
        if (a == null) {
            a = new HttpHeaderJsonMarshaller();
        }
        return a;
    }
}
