package com.amazonaws.mobile.client.internal.oauth2;

import com.facebook.AccessToken;
import com.facebook.internal.NativeProtocol;

/* JADX INFO: compiled from: OAuth2Client.java */
/* JADX INFO: loaded from: classes.dex */
class OAuth2Constants {
    public static final String a = "scopes";
    public static final String b = "grant_type";

    OAuth2Constants() {
    }

    /* JADX INFO: compiled from: OAuth2Client.java */
    enum TokenResponseFields {
        ACCESS_TOKEN("access_token"),
        ID_TOKEN("id_token"),
        REFRESH_TOKEN("refresh_token"),
        TOKEN_TYPE("token_type"),
        EXPIRES_IN(AccessToken.EXPIRES_IN_KEY),
        SCOPES(OAuth2Constants.a),
        ERROR("error"),
        ERROR_DESCRIPTION(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION),
        ERROR_URI("error_uri");

        private final String value;

        TokenResponseFields(String str) {
            this.value = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.value;
        }
    }

    /* JADX INFO: compiled from: OAuth2Client.java */
    enum TokenRequestFields {
        ACCESS_TOKEN("access_token"),
        ID_TOKEN("id_token");

        private final String value;

        TokenRequestFields(String str) {
            this.value = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.value;
        }
    }

    /* JADX INFO: compiled from: OAuth2Client.java */
    enum GrantTypes {
        AUTHORIZATION_CODE("authorization_code"),
        REFRESH_TOKEN("refresh_token");

        private final String value;

        GrantTypes(String str) {
            this.value = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.value;
        }
    }
}
