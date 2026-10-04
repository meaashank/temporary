package com.amazonaws.http;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ResponseMetadata;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.transform.VoidStaxUnmarshaller;
import com.amazonaws.util.StringUtils;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes.dex */
public class StaxResponseHandler<T> implements HttpResponseHandler<AmazonWebServiceResponse<T>> {
    private static final Log b = LogFactory.a("com.amazonaws.request");
    private static final XmlPullParserFactory c;
    private Unmarshaller<T, StaxUnmarshallerContext> a;

    protected void a(StaxUnmarshallerContext staxUnmarshallerContext) {
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    public boolean a() {
        return false;
    }

    static {
        try {
            c = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e) {
            throw new AmazonClientException("Couldn't initialize XmlPullParserFactory", e);
        }
    }

    public StaxResponseHandler(Unmarshaller<T, StaxUnmarshallerContext> unmarshaller) {
        this.a = unmarshaller;
        if (this.a == null) {
            this.a = new VoidStaxUnmarshaller();
        }
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public AmazonWebServiceResponse<T> b(HttpResponse httpResponse) throws XmlPullParserException {
        b.a("Parsing service response XML");
        InputStream inputStreamB = httpResponse.b();
        if (inputStreamB == null) {
            inputStreamB = new ByteArrayInputStream("<eof/>".getBytes(StringUtils.a));
        }
        XmlPullParser xmlPullParserNewPullParser = c.newPullParser();
        xmlPullParserNewPullParser.setInput(inputStreamB, null);
        AmazonWebServiceResponse<T> amazonWebServiceResponse = new AmazonWebServiceResponse<>();
        StaxUnmarshallerContext staxUnmarshallerContext = new StaxUnmarshallerContext(xmlPullParserNewPullParser, httpResponse.a());
        staxUnmarshallerContext.a("ResponseMetadata/RequestId", 2, ResponseMetadata.a);
        staxUnmarshallerContext.a("requestId", 2, ResponseMetadata.a);
        a(staxUnmarshallerContext);
        amazonWebServiceResponse.a(this.a.a(staxUnmarshallerContext));
        Map<String, String> mapE = staxUnmarshallerContext.e();
        Map<String, String> mapA = httpResponse.a();
        if (mapA != null && mapA.get("x-amzn-RequestId") != null) {
            mapE.put(ResponseMetadata.a, mapA.get("x-amzn-RequestId"));
        }
        amazonWebServiceResponse.a(new ResponseMetadata(mapE));
        b.a("Done parsing service response");
        return amazonWebServiceResponse;
    }
}
