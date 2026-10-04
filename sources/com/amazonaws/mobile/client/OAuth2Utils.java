package com.amazonaws.mobile.client;

import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.support.customtabs.CustomTabsCallback;
import android.support.customtabs.CustomTabsClient;
import android.support.customtabs.CustomTabsIntent;
import android.support.customtabs.CustomTabsServiceConnection;
import android.support.customtabs.CustomTabsSession;
import com.amazonaws.mobileconnectors.cognitoauth.util.Pkce;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.drive.DriveFile;
import com.prism.hide.f.b;
import java.util.Map;

/* JADX INFO: compiled from: AWSMobileClient.java */
/* JADX INFO: loaded from: classes.dex */
class OAuth2Utils {
    private final Context a;
    private final Uri b;
    private CustomTabsServiceConnection c;
    private CustomTabsClient d;
    private CustomTabsSession e;
    private CustomTabsCallback f = new CustomTabsCallback();
    private String g;
    private String h;
    private String i;

    Uri a(String str) {
        return null;
    }

    OAuth2Utils(Context context, Uri uri) {
        this.a = context;
        this.b = uri;
    }

    void a() {
        this.c = new CustomTabsServiceConnection() { // from class: com.amazonaws.mobile.client.OAuth2Utils.1
            @Override // android.support.customtabs.CustomTabsServiceConnection
            public void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
                OAuth2Utils.this.d = customTabsClient;
                OAuth2Utils.this.d.warmup(0L);
                OAuth2Utils.this.e = OAuth2Utils.this.d.newSession(OAuth2Utils.this.f);
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                OAuth2Utils.this.d = null;
            }
        };
        CustomTabsClient.bindCustomTabsService(this.a, "com.android.chrome", this.c);
    }

    void a(String str, String str2, Map<String, String> map) {
        this.g = Pkce.generateRandom();
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builderBuildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        if (!map.containsKey(b.m)) {
            builderBuildUpon.appendQueryParameter(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, b.m);
        }
        if (!map.containsKey("client_id")) {
            if (str2 != null) {
                builderBuildUpon.appendQueryParameter("client_id", str2);
            } else {
                throw new IllegalArgumentException("Client id must be specified for an authorization request.");
            }
        }
        builderBuildUpon.appendQueryParameter("state", this.g);
        a(builderBuildUpon.build());
    }

    void a(Uri uri) {
        CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder(this.e).build();
        customTabsIntentBuild.intent.setPackage("com.android.chrome");
        customTabsIntentBuild.intent.addFlags(1073741824);
        customTabsIntentBuild.intent.addFlags(DriveFile.MODE_READ_ONLY);
        customTabsIntentBuild.launchUrl(this.a, uri);
    }

    boolean b(Uri uri) {
        if (uri.getScheme().equals(this.b.getScheme()) && uri.getAuthority().equals(this.b.getAuthority()) && uri.getPath().equals(this.b.getPath()) && uri.getQueryParameterNames().containsAll(this.b.getQueryParameterNames())) {
            uri.getQueryParameter(b.m);
            if (!this.g.equals(uri.getQueryParameter("state"))) {
                return false;
            }
            this.h = uri.getQueryParameter("error");
            this.i = uri.getQueryParameter(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION);
            if (this.h != null) {
                return true;
            }
        }
        return false;
    }
}
