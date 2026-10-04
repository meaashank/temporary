package com.amazonaws.mobileconnectors.cognitoidentityprovider;

import android.content.Context;
import android.os.Handler;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.auth.AnonymousAWSCredentials;
import com.amazonaws.cognito.clientcontext.data.UserContextDataProvider;
import com.amazonaws.internal.keyvaluestore.AWSKeyValueStore;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.mobile.config.AWSConfiguration;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.SignUpHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoDeviceHelper;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoPinpointSharedContext;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoSecretHash;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProvider;
import com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProviderClient;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.AttributeType;
import com.amazonaws.services.cognitoidentityprovider.model.SignUpRequest;
import com.amazonaws.services.cognitoidentityprovider.model.SignUpResult;
import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class CognitoUserPool {
    private static final Log b = LogFactory.a(CognitoUserPool.class);
    private static final String l = "CognitoIdentityProviderCache";
    AWSKeyValueStore a;
    private final String c;
    private final String d;
    private final String e;
    private final Context f;
    private final AmazonCognitoIdentityProvider g;
    private String h;
    private String i;
    private boolean j;
    private boolean k;

    @Deprecated
    public CognitoUserPool(Context context, String str, String str2, String str3, ClientConfiguration clientConfiguration) {
        this(context, str, str2, str3, clientConfiguration, Regions.US_EAST_1);
    }

    @Deprecated
    public CognitoUserPool(Context context, String str, String str2, String str3) {
        this(context, str, str2, str3, new ClientConfiguration(), Regions.US_EAST_1);
    }

    public CognitoUserPool(Context context, AWSConfiguration aWSConfiguration) {
        this.j = true;
        this.k = true;
        try {
            a(context);
            JSONObject jSONObjectA = aWSConfiguration.a("CognitoUserPool");
            this.f = context;
            this.c = jSONObjectA.getString("PoolId");
            this.d = jSONObjectA.getString("AppClientId");
            this.e = jSONObjectA.optString("AppClientSecret");
            this.i = CognitoPinpointSharedContext.a(context, jSONObjectA.optString("PinpointAppId"));
            ClientConfiguration clientConfiguration = new ClientConfiguration();
            clientConfiguration.a(aWSConfiguration.a());
            this.g = new AmazonCognitoIdentityProviderClient(new AnonymousAWSCredentials(), clientConfiguration);
            this.g.a(Region.a(Regions.fromName(jSONObjectA.getString("Region"))));
        } catch (Exception e) {
            throw new IllegalArgumentException("Failed to read PoolId, AppClientId, AppClientSecret, or Region from AWSConfiguration please check your setup or awsconfiguration.json file", e);
        }
    }

    public CognitoUserPool(Context context, String str, String str2, String str3, Regions regions) {
        this(context, str, str2, str3, new ClientConfiguration(), regions);
    }

    public CognitoUserPool(Context context, String str, String str2, String str3, Regions regions, String str4) {
        this(context, str, str2, str3, new ClientConfiguration(), regions, str4);
    }

    public CognitoUserPool(Context context, String str, String str2, String str3, ClientConfiguration clientConfiguration, Regions regions) {
        this(context, str, str2, str3, clientConfiguration, regions, null);
    }

    public CognitoUserPool(Context context, String str, String str2, String str3, ClientConfiguration clientConfiguration, Regions regions, String str4) {
        this.j = true;
        this.k = true;
        a(context);
        this.f = context;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.g = new AmazonCognitoIdentityProviderClient(new AnonymousAWSCredentials(), clientConfiguration);
        this.g.a(Region.a(regions));
        this.i = CognitoPinpointSharedContext.a(context, str4);
    }

    public CognitoUserPool(Context context, String str, String str2, String str3, AmazonCognitoIdentityProvider amazonCognitoIdentityProvider) {
        this(context, str, str2, str3, amazonCognitoIdentityProvider, (String) null);
    }

    public CognitoUserPool(Context context, String str, String str2, String str3, AmazonCognitoIdentityProvider amazonCognitoIdentityProvider, String str4) {
        this.j = true;
        this.k = true;
        a(context);
        this.f = context;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.g = amazonCognitoIdentityProvider;
        this.i = CognitoPinpointSharedContext.a(context, str4);
    }

    private void a(Context context) {
        this.a = new AWSKeyValueStore(context, l, this.k);
        CognitoDeviceHelper.a(this.k);
    }

    public String a() {
        return this.d;
    }

    public String b() {
        return this.c;
    }

    public void a(boolean z) {
        this.j = z;
    }

    public void b(boolean z) {
        this.k = z;
        this.a.a(this.k);
        CognitoDeviceHelper.a(z);
    }

    public void a(final String str, final String str2, final CognitoUserAttributes cognitoUserAttributes, final Map<String, String> map, final SignUpHandler signUpHandler) {
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool.1
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUserPool.this.f.getMainLooper());
                try {
                    final SignUpResult signUpResultA = CognitoUserPool.this.a(str, str2, cognitoUserAttributes, map);
                    final CognitoUser cognitoUserA = CognitoUserPool.this.a(str);
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            signUpHandler.a(cognitoUserA, signUpResultA.b().booleanValue(), new CognitoUserCodeDeliveryDetails(signUpResultA.c()));
                        }
                    };
                } catch (Exception e) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            signUpHandler.a(e);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public void b(String str, String str2, CognitoUserAttributes cognitoUserAttributes, Map<String, String> map, SignUpHandler signUpHandler) {
        try {
            SignUpResult signUpResultA = a(str, str2, cognitoUserAttributes, map);
            signUpHandler.a(a(str), signUpResultA.b().booleanValue(), new CognitoUserCodeDeliveryDetails(signUpResultA.c()));
        } catch (Exception e) {
            signUpHandler.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SignUpResult a(String str, String str2, CognitoUserAttributes cognitoUserAttributes, Map<String, String> map) {
        ArrayList arrayList;
        if (map != null) {
            arrayList = new ArrayList();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                AttributeType attributeType = new AttributeType();
                attributeType.a(entry.getKey());
                attributeType.c(entry.getValue());
                arrayList.add(attributeType);
            }
        } else {
            arrayList = null;
        }
        this.h = CognitoSecretHash.a(str, this.d, this.e);
        SignUpRequest signUpRequestB = new SignUpRequest().f(str).h(str2).b(this.d).d(this.h).b(cognitoUserAttributes.b()).d(arrayList).b(b(str));
        String strE = e();
        if (strE != null) {
            AnalyticsMetadataType analyticsMetadataType = new AnalyticsMetadataType();
            analyticsMetadataType.a(strE);
            signUpRequestB.a(analyticsMetadataType);
        }
        return this.g.a(signUpRequestB);
    }

    public CognitoUser c() {
        String str = "CognitoIdentityProvider." + this.d + ".LastAuthUser";
        if (this.a.a(str)) {
            return a(this.a.b(str));
        }
        return d();
    }

    public CognitoUser d() {
        return new CognitoUser(this, null, this.d, this.e, null, this.g, this.f);
    }

    public CognitoUser a(String str) {
        if (str == null) {
            return d();
        }
        if (str.isEmpty()) {
            return d();
        }
        return new CognitoUser(this, str, this.d, this.e, CognitoSecretHash.a(str, this.d, this.e), this.g, this.f);
    }

    protected String e() {
        return this.i;
    }

    protected UserContextDataType b(String str) {
        if (!this.j) {
            return null;
        }
        String strA = UserContextDataProvider.a().a(this.f, str, b(), this.d);
        UserContextDataType userContextDataType = new UserContextDataType();
        userContextDataType.a(strA);
        return userContextDataType;
    }
}
