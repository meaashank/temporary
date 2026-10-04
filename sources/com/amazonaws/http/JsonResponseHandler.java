package com.amazonaws.http;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ResponseMetadata;
import com.amazonaws.internal.CRC32MismatchException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.transform.VoidJsonUnmarshaller;
import com.amazonaws.util.CRC32ChecksumCalculatingInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonReader;
import com.amazonaws.util.json.JsonUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes.dex */
public class JsonResponseHandler<T> implements HttpResponseHandler<AmazonWebServiceResponse<T>> {
    private static final Log c = LogFactory.a("com.amazonaws.request");
    public boolean a = false;
    private Unmarshaller<T, JsonUnmarshallerContext> b;

    @Deprecated
    protected void a(JsonUnmarshallerContext jsonUnmarshallerContext) {
    }

    public JsonResponseHandler(Unmarshaller<T, JsonUnmarshallerContext> unmarshaller) {
        this.b = unmarshaller;
        if (this.b == null) {
            this.b = new VoidJsonUnmarshaller();
        }
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public AmazonWebServiceResponse<T> b(HttpResponse httpResponse) {
        CRC32ChecksumCalculatingInputStream cRC32ChecksumCalculatingInputStream;
        c.a("Parsing service response JSON");
        String str = httpResponse.a().get("x-amz-crc32");
        InputStream inputStreamC = httpResponse.c();
        if (inputStreamC == null) {
            inputStreamC = new ByteArrayInputStream("{}".getBytes(StringUtils.a));
        }
        c.b("CRC32Checksum = " + str);
        c.b("content encoding = " + httpResponse.a().get("Content-Encoding"));
        if (str != null) {
            cRC32ChecksumCalculatingInputStream = new CRC32ChecksumCalculatingInputStream(inputStreamC);
            inputStreamC = io.fabric.sdk.android.services.network.HttpRequest.d.equals(httpResponse.a().get("Content-Encoding")) ? new GZIPInputStream(cRC32ChecksumCalculatingInputStream) : cRC32ChecksumCalculatingInputStream;
        } else {
            cRC32ChecksumCalculatingInputStream = null;
        }
        AwsJsonReader awsJsonReaderA = JsonUtils.a(new InputStreamReader(inputStreamC, StringUtils.a));
        try {
            AmazonWebServiceResponse<T> amazonWebServiceResponse = new AmazonWebServiceResponse<>();
            T tA = this.b.a(new JsonUnmarshallerContext(awsJsonReaderA, httpResponse));
            if (str != null) {
                if (cRC32ChecksumCalculatingInputStream.a() != Long.parseLong(str)) {
                    throw new CRC32MismatchException("Client calculated crc32 checksum didn't match that calculated by server side");
                }
            }
            amazonWebServiceResponse.a(tA);
            HashMap map = new HashMap();
            map.put(ResponseMetadata.a, httpResponse.a().get("x-amzn-RequestId"));
            amazonWebServiceResponse.a(new ResponseMetadata(map));
            c.a("Done parsing service response");
            return amazonWebServiceResponse;
        } finally {
            if (!this.a) {
                try {
                    awsJsonReaderA.k();
                } catch (IOException e) {
                    c.d("Error closing json parser", e);
                }
            }
        }
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    public boolean a() {
        return this.a;
    }
}
