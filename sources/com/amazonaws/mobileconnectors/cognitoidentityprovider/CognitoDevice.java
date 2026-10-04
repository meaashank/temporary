package com.amazonaws.mobileconnectors.cognitoidentityprovider;

import android.content.Context;
import android.os.Handler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoInternalErrorException;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoNotAuthorizedException;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoParameterInvalidException;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.GenericHandler;
import com.amazonaws.services.cognitoidentityprovider.model.DeviceType;
import com.amazonaws.services.cognitoidentityprovider.model.ForgetDeviceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.GetDeviceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.GetDeviceResult;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateDeviceStatusRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateDeviceStatusResult;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class CognitoDevice {
    private static final String a = "device_name";
    private static final String b = "remembered";
    private static final String c = "not_remembered";
    private final String d;
    private CognitoUserAttributes e;
    private final Date f;
    private Date g;
    private Date h;
    private final CognitoUser i;
    private final Context j;

    public CognitoDevice(String str, CognitoUserAttributes cognitoUserAttributes, Date date, Date date2, Date date3, CognitoUser cognitoUser, Context context) {
        this.d = str;
        this.e = cognitoUserAttributes;
        this.f = date;
        this.g = date2;
        this.h = date3;
        this.i = cognitoUser;
        this.j = context;
    }

    public CognitoDevice(DeviceType deviceType, CognitoUser cognitoUser, Context context) {
        this.d = deviceType.a();
        this.e = new CognitoUserAttributes(deviceType.b());
        this.f = deviceType.c();
        this.g = deviceType.d();
        this.h = deviceType.d();
        this.i = cognitoUser;
        this.j = context;
    }

    public String a() {
        return this.d;
    }

    public CognitoUserAttributes b() {
        return this.e;
    }

    public String a(String str) {
        try {
            return this.e.a().get(str);
        } catch (Exception unused) {
            return null;
        }
    }

    public String c() {
        return a(a);
    }

    public Date d() {
        return this.f;
    }

    public Date e() {
        return this.g;
    }

    public Date f() {
        return this.h;
    }

    public void a(final GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.1
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoDevice.this.j.getMainLooper());
                try {
                    CognitoDevice.this.a(CognitoDevice.this.b(CognitoDevice.this.i.d()).a());
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a();
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void b(GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            a(b(this.i.d()).a());
            genericHandler.a();
        } catch (Exception e) {
            genericHandler.a(e);
        }
    }

    public void c(final GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.2
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoDevice.this.j.getMainLooper());
                try {
                    CognitoDevice.this.a(CognitoDevice.this.i.d());
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a();
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void d(GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            a(this.i.d());
            genericHandler.a();
        } catch (Exception e) {
            genericHandler.a(e);
        }
    }

    public void e(final GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.3
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoDevice.this.j.getMainLooper());
                try {
                    CognitoDevice.this.a(CognitoDevice.this.i.d(), CognitoDevice.b);
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a();
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void f(GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            a(this.i.d(), b);
        } catch (Exception e) {
            genericHandler.a(e);
        }
    }

    public void g(final GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.4
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoDevice.this.j.getMainLooper());
                try {
                    CognitoDevice.this.a(CognitoDevice.this.i.d(), CognitoDevice.c);
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a();
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice.4.2
                        @Override // java.lang.Runnable
                        public void run() {
                            genericHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void h(GenericHandler genericHandler) {
        if (genericHandler == null) {
            throw new CognitoParameterInvalidException("callback is null");
        }
        try {
            a(this.i.d(), c);
        } catch (Exception e) {
            genericHandler.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CognitoUserSession cognitoUserSession) {
        if (cognitoUserSession != null && cognitoUserSession.d()) {
            if (this.d != null) {
                ForgetDeviceRequest forgetDeviceRequest = new ForgetDeviceRequest();
                forgetDeviceRequest.a(cognitoUserSession.b().a());
                forgetDeviceRequest.c(this.d);
                this.i.c().a(forgetDeviceRequest);
                return;
            }
            throw new CognitoParameterInvalidException("Device key is null");
        }
        throw new CognitoNotAuthorizedException("User is not authorized");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public GetDeviceResult b(CognitoUserSession cognitoUserSession) {
        if (cognitoUserSession != null && cognitoUserSession.d()) {
            if (this.d != null) {
                GetDeviceRequest getDeviceRequest = new GetDeviceRequest();
                getDeviceRequest.c(cognitoUserSession.b().a());
                getDeviceRequest.a(this.d);
                return this.i.c().a(getDeviceRequest);
            }
            throw new CognitoParameterInvalidException("Device key is null");
        }
        throw new CognitoNotAuthorizedException("User is not authorized");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UpdateDeviceStatusResult a(CognitoUserSession cognitoUserSession, String str) {
        if (cognitoUserSession != null && cognitoUserSession.d()) {
            if (this.d != null) {
                UpdateDeviceStatusRequest updateDeviceStatusRequest = new UpdateDeviceStatusRequest();
                updateDeviceStatusRequest.a(cognitoUserSession.b().a());
                updateDeviceStatusRequest.c(this.d);
                updateDeviceStatusRequest.e(str);
                return this.i.c().a(updateDeviceStatusRequest);
            }
            throw new CognitoParameterInvalidException("Device key is invalid");
        }
        throw new CognitoNotAuthorizedException("User is not authorized");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(DeviceType deviceType) {
        if (deviceType == null) {
            throw new CognitoInternalErrorException("Service returned null object, this object was not updated");
        }
        if (!deviceType.a().equals(this.d)) {
            throw new CognitoInternalErrorException("Service error, this object was not updated");
        }
        this.e = new CognitoUserAttributes(deviceType.b());
        this.g = deviceType.d();
        this.h = deviceType.d();
    }
}
