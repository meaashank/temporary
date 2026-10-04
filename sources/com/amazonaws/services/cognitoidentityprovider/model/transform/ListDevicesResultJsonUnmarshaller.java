package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ListDevicesResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class ListDevicesResultJsonUnmarshaller implements Unmarshaller<ListDevicesResult, JsonUnmarshallerContext> {
    private static ListDevicesResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public ListDevicesResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        ListDevicesResult listDevicesResult = new ListDevicesResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("Devices")) {
                listDevicesResult.a(new ListUnmarshaller(DeviceTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("PaginationToken")) {
                listDevicesResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return listDevicesResult;
    }

    public static ListDevicesResultJsonUnmarshaller a() {
        if (a == null) {
            a = new ListDevicesResultJsonUnmarshaller();
        }
        return a;
    }
}
