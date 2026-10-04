package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UpdateDeviceStatusResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class UpdateDeviceStatusResultJsonUnmarshaller implements Unmarshaller<UpdateDeviceStatusResult, JsonUnmarshallerContext> {
    private static UpdateDeviceStatusResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public UpdateDeviceStatusResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new UpdateDeviceStatusResult();
    }

    public static UpdateDeviceStatusResultJsonUnmarshaller a() {
        if (a == null) {
            a = new UpdateDeviceStatusResultJsonUnmarshaller();
        }
        return a;
    }
}
