package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminUpdateDeviceStatusResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class AdminUpdateDeviceStatusResultJsonUnmarshaller implements Unmarshaller<AdminUpdateDeviceStatusResult, JsonUnmarshallerContext> {
    private static AdminUpdateDeviceStatusResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminUpdateDeviceStatusResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new AdminUpdateDeviceStatusResult();
    }

    public static AdminUpdateDeviceStatusResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminUpdateDeviceStatusResultJsonUnmarshaller();
        }
        return a;
    }
}
