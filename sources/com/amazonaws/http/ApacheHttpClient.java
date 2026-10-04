package com.amazonaws.http;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.http.HttpResponse;
import java.io.IOException;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.impl.client.DefaultHttpRequestRetryHandler;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
public class ApacheHttpClient implements HttpClient {
    private final org.apache.http.client.HttpClient a;
    private HttpParams b = null;

    public ApacheHttpClient(ClientConfiguration clientConfiguration) {
        this.a = new HttpClientFactory().a(clientConfiguration);
        ((AbstractHttpClient) this.a).setHttpRequestRetryHandler(new DefaultHttpRequestRetryHandler(0, false));
        ((SSLSocketFactory) this.a.getConnectionManager().getSchemeRegistry().getScheme("https").getSocketFactory()).setHostnameVerifier(SSLSocketFactory.BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    @Override // com.amazonaws.http.HttpClient
    public HttpResponse a(HttpRequest httpRequest) throws IOException {
        org.apache.http.HttpResponse httpResponseExecute = this.a.execute(b(httpRequest));
        HttpResponse.Builder builderA = HttpResponse.f().a(httpResponseExecute.getStatusLine().getStatusCode()).a(httpResponseExecute.getStatusLine().getReasonPhrase()).a(httpResponseExecute.getEntity() != null ? httpResponseExecute.getEntity().getContent() : null);
        for (Header header : httpResponseExecute.getAllHeaders()) {
            builderA.a(header.getName(), header.getValue());
        }
        return builderA.a();
    }

    @Override // com.amazonaws.http.HttpClient
    public void a() {
        this.a.getConnectionManager().shutdown();
    }

    private HttpUriRequest b(HttpRequest httpRequest) {
        HttpUriRequest httpHead;
        String strA = httpRequest.a();
        if (io.fabric.sdk.android.services.network.HttpRequest.A.equals(strA)) {
            HttpPost httpPost = new HttpPost(httpRequest.b());
            httpHead = httpPost;
            if (httpRequest.d() != null) {
                httpPost.setEntity(new InputStreamEntity(httpRequest.d(), httpRequest.e()));
                httpHead = httpPost;
            }
        } else if (io.fabric.sdk.android.services.network.HttpRequest.x.equals(strA)) {
            httpHead = new HttpGet(httpRequest.b());
        } else if (io.fabric.sdk.android.services.network.HttpRequest.B.equals(strA)) {
            HttpPut httpPut = new HttpPut(httpRequest.b());
            httpHead = httpPut;
            if (httpRequest.d() != null) {
                httpPut.setEntity(new InputStreamEntity(httpRequest.d(), httpRequest.e()));
                httpHead = httpPut;
            }
        } else if (io.fabric.sdk.android.services.network.HttpRequest.w.equals(strA)) {
            httpHead = new HttpDelete(httpRequest.b());
        } else if (io.fabric.sdk.android.services.network.HttpRequest.y.equals(strA)) {
            httpHead = new HttpHead(httpRequest.b());
        } else {
            throw new UnsupportedOperationException("Unsupported method: " + strA);
        }
        if (httpRequest.c() != null && !httpRequest.c().isEmpty()) {
            for (Map.Entry<String, String> entry : httpRequest.c().entrySet()) {
                String key = entry.getKey();
                if (!key.equals("Content-Length") && !key.equals(HttpHeader.g)) {
                    httpHead.addHeader(entry.getKey(), entry.getValue());
                }
            }
        }
        if (this.b == null) {
            this.b = new BasicHttpParams();
            this.b.setParameter("http.protocol.handle-redirects", false);
        }
        httpHead.setParams(this.b);
        return httpHead;
    }
}
