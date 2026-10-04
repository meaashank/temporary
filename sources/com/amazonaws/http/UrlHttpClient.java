package com.amazonaws.http;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

/* JADX INFO: loaded from: classes.dex */
public class UrlHttpClient implements HttpClient {
    private static final String a = "amazonaws";
    private static final Log b = LogFactory.a(UrlHttpClient.class);
    private static final int c = 1024;
    private static final int d = 8;
    private final ClientConfiguration e;
    private SSLContext f = null;

    @Override // com.amazonaws.http.HttpClient
    public void a() {
    }

    public UrlHttpClient(ClientConfiguration clientConfiguration) {
        this.e = clientConfiguration;
    }

    @Override // com.amazonaws.http.HttpClient
    public HttpResponse a(HttpRequest httpRequest) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) httpRequest.b().toURL().openConnection();
        CurlBuilder curlBuilder = this.e.t() ? new CurlBuilder(httpRequest.b().toURL()) : null;
        d(httpRequest, httpURLConnection);
        b(httpRequest, httpURLConnection, curlBuilder);
        a(httpRequest, httpURLConnection, curlBuilder);
        if (curlBuilder != null) {
            if (curlBuilder.a()) {
                a(curlBuilder.b());
            } else {
                a("Failed to create curl, content too long");
            }
        }
        return a(httpRequest, httpURLConnection);
    }

    HttpResponse a(HttpRequest httpRequest, HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream;
        String responseMessage = httpURLConnection.getResponseMessage();
        int responseCode = httpURLConnection.getResponseCode();
        InputStream errorStream = httpURLConnection.getErrorStream();
        if (errorStream != null || io.fabric.sdk.android.services.network.HttpRequest.y.equals(httpRequest.a())) {
            inputStream = errorStream;
        } else {
            try {
                inputStream = httpURLConnection.getInputStream();
            } catch (IOException unused) {
                inputStream = errorStream;
            }
        }
        HttpResponse.Builder builderA = HttpResponse.f().a(responseCode).a(responseMessage).a(inputStream);
        for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
            if (entry.getKey() != null) {
                builderA.a(entry.getKey(), entry.getValue().get(0));
            }
        }
        return builderA.a();
    }

    void b(HttpRequest httpRequest, HttpURLConnection httpURLConnection) throws IOException {
        a(httpRequest, httpURLConnection, null);
    }

    void a(HttpRequest httpRequest, HttpURLConnection httpURLConnection, CurlBuilder curlBuilder) throws IOException {
        if (httpRequest.d() == null || httpRequest.e() < 0) {
            return;
        }
        httpURLConnection.setDoOutput(true);
        if (!httpRequest.f()) {
            httpURLConnection.setFixedLengthStreamingMode((int) httpRequest.e());
        }
        OutputStream outputStream = httpURLConnection.getOutputStream();
        ByteBuffer byteBufferAllocate = null;
        if (curlBuilder != null) {
            if (httpRequest.e() < 2147483647L) {
                byteBufferAllocate = ByteBuffer.allocate((int) httpRequest.e());
            } else {
                curlBuilder.a(true);
            }
        }
        a(httpRequest.d(), outputStream, curlBuilder, byteBufferAllocate);
        if (curlBuilder != null && byteBufferAllocate != null && byteBufferAllocate.position() != 0) {
            curlBuilder.b(new String(byteBufferAllocate.array(), "UTF-8"));
        }
        outputStream.flush();
        outputStream.close();
    }

    HttpURLConnection c(HttpRequest httpRequest, HttpURLConnection httpURLConnection) {
        return b(httpRequest, httpURLConnection, null);
    }

    HttpURLConnection b(HttpRequest httpRequest, HttpURLConnection httpURLConnection, CurlBuilder curlBuilder) throws ProtocolException {
        if (httpRequest.c() != null && !httpRequest.c().isEmpty()) {
            if (curlBuilder != null) {
                curlBuilder.a(httpRequest.c());
            }
            for (Map.Entry<String, String> entry : httpRequest.c().entrySet()) {
                String key = entry.getKey();
                if (!key.equals("Content-Length") && !key.equals(HttpHeader.g)) {
                    key.equals(HttpHeader.f);
                    httpURLConnection.setRequestProperty(key, entry.getValue());
                }
            }
        }
        String strA = httpRequest.a();
        httpURLConnection.setRequestMethod(strA);
        if (curlBuilder != null) {
            curlBuilder.a(strA);
        }
        return httpURLConnection;
    }

    protected void a(String str) {
        b.b(str);
    }

    protected HttpURLConnection a(URL url) {
        return (HttpURLConnection) url.openConnection();
    }

    private void a(InputStream inputStream, OutputStream outputStream, CurlBuilder curlBuilder, ByteBuffer byteBuffer) throws IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return;
            }
            if (byteBuffer != null) {
                try {
                    byteBuffer.put(bArr, 0, i);
                } catch (BufferOverflowException unused) {
                    curlBuilder.a(true);
                }
            }
            outputStream.write(bArr, 0, i);
        }
    }

    void d(HttpRequest httpRequest, HttpURLConnection httpURLConnection) {
        httpURLConnection.setConnectTimeout(this.e.n());
        httpURLConnection.setReadTimeout(this.e.m());
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setUseCaches(false);
        if (httpRequest.f()) {
            httpURLConnection.setChunkedStreamingMode(0);
        }
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            if (this.e.s() != null) {
                a(httpsURLConnection);
            }
        }
    }

    private void a(HttpsURLConnection httpsURLConnection) {
        if (this.f == null) {
            TrustManager[] trustManagerArr = {this.e.s()};
            try {
                this.f = SSLContext.getInstance("TLS");
                this.f.init(null, trustManagerArr, null);
            } catch (GeneralSecurityException e) {
                throw new RuntimeException(e);
            }
        }
        httpsURLConnection.setSSLSocketFactory(this.f.getSocketFactory());
    }

    protected final class CurlBuilder {
        private final URL b;
        private String c = null;
        private final HashMap<String, String> d = new HashMap<>();
        private String e = null;
        private boolean f = false;

        public CurlBuilder(URL url) {
            if (url == null) {
                throw new IllegalArgumentException("Must have a valid url");
            }
            this.b = url;
        }

        public CurlBuilder a(String str) {
            this.c = str;
            return this;
        }

        public CurlBuilder a(Map<String, String> map) {
            this.d.clear();
            this.d.putAll(map);
            return this;
        }

        public CurlBuilder b(String str) {
            this.e = str;
            return this;
        }

        public CurlBuilder a(boolean z) {
            this.f = z;
            return this;
        }

        public boolean a() {
            return !this.f;
        }

        public String b() {
            if (!a()) {
                throw new IllegalStateException("Invalid state, cannot create curl command");
            }
            StringBuilder sb = new StringBuilder("curl");
            if (this.c != null) {
                sb.append(" -X ");
                sb.append(this.c);
            }
            for (Map.Entry<String, String> entry : this.d.entrySet()) {
                sb.append(" -H \"");
                sb.append(entry.getKey());
                sb.append(":");
                sb.append(entry.getValue());
                sb.append("\"");
            }
            if (this.e != null) {
                sb.append(" -d '");
                sb.append(this.e);
                sb.append("'");
            }
            sb.append(" ");
            sb.append(this.b.toString());
            return sb.toString();
        }
    }
}
