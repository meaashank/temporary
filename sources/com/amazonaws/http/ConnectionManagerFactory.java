package com.amazonaws.http;

import com.amazonaws.ClientConfiguration;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
class ConnectionManagerFactory {
    private static final int a = 80;
    private static final int b = 443;

    ConnectionManagerFactory() {
    }

    public static ThreadSafeClientConnManager a(ClientConfiguration clientConfiguration, HttpParams httpParams) {
        ConnManagerParams.setMaxConnectionsPerRoute(httpParams, new ConnPerRouteBean(clientConfiguration.b()));
        ConnManagerParams.setMaxTotalConnections(httpParams, clientConfiguration.b());
        SSLSocketFactory socketFactory = SSLSocketFactory.getSocketFactory();
        socketFactory.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        schemeRegistry.register(new Scheme("https", socketFactory, b));
        ThreadSafeClientConnManager threadSafeClientConnManager = new ThreadSafeClientConnManager(httpParams, schemeRegistry);
        if (clientConfiguration.o()) {
            IdleConnectionReaper.a(threadSafeClientConnManager);
        }
        return threadSafeClientConnManager;
    }
}
