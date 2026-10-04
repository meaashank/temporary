package com.amazonaws.http;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.Request;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HttpRequestFactory {
    private static final String a = "UTF-8";

    public HttpRequest a(Request<?> request, ClientConfiguration clientConfiguration, ExecutionContext executionContext) {
        boolean z = true;
        String strA = HttpUtils.a(request.f().toString(), request.c(), true);
        String strB = HttpUtils.b(request);
        HttpMethodName httpMethodNameE = request.e();
        boolean z2 = request.h() != null;
        if ((httpMethodNameE == HttpMethodName.POST) && !z2) {
            z = false;
        }
        if (strB != null && z) {
            strA = strA + "?" + strB;
        }
        HashMap map = new HashMap();
        a(map, request, executionContext, clientConfiguration);
        InputStream inputStreamH = request.h();
        if (httpMethodNameE == HttpMethodName.PATCH) {
            httpMethodNameE = HttpMethodName.POST;
            map.put("X-HTTP-Method-Override", HttpMethodName.PATCH.toString());
        }
        if (httpMethodNameE == HttpMethodName.POST && request.h() == null && strB != null) {
            byte[] bytes = strB.getBytes(StringUtils.a);
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
            map.put("Content-Length", String.valueOf(bytes.length));
            inputStreamH = byteArrayInputStream;
        }
        if (clientConfiguration.u() && map.get(io.fabric.sdk.android.services.network.HttpRequest.g) == null) {
            map.put(io.fabric.sdk.android.services.network.HttpRequest.g, io.fabric.sdk.android.services.network.HttpRequest.d);
        } else {
            map.put(io.fabric.sdk.android.services.network.HttpRequest.g, "identity");
        }
        HttpRequest httpRequest = new HttpRequest(httpMethodNameE.toString(), URI.create(strA), map, inputStreamH);
        httpRequest.a(request.k());
        return httpRequest;
    }

    private void a(Map<String, String> map, Request<?> request, ExecutionContext executionContext, ClientConfiguration clientConfiguration) {
        URI uriF = request.f();
        String host = uriF.getHost();
        if (HttpUtils.a(uriF)) {
            host = host + ":" + uriF.getPort();
        }
        map.put(HttpHeader.g, host);
        for (Map.Entry<String, String> entry : request.b().entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
        if (map.get("Content-Type") == null || map.get("Content-Type").isEmpty()) {
            map.put("Content-Type", "application/x-www-form-urlencoded; charset=" + StringUtils.d("UTF-8"));
        }
        if (executionContext == null || executionContext.a() == null) {
            return;
        }
        map.put("User-Agent", a(clientConfiguration, executionContext.a()));
    }

    private String a(ClientConfiguration clientConfiguration, String str) {
        if (clientConfiguration.c().contains(str)) {
            return clientConfiguration.c();
        }
        return clientConfiguration.c() + " " + str;
    }
}
