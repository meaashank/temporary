package com.amazonaws.http;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.JsonUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class JsonErrorResponseHandler implements HttpResponseHandler<AmazonServiceException> {
    private static final String a = "x-amzn-ErrorType";
    private static final int b = 500;
    private final List<? extends JsonErrorUnmarshaller> c;

    @Override // com.amazonaws.http.HttpResponseHandler
    public boolean a() {
        return false;
    }

    public JsonErrorResponseHandler(List<? extends JsonErrorUnmarshaller> list) {
        this.c = list;
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public AmazonServiceException b(HttpResponse httpResponse) {
        try {
            JsonErrorResponse jsonErrorResponseA = JsonErrorResponse.a(httpResponse);
            AmazonServiceException amazonServiceExceptionA = a(jsonErrorResponseA);
            if (amazonServiceExceptionA == null) {
                return null;
            }
            amazonServiceExceptionA.a(httpResponse.e());
            if (httpResponse.e() < 500) {
                amazonServiceExceptionA.a(AmazonServiceException.ErrorType.Client);
            } else {
                amazonServiceExceptionA.a(AmazonServiceException.ErrorType.Service);
            }
            amazonServiceExceptionA.c(jsonErrorResponseA.b());
            for (Map.Entry<String, String> entry : httpResponse.a().entrySet()) {
                if ("X-Amzn-RequestId".equalsIgnoreCase(entry.getKey())) {
                    amazonServiceExceptionA.a(entry.getValue());
                }
            }
            return amazonServiceExceptionA;
        } catch (IOException e) {
            throw new AmazonClientException("Unable to parse error response", e);
        }
    }

    private AmazonServiceException a(JsonErrorResponse jsonErrorResponse) {
        for (JsonErrorUnmarshaller jsonErrorUnmarshaller : this.c) {
            if (jsonErrorUnmarshaller.a(jsonErrorResponse)) {
                return jsonErrorUnmarshaller.a(jsonErrorResponse);
            }
        }
        return null;
    }

    public static final class JsonErrorResponse {
        private final int a;
        private final String b = a("message");
        private final String c;
        private final Map<String, String> d;

        private JsonErrorResponse(int i, String str, Map<String, String> map) {
            this.a = i;
            this.c = str;
            this.d = map;
        }

        public int a() {
            return this.a;
        }

        public String b() {
            return this.c;
        }

        public String c() {
            return this.b;
        }

        public String a(String str) {
            if (str == null || str.length() == 0) {
                return null;
            }
            String str2 = StringUtils.d(str.substring(0, 1)) + str.substring(1);
            String str3 = StringUtils.e(str.substring(0, 1)) + str.substring(1);
            if (this.d.containsKey(str3)) {
                return this.d.get(str3);
            }
            return this.d.containsKey(str2) ? this.d.get(str2) : "";
        }

        public static JsonErrorResponse a(HttpResponse httpResponse) {
            int iE = httpResponse.e();
            Map<String, String> mapB = JsonUtils.b(new BufferedReader(new InputStreamReader(httpResponse.b(), StringUtils.a)));
            String strSubstring = httpResponse.a().get(JsonErrorResponseHandler.a);
            if (strSubstring != null) {
                int iIndexOf = strSubstring.indexOf(58);
                if (iIndexOf != -1) {
                    strSubstring = strSubstring.substring(0, iIndexOf);
                }
            } else if (mapB.containsKey("__type")) {
                String str = mapB.get("__type");
                strSubstring = str.substring(str.lastIndexOf("#") + 1);
            }
            return new JsonErrorResponse(iE, strSubstring, mapB);
        }
    }
}
