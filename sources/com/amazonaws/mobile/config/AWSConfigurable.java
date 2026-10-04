package com.amazonaws.mobile.config;

import android.content.Context;
import com.amazonaws.ClientConfiguration;

/* JADX INFO: loaded from: classes.dex */
public interface AWSConfigurable {
    AWSConfigurable a(Context context);

    AWSConfigurable a(Context context, AWSConfiguration aWSConfiguration);

    AWSConfigurable a(Context context, AWSConfiguration aWSConfiguration, ClientConfiguration clientConfiguration);
}
