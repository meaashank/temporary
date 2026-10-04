package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminListDevicesResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class AdminListDevicesResultJsonUnmarshaller implements Unmarshaller<AdminListDevicesResult, JsonUnmarshallerContext> {
    private static AdminListDevicesResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminListDevicesResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AdminListDevicesResult adminListDevicesResult = new AdminListDevicesResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("Devices")) {
                adminListDevicesResult.a(new ListUnmarshaller(DeviceTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("PaginationToken")) {
                adminListDevicesResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return adminListDevicesResult;
    }

    public static AdminListDevicesResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminListDevicesResultJsonUnmarshaller();
        }
        return a;
    }
}
