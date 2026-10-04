package com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface DevicesHandler {
    void a(Exception exc);

    void a(List<CognitoDevice> list);
}
