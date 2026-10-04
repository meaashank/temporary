package com.amazonaws.http;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.IOUtils;
import com.amazonaws.util.XpathUtils;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import org.w3c.dom.Document;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes.dex */
public class DefaultErrorResponseHandler implements HttpResponseHandler<AmazonServiceException> {
    private static final Log a = LogFactory.a(DefaultErrorResponseHandler.class);
    private List<Unmarshaller<AmazonServiceException, Node>> b;

    @Override // com.amazonaws.http.HttpResponseHandler
    public boolean a() {
        return false;
    }

    public DefaultErrorResponseHandler(List<Unmarshaller<AmazonServiceException, Node>> list) {
        this.b = list;
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public AmazonServiceException b(HttpResponse httpResponse) {
        try {
            String string = IOUtils.toString(httpResponse.b());
            try {
                Document documentA = XpathUtils.a(string);
                Iterator<Unmarshaller<AmazonServiceException, Node>> it = this.b.iterator();
                while (it.hasNext()) {
                    AmazonServiceException amazonServiceExceptionA = it.next().a(documentA);
                    if (amazonServiceExceptionA != null) {
                        amazonServiceExceptionA.a(httpResponse.e());
                        return amazonServiceExceptionA;
                    }
                }
                throw new AmazonClientException("Unable to unmarshall error response from service");
            } catch (Exception e) {
                return a(String.format("Unable to unmarshall error response (%s)", string), httpResponse, e);
            }
        } catch (IOException e2) {
            if (a.a()) {
                a.b("Failed in reading the error response", e2);
            }
            return a("Unable to unmarshall error response", httpResponse, e2);
        }
    }

    private AmazonServiceException a(String str, HttpResponse httpResponse, Exception exc) {
        AmazonServiceException amazonServiceException = new AmazonServiceException(str, exc);
        int iE = httpResponse.e();
        amazonServiceException.c(iE + " " + httpResponse.d());
        amazonServiceException.a(AmazonServiceException.ErrorType.Unknown);
        amazonServiceException.a(iE);
        return amazonServiceException;
    }
}
