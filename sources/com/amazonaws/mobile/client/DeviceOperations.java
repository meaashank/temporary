package com.amazonaws.mobile.client;

import com.amazonaws.mobile.client.internal.ReturningRunnable;
import com.amazonaws.mobile.client.results.Device;
import com.amazonaws.mobile.client.results.ListDevicesResult;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice;
import com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProvider;
import com.amazonaws.services.cognitoidentityprovider.model.AttributeType;
import com.amazonaws.services.cognitoidentityprovider.model.DeviceRememberedStatusType;
import com.amazonaws.services.cognitoidentityprovider.model.DeviceType;
import com.amazonaws.services.cognitoidentityprovider.model.ForgetDeviceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.GetDeviceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ListDevicesRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateDeviceStatusRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class DeviceOperations {
    private final AWSMobileClient a;
    private final AmazonCognitoIdentityProvider b;

    DeviceOperations(AWSMobileClient aWSMobileClient, AmazonCognitoIdentityProvider amazonCognitoIdentityProvider) {
        this.a = aWSMobileClient;
        this.b = amazonCognitoIdentityProvider;
    }

    public Device a() {
        return c((String) null).c();
    }

    public void a(Callback<Device> callback) {
        c((String) null).a(callback);
    }

    public Device a(String str) {
        return c(str).c();
    }

    public void a(String str, Callback<Device> callback) {
        c(str).a(callback);
    }

    private ReturningRunnable<Device> c(final String str) {
        return new ReturningRunnable<Device>() { // from class: com.amazonaws.mobile.client.DeviceOperations.1
            @Override // com.amazonaws.mobile.client.internal.ReturningRunnable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Device b() {
                CognitoDevice cognitoDeviceE = DeviceOperations.this.e(str);
                GetDeviceRequest getDeviceRequest = new GetDeviceRequest();
                getDeviceRequest.c(DeviceOperations.this.a.y().a().a());
                getDeviceRequest.a(cognitoDeviceE.a());
                return DeviceOperations.this.a(DeviceOperations.this.b.a(getDeviceRequest).a());
            }
        };
    }

    public ListDevicesResult b() {
        return b((Integer) 60, (String) null).c();
    }

    public void b(Callback<ListDevicesResult> callback) {
        b((Integer) 60, (String) null).a(callback);
    }

    public ListDevicesResult a(Integer num, String str) {
        return b(num, str).c();
    }

    public void a(Integer num, String str, Callback<ListDevicesResult> callback) {
        b(num, str).a(callback);
    }

    private ReturningRunnable<ListDevicesResult> b(final Integer num, final String str) {
        return new ReturningRunnable<ListDevicesResult>() { // from class: com.amazonaws.mobile.client.DeviceOperations.2
            @Override // com.amazonaws.mobile.client.internal.ReturningRunnable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ListDevicesResult b() {
                ListDevicesRequest listDevicesRequest = new ListDevicesRequest();
                listDevicesRequest.a(DeviceOperations.this.a.y().a().a());
                listDevicesRequest.a(num);
                listDevicesRequest.c(str);
                com.amazonaws.services.cognitoidentityprovider.model.ListDevicesResult listDevicesResultA = DeviceOperations.this.b.a(listDevicesRequest);
                ArrayList arrayList = new ArrayList(num.intValue());
                Iterator<DeviceType> it = listDevicesResultA.a().iterator();
                while (it.hasNext()) {
                    arrayList.add(DeviceOperations.this.a(it.next()));
                }
                return new ListDevicesResult(arrayList, listDevicesResultA.b());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Device a(DeviceType deviceType) {
        HashMap map = new HashMap();
        for (AttributeType attributeType : deviceType.b()) {
            map.put(attributeType.a(), attributeType.b());
        }
        return new Device(deviceType.a(), map, deviceType.c(), deviceType.d(), deviceType.e());
    }

    public void a(boolean z) {
        b((String) null, z).c();
    }

    public void a(boolean z, Callback<Void> callback) {
        b((String) null, z).a(callback);
    }

    public void a(String str, boolean z) {
        b(str, z).c();
    }

    public void a(String str, boolean z, Callback<Void> callback) {
        b(str, z).a(callback);
    }

    private ReturningRunnable<Void> b(final String str, final boolean z) {
        return new ReturningRunnable<Void>() { // from class: com.amazonaws.mobile.client.DeviceOperations.3
            @Override // com.amazonaws.mobile.client.internal.ReturningRunnable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Void b() {
                DeviceOperations.this.b.a(new UpdateDeviceStatusRequest().b(DeviceOperations.this.a.y().a().a()).d(DeviceOperations.this.e(str).a()).b(z ? DeviceRememberedStatusType.Remembered : DeviceRememberedStatusType.Not_remembered));
                return null;
            }
        };
    }

    public void c() {
        d(null).c();
    }

    public void c(Callback<Void> callback) {
        d(null).a(callback);
    }

    public void b(String str) {
        d(str).c();
    }

    public void b(String str, Callback<Void> callback) {
        d(str).a(callback);
    }

    private ReturningRunnable<Void> d(final String str) {
        return new ReturningRunnable<Void>() { // from class: com.amazonaws.mobile.client.DeviceOperations.4
            @Override // com.amazonaws.mobile.client.internal.ReturningRunnable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Void b() {
                DeviceOperations.this.b.a(new ForgetDeviceRequest().b(DeviceOperations.this.a.y().a().a()).d(DeviceOperations.this.e(str).a()));
                return null;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CognitoDevice e(String str) {
        if (str == null) {
            str = this.a.j.c().f().a();
        }
        return new CognitoDevice(str, null, null, null, null, this.a.j.c(), this.a.l);
    }
}
