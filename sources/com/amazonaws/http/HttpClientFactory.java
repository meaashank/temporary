package com.amazonaws.http;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.http.impl.client.HttpRequestNoRetryHandler;
import com.amazonaws.http.impl.client.SdkHttpClient;
import org.apache.http.HttpHost;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.NTCredentials;
import org.apache.http.conn.params.ConnRouteParams;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultRedirectHandler;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
class HttpClientFactory {
    private static final int a = 80;
    private static final int b = 443;

    HttpClientFactory() {
    }

    public org.apache.http.client.HttpClient a(ClientConfiguration clientConfiguration) {
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, clientConfiguration.n());
        HttpConnectionParams.setSoTimeout(basicHttpParams, clientConfiguration.m());
        HttpConnectionParams.setStaleCheckingEnabled(basicHttpParams, true);
        HttpConnectionParams.setTcpNoDelay(basicHttpParams, true);
        int i = clientConfiguration.p()[0];
        int i2 = clientConfiguration.p()[1];
        if (i > 0 || i2 > 0) {
            HttpConnectionParams.setSocketBufferSize(basicHttpParams, Math.max(i, i2));
        }
        ThreadSafeClientConnManager threadSafeClientConnManagerA = ConnectionManagerFactory.a(clientConfiguration, basicHttpParams);
        SdkHttpClient sdkHttpClient = new SdkHttpClient(threadSafeClientConnManagerA, basicHttpParams);
        sdkHttpClient.setHttpRequestRetryHandler(HttpRequestNoRetryHandler.a);
        sdkHttpClient.setRedirectHandler(new LocationHeaderNotRequiredRedirectHandler());
        if (clientConfiguration.d() != null) {
            ConnRouteParams.setLocalAddress(basicHttpParams, clientConfiguration.d());
        }
        Scheme scheme = new Scheme("http", PlainSocketFactory.getSocketFactory(), 80);
        SSLSocketFactory socketFactory = SSLSocketFactory.getSocketFactory();
        socketFactory.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
        Scheme scheme2 = new Scheme("https", socketFactory, b);
        SchemeRegistry schemeRegistry = threadSafeClientConnManagerA.getSchemeRegistry();
        schemeRegistry.register(scheme);
        schemeRegistry.register(scheme2);
        String strE = clientConfiguration.e();
        int iF = clientConfiguration.f();
        if (strE != null && iF > 0) {
            AmazonHttpClient.a.c("Configuring Proxy. Proxy Host: " + strE + " Proxy Port: " + iF);
            sdkHttpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(strE, iF));
            String strG = clientConfiguration.g();
            String strH = clientConfiguration.h();
            String strI = clientConfiguration.i();
            String strJ = clientConfiguration.j();
            if (strG != null && strH != null) {
                sdkHttpClient.getCredentialsProvider().setCredentials(new AuthScope(strE, iF), new NTCredentials(strG, strH, strJ, strI));
            }
        }
        return sdkHttpClient;
    }

    private static final class LocationHeaderNotRequiredRedirectHandler extends DefaultRedirectHandler {
        private LocationHeaderNotRequiredRedirectHandler() {
        }

        @Override // org.apache.http.impl.client.DefaultRedirectHandler, org.apache.http.client.RedirectHandler
        public boolean isRedirectRequested(org.apache.http.HttpResponse httpResponse, HttpContext httpContext) {
            int statusCode = httpResponse.getStatusLine().getStatusCode();
            if (httpResponse.getFirstHeader("location") == null && statusCode == 301) {
                return false;
            }
            return super.isRedirectRequested(httpResponse, httpContext);
        }
    }
}
