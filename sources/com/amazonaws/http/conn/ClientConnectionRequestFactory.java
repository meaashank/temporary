package com.amazonaws.http.conn;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.metrics.ServiceLatencyProvider;
import com.amazonaws.util.AWSServiceMetrics;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import org.apache.http.conn.ClientConnectionRequest;

/* JADX INFO: loaded from: classes.dex */
class ClientConnectionRequestFactory {
    private static final Log a = LogFactory.a(ClientConnectionRequestFactory.class);
    private static final Class<?>[] b = {ClientConnectionRequest.class, Wrapped.class};

    ClientConnectionRequestFactory() {
    }

    static ClientConnectionRequest a(ClientConnectionRequest clientConnectionRequest) {
        if (clientConnectionRequest instanceof Wrapped) {
            throw new IllegalArgumentException();
        }
        return (ClientConnectionRequest) Proxy.newProxyInstance(ClientConnectionRequestFactory.class.getClassLoader(), b, new Handler(clientConnectionRequest));
    }

    private static class Handler implements InvocationHandler {
        private final ClientConnectionRequest a;

        Handler(ClientConnectionRequest clientConnectionRequest) {
            this.a = clientConnectionRequest;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                if ("getConnection".equals(method.getName())) {
                    ServiceLatencyProvider serviceLatencyProvider = new ServiceLatencyProvider(AWSServiceMetrics.HttpClientGetConnectionTime);
                    try {
                        return method.invoke(this.a, objArr);
                    } finally {
                        AwsSdkMetrics.getServiceMetricCollector().a(serviceLatencyProvider.b());
                    }
                }
                return method.invoke(this.a, objArr);
            } catch (InvocationTargetException e) {
                ClientConnectionRequestFactory.a.b("", e);
                throw e.getCause();
            }
        }
    }
}
