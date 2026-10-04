package com.amazonaws.mobile.client.internal.oauth2;

import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.support.customtabs.CustomTabsCallback;
import android.support.customtabs.CustomTabsClient;
import android.support.customtabs.CustomTabsIntent;
import android.support.customtabs.CustomTabsServiceConnection;
import android.support.customtabs.CustomTabsSession;
import android.util.Log;
import com.amazonaws.mobile.client.AWSMobileClient;
import com.amazonaws.mobile.client.Callback;
import com.amazonaws.mobile.client.internal.oauth2.OAuth2Constants;
import com.amazonaws.mobileconnectors.cognitoauth.util.Pkce;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.drive.DriveFile;
import com.prism.hide.f.b;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class OAuth2Client {
    public static final String a = "OAuth2Client";
    public static final String b = "com.android.chrome";
    public static final String c = "com.amazonaws.mobile.client.oauth2";
    public static final String d = "tokenUri";
    public static final String e = "createDate";
    public static final String f = "signOutRedirectUri";
    public static final String g = "signInRedirectUri";
    private static final long r = 60000;
    final AWSMobileClient h;
    final Context j;
    CustomTabsClient l;
    CustomTabsSession m;
    Callback<AuthorizeResponse> p;
    String q;
    private String t;
    private String u;
    private String v;
    private String w;
    private Callback<Void> x;
    private boolean y;
    boolean k = true;
    PKCEMode o = PKCEMode.S256;
    private final OAuth2ClientStore s = new OAuth2ClientStore(this);
    CustomTabsCallback n = new CustomTabsCallback() { // from class: com.amazonaws.mobile.client.internal.oauth2.OAuth2Client.1
        @Override // android.support.customtabs.CustomTabsCallback
        public void onNavigationEvent(int i, Bundle bundle) {
            super.onNavigationEvent(i, bundle);
            if (i != 6 || OAuth2Client.this.y) {
                return;
            }
            if (OAuth2Client.this.x != null) {
                OAuth2Client.this.x.a(new Exception("User cancelled flow or flow interrupted."));
                OAuth2Client.this.x = null;
            } else if (OAuth2Client.this.p != null) {
                OAuth2Client.this.p.a(new Exception("User cancelled flow or flow interrupted."));
                OAuth2Client.this.p = null;
            }
        }
    };
    final CustomTabsServiceConnection i = new CustomTabsServiceConnection() { // from class: com.amazonaws.mobile.client.internal.oauth2.OAuth2Client.2
        @Override // android.support.customtabs.CustomTabsServiceConnection
        public void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
            OAuth2Client.this.l = customTabsClient;
            OAuth2Client.this.l.warmup(0L);
            OAuth2Client.this.m = OAuth2Client.this.l.newSession(OAuth2Client.this.n);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            OAuth2Client.this.l = null;
        }
    };

    public OAuth2Client(Context context, AWSMobileClient aWSMobileClient) {
        this.h = aWSMobileClient;
        this.j = context;
        if (CustomTabsClient.bindCustomTabsService(this.j, "com.android.chrome", this.i)) {
            return;
        }
        Log.d(a, "OAuth2Client: Failed to pre-warm custom tab, first page load may be slower");
    }

    public void a(boolean z) {
        this.k = z;
        this.s.a(z);
    }

    public void a(Uri uri, Callback<Void> callback) {
        this.x = callback;
        String queryParameter = uri.getQueryParameter(ServerProtocol.DIALOG_PARAM_REDIRECT_URI);
        if (queryParameter == null) {
            throw new IllegalArgumentException("The sign-out URI must contain a redirect_uri");
        }
        this.s.a(f, queryParameter);
        Uri.parse(queryParameter);
        a(uri);
    }

    public void a() {
        this.s.b();
        this.x = null;
        this.p = null;
        this.o = PKCEMode.S256;
        this.q = null;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
    }

    public enum PKCEMode {
        NONE(""),
        S256("S256");

        private String encode;

        PKCEMode(String str) {
            this.encode = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.encode;
        }

        public boolean equals(PKCEMode pKCEMode) {
            return pKCEMode.encode.equals(this.encode);
        }
    }

    public void a(PKCEMode pKCEMode) {
        this.o = pKCEMode;
    }

    public void b(Uri uri, Callback<AuthorizeResponse> callback) {
        this.p = callback;
        try {
            Uri.Builder builderBuildUpon = uri.buildUpon();
            switch (this.o) {
                case S256:
                    String strGenerateRandom = Pkce.generateRandom();
                    String strGenerateHash = Pkce.generateHash(strGenerateRandom);
                    this.s.a("proofKey", strGenerateRandom);
                    this.s.a("proofKeyHash", strGenerateHash);
                    builderBuildUpon.appendQueryParameter("code_challenge_method", this.o.toString()).appendQueryParameter("code_challenge", strGenerateHash).build();
                    break;
                case NONE:
                    break;
                default:
                    throw new IllegalArgumentException("Unsupported PKCE mode was chosen, please choose another");
            }
            Uri uriBuild = builderBuildUpon.build();
            this.t = uriBuild.getQueryParameter("client_id");
            if (this.t == null) {
                throw new IllegalArgumentException("The authorize URI must contain a client_id");
            }
            String queryParameter = uriBuild.getQueryParameter(ServerProtocol.DIALOG_PARAM_REDIRECT_URI);
            if (queryParameter == null) {
                throw new IllegalArgumentException("The authorize URI must contain a redirect_uri");
            }
            this.s.a(g, queryParameter);
            Uri.parse(queryParameter);
            if (uriBuild.getQueryParameter(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE) == null) {
                builderBuildUpon.appendQueryParameter(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, b.m).build();
            }
            this.q = uriBuild.getQueryParameter("state");
            if (this.q == null) {
                this.q = Pkce.generateRandom();
                builderBuildUpon.appendQueryParameter("state", this.q).build();
            }
            this.s.a("state", this.q);
            a(builderBuildUpon.build());
        } catch (Exception e2) {
            callback.a(e2);
        }
    }

    public void a(Uri uri) {
        CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder(this.m).build();
        customTabsIntentBuild.intent.setPackage("com.android.chrome");
        customTabsIntentBuild.intent.addFlags(1073741824);
        customTabsIntentBuild.intent.addFlags(DriveFile.MODE_READ_ONLY);
        this.y = false;
        customTabsIntentBuild.launchUrl(this.j, uri);
    }

    public boolean b(Uri uri) {
        if (uri == null) {
            return false;
        }
        String strA = this.s.a(g);
        String strA2 = this.s.a(f);
        if (strA != null) {
            Uri uri2 = Uri.parse(strA);
            if (uri.getScheme().equals(uri2.getScheme()) && uri.getAuthority().equals(uri2.getAuthority()) && uri.getPath().equals(uri2.getPath()) && uri.getQueryParameterNames().containsAll(uri2.getQueryParameterNames())) {
                String queryParameter = uri.getQueryParameter(b.m);
                if (!this.s.a("state").equals(uri.getQueryParameter("state"))) {
                    return false;
                }
                this.u = uri.getQueryParameter("error");
                this.v = uri.getQueryParameter(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION);
                this.w = uri.getQueryParameter("error_uri");
                this.y = true;
                if (this.u != null) {
                    if (this.p != null) {
                        this.p.a(new OAuth2Exception("Authorization call failed with response from authorization server", this.u, this.v, this.w));
                        this.p = null;
                    }
                    return true;
                }
                if (queryParameter == null) {
                    return false;
                }
                if (this.p != null) {
                    AuthorizeResponse authorizeResponse = new AuthorizeResponse();
                    authorizeResponse.b = queryParameter;
                    authorizeResponse.a = uri;
                    this.p.a(authorizeResponse);
                    this.p = null;
                }
                return true;
            }
        }
        if (strA2 != null) {
            Uri uri3 = Uri.parse(strA2);
            if (uri.getScheme().equals(uri3.getScheme()) && uri.getAuthority().equals(uri3.getAuthority()) && uri.getPath().equals(uri3.getPath()) && uri.getQueryParameterNames().containsAll(uri3.getQueryParameterNames())) {
                this.y = true;
                if (this.x != null) {
                    this.x.a((Void) null);
                    this.x = null;
                }
                return true;
            }
        }
        return false;
    }

    public void a(Uri uri, Map<String, String> map, Map<String, String> map2, String str, Callback<OAuth2Tokens> callback) {
        String strA = this.s.a("proofKey");
        if (strA == null && !this.o.equals(PKCEMode.NONE)) {
            callback.a(new Exception("Proof key could not be found from current session."));
        }
        try {
            if (map2.get("client_id") == null) {
                throw new IllegalArgumentException("The token exchange must contain a client_id");
            }
            if (map2.get(ServerProtocol.DIALOG_PARAM_REDIRECT_URI) == null) {
                throw new IllegalArgumentException("The token exchange must contain a redirect_uri");
            }
            if (map2.get(b.m) == null) {
                if (str == null) {
                    throw new IllegalArgumentException("The token exchange must contain a code");
                }
                map2.put(b.m, str);
            }
            if (map2.get("code_verifier") == null) {
                if (strA == null) {
                    throw new IllegalStateException("The token exchange must contain a code verifier");
                }
                map2.put("code_verifier", strA);
            }
            if (map2.get(OAuth2Constants.b) == null) {
                map2.put(OAuth2Constants.b, OAuth2Constants.GrantTypes.AUTHORIZATION_CODE.toString());
            }
            this.s.a(d, uri.toString());
            OAuth2Tokens oAuth2TokensA = HTTPUtil.a(HTTPUtil.a(new URL(uri.toString()), map, map2));
            this.s.a(oAuth2TokensA);
            callback.a(oAuth2TokensA);
        } catch (Exception e2) {
            callback.a(new Exception("Failed to exchange code for tokens", e2));
        }
    }

    public void a(Uri uri, Map<String, String> map, Map<String, String> map2, Callback<OAuth2Tokens> callback) {
        String strA = this.s.a(OAuth2Constants.TokenResponseFields.REFRESH_TOKEN.toString());
        if (strA == null) {
            callback.a(new IllegalStateException("Refresh called without refresh token available"));
        }
        try {
            if (map2.get(OAuth2Constants.b) == null) {
                map2.put(OAuth2Constants.b, OAuth2Constants.GrantTypes.REFRESH_TOKEN.toString());
            }
            if (map2.get("refresh_token") == null) {
                if (strA == null) {
                    throw new IllegalArgumentException("The refresh flow must contain a refresh_token");
                }
                map2.put("refresh_token", strA);
            }
            OAuth2Tokens oAuth2TokensA = HTTPUtil.a(HTTPUtil.a(new URL(uri.toString()), map, map2));
            this.s.a(oAuth2TokensA);
            callback.a(oAuth2TokensA);
        } catch (Exception e2) {
            callback.a(new Exception("Failed to refresh tokens with service", e2));
        }
    }

    public void a(Callback<OAuth2Tokens> callback) {
        String strA;
        try {
            OAuth2Tokens oAuth2TokensA = this.s.a();
            if (oAuth2TokensA.f != null && (oAuth2TokensA.g.longValue() + oAuth2TokensA.f.longValue()) - System.currentTimeMillis() < 60000) {
                if (oAuth2TokensA.d != null && (strA = this.s.a(d)) != null) {
                    a(Uri.parse(strA), new HashMap(), new HashMap(), callback);
                } else {
                    callback.a(new Exception("No cached tokens available, refresh not available."));
                }
            }
            callback.a(oAuth2TokensA);
        } catch (Exception e2) {
            callback.a(e2);
        }
    }
}
