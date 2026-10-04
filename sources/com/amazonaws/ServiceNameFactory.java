package com.amazonaws;

import com.amazonaws.internal.config.HttpClientConfig;
import com.amazonaws.internal.config.InternalConfig;

/* JADX INFO: loaded from: classes.dex */
enum ServiceNameFactory {
    ;

    static String getServiceName(String str) {
        HttpClientConfig httpClientConfigB = InternalConfig.Factory.a().b(str);
        if (httpClientConfigB == null) {
            return null;
        }
        return httpClientConfigB.a();
    }
}
